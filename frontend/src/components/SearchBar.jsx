import { useLocation, useNavigate, useSearchParams } from 'react-router-dom';
import './SearchBar.css';

// The query lives in the home page URL (?q=…), so typing here on any page jumps to the filtered list.
export default function SearchBar() {
  const navigate = useNavigate();
  const { pathname } = useLocation();
  const [params] = useSearchParams();
  const onHome = pathname === '/';
  const query = onHome ? params.get('q') || '' : '';

  const search = (value) => {
    navigate({ pathname: '/', search: value ? `?q=${encodeURIComponent(value)}` : '' }, { replace: onHome });
  };

  return (
    <form className="search-bar" role="search" onSubmit={(e) => e.preventDefault()}>
      <svg className="search-bar__icon" viewBox="0 0 20 20" aria-hidden="true">
        <circle cx="8.5" cy="8.5" r="5.5" />
        <path d="M13 13l4 4" />
      </svg>
      <input
        type="search"
        className="search-bar__input"
        placeholder="Search kanji, meaning or reading"
        aria-label="Search kanji"
        value={query}
        onChange={(e) => search(e.target.value)}
        onKeyDown={(e) => { if (e.key === 'Escape') search(''); }}
      />
    </form>
  );
}
