{%snapshot tags_snap%}
{{ config(
    target_schema='snapshots',
    unique_key=['user_id', 'movie_id' , 'tag'],
    strategy='timestamp',
    updated_at='tags_timestamp',
    invalidate_hard_deletes=True
) }}

select 
    
    {{dbt_utils.generate_surrogate_key(['user_id', 'movie_id' , 'tag'])}} as row_key,
    user_id ,
    movie_id,
    tag,
    cast(tags_timestamp as timestamp_ntz) as tags_timestamp
from {{ ref('src_tags')}}

{% endsnapshot %}