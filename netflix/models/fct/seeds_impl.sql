with seeds_crime As(
    select Robbery , Murder ,AggravatedAssault from {{ref('crime_2015')}}
)
select * from seeds_crime limit 100 