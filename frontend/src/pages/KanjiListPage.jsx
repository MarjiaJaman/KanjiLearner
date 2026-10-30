import { useState } from 'react';
import { useSearchParams } from 'react-router-dom';
import { getKanjiPage } from '../api/kanjiApi';
import { getKana } from '../api/kanaApi';
import { useApi } from '../hooks/useApi';
import Loader from '../components/Loader';
import KanjiCard from '../components/KanjiCard';
import KanaCard from '../components/KanaCard';
import KanaStrokeDialog from '../components/KanaStrokeDialog';
import Pagination from '../components/Pagination';
import { findKana, kanjiIn } from '../utils/search';
import './KanjiListPage.css';

const PAGE_SIZE = 18;

const isDone = (status) => status === 'ready' || status === 'idle';

export default function KanjiListPage() {
  const [params, setParams] = useSearchParams();
  const [selectedKana, setSelectedKana] = useState(null);
  const query = params.get('q') || '';
  const requestedPage = Math.max(1, Number(params.get('page')) || 1);

  // Each page comes from the backend. A search asks only for the kanji typed, and
  // skips the kanji request when there are none (a kana-only search).
  const characters = kanjiIn(query);
  const kanjiRequest = !query ? { page: requestedPage, size: PAGE_SIZE }
    : characters ? { page: requestedPage, size: PAGE_SIZE, characters } : null;
  const { status, data: kanjiPage, retry } = useApi(getKanjiPage, kanjiRequest);
  // The kana chart is only needed to search for kana.
  const { status: kanaStatus, data: kanaList, retry: retryKana } = useApi(getKana, query ? '' : null);

  const loading = status === 'loading' || kanaStatus === 'loading';
  const ready = isDone(status) && isDone(kanaStatus);
  const kanji = kanjiPage?.items ?? [];
  const kanaResults = findKana(query, kanaList);
  const resultCount = (kanjiPage?.totalItems ?? 0) + kanaResults.length;

  const goToPage = (next) => {
    const nextParams = new URLSearchParams(params);
    if (next === 1) nextParams.delete('page');
    else nextParams.set('page', next);
    setParams(nextParams);
    window.scrollTo({ top: 0 });
  };

  return (
    <main className="kanji-list">
      <header className="kanji-list__header">
        <h1>{query ? 'Search results' : 'N5 kanji'}</h1>
        {ready && query && (
          <p>{resultCount} {resultCount === 1 ? 'result' : 'results'} for “{query}”</p>
        )}
      </header>

      {loading && <Loader label={query ? 'Searching…' : 'Loading kanji…'} />}

      {status === 'error' && (
        <div className="kanji-list__message" role="alert">
          <p>Could not load the kanji. Check that the backend is running at localhost:8080.</p>
          <button type="button" className="btn btn--primary" onClick={retry}>Try again</button>
        </div>
      )}

      {kanaStatus === 'error' && (
        <div className="kanji-list__message" role="alert">
          <p>Could not load the kana to search. Check that the backend is running at localhost:8080.</p>
          <button type="button" className="btn btn--primary" onClick={retryKana}>Try again</button>
        </div>
      )}

      {ready && (
        <>
          {!query && kanji.length === 0 && (
            <p className="kanji-list__message">No kanji yet. Add some rows to the kanji table.</p>
          )}

          {query && resultCount === 0 && (
            <p className="kanji-list__message">Nothing matches “{query}”. Search by typing a kanji like 水, a hiragana like か, or a katakana like カ.</p>
          )}

          {kanaResults.length > 0 && (
            <section className="kanji-list__section" aria-labelledby="kana-results">
              <h2 id="kana-results" className="kanji-list__section-title">Kana</h2>
              <div className="kana-results">
                {kanaResults.map((k) => (
                  <KanaCard key={k.kana} kana={k.kana} romaji={k.romaji} color={k.color} onSelect={setSelectedKana} />
                ))}
              </div>
            </section>
          )}

          {kanji.length > 0 && (
            <>
              {kanaResults.length > 0 && <h2 className="kanji-list__section-title">Kanji</h2>}
              <section className="kanji-grid" aria-label="N5 kanji">
                {kanji.map((k, index) => (
                  <KanjiCard key={k.id} kanji={k} index={(k.displayOrder ?? index + 1) - 1} />
                ))}
              </section>
              <Pagination page={kanjiPage.page} pageCount={kanjiPage.totalPages} onChange={goToPage} />
            </>
          )}
        </>
      )}

      <KanaStrokeDialog selected={selectedKana} items={kanaResults} onSelect={setSelectedKana} onClose={() => setSelectedKana(null)} />
    </main>
  );
}
