USE assignment_db;
-- Q1:
SELECT c.customer_name, SUM(o.quantity * p.unit_price) AS total_order_value
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id
WHERE c.customer_city = 'Mumbai'
GROUP BY c.customer_name;

-- Q2:
SELECT p.product_name, SUM(o.quantity) AS total_quantity
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_quantity DESC
LIMIT 3;

-- Q3:
SELECT s.sales_rep_name, COUNT(DISTINCT o.customer_id) AS unique_customers
FROM orders o
JOIN sales_reps s ON o.sales_rep_id = s.sales_rep_id
GROUP BY s.sales_rep_name;

-- Q4:
SELECT o.order_id, SUM(o.quantity * p.unit_price) AS total_value
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY o.order_id
HAVING SUM(o.quantity * p.unit_price) > 10000
ORDER BY total_value DESC;

-- Q5:
SELECT p.product_name
FROM products p
LEFT JOIN orders o ON p.product_id = o.product_id
WHERE o.product_id IS NULL;
