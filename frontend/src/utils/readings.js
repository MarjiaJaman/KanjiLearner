// Katakana and hiragana sit 0x60 code points apart, so katakana readings can be shown in hiragana too.
export function toHiragana(text) {
  return text.replace(/[ァ-ヶ]/g, (ch) => String.fromCharCode(ch.charCodeAt(0) - 0x60));
}

export function toKatakana(text) {
  return text.replace(/[ぁ-ゖ]/g, (ch) => String.fromCharCode(ch.charCodeAt(0) + 0x60));
}

// Every reading of the kanji in hiragana: the main reading, then the hiragana readings, then the katakana ones, without duplicates.
export function readings(kanji) {
  const all = [kanji.mainReading, kanji.kunyomi, kanji.onyomi]
    .flatMap((list) => (list || '').split(','))
    .map((r) => toHiragana(r.trim()))
    .filter(Boolean);
  return [...new Set(all)];
}

// The reading shown on the kanji's card: its main reading if set (いち for 一),
// else the hiragana reading, else the first katakana reading in hiragana (like まん for 万).
export function mainReading(kanji) {
  return kanji.mainReading || kanji.kunyomi || toHiragana((kanji.onyomi || '').split(',')[0].trim());
}
