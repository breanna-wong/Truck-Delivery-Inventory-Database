CREATE DATABASE InventoryManagement;

USE InventoryManagement;

CREATE TABLE trucks (
    truck_id INT PRIMARY KEY,
    truck_make VARCHAR(50) NOT NULL,
    truck_model VARCHAR(50) NOT NULL,
    truck_year INT NOT NULL,
    truck_capacity INT NOT NULL
);

CREATE TABLE deliveries (
    delivery_id INT PRIMARY KEY,
    truck_id INT NOT NULL,
    product_name VARCHAR(50) NOT NULL,
    product_quantity INT NOT NULL,
    delivery_date DATE NOT NULL,
    FOREIGN KEY (truck_id) REFERENCES trucks(truck_id)
);

INSERT INTO
    trucks (
        truck_id,
        truck_make,
        truck_model,
        truck_year,
        truck_capacity
    )
VALUES
    (1, 'Ford', 'F-150', 2019, 1500),
    (2, 'Chevrolet', 'Silverado', 2020, 2500),
    (3, 'Toyota', 'Tacoma', 2021, 1000),
    (4, 'Ram', '1500', 2022, 1500),
    (5, 'GMC', 'Sierra 1500', 2021, 1700),
    (6, 'Nissan', 'Titan', 2020, 2000),
    (7, 'Chevrolet', 'Colorado', 2022, 1000),
    (8, 'Honda', 'Ridgeline', 2021, 1500),
    (9, 'Ford', 'Ranger', 2020, 1300),
    (10, 'Jeep', 'Gladiator', 2021, 1700),
    (11, 'Dodge', 'Ram 1500', 2022, 1500),
    (12, 'Tesla', 'Cybertruck', 2022, 2000),
    (13, 'Chevrolet', 'Silverado 1500', 2020, 1700),
    (14, 'Ram', '2500', 2021, 2500),
    (15, 'GMC', 'Sierra 2500HD', 2022, 3000),
    (16, 'Toyota', 'Tundra', 2021, 2500),
    (17, 'Nissan', 'Frontier', 2020, 1300),
    (18, 'Ford', 'F-250', 2022, 2500),
    (19, 'Jeep', 'Scrambler', 2021, 1700),
    (20, 'Chevrolet', 'Silverado 2500HD', 2020, 3000),
    (21, 'Honda', 'Pilot', 2022, 1500),
    (22, 'Ram', '3500', 2021, 3500),
    (23, 'GMC', 'Sierra 3500HD', 2022, 4000),
    (24, 'Toyota', 'Sequoia', 2021, 3500),
    (25, 'Nissan', 'Armada', 2020, 3000),
    (26, 'Ford', 'F-350', 2022, 3500),
    (27, 'Jeep', 'Wrangler', 2021, 1700),
    (28, 'Chevrolet', 'Silverado 3500HD', 2020, 4000),
    (29, 'Honda', 'Passport', 2022, 1500),
    (30, 'Ram', '4500', 2021, 4500);

INSERT INTO
    deliveries (
        delivery_id,
        truck_id,
        product_name,
        product_quantity,
        delivery_date
    )
VALUES
    (1, 1, 'Food', 500, '2022-01-01'),
    (2, 2, 'Clothing', 1000, '2022-02-01'),
    (3, 1, 'Furniture', 300, '2022-03-01'),
    (4, 2, 'Electronics', 200, '2022-04-01'),
    (5, 3, 'Food', 150, '2022-05-01'),
    (6, 4, 'Clothing', 400, '2022-06-01'),
    (7, 5, 'Furniture', 200, '2022-07-01'),
    (8, 6, 'Electronics', 100, '2022-08-01'),
    (9, 7, 'Food', 500, '2022-09-01'),
    (10, 8, 'Clothing', 700, '2022-09-21'),
    (11, 9, 'Books', 100, '2022-10-01'),
    (12, 10, 'Toys', 200, '2022-11-01'),
    (13, 11, 'Sports Equipment', 150, '2022-12-01'),
    (14, 12, 'Tools', 400, '2023-01-01'),
    (15, 13, 'Home Decor', 200, '2023-02-01'),
    (16, 14, 'Music Instruments', 100, '2023-03-01'),
    (17, 15, 'Office Supplies', 500, '2023-04-01'),
    (18, 16, 'Beauty Products', 700, '2023-05-01'),
    (19, 17, 'Automotive Parts', 200, '2023-06-01'),
    (20, 18, 'Pet Supplies', 300, '2023-07-01'),
    (21, 19, 'Art Supplies', 400, '2023-08-01'),
    (22, 20, 'Gardening Supplies', 100, '2023-09-01'),
    (23, 21, 'Outdoor Gear', 200, '2023-10-01'),
    (24, 22, 'Clothing Accessories', 150, '2023-11-01'),
    (25, 23, 'Kitchen Supplies', 400, '2023-12-01'),
    (26, 24, 'Bathroom Supplies', 200, '2024-01-01'),
    (27, 25, 'Baby Products', 100, '2024-02-01'),
    (28, 26, 'Luggage', 500, '2024-03-01'),
    (29, 27, 'Shoes', 700, '2024-04-01'),
    (30, 28, 'Health Supplements', 200, '2024-05-01');