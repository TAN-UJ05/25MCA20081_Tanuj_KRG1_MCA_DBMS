CREATE TABLE schema_violations (
    schema_id SERIAL PRIMARY KEY,
    schema_name VARCHAR(50),
    violation_count INT
);

INSERT INTO schema_violations (schema_name, violation_count) VALUES
('HR', 0),
('Finance', 2),
('Sales', 5),
('Inventory', 10),
('Admin', 1);

SELECT * FROM schema_violations;

SELECT 
    schema_name,
    violation_count,
    CASE
        WHEN violation_count = 0 THEN 'No Violation'
        WHEN violation_count BETWEEN 1 AND 3 THEN 'Minor Violation'
        WHEN violation_count BETWEEN 4 AND 7 THEN 'Moderate Violation'
        ELSE 'Critical Violation'
    END AS violation_status
FROM schema_violations;


ALTER TABLE schema_violations
ADD COLUMN approval_status VARCHAR(20);

UPDATE schema_violations
SET approval_status =
    CASE
        WHEN violation_count = 0 THEN 'Approved'
        WHEN violation_count BETWEEN 1 AND 4 THEN 'Needs Review'
        ELSE 'Rejected'
    END;


DO $$
DECLARE
    v_violation_count INT := 5;
BEGIN
    IF v_violation_count = 0 THEN
        RAISE NOTICE 'No violations detected.';
    ELSIF v_violation_count BETWEEN 1 AND 3 THEN
        RAISE NOTICE 'Minor violations found.';
    ELSIF v_violation_count BETWEEN 4 AND 7 THEN
        RAISE NOTICE 'Moderate violations found.';
    ELSE
        RAISE NOTICE 'Critical violations detected.';
    END IF;
END $$;

CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR(50),
    marks INT
);
INSERT INTO students (student_name, marks) VALUES
('Alice', 85),
('Bob', 72),
('Charlie', 60),
('David', 45),
('Eva', 30);
SELECT
    student_name,
    marks,
    CASE
        WHEN marks >= 80 THEN 'Grade A'
        WHEN marks >= 65 THEN 'Grade B'
        WHEN marks >= 50 THEN 'Grade C'
        ELSE 'Fail'
    END AS grade
FROM students;

SELECT
    schema_name,
    violation_count,
    approval_status
FROM schema_violations
ORDER BY
    CASE
        WHEN violation_count = 0 THEN 1
        WHEN violation_count BETWEEN 1 AND 3 THEN 2
        WHEN violation_count BETWEEN 4 AND 7 THEN 3
        ELSE 4
    END;

