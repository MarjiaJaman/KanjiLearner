import { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { getKanjiList } from '../api/kanjiApi';
import KanjiCard from '../components/KanjiCard';
import './KanjiListPage.css';

export default function KanjiListPage() {
  const [kanji, setKanji] = useState([]);
  const [status, setStatus] = useState('loading'); // loading | ready | error

  const load = () => {
    setStatus('loading');
    getKanjiList()
      .then((data) => { setKanji(data); setStatus('ready'); })
      .catch(() => setStatus('error'));
  };

  useEffect(load, []);

  return (
    <main className="kanji-list">
      <header className="kanji-list__header">
        <h1>N5 kanji</h1>
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

      {status === 'ready' && kanji.length > 0 && (
        <section className="kanji-grid" aria-label="N5 kanji">
          {kanji.map((k, index) => <KanjiCard key={k.id} kanji={k} index={index} />)}
        </section>
      )}

      <div className="kanji-list__footer">
        <Link to="/" className="btn btn--primary kanji-list__back">Back to levels</Link>
      </div>
    </main>
  );
}
