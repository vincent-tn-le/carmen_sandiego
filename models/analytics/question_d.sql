WITH count_behaviors AS (
    SELECT
        month_witnessed,
        behavior,
        count(*) AS behavior_count
    FROM
        dbt_vle.all_sightings
    WHERE
        behavior IN ('out-of-control', 'complaining', 'happy')
    GROUP BY
        month_witnessed,
        behavior
),
total_counts AS (
    SELECT
        month_witnessed,
        SUM(behavior_count) AS total_count
    FROM
        count_behaviors
    GROUP BY
        month_witnessed
)

SELECT 
    cb.month_witnessed,
    cb.behavior,
    cb.behavior_count,
    tc.total_count,
    cb.behavior_count * 1.0 / tc.total_count AS probability
FROM
    count_behaviors cb
INNER JOIN
   total_counts tc ON cb.month_witnessed = tc.month_witnessed
ORDER BY 
    month_witnessed ASC