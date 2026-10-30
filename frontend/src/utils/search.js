import { PALETTE } from '../data/palette';

const KANJI = /\p{Script=Han}/gu;

// Search goes by character only. The kanji typed (like 日月 or 学校) are sent to the
// backend, which returns those kanji. Meanings and readings are not searched.
export function kanjiIn(query) {
  return (query.match(KANJI) || []).join('');
}

// Each hiragana or katakana typed, in the script it was typed in (か → か, カ → カ), using the
// chart from /api/kana. Two-character combinations like きゃ are read first.
export function findKana(query, kanaList = []) {
  const byChar = new Map();
  for (const k of kanaList) {
    const card = { romaji: k.romaji, color: PALETTE[k.rowIndex % PALETTE.length] };
    byChar.set(k.hiragana, { ...card, kana: k.hiragana });
    byChar.set(k.katakana, { ...card, kana: k.katakana });
  }

  const results = [];
  for (let i = 0; i < query.length;) {
    const match = byChar.get(query.slice(i, i + 2)) || byChar.get(query[i]);
    i += match ? match.kana.length : 1;
    if (match && !results.includes(match)) results.push(match);
  }
  return results;
}
