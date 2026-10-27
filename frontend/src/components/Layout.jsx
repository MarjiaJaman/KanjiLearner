import { Link } from 'react-router-dom';
import Logo from './Logo';
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
        </div>
      </header>
      <div className="app-content">{children}</div>
    </div>
  );
}
