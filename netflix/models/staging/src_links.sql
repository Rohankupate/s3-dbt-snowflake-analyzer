WITH raw_links as (
    select * from MOVIELENS.RAW.RAW_LINKS )
select 
    movieID as movie_id ,
    imdbId as imdb_id ,
    tmdbId as tmdb_id
from raw_links 
