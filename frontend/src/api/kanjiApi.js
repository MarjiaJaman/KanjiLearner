import axios from 'axios';

export const API_URL = 'http://localhost:8080/api';

// Set to true to test the page before the Spring Boot backend is ready.
const USE_SAMPLE_DATA = false;

const SAMPLE = [
  { id: 1, kanjiCharacter: '日', onyomi: 'ニチ, ジツ', kunyomi: 'ひ, か', englishMeaning: 'day, sun' },
  { id: 2, kanjiCharacter: '月', onyomi: 'ゲツ, ガツ', kunyomi: 'つき', englishMeaning: 'month, moon' },
  { id: 3, kanjiCharacter: '火', onyomi: 'カ', kunyomi: 'ひ', englishMeaning: 'fire' },
  { id: 4, kanjiCharacter: '水', onyomi: 'スイ', kunyomi: 'みず', englishMeaning: 'water' },
  { id: 5, kanjiCharacter: '木', onyomi: 'モク, ボク', kunyomi: 'き', englishMeaning: 'tree, wood' },
  { id: 6, kanjiCharacter: '金', onyomi: 'キン, コン', kunyomi: 'かね', englishMeaning: 'gold, money' },
];

// One page of kanji in display order; characters (like '日月') limits it to those kanji.
// Expected JSON: { items: [{ id, kanjiCharacter, onyomi, kunyomi, englishMeaning, displayOrder, ... }],
//   page, size, totalItems, totalPages }
export async function getKanjiPage({ page = 1, size = 18, characters } = {}) {
  if (USE_SAMPLE_DATA) {
    const matches = characters ? SAMPLE.filter((k) => characters.includes(k.kanjiCharacter)) : SAMPLE;
    const totalPages = Math.ceil(matches.length / size);
    const current = Math.min(page, Math.max(1, totalPages));
    return { items: matches.slice((current - 1) * size, current * size), page: current, size, totalItems: matches.length, totalPages };
  }
  const { data } = await axios.get(`${API_URL}/kanji`, { params: { page, size, characters } });
  return data;
}

// Expected JSON: { id, kanjiCharacter, onyomi, kunyomi, englishMeaning, strokeCount, displayOrder,
//   meanings: [{ id, meaning, sentence, sentenceReading, sentenceTranslation }],
//   readings: [{ id, reading, word, wordReading, wordMeaning, sentence, sentenceReading, sentenceTranslation }],
//   strokes: [svg path, ...], previous: { id, kanjiCharacter } | null, next: { id, kanjiCharacter } | null }
export async function getKanjiDetail(id) {
  if (USE_SAMPLE_DATA) {
    const kanji = SAMPLE.find((k) => String(k.id) === String(id));
    if (!kanji) throw new Error('Kanji not found');
    const meanings = kanji.englishMeaning.split(', ').map((meaning, i) => (
      { id: i, meaning, sentence: '', sentenceReading: '', sentenceTranslation: '' }
    ));
    return { ...kanji, jlptLevel: 'N5', strokeCount: null, displayOrder: kanji.id, meanings, readings: [], strokes: [] };
  }
  const { data } = await axios.get(`${API_URL}/kanji/${id}`);
  return data;
}
