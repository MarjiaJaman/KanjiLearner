import { Link } from 'react-router-dom';
import { PALETTE } from '../data/palette';
import { mainReading } from '../utils/readings';
import './KanjiCard.css';

export default function KanjiCard({ kanji, index = 0 }) {
  const { id, kanjiCharacter, englishMeaning } = kanji;
  const color = PALETTE[index % PALETTE.length];

  return (
    <Link to={`/kanji/${id}`} className="kanji-card" style={{ '--card-color': color }}>
      <span className="kanji-card__char" lang="ja">{kanjiCharacter}</span>
      <span className="kanji-card__reading" lang="ja">{mainReading(kanji)}</span>
      <span className="kanji-card__meaning">{englishMeaning}</span>
    </Link>
  );
}
