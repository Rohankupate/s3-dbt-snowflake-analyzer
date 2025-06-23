with src_movies as (
    select * from {{ref('src_movies')}}
    )
select 
      movie_id, 
      INITCAP(trim('title')) as movie_title , 
      SPLIT(genres , '|') as genres_array ,
      genres
from src_movies 