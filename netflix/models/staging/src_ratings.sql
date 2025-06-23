{{config(materialized = 'table')}}

with raw_ratings AS(
select * from MOVIELENS.RAW.RAW_RATINGS)
SELECT 
    userId as user_id , 
    movieId as movie_id,
    rating,
    TO_TIMESTAMP_LTZ(timestamp) AS ratings_timestamp 
FROM raw_ratings 