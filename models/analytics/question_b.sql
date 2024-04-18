{{ config(materialized="view") }}

SELECT 
    month_witnessed,
    SUM(CASE WHEN has_weapon = true AND has_jacket = true AND has_hat = false THEN 1 ELSE 0 END) as probability_count,
    COUNT(*) as total_count,
    SUM(CASE WHEN has_weapon = true AND has_jacket = true AND has_hat = false THEN 1 ELSE 0 END) * 1.0 / COUNT(*) AS probability
FROM
    dbt_vle.all_sightings
GROUP BY
    month_witnessed
ORDER BY
    month_witnessed ASC