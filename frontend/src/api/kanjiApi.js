import axios from 'axios';

const API_URL = 'http://localhost:8080/api';

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

// Expected JSON: [{ id, kanjiCharacter, onyomi, kunyomi, englishMeaning }]
export async function getKanjiList() {
  if (USE_SAMPLE_DATA) return SAMPLE;
  const { data } = await axios.get(`${API_URL}/kanji`);
  return data;
}

// Expected JSON: { id, kanjiCharacter, onyomi, kunyomi, englishMeaning, strokeCount, displayOrder,
//   meanings: [{ id, meaning, sentence, sentenceReading, sentenceTranslation }],
//   readings: [{ id, reading, word, wordReading, wordMeaning, sentence, sentenceReading, sentenceTranslation }],
//   previous: { id, kanjiCharacter } | null, next: { id, kanjiCharacter } | null }
export async function getKanjiDetail(id) {
  if (USE_SAMPLE_DATA) {
    const kanji = SAMPLE.find((k) => String(k.id) === String(id));
    if (!kanji) throw new Error('Kanji not found');
    const meanings = kanji.englishMeaning.split(', ').map((meaning, i) => (
      { id: i, meaning, sentence: '', sentenceReading: '', sentenceTranslation: '' }
    ));
    return { ...kanji, jlptLevel: 'N5', strokeCount: null, displayOrder: kanji.id, meanings, readings: [] };
  }
  const { data } = await axios.get(`${API_URL}/kanji/${id}`);
  return data;
}
