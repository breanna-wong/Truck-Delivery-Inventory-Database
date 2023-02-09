# Inventory Management Database for Delivery Trucks

This database is designed to keep track of delivery trucks and the deliveries they make. It has two tables: `trucks` and `deliveries`.

## Trucks Table

The `trucks` table contains information about each delivery truck, including:

-   `truck_id`: a unique identifier for each truck
-   `truck_make`: the make of the truck (e.g. Ford, Chevrolet)
-   `truck_model`: the model of the truck (e.g. F-150, Silverado)
-   `truck_year`: the year the truck was manufactured
-   `truck_capacity`: the maximum capacity of the truck, in pounds

## Deliveries Table

The `deliveries` table contains information about each delivery, including:

-   `delivery_id`: a unique identifier for each delivery
-   `truck_id`: the identifier of the truck that made the delivery
-   `product_name`: the name of the product that was delivered
-   `product_quantity`: the quantity of the product that was delivered, in pounds
-   `delivery_date`: the date the delivery was made

The `deliveries` table has a foreign key constraint that links each delivery to a truck in the `trucks` table.

## Example Usage

Here's an example of how you could use the database:
```
-- Find all the deliveries made by truck with ID 1
SELECT * FROM deliveries
WHERE truck_id = 1;

-- Find the total quantity of product delivered on 2022-01-01
SELECT SUM(product_quantity)
FROM deliveries
WHERE delivery_date = '2022-01-01';

-- Find the truck with the highest capacity
SELECT *
FROM trucks
ORDER BY truck_capacity DESC
LIMIT 1;
```
