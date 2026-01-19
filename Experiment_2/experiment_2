CREATE TABLE Students (student_id INT, name VARCHAR(50), city VARCHAR(50), percentage DECIMAL(5,2));
INSERT INTO Students VALUES(1, 'Amit', 'Delhi', 96.5);
INSERT INTO Students VALUES(2, 'Riya', 'Mumbai', 94.2);
INSERT INTO Students VALUES(3, 'Rahul', 'Delhi', 97.8);
INSERT INTO Students VALUES(4, 'Sneha', 'Mumbai', 98.1);
INSERT INTO Students VALUES(5, 'Ankit', 'Chandigarh', 95.6);
INSERT INTO Students VALUES(6, 'Pooja', 'Delhi', 93.4);
INSERT INTO Students VALUES(7, 'Karan', 'Chandigarh', 96.2);

--count
--without case statement
SELECT city, COUNT(*) AS students_count FROM Students WHERE percentage>95 GROUP BY city;

--with case statement
SELECT city, SUM(CASE WHEN percentage>95 THEN 1 ELSE 0 END) AS students_count FROM Students GROUP BY city;

--average
--without case statement
SELECT city, AVG(percentage) AS students_avg FROM Students WHERE percentage>95 GROUP BY city ORDER BY students_avg DESC;

--with case statement
SELECT city, AVG(CASE WHEN percentage>95 THEN percentage ELSE NULL END) AS students_avg FROM Students GROUP BY city ORDER BY students_avg DESC;
