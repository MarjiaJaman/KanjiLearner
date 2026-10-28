import './Pagination.css';

export default function Pagination({ page, pageCount, onChange }) {
  if (pageCount <= 1) return null;
  const pages = Array.from({ length: pageCount }, (_, i) => i + 1);

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
