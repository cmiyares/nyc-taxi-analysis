-- Top 10 pickup zones by trip volume

SELECT
    z.zone,
    z.borough,
    COUNT(*) AS trip_count
FROM taxi_trips t
JOIN taxi_zones z
    ON t.pulocationid = z.locationid
GROUP BY z.zone, z.borough
ORDER BY trip_count DESC
LIMIT 10;