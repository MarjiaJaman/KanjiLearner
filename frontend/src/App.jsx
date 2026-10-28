import { Routes, Route, Navigate } from 'react-router-dom';
import Layout from './components/Layout';
import KanjiListPage from './pages/KanjiListPage';
import KanjiDetailPage from './pages/KanjiDetailPage';

export default function App() {
  return (
    <Layout>
      <Routes>
        <Route path="/" element={<KanjiListPage />} />
        <Route path="/kanji" element={<Navigate to="/" replace />} />
        <Route path="/kanji/:id" element={<KanjiDetailPage />} />
      </Routes>
    </Layout>
  );
}
