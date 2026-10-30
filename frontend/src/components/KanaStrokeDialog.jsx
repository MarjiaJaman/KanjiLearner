import { useEffect, useRef } from 'react';
import { getStrokes } from '../api/kanaApi';
import { useApi } from '../hooks/useApi';
import Loader from './Loader';
import { StrokeAnimation, StrokeSteps } from './StrokeOrder';
import './KanaStrokeDialog.css';

const ARROWS = {
  previous: 'M12.5 4.5 7 10l5.5 5.5',
  next: 'M7.5 4.5 13 10l-5.5 5.5',
};

// How to write one kana. Combinations like きゃ show each character in turn.
// items is the list the kana was picked from, in order; the arrows step through it.
export default function KanaStrokeDialog({ selected, items = [], onSelect, onClose }) {
  const dialogRef = useRef(null);
  const { status, data: strokes, retry } = useApi(getStrokes, selected ? selected.kana : null);

  const index = selected ? items.findIndex((item) => item.kana === selected.kana) : -1;
  const previous = index > 0 ? items[index - 1] : null;
  const next = index >= 0 && index < items.length - 1 ? items[index + 1] : null;

  const onKeyDown = (e) => {
    const target = e.key === 'ArrowLeft' ? previous : e.key === 'ArrowRight' ? next : null;
    if (target) { e.preventDefault(); onSelect(target); }
  };

  useEffect(() => {
    const dialog = dialogRef.current;
    if (selected && !dialog.open) dialog.showModal();
    if (!selected && dialog.open) dialog.close();
  }, [selected]);

  return (
    <dialog
      ref={dialogRef}
      className="kana-dialog"
      style={selected ? { '--card-color': selected.color } : undefined}
      aria-labelledby="kana-dialog-title"
      onClose={onClose}
      onKeyDown={onKeyDown}
      // A click on the backdrop lands on the dialog element itself.
      onClick={(e) => { if (e.target === e.currentTarget) onClose(); }}
    >
      {selected && (
        <div className="kana-dialog__body">
          <header className="kana-dialog__header">
            <h2 id="kana-dialog-title">
              <span lang="ja">{selected.kana}</span>
              <span className="kana-dialog__romaji">{selected.romaji}</span>
            </h2>
            <button type="button" className="kana-dialog__close" onClick={onClose} aria-label="Close">
              <svg viewBox="0 0 20 20" aria-hidden="true"><path d="M5 5l10 10M15 5 5 15" /></svg>
            </button>
          </header>

          <div className="kana-dialog__content">
            {status === 'loading' && <Loader label="Loading stroke order…" compact />}

            {status === 'error' && (
              <div className="kana-dialog__error" role="alert">
                <p>Could not load the stroke order.</p>
                <button type="button" className="btn btn--primary" onClick={retry}>Try again</button>
              </div>
            )}

            {status === 'ready' && [...selected.kana].map((char, i) => (
              <section key={i} className="kana-dialog__char">
                <StrokeAnimation character={char} strokes={strokes[char]} />
                <div className="kana-dialog__steps">
                  <h3 className="kana-dialog__label">Stroke order{selected.kana.length > 1 && <> · <span lang="ja">{char}</span></>}</h3>
                  <StrokeSteps character={char} strokes={strokes[char]} />
                </div>
              </section>
            ))}
          </div>

          {items.length > 1 && index >= 0 && (
            <nav className="kana-dialog__nav" aria-label="Move between kana">
              <ArrowButton direction="previous" target={previous} onSelect={onSelect} />
              <span className="kana-dialog__position">{index + 1} / {items.length}</span>
              <ArrowButton direction="next" target={next} onSelect={onSelect} />
            </nav>
          )}
        </div>
      )}
    </dialog>
  );
}

function ArrowButton({ direction, target, onSelect }) {
  const label = direction === 'previous' ? 'Previous kana' : 'Next kana';
  return (
    <button type="button" className="kana-dialog__step" disabled={!target} onClick={() => onSelect(target)}
      aria-label={target ? `${label}: ${target.kana}` : label} title={label}>
      <svg viewBox="0 0 20 20" aria-hidden="true"><path d={ARROWS[direction]} /></svg>
    </button>
  );
}
