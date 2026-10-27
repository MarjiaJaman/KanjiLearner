import { Routes, Route } from 'react-router-dom';
import Layout from './components/Layout';
import HomePage from './pages/HomePage';
import KanjiListPage from './pages/KanjiListPage';
import KanjiDetailPage from './pages/KanjiDetailPage';

export default function App() {
  return (
    <Layout>
      <Routes>
        <Route path="/" element={<HomePage />} />
        <Route path="/kanji" element={<KanjiListPage />} />
        <Route path="/kanji/:id" element={<KanjiDetailPage />} />
      </Routes>
    </Layout>
  );
}
