import { useEffect, useState } from 'react';
import { Link, useParams } from 'react-router-dom';
import { getKanjiDetail } from '../api/kanjiApi';
import { PALETTE } from '../data/palette';
import { readings } from '../utils/readings';
import { StrokeAnimation, StrokeSteps } from '../components/StrokeOrder';
import './KanjiDetailPage.css';

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

export default function KanjiDetailPage() {
  const { id } = useParams();
  const [kanji, setKanji] = useState(null);
  const [status, setStatus] = useState('loading'); // loading | ready | error

  const load = () => {
    setStatus('loading');
    getKanjiDetail(id)
      .then((data) => { setKanji(data); setStatus('ready'); })
      .catch(() => setStatus('error'));
  };

  useEffect(load, [id]);

  // Matches the color the card had in the list, which is ordered by displayOrder.
  const color = kanji ? PALETTE[(kanji.displayOrder - 1) % PALETTE.length] : PALETTE[0];

  return (
    <main className="kanji-detail" style={{ '--card-color': color }}>
      {status === 'loading' && <p className="kanji-detail__message">Loading kanji…</p>}

      {status === 'error' && (
        <div className="kanji-detail__message" role="alert">
          <p>Could not load this kanji. Check that the backend is running at localhost:8080.</p>
          <button type="button" className="btn btn--primary" onClick={load}>Try again</button>
        </div>
      )}

      {status === 'ready' && (
        <>
          <section className="kanji-detail__hero">
            <div className="kanji-detail__summary">
              <StrokeAnimation kanjiCharacter={kanji.kanjiCharacter} />
              <div className="kanji-detail__title">
                <h1>{kanji.englishMeaning}</h1>
                <ul className="kanji-detail__readings" aria-label="Readings in hiragana">
                  {readings(kanji).map((r) => <li key={r} className="kanji-detail__hiragana" lang="ja">{r}</li>)}
                </ul>
              </div>
            </div>

            <div className="kanji-detail__strokes">
              <h2 className="kanji-detail__label">Stroke order</h2>
              <StrokeSteps kanjiCharacter={kanji.kanjiCharacter} />
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

      <div className="kanji-detail__footer">
        <Link to="/kanji" className="btn btn--primary kanji-detail__back">Back to kanji</Link>
      </div>
    </main>
  );
}
