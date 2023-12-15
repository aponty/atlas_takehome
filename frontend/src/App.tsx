import './App.css';
import {
  BrowserRouter as Router,
  Routes,
  Route,
} from "react-router-dom";
import Articles from './components/Articles';
import Article from './components/Article';
import Navbar from './components/Navbar';

export default function App() {
  return (
    <Router>
      <Navbar />
      <Routes>
        <Route path="/" element={<Articles />} />
        <Route path="/articles/:id" element={<Article />} />
      </Routes>
    </Router>
  );
}

