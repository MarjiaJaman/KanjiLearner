import { useEffect, useState } from 'react';
import { useSearchParams } from 'react-router-dom';
import { getKanjiList } from '../api/kanjiApi';
import KanjiCard from '../components/KanjiCard';
import Pagination from '../components/Pagination';
import { matchesQuery } from '../utils/search';
import './KanjiListPage.css';

const PAGE_SIZE = 18;

export default function KanjiListPage() {
  const [kanji, setKanji] = useState([]);
  const [status, setStatus] = useState('loading'); // loading | ready | error
  const [params, setParams] = useSearchParams();

  const load = () => {
    setStatus('loading');
    getKanjiList()
      .then((data) => { setKanji(data); setStatus('ready'); })
      .catch(() => setStatus('error'));
  };

  useEffect(load, []);

  const query = params.get('q') || '';
  const results = kanji.filter((k) => matchesQuery(k, query));
  const pageCount = Math.max(1, Math.ceil(results.length / PAGE_SIZE));
  const page = Math.min(Math.max(1, Number(params.get('page')) || 1), pageCount);
  const pageItems = results.slice((page - 1) * PAGE_SIZE, page * PAGE_SIZE);

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
        <h1>N5 kanji</h1>
        {status === 'ready' && query && (
          <p>{results.length} {results.length === 1 ? 'result' : 'results'} for “{query}”</p>
        )}
      </header>

      {status === 'loading' && <p className="kanji-list__message">Loading kanji…</p>}

      {status === 'error' && (
        <div className="kanji-list__message" role="alert">
          <p>Could not load the kanji. Check that the backend is running at localhost:8080.</p>
          <button type="button" className="btn btn--primary" onClick={load}>Try again</button>
        </div>
      )}

      {status === 'ready' && kanji.length === 0 && (
        <p className="kanji-list__message">No kanji yet. Add some rows to the kanji table.</p>
      )}

      {status === 'ready' && kanji.length > 0 && results.length === 0 && (
        <p className="kanji-list__message">No kanji match “{query}”. Try a meaning like “water” or a reading like みず.</p>
      )}

      {status === 'ready' && pageItems.length > 0 && (
        <>
          <section className="kanji-grid" aria-label="N5 kanji">
            {pageItems.map((k, index) => (
              <KanjiCard key={k.id} kanji={k} index={(k.displayOrder ?? index + 1) - 1} />
            ))}
          </section>
          <Pagination page={page} pageCount={pageCount} onChange={goToPage} />
        </>
      )}
    </main>
  );
}
