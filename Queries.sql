-- Find all the deliveries made by truck with ID 1
SELECT
    *
FROM
    deliveries
WHERE
    truck_id = 1;

-- Find the total quantity of product delivered on 2022-01-01
SELECT
    SUM(product_quantity)
FROM
    deliveries
WHERE
    delivery_date = '2022-01-01';

-- Find the truck with the highest capacity
SELECT
    *
FROM
    trucks
ORDER BY
    truck_capacity DESC
LIMIT
    1;

-- Find all trucks in the truck table with truck year 2021
SELECT
    *
FROM
    trucks
WHERE
    truck_year = 2021;

-- List all values in the deliveries table ordered by product_quantity in ascending order
SELECT
    *
FROM
    deliveries
ORDER BY
    product_quantity ASC;

-- List all values in the deliveries table ordered by product_quantity in descending order
SELECT
    *
FROM
    deliveries
ORDER BY
    product_quantity DESC;

-- List all values in the trucks table where the truck_capacity is less than 1500
SELECT
    truck_id
FROM
    trucks
WHERE
    truck_capacity < 1500;