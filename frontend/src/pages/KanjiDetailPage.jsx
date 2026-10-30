import { useEffect } from 'react';
import { Link, useNavigate, useParams } from 'react-router-dom';
import { getKanjiDetail } from '../api/kanjiApi';
import { PALETTE } from '../data/palette';
import { readings } from '../utils/readings';
import { useApi } from '../hooks/useApi';
import Loader from '../components/Loader';
import { StrokeAnimation, StrokeSteps } from '../components/StrokeOrder';
import './KanjiDetailPage.css';

// Must match PAGE_SIZE in KanjiListPage, so "All kanji" returns to the page this kanji is on.
const LIST_PAGE_SIZE = 18;

// Wraps each occurrence of the kanji in the sentence so it stands out.
function highlight(sentence, kanjiCharacter) {
  return sentence.split(kanjiCharacter).flatMap((part, i) => (
    i === 0 ? [part] : [<mark key={i} className="kanji-detail__mark">{kanjiCharacter}</mark>, part]
  ));
}

function Example({ item, kanjiCharacter }) {
  if (!item.sentence) return null;
  return (
    <div className="meaning__example">
      <p className="meaning__sentence" lang="ja">{highlight(item.sentence, kanjiCharacter)}</p>
      <p className="meaning__reading" lang="ja">{item.sentenceReading}</p>
      <p className="meaning__translation">{item.sentenceTranslation}</p>
    </div>
  );
}

function NeighborLink({ kanji, direction }) {
  if (!kanji) return null;
  const label = direction === 'previous' ? 'Previous kanji' : 'Next kanji';
  return (
    <Link to={`/kanji/${kanji.id}`} className={`kanji-detail__step kanji-detail__step--${direction}`}
      aria-label={`${label}: ${kanji.kanjiCharacter}`} title={label}>
      <svg viewBox="0 0 20 20" aria-hidden="true">
        <path d={direction === 'previous' ? 'M12.5 4.5 7 10l5.5 5.5' : 'M7.5 4.5 13 10l-5.5 5.5'} />
      </svg>
    </Link>
  );
}

export default function KanjiDetailPage() {
  const { id } = useParams();
  const { status, data: kanji, retry } = useApi(getKanjiDetail, id);

  const navigate = useNavigate();
  const previous = status === 'ready' ? kanji.previous : null;
  const next = status === 'ready' ? kanji.next : null;

  // ← and → move between kanji, unless the user is typing in the search bar.
  useEffect(() => {
    const onKeyDown = (e) => {
      if (e.target.closest('input, textarea') || e.altKey || e.metaKey || e.ctrlKey) return;
      const target = e.key === 'ArrowLeft' ? previous : e.key === 'ArrowRight' ? next : null;
      if (target) navigate(`/kanji/${target.id}`);
    };
    window.addEventListener('keydown', onKeyDown);
    return () => window.removeEventListener('keydown', onKeyDown);
  }, [previous, next, navigate]);

  const listPage = kanji ? Math.ceil(kanji.displayOrder / LIST_PAGE_SIZE) : 1;

  // Matches the color the card had in the list, which is ordered by displayOrder.
  const color = kanji ? PALETTE[(kanji.displayOrder - 1) % PALETTE.length] : PALETTE[0];

  return (
    <main className="kanji-detail" style={{ '--card-color': color }}>
      <nav className="kanji-detail__nav" aria-label="Kanji navigation">
        <Link to={listPage > 1 ? `/?page=${listPage}` : '/'} className="btn kanji-detail__back">Back to kanji</Link>
        <NeighborLink kanji={previous} direction="previous" />
        <NeighborLink kanji={next} direction="next" />
      </nav>

      {status === 'loading' && <Loader label="Loading kanji…" />}

      {status === 'error' && (
        <div className="kanji-detail__message" role="alert">
          <p>Could not load this kanji. Check that the backend is running at localhost:8080.</p>
          <button type="button" className="btn btn--primary" onClick={retry}>Try again</button>
        </div>
      )}

      {status === 'ready' && (
        <>
          <section className="kanji-detail__hero">
            <div className="kanji-detail__summary">
              <StrokeAnimation character={kanji.kanjiCharacter} strokes={kanji.strokes} />
              <div className="kanji-detail__title">
                <h1>{kanji.englishMeaning}</h1>
                <ul className="kanji-detail__readings" aria-label="Readings in hiragana">
                  {readings(kanji).map((r) => <li key={r} className="kanji-detail__hiragana" lang="ja">{r}</li>)}
                </ul>
              </div>
            </div>

            <div className="kanji-detail__strokes">
              <h2 className="kanji-detail__label">Stroke order</h2>
              <StrokeSteps character={kanji.kanjiCharacter} strokes={kanji.strokes} />
            </div>
          </section>

          <ol className="kanji-detail__meanings">
            {kanji.meanings.map((m) => (
              <li key={m.id} className="meaning">
                <div className="meaning__label">
                  <span className="meaning__word">{m.meaning}</span>
                </div>
                <Example item={m} kanjiCharacter={kanji.kanjiCharacter} />
              </li>
            ))}
          </ol>

          {kanji.readings.length > 0 && (
            <ol className="kanji-detail__meanings">
              {kanji.readings.map((r) => (
                <li key={r.id} className="meaning">
                  <div className="meaning__label">
                    <span className="kanji-detail__hiragana" lang="ja">{r.reading}</span>
                    <span className="meaning__word" lang="ja">{r.word}</span>
                    <span className="reading__word-info"><span lang="ja">{r.wordReading}</span> · {r.wordMeaning}</span>
                  </div>
                  <Example item={r} kanjiCharacter={kanji.kanjiCharacter} />
                </li>
              ))}
            </ol>
          )}
        </>
      )}
    </main>
  );
}
