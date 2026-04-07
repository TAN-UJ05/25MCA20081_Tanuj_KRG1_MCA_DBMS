Name: Tanuj Joshi<br>
UID: 25MCA20081<br>
Branch: MCA General<br>
Semester: II<br>
Subject: Technical Training<br>
Subject Code: 25CAP-652

<hr>

📌 Experiment

Title: Implementation and Analysis of Stored Procedures for Efficient and Secure Database Operations in PostgreSQL.<br>
Description: This experiment focuses on the implementation of Stored Procedures in PostgreSQL to perform various database operations such as insertion, updating, deletion, and retrieval of data. Stored procedures are precompiled SQL blocks that improve performance, enhance security, and promote code reusability. The practical demonstrates how business logic can be embedded inside the database layer, reducing redundancy and ensuring consistency. These techniques are widely used in enterprise applications such as banking systems, inventory management, payroll systems, and transaction processing systems where secure and efficient data handling is required.

<hr>

🛠️ Tools Used

PostgreSQL — Open-source relational database system<br>

<hr>

🎯 Objective

The objectives of this practical session are:

To understand the concept of stored procedures

To implement procedures for INSERT, UPDATE and DELETE operations

To improve database performance using precompiled SQL code

To ensure data security and controlled access

To enable code reusability within the database system

<hr>

🧪 Practical / Experiment Steps

Identify operations to be performed using stored procedures

Create a sample table for demonstration

Create stored procedures for insertion of records

Create stored procedures for updating records

Create stored procedures for deleting records

Execute procedures and verify outputs

Analyze performance and security benefits

<hr>

⚙️ Procedure of the Experiment and Screenshots

The system was started and logged in successfully.

PostgreSQL client tool (psql / pgAdmin) was opened.

A table named Employees was created for demonstration.

CREATE TABLE Employees (<br>
    EmpID SERIAL PRIMARY KEY,<br>
    EmpName VARCHAR(50),<br>
    Salary DECIMAL(10,2),<br>
    Dept VARCHAR(50)<br>
);

Sample data was inserted into the table.

INSERT INTO Employees (EmpName, Salary, Dept) VALUES<br>
('Amit', 50000, 'IT'),<br>
('Riya', 45000, 'HR');

Stored Procedure for INSERT

CREATE OR REPLACE PROCEDURE AddEmployee(<br>
    p_name VARCHAR,<br>
    p_salary DECIMAL,<br>
    p_dept VARCHAR<br>
)<br>
LANGUAGE plpgsql<br>
AS $$<br>
BEGIN<br>
    INSERT INTO Employees (EmpName, Salary, Dept)<br>
    VALUES (p_name, p_salary, p_dept);<br>
END;<br>
$$;

CALL AddEmployee('Kunal', 60000, 'Finance');

<img width="690" height="272" alt="Screenshot 2026-04-07 123332" src="https://github.com/user-attachments/assets/81640b8d-c5e2-4317-8caf-7afdc8eb012e" />

Stored Procedure for UPDATE

CREATE OR REPLACE PROCEDURE UpdateSalary(<br>
    p_id INT,<br>
    p_salary DECIMAL<br>
)<br>
LANGUAGE plpgsql<br>
AS $$<br>
BEGIN<br>
    UPDATE Employees<br>
    SET Salary = p_salary<br>
    WHERE EmpID = p_id;<br>
END;<br>
$$;

CALL UpdateSalary(1, 55000);

<img width="680" height="260" alt="Screenshot 2026-04-07 123452" src="https://github.com/user-attachments/assets/a40de757-3580-4b5d-a73f-bbe730be38e2" />

Stored Procedure for DELETE

CREATE OR REPLACE PROCEDURE DeleteEmployee(<br>
    p_id INT<br>
)<br>
LANGUAGE plpgsql<br>
AS $$<br>
BEGIN<br>
    DELETE FROM Employees<br>
    WHERE EmpID = p_id;<br>
END;<br>
$$;

CALL DeleteEmployee(2);

<img width="679" height="233" alt="Screenshot 2026-04-07 123746" src="https://github.com/user-attachments/assets/5abeb562-1512-40a3-8904-81d37351e094" />

All procedures were executed successfully and outputs were verified.

Screenshots were captured for documentation and submission.

<hr>

🔁 Input / Output Details

Input Provided

SQL procedure definitions

Employee table data

Procedure calls for CRUD operations

Output Generated

New employee records inserted

Updated salary details

Deleted employee records

<hr>

📚 Learning Outcome

Understanding of stored procedures in PostgreSQL

Ability to perform CRUD operations using procedures

Improved database security and performance

Code reusability and reduced redundancy

Practical application in real-world systems like banking, payroll, and inventory management
