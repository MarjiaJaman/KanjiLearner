import axios from 'axios';
import { API_URL } from './kanjiApi';

// Expected JSON: [{ id, section, rowIndex, columnIndex, hiragana, katakana, romaji }]
export async function getKana() {
  const { data } = await axios.get(`${API_URL}/kana`);
  return data;
}

// Stroke paths for each character typed, e.g. 'きゃ' → { き: [d, ...], ゃ: [d, ...] }.
export async function getStrokes(characters) {
  const { data } = await axios.get(`${API_URL}/strokes`, { params: { characters } });
  return data;
}
