/*Uses JOIN to merge two tables, using 
    OUTER, RIGHT, or LEFT would return nulls*/
SELECT
    employees.name AS employee_name,
    employees.role AS employee_role,
    departments.name AS department_name
FROM
    employees
INNER JOIN
    departments ON
    employees.department_id = departments.department_id;

/*This query uses shorthand to create 
    aliases and join two tables*/
SELECT
    orders.*,
    warehouse.warehouse_alias,
    warehouse.state
FROM
    warehouse_orders.Orders orders
JOIN
    warehouse_orders.Warehouse warehouse ON orders.warehouse_id = warehouse.warehouse_id;

/*This query returns a table of the number of 
    orders per state*/
SELECT
    warehouse.state AS state,
    COUNT(DISTINCT warehouse.state) AS num_states
FROM
    warehouse_orders.Orders orders
JOIN
    warehouse_orders.Warehouse warehouse ON orders.warehouse_id = warehouse.warehouse_id
GROUP BY
    warehouse_state;

/*Creates a table of the number of rides per year*/
SELECT
    EXTRACT(YEAR FROM STARTTIME) as year,
    COUNT(*) AS num_of_rides,
FROM
    new_york.citibike_trips
GROUP BY
    year
ORDER BY
    year DESC;
