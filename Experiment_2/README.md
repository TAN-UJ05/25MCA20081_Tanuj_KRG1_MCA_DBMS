Name: Tanuj Joshi<br>
UID: 25MCA20081<br>
Branch: MCA General<br>
Semester: II<br>
Subject: Technical Training<br>
Subject Code: 25CAP-652<br>


<hr>

📌 Experiment

Title: Implementation of SQL SELECT Queries with Filtering, Sorting, Grouping, and Aggregation in PostgreSQL.<br>
Description: This experiment focuses on implementing SQL SELECT queries in PostgreSQL to retrieve and analyze data efficiently. The practical demonstrates how filtering, sorting, grouping, and aggregation techniques are used in real-world database applications for reporting and decision-making.

<hr>

🛠️ Tools Used

PostgreSQL — Powerful open-source relational database for storing and managing data efficiently

<hr>

🎯 Objective

The objectives of this experiment are:

To retrieve specific records using filtering conditions

To sort query results using single and multiple attributes

To perform aggregation using the GROUP BY clause

To apply conditions on aggregated data using the HAVING clause

To understand the difference between row-level filtering and group-level filtering

To gain practical exposure to SQL queries commonly asked in placement interviews

<hr>

🧪 Practical / Experiment Steps

Create a PostgreSQL database for the experiment

Create a table to store customer order details

Insert sample records into the table

Retrieve records using filtering conditions (WHERE clause)

Sort query results in ascending and descending order

Apply sorting on multiple columns

Group data based on a common attribute

Calculate aggregate values such as total sales

Apply conditions on aggregated data using the HAVING clause

Verify and analyze the output obtained

<hr>

⚙️ Procedure of the Experiment and Screenshots

The system was started and logged in successfully.

PostgreSQL client tool (psql / pgAdmin) was opened.

A table named customer_orders was created to store order details such as customer name, product, quantity, price, and order date.

CREATE TABLE customer_orders (<br>
    order_id SERIAL PRIMARY KEY,<br>
    customer_name VARCHAR(50),<br>
    product VARCHAR(50),<br>
    quantity INT,<br>
    price NUMERIC(10,2),<br>
    order_date DATE<br>
);

Sample data was inserted into the table for analysis.

INSERT INTO customer_orders (customer_name, product, quantity, price, order_date) VALUES<br>
('Amit', 'Laptop', 1, 55000, '2025-01-10'),<br>
('Riya', 'Mobile', 2, 30000, '2025-01-12'),<br>
('Kunal', 'Laptop', 1, 60000, '2025-01-15'),<br>
('Sneha', 'Tablet', 3, 45000, '2025-01-18'),<br>
('Rahul', 'Mobile', 1, 20000, '2025-01-20'),<br>
('Anita', 'Laptop', 2, 110000, '2025-01-22');<br>

<img width="882" height="315" alt="Screenshot 2026-01-26 123204" src="https://github.com/user-attachments/assets/f290a49e-5112-4ac0-9c4a-07ec49f9c90e" />

SQL queries were executed to filter records using the WHERE clause.

SELECT *<br>
FROM customer_orders<br>
WHERE price > 30000;<br>

<img width="881" height="256" alt="Screenshot 2026-01-26 123537" src="https://github.com/user-attachments/assets/188446fd-c014-4560-84b1-790a2c9f479b" />

Sorting operations were performed using ORDER BY in both ascending and descending order.

SELECT customer_name, product, price<br>
FROM customer_orders<br>
ORDER BY price ASC;<br>

SELECT customer_name, product, price<br>
FROM customer_orders<br>
ORDER BY price DESC;<br>

<img width="566" height="327" alt="Screenshot 2026-01-26 123659" src="https://github.com/user-attachments/assets/2ca5cd7c-3ea6-4e47-8511-272b2ad571ae" />

<img width="567" height="325" alt="Screenshot 2026-01-26 123832" src="https://github.com/user-attachments/assets/4268d168-e7ad-4d50-80d4-f0ef11982edf" />

Multiple-column sorting was implemented to observe priority-based sorting.

SELECT customer_name, product, price<br>
FROM customer_orders<br>
ORDER BY product ASC, price DESC;<br>

<img width="562" height="324" alt="Screenshot 2026-01-26 123948" src="https://github.com/user-attachments/assets/8945112f-9961-44a1-8fec-48f40c25a32a" />

Aggregation was performed using the GROUP BY clause to calculate total sales per product.

SELECT product, SUM(price) AS total_sales<br>
FROM customer_orders<br>
GROUP BY product;<br>

<img width="411" height="230" alt="Screenshot 2026-01-26 124056" src="https://github.com/user-attachments/assets/57c6aa92-5168-4d86-93eb-c07a33330634" />

The HAVING clause was used to filter grouped data based on aggregate conditions.

SELECT product, SUM(price) AS total_sales<br>
FROM customer_orders<br>
GROUP BY product<br>
HAVING SUM(price) > 50000;<br>

<img width="412" height="168" alt="Screenshot 2026-01-26 124134" src="https://github.com/user-attachments/assets/410707a2-9351-485a-93af-d8d61b6f24bf" />

Outputs were verified, noted, and screenshots were taken for record and submission.

<hr>

🔁 Input / Output Details

Input Provided

SQL queries using SELECT, WHERE, ORDER BY, GROUP BY, and HAVING

Sample customer order data inserted into the database table

Output Generated

Filtered records based on price conditions

Sorted data in ascending and descending order

Grouped results showing total sales per product

Refined aggregated results using HAVING conditions

<hr>

📚 Learning Outcome

Efficient retrieval of relevant data using filtering conditions

Importance of sorting for better readability and reporting

Grouping data and performing aggregation for analytical purposes

Clear distinction between WHERE and HAVING clauses

Correct execution order of SQL queries

Practical understanding of real-world SQL queries used in industry and placement interviews
