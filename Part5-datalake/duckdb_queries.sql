-- =========================
-- Part 5: DuckDB Queries
-- =========================

-- NOTE:
-- Dataset does not include full structured columns in orders.json
-- Adjustments made based on available fields.

-- =========================
-- Q1: List all customers with total number of orders
-- =========================
SELECT
    c.name,
    COUNT(o.order_id) AS total_orders
FROM read_csv_auto('customers.csv') c
LEFT JOIN read_json_auto('orders.json') o
ON c.customer_id = o.customer_id
GROUP BY c.name;

-- =========================
-- Q2: Top 3 customers by number of orders
-- =========================
SELECT 
    c.name,
    COUNT(o.order_id) AS total_orders
FROM read_csv_auto('customers.csv') c
JOIN read_json_auto('orders.json') o
ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY COUNT(o.order_id) DESC
LIMIT 3;

-- =========================
-- Q3: Customers from Bangalore who placed orders
-- =========================
SELECT DISTINCT
    c.name
FROM read_csv_auto('customers.csv') c
JOIN read_json_auto('orders.json') o
ON c.customer_id = o.customer_id
WHERE c.city = 'Bangalore';

-- =========================
-- Q4: Join all three files
-- =========================
SELECT
    c.name,
    o.order_id,
    p.product_name
FROM read_csv_auto('customers.csv') c
JOIN read_json_auto('orders.json') o
ON c.customer_id = o.customer_id
JOIN read_parquet('products.parquet') p
ON o.product_id = p.product_id;