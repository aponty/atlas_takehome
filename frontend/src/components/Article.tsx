import "./Article.css"
import { useQuery, gql } from '@apollo/client';
import { useParams } from 'react-router-dom';

const GET_ARTICLE = gql`
    query GetArticle ($id: ID!){
        article(id: $id) {
            title
            header
            body
        }
    }
`;

export default function Article() {
    let { id } = useParams();
    const { loading, error, data } = useQuery(
        GET_ARTICLE,
        { variables: { id } }
    );
    if (loading) return <p>Loading...</p>;
    if (error) return <p>Error : {error.message}</p>;

    const { article } = data;
    const { title, body, header } = article;
    return (
        <div className='article-container'>
            <div className='article-image-container'>
                <img className='article-header' alt="article-header" src={header} />
            </div>
            <div className='article-text-container'>
                <h3 className='article-title'>{title}</h3>
                <div className="author">1 Hour Ago : Rachel Chung</div>
                <p className='article-body'>{body}</p>
            </div>
        </div>
    )
}