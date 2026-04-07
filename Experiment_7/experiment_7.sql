CREATE TABLE Departments (
    DeptID SERIAL PRIMARY KEY,
    DeptName VARCHAR(50)
);

CREATE TABLE Students (
    StudentID SERIAL PRIMARY KEY,
    StudentName VARCHAR(50),
    DeptID INT REFERENCES Departments(DeptID)
);

CREATE TABLE Courses (
    CourseID SERIAL PRIMARY KEY,
    CourseName VARCHAR(50)
);

CREATE TABLE Enrollments (
    EnrollID SERIAL PRIMARY KEY,
    StudentID INT REFERENCES Students(StudentID),
    CourseID INT REFERENCES Courses(CourseID)
);

INSERT INTO Departments (DeptName) VALUES
('Computer Science'),
('Management'),
('Commerce');

INSERT INTO Students (StudentName, DeptID) VALUES
('Amit', 1),
('Riya', 2),
('Kunal', 1),
('Sneha', 3),
('Rahul', 2);

INSERT INTO Courses (CourseName) VALUES
('DBMS'),
('Java'),
('Accounting'),
('Marketing');

INSERT INTO Enrollments (StudentID, CourseID) VALUES
(1,1),
(1,2),
(2,4),
(3,1),
(4,3);

SELECT s.StudentName, c.CourseName
FROM Students s
INNER JOIN Enrollments e ON s.StudentID = e.StudentID
INNER JOIN Courses c ON e.CourseID = c.CourseID;

SELECT s.StudentName
FROM Students s
LEFT JOIN Enrollments e ON s.StudentID = e.StudentID
WHERE e.StudentID IS NULL;

SELECT c.CourseName, s.StudentName
FROM Enrollments e
RIGHT JOIN Courses c ON e.CourseID = c.CourseID
LEFT JOIN Students s ON e.StudentID = s.StudentID;

SELECT s.StudentName, d.DeptName
FROM Students s
JOIN Departments d ON s.DeptID = d.DeptID;

SELECT s.StudentName, c.CourseName
FROM Students s
CROSS JOIN Courses c;
