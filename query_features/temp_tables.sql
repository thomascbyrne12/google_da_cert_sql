/*Saves a table under a name to use later,
     called a temporary table*/
/*CREATE TABLE, CREATE TEMP TABLE, and SELECT INTO 
    can also be used to create temp_tables*/
WITH trips_over_1_hr AS (
    SELECT
        *
    FROM
        new_york.citibike_trips
    WHERE
        trip_duration >= 60
);

--Uses temp table
SELECT
    COUNT(*) AS cnt 
FROM
    trips_over_1_hr;
