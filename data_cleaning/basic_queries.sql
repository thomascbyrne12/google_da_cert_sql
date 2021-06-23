--Returns Individual Column
SELECT 
    Name
FROM 
    media_types;

--Inserts row of data into table
INSERT INTO customer_data.customer_address
    (customer_id, address, city, stat, zipcode, country)
VALUES
    (2645, '333 SQL Road', 'Jackson', 'MS', 49202, 'US');

--Changes data point within row of data
UPDATE 
    customer_data.customer_address
SET 
    address = '123 New Address'
WHERE 
    customer_id = 2645;

--Returns all data which fits condition
SELECT 
    LastName, Country
FROM 
    customers
WHERE 
    Country = 'Germany';

--Returns data without duplicates
SELECT
    DISTINCT customer_id
FROM   
    customer_data.customer_address;

--Returns multiple columns of data
SELECT
    TrackId, AlbumId, Composer, UnitPrice
FROM
    tracks;