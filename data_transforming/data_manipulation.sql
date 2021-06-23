/*This query uses multiple functions to create new metrics
    and then sorts the new table by the new data points
    CONCAT(), combines string variables into one string
    COUNT(), counts number of entries in table*/
SELECT
    usertype,
    CONCAT(start_station_name, 'to', end_station_name) AS route,
    COUNT(*) AS num_trips,
    ROUND(AVG(CAST(tripduration AS int) / 60), 2) AS duration,
FROM
    new_york.citibike_trips
GROUP BY
    start_station_name,
    end_station_name,
    usertype
ORDER BY
    num_trips DESC
LIMIT 10;