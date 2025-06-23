with src_ratings  AS(
select DISTINCT user_id from {{ref('src_ratings')}}
),
src_tags AS (
SELECT  DISTINCT user_id from 
    {{ref('src_tags')}}
 )
select DISTINCT user_id 
from (
    select * from src_ratings 
    UNION
    select * from src_tags 
)
