CREATE TABLE customer_orders (
    order_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(50),
    product VARCHAR(50),
    quantity INT,
    price NUMERIC(10,2),
    order_date DATE
);

INSERT INTO customer_orders (customer_name, product, quantity, price, order_date) VALUES
('Amit', 'Laptop', 1, 55000, '2025-01-10'),
('Riya', 'Mobile', 2, 30000, '2025-01-12'),
('Kunal', 'Laptop', 1, 60000, '2025-01-15'),
('Sneha', 'Tablet', 3, 45000, '2025-01-18'),
('Rahul', 'Mobile', 1, 20000, '2025-01-20'),
('Anita', 'Laptop', 2, 110000, '2025-01-22');

SELECT * FROM customer_orders;

SELECT * 
FROM customer_orders
WHERE price > 30000;

SELECT customer_name, product, price
FROM customer_orders
ORDER BY price ASC;

SELECT customer_name, product, price
FROM customer_orders
ORDER BY price DESC;

SELECT customer_name, product, price
FROM customer_orders
ORDER BY product ASC, price DESC;

SELECT product, SUM(price) AS total_sales
FROM customer_orders
GROUP BY product;

SELECT product, SUM(price) AS total_sales
FROM customer_orders
GROUP BY product
HAVING SUM(price) > 50000;

