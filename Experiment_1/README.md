Name: Tanuj Joshi<br>
UID: 25MCA20081<br>
Branch: MCA General<br>
Semester: II<br>
Subject: Technical Training<br>
Subject Code: 25CAP-652<br>

<hr>

📌 Experiment

Title: Implementation of DDL, DML, DQL, and DCL Commands in PostgreSQL.<br>
Description: This experiment focuses on implementing core SQL commands including Data Definition Language (DDL), Data Manipulation Language (DML), Data Query Language (DQL), and Data Control Language (DCL) in PostgreSQL. The practical demonstrates how database objects are created and modified, how data is inserted and retrieved, and how user access permissions are controlled in a relational database system.

<hr>

🛠️ Tools Used

PostgreSQL — Powerful open-source relational database for storing and managing data efficiently

<hr>

🎯 Objective

The objectives of this experiment are:

To create and modify database tables using DDL commands

To insert, update, and delete records using DML commands

To retrieve data using DQL commands

To manage database access and privileges using DCL commands

To understand constraints, foreign keys, and referential integrity

To gain practical exposure to real-world SQL database operations

<hr>

🧪 Practical / Experiment Steps

Create tables for Department, Employee, and Project

Apply constraints such as PRIMARY KEY, FOREIGN KEY, UNIQUE, CHECK, and DEFAULT

Insert records into tables

Update and delete records from tables

Retrieve data using SELECT queries

Create a database role and assign login credentials

Grant and revoke privileges using DCL commands

Execute queries using a restricted user

<hr>

⚙️ Procedure of the Experiment and Screenshots

PostgreSQL client tool (psql / pgAdmin) was opened successfully.

A department table was created with appropriate constraints such as primary key, unique constraint, and check constraint on salary.

CREATE TABLE department(<br>
department_id INT PRIMARY KEY,<br>
department_name VARCHAR(20) NOT NULL UNIQUE,<br>
salary FLOAT CHECK(salary>=0)<br>
);

<img width="531" height="224" alt="Screenshot 2026-01-26 133037" src="https://github.com/user-attachments/assets/fcfcaaa7-7023-4039-b6d3-dfc124fce1fe" />

An employee table was created with a foreign key reference to the department table and date constraints.

CREATE TABLE employee(<br>
employee_id INT PRIMARY KEY,<br>
employee_name VARCHAR(20) NOT NULL,<br>
department_id INT NOT NULL REFERENCES department(department_id),<br>
employee_contact VARCHAR(20),<br>
join_date DATE NOT NULL,<br>
end_date DATE CHECK(end_date>=join_date)<br>
);

<img width="1064" height="262" alt="Screenshot 2026-01-26 133143" src="https://github.com/user-attachments/assets/88bf154c-0b56-4461-8499-9fdfe3d5df1e" />

Table structure was modified using ALTER TABLE to add and remove columns and apply default values.

ALTER TABLE employee ADD work_location VARCHAR(20);<br>
ALTER TABLE employee DROP work_location;<br>
ALTER TABLE employee ADD status VARCHAR(20) DEFAULT 'active';<br>

A project table was created with department reference and date validation.

CREATE TABLE project(<br>
project_id INT PRIMARY KEY,<br>
project_name VARCHAR(20) NOT NULL UNIQUE,<br>
department_id INT NOT NULL REFERENCES department(department_id),<br>
start_date DATE NOT NULL,<br>
end_date DATE CHECK(end_date>=start_date)<br>
);

<img width="702" height="199" alt="Screenshot 2026-01-26 133217" src="https://github.com/user-attachments/assets/6da27fdb-134f-4067-96c7-aaff306a5ac0" />

Records were inserted into all tables using INSERT commands.

INSERT INTO department <br>
VALUES<br>
(101,'Manager',90000),<br>
(102,'HR',70000),<br>
(103,'EMPLOYEE',50000);


INSERT INTO department<br>
VALUES<br>
(104,'DEVELOPER',-30000);

INSERT INTO department<br>
VALUES<br>
(104,'DEVELOPER',30000);


INSERT INTO employee<br>
VALUES<br>
(1,'Rahul',101,8888888888,'2001-04-12','2010-07-13'),<br>
(2,'Anuj',102,7777777777,'2003-06-10','2004-05-11'),<br>
(3,'Aman',103,6666666666,'2006-05-20','2009-09-11'),<br>
(4,'Naman',103,5555555555,'2006-06-25','2009-08-11'),<br>
(5,'Karan',103,4444444444,'2006-03-12','2009-05-11');


INSERT INTO project <br>
VALUES<br>
(11,'P1',103,'2025-08-14','2025-09-14'),<br>
(12,'P2',103,'2025-08-14','2025-08-30');

Update and delete operations were performed to modify existing data.

UPDATE department SET department_name='Employee' WHERE department_id=103;<br>
DELETE FROM department WHERE department_id=104;<br>
DELETE FROM employee WHERE employee_id=3;<br>

Data was retrieved using SELECT queries to verify table contents.

SELECT * FROM department;<br>
SELECT * FROM employee;<br>
SELECT * FROM project;<br>

A database role (reporting_user) was created using DCL commands.

CREATE ROLE reporting_user <br>
LOGIN<br>
PASSWORD<br>
'user123';<br>

<img width="629" height="377" alt="Screenshot 2026-01-26 133421" src="https://github.com/user-attachments/assets/d4b87d1f-ac2c-4dbc-9f64-72fe84b65222" />

Permissions were granted and revoked to control access for the reporting user.

GRANT SELECT ON department TO reporting_user;<br>
REVOKE SELECT ON department FROM reporting_user;<br>
GRANT SELECT ON project TO reporting_user;<br>
REVOKE CREATE ON SCHEMA PUBLIC FROM reporting_user;<br>

Queries were executed using the reporting user to verify access control.

SELECT * FROM project;<br>

Outputs were verified and screenshots were taken for record purposes.

<hr>

🔁 Input / Output Details

Input Provided

SQL DDL commands (CREATE, ALTER, DROP)

SQL DML commands (INSERT, UPDATE, DELETE)

SQL DQL commands (SELECT)

SQL DCL commands (CREATE ROLE, GRANT, REVOKE)

Output Generated

Tables created with proper constraints

Records successfully inserted, updated, and deleted

Retrieved data from department, employee, and project tables

Controlled access for reporting user based on granted privileges

<hr>

📚 Learning Outcome

Understanding of table creation and constraint implementation

Practical knowledge of inserting, updating, and deleting records

Clear understanding of relational integrity using foreign keys

Ability to retrieve data using SELECT queries

Knowledge of role creation and permission management in PostgreSQL

Hands-on experience with real-world SQL commands used in industry
