import './Loader.css';

// A spinner with a short label, shown while data comes from the backend if it takes over 200ms.
export default function Loader({ label = 'Loading…', compact = false }) {
  return (
    <div className={`loader${compact ? ' loader--compact' : ''}`} role="status" aria-live="polite">
      <span className="loader__spinner" aria-hidden="true" />
      <span className="loader__label">{label}</span>
    </div>
  );
}
