import { readings, toHiragana } from './readings';

const KANJI = /\p{Script=Han}/gu;

// Typing kanji (like 日月 or 学校) matches each of them. Otherwise the query matches
// any English meaning or reading (katakana input is read as hiragana).
export function matchesQuery(kanji, query) {
  const q = query.trim().toLowerCase();
  if (!q) return true;
  const typedKanji = q.match(KANJI);
  if (typedKanji) return typedKanji.includes(kanji.kanjiCharacter);
  const kana = toHiragana(q);
  return kanji.englishMeaning.toLowerCase().includes(q)
    || readings(kanji).some((r) => r.startsWith(kana));
}
