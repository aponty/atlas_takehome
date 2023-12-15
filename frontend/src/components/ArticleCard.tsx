import "./ArticleCard.css";
import { Link } from "react-router-dom";
import ArticleType from '../types/ArticleType';

export default function ArticleCard({ id, title, thumbnail }: ArticleType) {
    return (
        <div className={'article-card'} key={id}>
            <img className={'article-image'} alt="article-thumbnail" src={thumbnail} />
            <Link to={`/articles/${id}`}>
                <h3>{title}</h3>
            </Link>
            <div className="author">1 Hour Ago : Rachel Chung</div>
        </div>
    )
}
