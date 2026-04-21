Name: Tanuj Joshi<br>
UID: 25MCA20081<br>
Branch: MCA General<br>
Semester: II<br>
Subject: Technical Training<br>
Subject Code: 25CAP-652

📌 Experiment

Title: Implementation and Analysis of Database Triggers for Automated Calculations and Data Integrity in PostgreSQL.<br>
Description: This experiment focuses on the implementation of database triggers in PostgreSQL to automate operations during data insertion. Triggers are special functions that execute automatically in response to specific events such as INSERT, UPDATE, or DELETE. In this practical, a trigger is used to automatically calculate the bonus of employees based on their salary at the time of insertion. This reduces manual effort, ensures data consistency, and enforces business rules at the database level. Triggers are widely used in real-world applications such as auditing systems, banking applications, payroll systems, and inventory management where automatic validation and calculations are required.

🛠️ Tools Used

PostgreSQL — Open-source relational database system

🎯 Objective

The objectives of this practical session are:

To understand the concept of database triggers

To automate operations during data insertion

To enforce data integrity and constraints

To perform automatic calculations using triggers

To reduce manual intervention in database systems

🧪 Practical / Experiment Steps

Identify operations to be automated using triggers

Create a sample table for demonstration

Create a trigger function for automatic calculation

Create a trigger linked with the table

Insert records to test trigger execution

Verify output and analyze results

⚙️ Procedure of the Experiment and Screenshots

The system was started and logged in successfully.

PostgreSQL client tool (psql / pgAdmin) was opened.

A table named EmployeeSalary was created for demonstration.

CREATE TABLE EmployeeSalary (<br>
EmpID SERIAL PRIMARY KEY,<br>
EmpName VARCHAR(50),<br>
Salary DECIMAL(10,2),<br>
Bonus DECIMAL(10,2)<br>
);

A trigger function was created to calculate bonus automatically.

CREATE OR REPLACE FUNCTION calculate_bonus()<br>
RETURNS TRIGGER AS $$<br>
BEGIN<br>
NEW.Bonus := NEW.Salary * 0.10;<br>
RETURN NEW;<br>
END;<br>
$$ LANGUAGE plpgsql

A trigger was created to execute before inserting data.

CREATE TRIGGER before_insert_bonus<br>
BEFORE INSERT ON EmployeeSalary<br>
FOR EACH ROW<br>
EXECUTE FUNCTION calculate_bonus();

Data was inserted into the table.

INSERT INTO EmployeeSalary (EmpName, Salary)<br>
VALUES ('Amit', 50000),<br>
('Riya', 60000);

Data was displayed to verify results.

SELECT * FROM EmployeeSalary;

<img width="640" height="236" alt="Screenshot 2026-04-21 152945" src="https://github.com/user-attachments/assets/0b74f291-32f2-495f-9c3c-39e826e86d4d" />

All operations were executed successfully and outputs were verified.

Screenshots were captured for documentation and submission.

🔁 Input / Output Details

Input Provided

Trigger function definition

Table structure and schema

Insert statements for testing

Trigger creation query

Output Generated

Automatic calculation of bonus (10% of salary)

Inserted records with computed bonus values

Maintained data consistency and integrity

📚 Learning Outcome

Understanding of database triggers in PostgreSQL

Ability to automate database operations

Enforcement of business rules using triggers

Improved data consistency and reduced manual effort

Practical application in real-world systems like payroll, banking, and auditing systems
