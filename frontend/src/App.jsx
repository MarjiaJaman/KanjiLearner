import { Routes, Route, Navigate } from 'react-router-dom';
import Layout from './components/Layout';
import KanjiListPage from './pages/KanjiListPage';
import KanjiDetailPage from './pages/KanjiDetailPage';
import KanaPage from './pages/KanaPage';

export default function App() {
  return (
    <Layout>
      <Routes>
        <Route path="/" element={<KanjiListPage />} />
        <Route path="/kanji" element={<Navigate to="/" replace />} />
        <Route path="/kanji/:id" element={<KanjiDetailPage />} />
        <Route path="/hiragana" element={<KanaPage key="hiragana" script="hiragana" />} />
        <Route path="/katakana" element={<KanaPage key="katakana" script="katakana" />} />
      </Routes>
    </Layout>
  );
}
