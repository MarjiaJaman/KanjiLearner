import { useNavigate } from 'react-router-dom';
import { LEVELS } from '../data/levels';
import './HomePage.css';

export default function HomePage() {
  const navigate = useNavigate();

  return (
    <main className="home">
      <header className="home__header">
        <h1>Learn kanji</h1>
        <p>Choose a level to begin. N5 is open now. The other levels are coming soon.</p>
      </header>

      <section className="levels" aria-label="JLPT levels">
        {LEVELS.map(({ id, label, numeral, enabled, wide, color }) => (
          <button
            key={id}
            type="button"
            className={`level${wide ? ' level--wide' : ''}`}
            style={{ '--level-color': color }}
            disabled={!enabled}
            onClick={() => navigate('/kanji')}
          >
            <span className="level__numeral" aria-hidden="true">{numeral}</span>
            <span className="level__label">{label}</span>
            <span className="level__note">{enabled ? 'Start learning' : 'Coming soon'}</span>
          </button>
        ))}
      </section>
    </main>
  );
}
