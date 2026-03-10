-- Average fare and tip behavior by borough

SELECT
    z.borough,
    ROUND(AVG(t.fare_amount), 2) AS avg_fare,
    ROUND(AVG(t.tip_amount), 2) AS avg_tip,
    ROUND(AVG(t.tip_amount / NULLIF(t.fare_amount,0)) * 100, 2) AS avg_tip_percent,
    COUNT(*) AS trip_count
FROM taxi_trips t
JOIN taxi_zones z
    ON t.pulocationid = z.locationid
GROUP BY z.borough
ORDER BY avg_fare DESC;