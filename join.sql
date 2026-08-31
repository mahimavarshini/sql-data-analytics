CREATE DATABASE JoinDB;

USE JoinDB;

CREATE TABLE Students (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50),
    Department_ID INT
);

CREATE TABLE Departments (
    Department_ID INT PRIMARY KEY,
    Department_Name VARCHAR(50)
);

INSERT INTO Students (Student_ID, Student_Name, Department_ID)
VALUES
(101, 'Rahul', 10),
(102, 'Priya', 20),
(103, 'Ravi', 10),
(104, 'Anu', 30),
(105, 'Kiran', NULL);

INSERT INTO Departments (Department_ID, Department_Name)
VALUES
(10, 'CSE'),
(20, 'ECE'),
(30, 'EEE'),
(40, 'MECH');

SELECT * FROM Students;
-- 1. Display all students along with their department names using INNER JOIN
-- INNER JOIN returns only students whose Department_ID matches
-- with a Department_ID in the Departments table.
SELECT * FROM Departments;

SELECT Students.Student_ID,
       Students.Student_Name,
       Departments.Department_Name
FROM Students
INNER JOIN Departments
ON Students.Department_ID = Departments.Department_ID;


-- 2. Find out which students have a matching department
-- Matching is done using Department_ID.
-- Only students having a matching Department_ID in Departments are displayed.
SELECT Students.Student_ID,
       Students.Student_Name,
       Students.Department_ID,
       Departments.Department_Name
FROM Students
INNER JOIN Departments
ON Students.Department_ID = Departments.Department_ID;

-- Display all departments, including departments with no students.
-- Departments is the LEFT table, so every department is displayed.
-- If a department has no matching student, Student_Name will be NULL.

SELECT Departments.Department_ID,
       Departments.Department_Name,
       Students.Student_Name
FROM Departments
LEFT JOIN Students
ON Departments.Department_ID = Students.Department_ID;



USE JoinDB;

-- 1. Display students with matching departments
-- INNER JOIN returns only the students whose Department_ID
-- matches with a Department_ID in the Departments table.

SELECT Students.Student_ID,
       Students.Student_Name,
       Departments.Department_Name
FROM Students
INNER JOIN Departments
ON Students.Department_ID = Departments.Department_ID;


-- 2. Display students without departments
-- LEFT JOIN keeps all students.
-- WHERE condition finds students who have no matching department.

SELECT Students.Student_ID,
       Students.Student_Name,
       Students.Department_ID,
       Departments.Department_Name
FROM Students
LEFT JOIN Departments
ON Students.Department_ID = Departments.Department_ID
WHERE Departments.Department_ID IS NULL;


-- 3. Display departments without students
-- LEFT JOIN keeps all departments.
-- WHERE condition finds departments that have no matching student.

SELECT Departments.Department_ID,
       Departments.Department_Name,
       Students.Student_Name
FROM Departments
LEFT JOIN Students
ON Departments.Department_ID = Students.Department_ID
WHERE Students.Student_ID IS NULL;


-- 4. Display all students and all departments
-- LEFT JOIN keeps all students.
-- RIGHT JOIN keeps all departments.
-- UNION combines both results and removes duplicates.
-- This is used to achieve the concept of FULL OUTER JOIN in MySQL.

SELECT Students.Student_ID,
       Students.Student_Name,
       Students.Department_ID,
       Departments.Department_Name
FROM Students
LEFT JOIN Departments
ON Students.Department_ID = Departments.Department_ID

UNION

SELECT Students.Student_ID,
       Students.Student_Name,
       Students.Department_ID,
       Departments.Department_Name
FROM Students
RIGHT JOIN Departments
ON Students.Department_ID = Departments.Department_ID;


-- 5. Difference between JOIN types
-- INNER JOIN     → Only matching records from both tables.
-- LEFT JOIN      → All records from the LEFT table + matching records from RIGHT.
-- FULL OUTER JOIN → All records from BOTH tables.
-- MySQL does not directly support FULL OUTER JOIN.
-- LEFT JOIN + RIGHT JOIN + UNION can be used to achieve it.