WITH stg_atlantic AS (
    SELECT
        int64_field_0 as id,
        date_witness,
        witness,
        agent,
        date_agent,
        region_hq as city_agent,
        country,
        city,
        latitude,
        longitude,
        has_weapon,
        has_hat,
        has_jacket,
        behavior
    FROM cascade.atlantic
)

SELECT * from stg_atlantic