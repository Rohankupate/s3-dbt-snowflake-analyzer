{{config(materialized = 'table')}}
with raw_tags AS(
select * from MOVIELENS.RAW.RAW_TAGS)
SELECT 
    userId as user_id , 
    movieId as movie_id,
    tag,
    TO_TIMESTAMP_LTZ(timestamp) AS tags_timestamp 
FROM raw_tags  
