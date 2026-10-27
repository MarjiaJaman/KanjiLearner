// Katakana and hiragana sit 0x60 code points apart, so on'yomi can be shown in hiragana too.
export function toHiragana(text) {
  return text.replace(/[ァ-ヶ]/g, (ch) => String.fromCharCode(ch.charCodeAt(0) - 0x60));
}

// Every reading of the kanji in hiragana: the main reading, then kun'yomi, then on'yomi, without duplicates.
export function readings(kanji) {
  const all = [kanji.mainReading, kanji.kunyomi, kanji.onyomi]
    .flatMap((list) => (list || '').split(','))
    .map((r) => toHiragana(r.trim()))
    .filter(Boolean);
  return [...new Set(all)];
}

// The reading shown on the kanji's card: its main reading if set (いち for 一),
// else the kun'yomi, else the first on'yomi in hiragana (like まん for 万).
export function mainReading(kanji) {
  return kanji.mainReading || kanji.kunyomi || toHiragana((kanji.onyomi || '').split(',')[0].trim());
}
