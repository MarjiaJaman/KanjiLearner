import './Pagination.css';

// At most this many page numbers are shown, with the current page in the middle when possible.
const VISIBLE_PAGES = 3;

export default function Pagination({ page, pageCount, onChange }) {
  if (pageCount <= 1) return null;
  const count = Math.min(VISIBLE_PAGES, pageCount);
  const first = Math.min(Math.max(1, page - Math.floor(count / 2)), pageCount - count + 1);
  const pages = Array.from({ length: count }, (_, i) => first + i);

  return (
    <nav className="pagination" aria-label="Pages">
      <button type="button" className="pagination__step" disabled={page === 1} onClick={() => onChange(page - 1)}>
        ‹ Previous
      </button>
      <ol className="pagination__pages">
        {pages.map((n) => (
          <li key={n}>
            <button
              type="button"
              className={`pagination__page${n === page ? ' pagination__page--current' : ''}`}
              aria-current={n === page ? 'page' : undefined}
              aria-label={`Page ${n}`}
              onClick={() => onChange(n)}
            >
              {n}
            </button>
          </li>
        ))}
      </ol>
      <button type="button" className="pagination__step" disabled={page === pageCount} onClick={() => onChange(page + 1)}>
        Next ›
      </button>
    </nav>
  );
}
