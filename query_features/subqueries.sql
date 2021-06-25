/*Query imbedded in a query's 
    SELECT statement*/
SELECT
    station_id,
    num_bikes_availble,
    (SELECT
        AVG(num_bikes_available)
    FROM new_york.citibike_stations)
FROM new_york.citibike_stations;

/*Returns a table of the number of rides 
    starting at each bike station using an 
    imbedded query in the FROM statement*/
SELECT
    station_id,
    name,
    number_of_rides AS number_of_rides_starting_at_station
FROM
    (SELECT
        start_station_id
        COUNT(*) number_of_rides
    FROM
        new_york.citibike_trips
    GROUP BY
        start_station_id)
AS station_num_trips
INNER JOIN
    new_york.citibike_stations ON station_id = start_station_id
ORDER BY
    number_of_rides DESC;
