Name: Tanuj Joshi<br>
UID: 25MCA20081<br>
Branch: MCA General<br>
Semester: II<br>
Subject: Technical Training<br>
Subject Code: 25CAP-652<br>

<hr>

📌 Experiment
Title: Implementation of Conditional Decision-Making Logic Using CASE Expressions and IF–ELSE Constructs in PostgreSQL.<br>
Description: This experiment focuses on implementing conditional decision-making logic in PostgreSQL using CASE expressions and IF–ELSE constructs.
The practical demonstrates how databases can classify, validate, and process data based on predefined rules without relying solely on application-side logic.
Real-world scenarios such as violation classification, approval status assignment, student grading, and priority-based sorting are implemented using SQL and PL/pgSQL.

<hr>

🛠️ Tools Used

PostgreSQL — Powerful open-source relational database for storing, processing, and managing structured data efficiently.

<hr>

🎯 Objective

The objectives of this experiment are:

To understand conditional execution in SQL

To implement decision-making logic using CASE expressions

To simulate real-world rule validation scenarios

To classify data based on multiple conditions

To implement IF–ELSE logic using PL/pgSQL

To strengthen SQL logic skills required in backend systems and technical interviews

<hr>

🧪 Practical / Experiment Steps

Create a table to store schema violation details

Insert sample data with varying violation counts

Classify schema records using CASE expressions

Apply CASE logic in UPDATE statements to assign approval status

Implement IF–ELSE conditional logic using PL/pgSQL

Create a student table and classify grades using CASE

Perform custom sorting using CASE expressions in ORDER BY clause

<hr>

⚙️ Procedure of the Experiment and Screenshots

PostgreSQL client tool (psql / pgAdmin) was opened successfully.

A table was created to store schema violation details.

CREATE TABLE schema_violations (<br>
    schema_id SERIAL PRIMARY KEY,<br>
    schema_name VARCHAR(50),<br>
    violation_count INT<br>
);


Sample records were inserted into the table.

INSERT INTO schema_violations (schema_name, violation_count) VALUES<br>
('HR', 0),<br>
('Finance', 2),<br>
('Sales', 5),<br>
('Inventory', 10),<br>
('Admin', 1);


Schema records were classified using a CASE expression.

SELECT <br>
    schema_name,<br>
    violation_count,<br>
    CASE<br>
        WHEN violation_count = 0 THEN 'No Violation'<br>
        WHEN violation_count BETWEEN 1 AND 3 THEN 'Minor Violation'<br>
        WHEN violation_count BETWEEN 4 AND 7 THEN 'Moderate Violation'<br>
        ELSE 'Critical Violation'<br>
    END AS violation_status<br>
FROM schema_violations;


A new column was added and approval status was updated using CASE logic.

ALTER TABLE schema_violations<br>
ADD COLUMN approval_status VARCHAR(20);

UPDATE schema_violations<br>
SET approval_status =<br>
    CASE<br>
        WHEN violation_count = 0 THEN 'Approved'<br>
        WHEN violation_count BETWEEN 1 AND 4 THEN 'Needs Review'<br>
        ELSE 'Rejected'<br>
    END;


IF–ELSE logic was implemented using a PL/pgSQL DO block.

DO $$<br>
DECLARE<br>
    v_violation_count INT := 5;<br>
BEGIN<br>
    IF v_violation_count = 0 THEN<br>
        RAISE NOTICE 'No violations detected.';<br>
    ELSIF v_violation_count BETWEEN 1 AND 3 THEN<br>
        RAISE NOTICE 'Minor violations found.';<br>
    ELSIF v_violation_count BETWEEN 4 AND 7 THEN<br>
        RAISE NOTICE 'Moderate violations found.';<br>
    ELSE<br>
        RAISE NOTICE 'Critical violations detected.';<br>
    END IF;<br>
END $$;


A student table was created and grades were assigned using CASE expressions.

CREATE TABLE students (<br>
    student_id SERIAL PRIMARY KEY,<br>
    student_name VARCHAR(50),<br>
    marks INT<br>
);

INSERT INTO students (student_name, marks) VALUES<br>
('Alice', 85),<br>
('Bob', 72),<br>
('Charlie', 60),<br>
('David', 45),<br>
('Eva', 30);

SELECT<br>
    student_name,<br>
    marks,<br>
    CASE<br>
        WHEN marks >= 80 THEN 'Grade A'<br>
        WHEN marks >= 65 THEN 'Grade B'<br>
        WHEN marks >= 50 THEN 'Grade C'<br>
        ELSE 'Fail'<br>
    END AS grade<br>
FROM students;


Custom sorting was applied using CASE in ORDER BY clause.

SELECT<br>
    schema_name,<br>
    violation_count,<br>
    approval_status<br>
FROM schema_violations<br>
ORDER BY<br>
    CASE<br>
        WHEN violation_count = 0 THEN 1<br>
        WHEN violation_count BETWEEN 1 AND 3 THEN 2<br>
        WHEN violation_count BETWEEN 4 AND 7 THEN 3<br>
        ELSE 4<br>
    END;

Outputs were verified and screenshots were taken for record purposes.

<hr>

🔁 Input / Output Details

Input Provided

SQL queries using CASE expressions in SELECT, UPDATE, and ORDER BY clauses

PL/pgSQL DO block implementing IF–ELSE conditional logic

Schema violation data with different violation counts

Student marks data for grading

Output Generated

Classified schema records based on violation severity

Automatically assigned approval status for each schema

Conditional messages displayed using IF–ELSE logic

Student grades generated based on marks

Custom-sorted output prioritizing records by violation severity

<hr>

📚 Learning Outcome

Ability to implement conditional logic using CASE expressions

Understanding of IF–ELSE constructs in PL/pgSQL

Practical experience in rule-based data classification

Improved backend SQL logic skills

Preparation for real-world database and interview scenarios
