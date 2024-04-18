WITH all_sightings AS (
    SELECT 'Africa' as agency_region, EXTRACT(MONTH from date_witness) as month_witnessed, * FROM dbt_vle.stg_africa 
    UNION ALL
    SELECT 'America' as agency_region, EXTRACT(MONTH from date_witness) as month_witnessed, * FROM dbt_vle.stg_america
    UNION ALL
    SELECT 'Asia' as agency_region, EXTRACT(MONTH from date_witness) as month_witnessed, * FROM dbt_vle.stg_asia
    UNION ALL
    SELECT 'Atlantic' as agency_region, EXTRACT(MONTH from date_witness) as month_witnessed, * FROM dbt_vle.stg_atlantic 
    UNION ALL
    SELECT 'Australia' as agency_region, EXTRACT(MONTH from date_witness) as month_witnessed, * FROM dbt_vle.stg_australia
    UNION ALL
    SELECT 'Europe' as agency_region, EXTRACT(MONTH from date_witness) as month_witnessed, * FROM dbt_vle.stg_europe
    UNION ALL
    SELECT 'Indian' as agency_region, EXTRACT(MONTH from date_witness) as month_witnessed, * FROM dbt_vle.stg_indian 
    UNION ALL
    SELECT 'Pacific' as agency_region, EXTRACT(MONTH from date_witness) as month_witnessed, * FROM dbt_vle.stg_pacific
)

SELECT * FROM all_sightings