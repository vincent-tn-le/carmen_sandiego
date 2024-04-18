WITH stg_pacific AS (
    SELECT
        int64_field_0 as id,
        sight_on as date_witness,
        sighter as witness,
        filer as agent,
        file_on as date_agent,
        report_office as city_agent,
        nation as country,
        town as city,
        lat as latitude,
        long as longitude,
        has_weapon,
        has_hat,
        has_jacket,
        behavior
    FROM cascade.pacific
)

SELECT * from stg_pacific