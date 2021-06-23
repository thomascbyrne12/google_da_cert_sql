/*Return all purchase prices in descending order
    as float variables */
SELECT
    CAST(purchase_price AS FLOAT)
FROM
    customer_data.customer_purchase
ORDER BY
    CAST(purchase_price AS FLOAT) DESC;

--Returns table of purchases in December 2020
SELECT
    CAST(date AS DATE) AS DATE only,
    purchase_price
FROM
    customer_data.customer_purchase
WHERE
    date BETWEEN '2020-12-01' AND '2020-12-31';

/*Returns list of color and product code data
    for couch purchases */
SELECT
    CONCAT(product_code, product_color) AS new_product_code
FROM
    customer_data.customer_purchase
WHERE
    product = 'couch'

--Returns list of products sold
SELECT
    COALESCE(product, product_code) AS product_info
FROM
    customer_data.customer_purchase;


SELECT
    customer_id,
    CASE
        WHEN first_name = 'Tnoy' THEN 'Tony'
        WHEN first_name = 'Tmo' THEN 'Tom'
        WHEN first_name = 'Rachle' THEN 'Rachel'
        ELSE first_name
        END AS cleaned_name
FROM
    customer_data.customer_name;
