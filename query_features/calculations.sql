--Aggregating columns
SELECT
    columnA,
    columnB,
    columnA + columnB AS columnA
FROM
    table_name;

--Operators that work: +, *, %, -, /
SELECT
    columnA,
    columnB,
    columnC,
    columnA * columnB AS columnP,
    columnC - columnB AS columnS,
    columnA / columnB AS columnD,
    columnB % columnC AS columnM
FROM table_name;

/*Creates a total price column for each line item, 
    the table lists all available invoice data*/
SELECT 
invoice_line_id,
invoice_id,
unit_price,
quantity,
unit_price * quantity AS line_total
FROM
invoice_item 
LIMIT 5;

/*Returns Average Total in Wisconsin*/
SELECT
    billing_state,
    billing_country,
    SUM(total)/ COUNT(*) AS average_total
FROM
    invoice
WHERE
    billing_state = "WI";
