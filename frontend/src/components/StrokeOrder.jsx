import { useState } from 'react';
import STROKES from '../data/strokes.json';
import './StrokeOrder.css';

// Stroke paths come from KanjiVG (https://kanjivg.tagaini.net), CC BY-SA 3.0, drawn on a 109×109 grid.
const VIEW_BOX = '0 0 109 109';
const STROKE_SECONDS = 0.6;

// Where the pen goes down: the first point of the path ("M x,y ...").
function startPoint(path) {
  const [, x, y] = path.match(/^M\s*(-?[\d.]+)[,\s]+(-?[\d.]+)/);
  return { x: Number(x), y: Number(y) };
}

function Grid() {
  return (
    <g className="stroke-grid">
      <line x1="54.5" y1="0" x2="54.5" y2="109" />
      <line x1="0" y1="54.5" x2="109" y2="54.5" />
    </g>
  );
}

// The kanji drawing itself stroke by stroke, with a small replay control in the corner.
export function StrokeAnimation({ kanjiCharacter }) {
  const strokes = STROKES[kanjiCharacter];
  const [playCount, setPlayCount] = useState(0);

  if (!strokes) {
    return <div className="stroke-animation stroke-animation--text" lang="ja">{kanjiCharacter}</div>;
  }

  return (
    <div className="stroke-animation">
      {/* Changing the key remounts the SVG, which restarts the CSS animation. */}
      <svg key={playCount} viewBox={VIEW_BOX} role="img" aria-label={`How to write ${kanjiCharacter}`}>
        <Grid />
        {strokes.map((d, i) => <path key={`ghost-${i}`} d={d} className="stroke-animation__ghost" />)}
        {strokes.map((d, i) => (
          <path key={i} d={d} pathLength="1" className="stroke-animation__draw"
            style={{ animationDelay: `${i * STROKE_SECONDS}s`, animationDuration: `${STROKE_SECONDS}s` }} />
        ))}
      </svg>
      <button type="button" className="stroke-animation__replay" onClick={() => setPlayCount((n) => n + 1)}
        aria-label="Replay stroke animation" title="Replay">
        <svg viewBox="0 0 24 24" aria-hidden="true">
          <path d="M4 12a8 8 0 1 0 2.4-5.7" />
          <path d="M4 4v4.5h4.5" />
        </svg>
      </button>
    </div>
  );
}

// One small frame per stroke: earlier strokes in ink, the new stroke in color, a dot where the pen starts.
export function StrokeSteps({ kanjiCharacter }) {
  const strokes = STROKES[kanjiCharacter];

  if (!strokes) return <p className="stroke-steps__missing">Stroke order is not available for this kanji yet.</p>;

  return (
    <ol className="stroke-steps" aria-label={`Stroke order of ${kanjiCharacter}, step by step`}>
      {strokes.map((d, step) => {
        const start = startPoint(d);
        return (
          <li key={step} className="stroke-steps__step">
            <svg viewBox={VIEW_BOX} aria-hidden="true">
              <Grid />
              {strokes.slice(0, step).map((done, i) => <path key={i} d={done} className="stroke-steps__done" />)}
              <path d={d} className="stroke-steps__current" />
              <circle cx={start.x} cy={start.y} r="5" className="stroke-steps__start" />
            </svg>
            <span className="stroke-steps__number">{step + 1}</span>
          </li>
        );
      })}
    </ol>
  );
}
