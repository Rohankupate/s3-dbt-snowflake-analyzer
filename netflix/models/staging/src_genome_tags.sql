with raw_genome_tags AS (
     select * from MOVIELENS.RAW.RAW_GENOME_TAGS)
SELECT 
     
     tagId as tag_id ,
     tag 
from  raw_genome_tags
