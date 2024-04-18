    SELECT
        witnessed as date_witness,
        observer as witness,
        field_chap as agent,
        reported as date_agent,
        interpol_spot as city_agent,
        nation as country,
        place as city,
        lat as latitude,
        long as longitude,
        has_weapon,
        has_hat,
        has_jacket,
        state_of_mind as behavior
    FROM cascade.australia