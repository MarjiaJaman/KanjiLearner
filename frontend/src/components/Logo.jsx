export default function Logo({ className }) {
  return (
    <svg className={className} viewBox="0 0 32 32" role="img" aria-label="Kanji Learner logo">
      <rect width="32" height="32" rx="8" fill="var(--accent)" />
      <polygon points="16,9 25,13.5 16,18 7,13.5" fill="#fff" />
      <rect x="12" y="15.4" width="8" height="3.4" rx="1" fill="#fff" opacity="0.92" />
      <line x1="23" y1="14.6" x2="23" y2="20.4" stroke="#fff" strokeWidth="1.4" strokeLinecap="round" />
      <circle cx="23" cy="21.4" r="1.5" fill="#fff" />
    </svg>
  );
}
