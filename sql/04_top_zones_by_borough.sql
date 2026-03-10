-- Top pickup zones within each borough

WITH zone_trips AS (
    SELECT
        z.borough,
        z.zone,
        COUNT(*) AS trip_count
    FROM taxi_trips t
    JOIN taxi_zones z
        ON t.pulocationid = z.locationid
    GROUP BY z.borough, z.zone
),

ranked_zones AS (
    SELECT
        borough,
        zone,
        trip_count,
        ROW_NUMBER() OVER (
            PARTITION BY borough
            ORDER BY trip_count DESC
        ) AS zone_rank
    FROM zone_trips
)

SELECT
    borough,
    zone,
    trip_count
FROM ranked_zones
WHERE zone_rank <= 3
ORDER BY borough, trip_count DESC;