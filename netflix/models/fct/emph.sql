with emph as (
    select * from {{ ref('dim_movies_with_tag') }}
)
select * from emph 