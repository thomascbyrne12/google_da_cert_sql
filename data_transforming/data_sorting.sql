/*Filter dataset for results
    in the Comedy genre*/
SELECT
    *
FROM
    movie_data.movies
WHERE
    Genre = 'Comedy';

/*Filters table for results from 
    Germany with a total greater than $5*/
SELECT
    *
FROM
    invoices
WHERE 
    BillingCountry = 'Germany'
AND
    Total > 5;

/*Returns all data on Comdey movies that made 
    over $300,000,000 with most recently 
    released movies listed first*/
SELECT
    *
FROM
    movie_data.movies
WHERE
    Genre = 'Comedy'
AND
    Revenue > 300000000
ORDER BY
    Realse_Date DESC;

/*Returns a list of Genre 
    names in alphabetical order*/
SELECT
    Name
FROM
    Genres
ORDER BY Name;

--Returns a table of sorted and filtered data
SELECT
    *
FROM
    Tracks
WHERE
    Composer = 'Chris Cornell'
AND
    UnitPrice < 1
ORDER BY
    GenreID;

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
