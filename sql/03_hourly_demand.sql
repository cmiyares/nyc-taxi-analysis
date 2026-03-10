-- Trip demand by pickup hour

SELECT
    EXTRACT(HOUR FROM tpep_pickup_datetime) AS pickup_hour,
    COUNT(*) AS trip_count
FROM taxi_trips
GROUP BY pickup_hour
ORDER BY pickup_hour;