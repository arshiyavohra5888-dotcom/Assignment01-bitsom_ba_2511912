-- =========================
-- RESET DATABASE
-- =========================
DROP DATABASE IF EXISTS datawarehouse_db;
CREATE DATABASE datawarehouse_db;
USE datawarehouse_db;

-- =========================
-- DIMENSION TABLES
-- =========================

CREATE TABLE dim_date (
date_id INT PRIMARY KEY,
full_date DATE,
month INT,
year INT
);

CREATE TABLE dim_store (
store_id INT PRIMARY KEY,
store_name VARCHAR(100),
city VARCHAR(50)
);

CREATE TABLE dim_product (
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
category VARCHAR(50)
);

-- =========================
-- FACT TABLE
-- =========================

CREATE TABLE fact_sales (
sales_id INT PRIMARY KEY,
date_id INT,
store_id INT,
product_id INT,
quantity INT,
revenue DECIMAL(10,2),
FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);

-- =========================
-- SAMPLE CLEAN DATA
-- =========================

INSERT INTO dim_date VALUES
(1, '2024-01-01', 1, 2024),
(2, '2024-01-02', 1, 2024),
(3, '2024-01-03', 1, 2024);

INSERT INTO dim_store VALUES
(1, 'Store A', 'Mumbai'),
(2, 'Store B', 'Delhi');

INSERT INTO dim_product VALUES
(1, 'Laptop', 'Electronics'),
(2, 'T-Shirt', 'Clothing'),
(3, 'Milk', 'Groceries');

INSERT INTO fact_sales VALUES
(1,1,1,1,2,100000),
(2,1,2,2,5,4000),
(3,2,1,3,10,600),
(4,2,2,1,1,50000),
(5,3,1,2,3,2400),
(6,3,2,3,8,480),
(7,1,1,1,1,50000),
(8,2,2,2,4,3200),
(9,3,1,3,6,360),
(10,1,2,1,2,100000);

-- =========================
-- CHECK DATA
-- =========================

SELECT * FROM dim_date;
SELECT * FROM dim_store;
SELECT * FROM dim_product;
SELECT * FROM fact_sales;
