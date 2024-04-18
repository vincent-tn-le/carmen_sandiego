SELECT 
    behavior,
    count(*) AS behavior_count
FROM
    dbt_vle.all_sightings
GROUP BY
    behavior
ORDER BY
    behavior_count DESC
LIMIT 3