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

<img width="531" height="224" alt="Screenshot 2026-01-26 133037" src="https://github.com/user-attachments/assets/fcfcaaa7-7023-4039-b6d3-dfc124fce1fe" />

An employee table was created with a foreign key reference to the department table and date constraints.

<img width="1064" height="262" alt="Screenshot 2026-01-26 133143" src="https://github.com/user-attachments/assets/88bf154c-0b56-4461-8499-9fdfe3d5df1e" />

Table structure was modified using ALTER TABLE to add and remove columns and apply default values.

A project table was created with department reference and date validation.

<img width="702" height="199" alt="Screenshot 2026-01-26 133217" src="https://github.com/user-attachments/assets/6da27fdb-134f-4067-96c7-aaff306a5ac0" />

Records were inserted into all tables using INSERT commands.

Update and delete operations were performed to modify existing data.

Data was retrieved using SELECT queries to verify table contents.

A database role (reporting_user) was created using DCL commands.

<img width="629" height="377" alt="Screenshot 2026-01-26 133421" src="https://github.com/user-attachments/assets/d4b87d1f-ac2c-4dbc-9f64-72fe84b65222" />

Permissions were granted and revoked to control access for the reporting user.

Queries were executed using the reporting user to verify access control.

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
