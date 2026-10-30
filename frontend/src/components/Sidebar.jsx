import { Link, useLocation } from 'react-router-dom';
import './Sidebar.css';

const ITEMS = [
  { to: '/', label: 'Kanji', glyph: '漢', isActive: (path) => path === '/' || path.startsWith('/kanji') },
  { to: '/hiragana', label: 'Hiragana', glyph: 'あ', isActive: (path) => path === '/hiragana' },
  { to: '/katakana', label: 'Katakana', glyph: 'ア', isActive: (path) => path === '/katakana' },
];

export default function Sidebar() {
  const { pathname } = useLocation();

  return (
    <nav className="sidebar" aria-label="Sections">
      <ul className="sidebar__list">
        {ITEMS.map(({ to, label, glyph, isActive }) => {
          const active = isActive(pathname);
          return (
            <li key={to}>
              <Link to={to} className={`sidebar__item${active ? ' sidebar__item--active' : ''}`} aria-current={active ? 'page' : undefined}>
                <span className="sidebar__glyph" lang="ja" aria-hidden="true">{glyph}</span>
                {label}
              </Link>
            </li>
          );
        })}
      </ul>
    </nav>
  );
}
