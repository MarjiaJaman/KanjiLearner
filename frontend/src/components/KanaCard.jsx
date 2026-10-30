import './KanaCard.css';

// One kana with its romaji. Clicking it asks the page to show how to write it.
export default function KanaCard({ kana, romaji, color, onSelect }) {
  return (
    <button
      type="button"
      className="kana-card"
      style={{ '--card-color': color }}
      aria-label={`${kana} (${romaji}): how to write`}
      onClick={() => onSelect({ kana, romaji, color })}
    >
      <span className="kana-card__char" lang="ja">{kana}</span>
      <span className="kana-card__romaji">{romaji}</span>
    </button>
  );
}
