{{
  config(
    materialized = 'incremental',
    on_schema_change = 'fail'
 )
}}

with src_ratings as (
    select * from {{ref('src_ratings')}}
)
select 
    user_id ,
    movie_id, 
    rating , 
    ratings_timestamp,
from src_ratings
where rating is not null
{%if is_incremental() %}
 AND ratings_timestamp > (select max(ratings_timestamp) from {{this }} )
{%endif%}