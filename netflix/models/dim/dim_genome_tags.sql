with src_tags as (
select * from {{ref('src_genome_tags')}} )
select tag_id ,
    INITCAP(trim(tag)) as tagname
from src_tags