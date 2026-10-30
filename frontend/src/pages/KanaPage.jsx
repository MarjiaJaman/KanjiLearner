import { useState } from 'react';
import { getKana } from '../api/kanaApi';
import { KANA_SECTIONS } from '../data/kana';
import { PALETTE } from '../data/palette';
import { useApi } from '../hooks/useApi';
import { toKatakana } from '../utils/readings';
import KanaCard from '../components/KanaCard';
import KanaStrokeDialog from '../components/KanaStrokeDialog';
import Loader from '../components/Loader';
import './KanaPage.css';

const SCRIPTS = {
  hiragana: {
    title: 'Hiragana',
    intro: 'Hiragana is used for Japanese words, grammar endings and the readings of kanji.',
    convert: (text) => text,
  },
  katakana: {
    title: 'Katakana',
    intro: 'Katakana is used for words from other languages, names and sound effects. Each sound matches its hiragana.',
    convert: toKatakana,
  },
};

// Places each kana at its row and column; the gaps (like between や and ゆ) stay null.
function buildGrid(kanaList, section) {
  const cells = kanaList.filter((k) => k.section === section.id);
  const rowCount = Math.max(0, ...cells.map((k) => k.rowIndex + 1));
  const grid = Array.from({ length: rowCount }, () => Array(section.columns).fill(null));
  for (const k of cells) grid[k.rowIndex][k.columnIndex] = k;
  return grid;
}

export default function KanaPage({ script }) {
  const { title, intro, convert } = SCRIPTS[script];
  const [selected, setSelected] = useState(null);
  const { status, data: kanaList, retry } = useApi(getKana, '');

  // Every kana in chart order (あ, い, う … ん, が …), for the popup's previous/next arrows.
  const ordered = status === 'ready' ? KANA_SECTIONS.flatMap((section) => buildGrid(kanaList, section).flatMap((row, rowIndex) => (
    row.filter(Boolean).map((cell) => ({ kana: cell[script], romaji: cell.romaji, color: PALETTE[rowIndex % PALETTE.length] }))
  ))) : [];

  return (
    <main className="kana">
      <header className="kana__header">
        <h1>{title}</h1>
        <p>{intro} Click a character to see how to write it.</p>
      </header>

      {status === 'loading' && <Loader label={`Loading ${title.toLowerCase()}…`} />}

      {status === 'error' && (
        <div className="kana__message" role="alert">
          <p>Could not load the {title.toLowerCase()} chart. Check that the backend is running at localhost:8080.</p>
          <button type="button" className="btn btn--primary" onClick={retry}>Try again</button>
        </div>
      )}

      {status === 'ready' && KANA_SECTIONS.map((section) => (
        <section key={section.id} className="kana__section" aria-labelledby={`kana-${section.id}`}>
          <h2 id={`kana-${section.id}`} className="kana__title">{section.title}</h2>
          {section.note && <p className="kana__note">{convert(section.note)}</p>}
          <div className="kana__grid" style={{ '--columns': section.columns }}>
            {buildGrid(kanaList, section).flatMap((row, rowIndex) => row.map((cell, i) => (
              cell ? (
                <KanaCard key={cell.id} kana={cell[script]} romaji={cell.romaji}
                  color={PALETTE[rowIndex % PALETTE.length]} onSelect={setSelected} />
              ) : (
                <div key={`${rowIndex}-${i}`} className="kana-card kana-card--empty" aria-hidden="true" />
              )
            )))}
          </div>
        </section>
      ))}

      <KanaStrokeDialog selected={selected} items={ordered} onSelect={setSelected} onClose={() => setSelected(null)} />
    </main>
  );
}
