CREATE TABLE Employees (
    EmpID SERIAL PRIMARY KEY,
    EmpName VARCHAR(50),
    Salary DECIMAL(10,2),
    Dept VARCHAR(50)
);

INSERT INTO Employees (EmpName, Salary, Dept) VALUES
('Amit', 50000, 'IT'),
('Riya', 45000, 'HR');

CREATE OR REPLACE PROCEDURE AddEmployee(
    p_name VARCHAR,
    p_salary DECIMAL,
    p_dept VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO Employees (EmpName, Salary, Dept)
    VALUES (p_name, p_salary, p_dept);
END;
$$;

CALL AddEmployee('Kunal', 60000, 'Finance');

CREATE OR REPLACE PROCEDURE UpdateSalary(
    p_id INT,
    p_salary DECIMAL
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE Employees
    SET Salary = p_salary
    WHERE EmpID = p_id;
END;
$$;

CALL UpdateSalary(1, 55000);

CREATE OR REPLACE PROCEDURE DeleteEmployee(
    p_id INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    DELETE FROM Employees
    WHERE EmpID = p_id;
END;
$$;

CALL DeleteEmployee(2);

SELECT * FROM Employees;
