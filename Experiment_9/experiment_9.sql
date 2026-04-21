CREATE TABLE EmployeeSalary (
    EmpID SERIAL PRIMARY KEY,
    EmpName VARCHAR(50),
    Salary DECIMAL(10,2),
    Bonus DECIMAL(10,2)
);

CREATE OR REPLACE FUNCTION calculate_bonus()
RETURNS TRIGGER AS $$
BEGIN
    NEW.Bonus := NEW.Salary * 0.10;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER before_insert_bonus
BEFORE INSERT ON EmployeeSalary
FOR EACH ROW
EXECUTE FUNCTION calculate_bonus();

INSERT INTO EmployeeSalary (EmpName, Salary)
VALUES ('Amit', 50000),
('Riya', 60000);

SELECT * FROM EmployeeSalary;
