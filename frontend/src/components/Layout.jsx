import { Link } from 'react-router-dom';
import Logo from './Logo';
import SearchBar from './SearchBar';
import { LEVELS } from '../data/levels';
import './Layout.css';

export default function Layout({ children }) {
  return (
    <div className="app-shell">
      <header className="app-header">
        <div className="app-header__inner">
          <Link to="/" className="app-header__brand">
            <Logo className="app-header__mark" />
            <span className="app-header__title">Kanji Learner</span>
          </Link>

          <SearchBar />

          <nav className="levels-nav" aria-label="JLPT levels">
            {LEVELS.map(({ id, label, enabled, color }) => (
              enabled ? (
                <Link key={id} to="/" className="levels-nav__item levels-nav__item--active" style={{ '--level-color': color }} aria-current="page">
                  {label}
                </Link>
              ) : (
                <span key={id} className="levels-nav__item" title="Coming soon" aria-disabled="true">
                  {label}
                </span>
              )
            ))}
          </nav>
        </div>
      </header>
      <div className="app-content">{children}</div>
    </div>
  );
}
