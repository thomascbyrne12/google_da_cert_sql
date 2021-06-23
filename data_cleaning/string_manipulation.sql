--Variable Creation
SELECT 
    LENGTH(country) AS letters_in_country
FROM
    customer_data.customer_address;

--Uses length() function
SELECT
    country
FROM
    customer_data.customer_address
WHERE
    LENGTH(country) > 2;

--Uses substr() function
SELECT
    DISTINCT customer_id
FROM
    customer_data.customer_address
WHERE
    SUBSTR(country, 1, 2) = 'US';

--Locates data points which need to be trimmed
SELECT
    state
FROM
    customer_data.customer_address
WHERE
    LENGTH(state) > 2;

--Using the trim() function
SELECT
    DISTINCT customer_id
FROM
    customer_data.customer_address
WHERE
    TRIM(state) = 'OH ';

--Filtering out results for values less than $20
SELECT
    CustomerId, InvoiceDate, Total
FROM
    invoices
WHERE
    Total > 20;
