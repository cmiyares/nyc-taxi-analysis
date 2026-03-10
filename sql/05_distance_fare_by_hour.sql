-- Average trip distance and fare by pickup hour

SELECT
    EXTRACT(HOUR FROM tpep_pickup_datetime) AS pickup_hour,
    ROUND(AVG(trip_distance), 2) AS avg_trip_distance,
    ROUND(AVG(fare_amount), 2) AS avg_fare,
    COUNT(*) AS trip_count
FROM taxi_trips
GROUP BY pickup_hour
ORDER BY pickup_hour;