import './Articles.css';
import { useState } from 'react';
import { useQuery, gql } from '@apollo/client';
import InfiniteScroll from 'react-infinite-scroll-component';
import ArticleType from '../types/ArticleType';
import ArticleCard from './ArticleCard';

const GET_ARTICLES = gql`
    query GetArticles ($page: Int!){
        articles(page: $page) {
            title
            thumbnail
            id
        }
    }
`;

export default function Articles() {
    const [page, setPage] = useState(1);
    const { loading, error, data, fetchMore } = useQuery(
        GET_ARTICLES,
        { variables: { page } }
    );

    const refetch = () => {
        setPage(page + 1);
        fetchMore({ variables: { page: page + 1 } })
    }

    if (loading) return <p>Loading...</p>;
    if (error) return <p>Error : {error.message}</p>;

    return (
        <InfiniteScroll
            dataLength={data.articles.length}
            scrollThreshold="200px"
            next={() => refetch()}
            hasMore={true}
            loader={<h4>Loading...</h4>}
            endMessage={
                <p style={{ textAlign: 'center' }}>
                    <b>You have seen it all</b>
                </p>
            }
        >
            {data.articles.map((data: ArticleType) => {
                const { id, title, thumbnail } = data;
                return <ArticleCard
                    id={id}
                    title={title}
                    thumbnail={thumbnail}
                />
            })}
        </InfiniteScroll>
    )
}