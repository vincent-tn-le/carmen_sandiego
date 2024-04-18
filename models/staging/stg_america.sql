WITH stg_america AS (
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
    FROM cascade.america
)

SELECT * from stg_america