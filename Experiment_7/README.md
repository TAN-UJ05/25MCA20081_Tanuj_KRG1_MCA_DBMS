Name: Tanuj Joshi<br>
UID: 25MCA20081<br>
Branch: MCA General<br>
Semester: II<br>
Subject: Technical Training<br>
Subject Code: 25CAP-652

<hr>

📌 Experiment

Title: Implementation and Analysis of SQL Joins for Data Retrieval and Relationship Mapping in PostgreSQL.<br>
Description: This worksheet focuses on understanding and implementing various types of SQL joins in PostgreSQL to retrieve and combine data from multiple related tables. The experiment demonstrates how INNER JOIN, LEFT JOIN, RIGHT JOIN, SELF JOIN, and CROSS JOIN are used to establish relationships between tables such as Students, Courses, Departments, and Enrollments. These join operations help in fetching meaningful insights like student-course mappings, identifying missing relationships, and generating complete datasets. Such techniques are widely used in real-world applications like student management systems, enterprise reporting tools, analytics dashboards, and relational data modeling.

<hr>

🛠️ Tools Used

PostgreSQL — Open-source relational database system

<hr>

🎯 Objective

The objectives of this practical session are:

To understand different types of SQL joins (INNER, LEFT, RIGHT, SELF, CROSS)

To retrieve related data from multiple tables efficiently

To identify matching and non-matching records using joins

To implement relational data mapping in database systems

To analyze real-world applications of joins in reporting and data analysis

<hr>

🧪 Practical / Experiment Steps

Identify relational tables requiring data combination

Create tables for Students, Courses, Departments, and Enrollments

Use INNER JOIN to fetch students with enrolled courses

Use LEFT JOIN to identify students without enrollments

Use RIGHT JOIN to display all courses regardless of enrollment

Use JOIN (multiple tables) to display student-department relationships

Use CROSS JOIN to generate all possible combinations

Execute queries and verify outputs

Analyze results and record observations

<hr>

⚙️ Procedure of the Experiment and Screenshots

The system was started and logged in successfully.

PostgreSQL client tool (psql / pgAdmin) was opened.

Tables named Departments, Students, Courses, and Enrollments were created.

CREATE TABLE Departments (<br>
    DeptID SERIAL PRIMARY KEY,<br>
    DeptName VARCHAR(50)<br>
);

CREATE TABLE Students (<br>
    StudentID SERIAL PRIMARY KEY,<br>
    StudentName VARCHAR(50),<br>
    DeptID INT REFERENCES Departments(DeptID)<br>
);

CREATE TABLE Courses (<br>
    CourseID SERIAL PRIMARY KEY,<br>
    CourseName VARCHAR(50)<br>
);

CREATE TABLE Enrollments (<br>
    EnrollID SERIAL PRIMARY KEY,<br>
    StudentID INT REFERENCES Students(StudentID),<br>
    CourseID INT REFERENCES Courses(CourseID)<br>
);

Sample records were inserted into the tables.

INSERT INTO Departments (DeptName) VALUES<br>
('Computer Science'),<br>
('Management'),<br>
('Commerce');

INSERT INTO Students (StudentName, DeptID) VALUES<br>
('Amit', 1),<br>
('Riya', 2),<br>
('Kunal', 1),<br>
('Sneha', 3),<br>
('Rahul', 2);

INSERT INTO Courses (CourseName) VALUES<br>
('DBMS'),<br>
('Java'),<br>
('Accounting'),<br>
('Marketing');

INSERT INTO Enrollments (StudentID, CourseID) VALUES<br>
(1,1),<br>
(1,2),<br>
(2,4),<br>
(3,1),<br>
(4,3);

INNER JOIN (Students with Enrolled Courses)

SELECT s.StudentName, c.CourseName<br>
FROM Students s<br>
INNER JOIN Enrollments e ON s.StudentID = e.StudentID<br>
INNER JOIN Courses c ON e.CourseID = c.CourseID;

<img width="457" height="323" alt="Screenshot 2026-04-07 115007" src="https://github.com/user-attachments/assets/d1ae3d71-0839-4179-a767-a8b984209277" />

LEFT JOIN (Students not Enrolled in Any Course)

SELECT s.StudentName<br>
FROM Students s<br>
LEFT JOIN Enrollments e ON s.StudentID = e.StudentID<br>
WHERE e.StudentID IS NULL;

<img width="458" height="201" alt="Screenshot 2026-04-07 115133" src="https://github.com/user-attachments/assets/2dae94e8-a5ef-4458-b1c8-440c0b1ee232" />

RIGHT JOIN (All Courses with or without Students)

SELECT c.CourseName, s.StudentName<br>
FROM Enrollments e<br>
RIGHT JOIN Courses c ON e.CourseID = c.CourseID<br>
LEFT JOIN Students s ON e.StudentID = s.StudentID;

<img width="637" height="331" alt="Screenshot 2026-04-07 115227" src="https://github.com/user-attachments/assets/71eba24a-a5f6-43e8-a86a-2f5db9165a16" />

JOIN (Students with Department Info)

SELECT s.StudentName, d.DeptName<br>
FROM Students s<br>
JOIN Departments d ON s.DeptID = d.DeptID;

<img width="457" height="325" alt="Screenshot 2026-04-07 115322" src="https://github.com/user-attachments/assets/80fe8f2e-17df-42f6-bd03-6e22e6528232" />

CROSS JOIN (All Possible Combinations)

SELECT s.StudentName, c.CourseName<br>
FROM Students s<br>
CROSS JOIN Courses c;<br>

<img width="468" height="361" alt="Screenshot 2026-04-07 115417" src="https://github.com/user-attachments/assets/91e8a9f8-0671-4918-a825-1963f8a21eeb" />

All queries were executed successfully and outputs were verified.

Screenshots were captured for documentation and submission.

<hr>

🔁 Input / Output Details

Input Provided

SQL JOIN queries

Student, Course, Department, and Enrollment table data

Multiple table relationships

Output Generated

Student-course mapping (INNER JOIN)

Students without enrollments (LEFT JOIN)

All courses with or without students (RIGHT JOIN)

Student-department relationship data

All possible student-course combinations (CROSS JOIN)

<hr>

📚 Learning Outcome

Understanding different types of SQL joins

Ability to combine and retrieve data from multiple tables

Knowledge of identifying missing and matching records

Practical implementation of relational database concepts

Application of joins in real-world systems like student management and reporting systems
