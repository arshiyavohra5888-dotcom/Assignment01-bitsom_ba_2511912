-- =========================
-- DATABASE SETUP
-- =========================
DROP DATABASE IF EXISTS assignment_db;
CREATE DATABASE assignment_db;
USE assignment_db;

-- =========================
-- TABLE CREATION
-- =========================

CREATE TABLE customers (
customer_id VARCHAR(10) PRIMARY KEY,
customer_name VARCHAR(100) NOT NULL,
customer_email VARCHAR(100) NOT NULL,
customer_city VARCHAR(50) NOT NULL
);

CREATE TABLE products (
product_id VARCHAR(10) PRIMARY KEY,
product_name VARCHAR(100) NOT NULL,
category VARCHAR(50) NOT NULL,
unit_price DECIMAL(10,2) NOT NULL
);

CREATE TABLE sales_reps (
sales_rep_id VARCHAR(10) PRIMARY KEY,
sales_rep_name VARCHAR(100) NOT NULL,
sales_rep_email VARCHAR(100) NOT NULL
);

CREATE TABLE orders (
order_id VARCHAR(20) PRIMARY KEY,
customer_id VARCHAR(10) NOT NULL,
product_id VARCHAR(10) NOT NULL,
sales_rep_id VARCHAR(10) NOT NULL,
quantity INT NOT NULL,
order_date DATE NOT NULL,
FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
FOREIGN KEY (product_id) REFERENCES products(product_id),
FOREIGN KEY (sales_rep_id) REFERENCES sales_reps(sales_rep_id)
);

-- =========================
-- SAMPLE DATA INSERTION
-- =========================

INSERT INTO customers VALUES
('C001','Rohan Mehta','[rohan@gmail.com](mailto:rohan@gmail.com)','Mumbai'),
('C002','Priya Sharma','[priya@gmail.com](mailto:priya@gmail.com)','Delhi'),
('C003','Amit Verma','[amit@gmail.com](mailto:amit@gmail.com)','Bangalore'),
('C004','Sneha Iyer','[sneha@gmail.com](mailto:sneha@gmail.com)','Chennai'),
('C005','Vikram Singh','[vikram@gmail.com](mailto:vikram@gmail.com)','Mumbai');

INSERT INTO products VALUES
('P001','Laptop','Electronics',55000),
('P002','Mouse','Electronics',500),
('P003','Chair','Furniture',3000),
('P004','Notebook','Stationery',100),
('P005','Headphones','Electronics',2000);

INSERT INTO sales_reps VALUES
('SR01','Deepak Joshi','[deepak@corp.com](mailto:deepak@corp.com)'),
('SR02','Anita Desai','[anita@corp.com](mailto:anita@corp.com)'),
('SR03','Ravi Kumar','[ravi@corp.com](mailto:ravi@corp.com)'),
('SR04','Neha Kapoor','[neha@corp.com](mailto:neha@corp.com)'),
('SR05','Arjun Singh','[arjun@corp.com](mailto:arjun@corp.com)');

INSERT INTO orders VALUES
('O001','C001','P001','SR01',1,'2024-01-01'),
('O002','C002','P002','SR02',2,'2024-01-02'),
('O003','C003','P003','SR03',1,'2024-01-03'),
('O004','C004','P004','SR04',3,'2024-01-04'),
('O005','C005','P005','SR05',2,'2024-01-05');

-- =========================
-- VERIFICATION QUERIES
-- =========================

SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM sales_reps;
SELECT * FROM orders;

SELECT COUNT(*) AS total_customers FROM customers;
SELECT COUNT(*) AS total_orders FROM orders;
