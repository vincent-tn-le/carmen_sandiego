WITH stg_europe AS (
    SELECT 
        int64_field_0 as id,
        date_witness,
        witness,
        agent,
        date_filed as date_agent,
        region_hq as city_agent,
        country,
        city,
        lat_ as latitude,
        long_ as longitude,
        armed_ as has_weapon,
        chapeau_ as has_hat,
        coat_ as has_jacket,
        observed_action as behavior
    FROM cascade.europe
)

SELECT * from stg_europe