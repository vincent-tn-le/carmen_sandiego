WITH stg_asia AS (
    SELECT
        int64_field_0 as id,
        sighting as date_witness,
        citizen as witness,
        officer as agent,
        ______ as date_agent,
        city_interpol as city_agent,
        nation as country,
        city as city,
        _______5 as latitude,
        _______6 as longitude,
        has_weapon,
        has_hat,
        has_jacket,
        behavior
    FROM cascade.asia
)

SELECT * from stg_asia