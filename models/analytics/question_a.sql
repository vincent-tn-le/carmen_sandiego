{{ config(materialized="view") }}

WITH regions_ranked AS (
    SELECT 
        month_witnessed,
        agency_region,
        count(*) as sighting_count,
        row_number() over(PARTITION BY month_witnessed ORDER BY COUNT(*) DESC) as rank
    FROM 
        dbt_vle.all_sightings
    GROUP BY 
        month_witnessed, 
        agency_region
)

SELECT
    month_witnessed,
    agency_region,
    sighting_count
FROM 
    regions_ranked
WHERE
    rank = 1
ORDER BY 
    month_witnessed ASC