// How the kana chart from /api/kana is laid out: the order of its sections, their titles and
// notes, and how many columns each has. The kana themselves come from the backend.
export const KANA_SECTIONS = [
  { id: 'basic', title: 'Basic sounds', columns: 5 },
  {
    id: 'dakuten',
    title: 'Dakuten and handakuten',
    note: 'The marks ゛ and ゜ change the sound of a kana, like か (ka) → が (ga) and は (ha) → ぱ (pa).',
    columns: 5,
  },
  {
    id: 'combinations',
    title: 'Combinations',
    note: 'A small ゃ, ゅ or ょ after an i-sound kana blends the two, like き (ki) + ゃ → きゃ (kya).',
    columns: 3,
  },
];
