CREATE DATABASE AggregationDB;

USE AggregationDB;

CREATE TABLE Employees (
    Employee_ID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Department_ID INT,
    Salary DECIMAL(10,2)
);

CREATE TABLE Departments (
    Department_ID INT PRIMARY KEY,
    Department_Name VARCHAR(50) NOT NULL
);

INSERT INTO Employees (Employee_ID, Name, Department_ID, Salary)
VALUES
(1, 'Arun', 10, 50000),
(2, 'Ravi', 10, 60000),
(3, 'Priya', 20, 55000),
(4, 'Kiran', 20, 65000),
(5, 'Anu', 10, 70000);

INSERT INTO Departments (Department_ID, Department_Name)
VALUES
(10, 'CSE'),
(20, 'ECE');

-- 14. COUNT()

-- 1. Find the total number of employees
SELECT COUNT(*) AS Total_Employees
FROM Employees;

-- 2. Count employees in the CSE department
SELECT COUNT(*) AS CSE_Employees
FROM Employees
WHERE Department_ID = 10;

-- 3. Count employees in the ECE department
SELECT COUNT(*) AS ECE_Employees
FROM Employees
WHERE Department_ID = 20;

-- 4. Count employees whose salary is greater than 60000
SELECT COUNT(*) AS Employees_Above_60000
FROM Employees
WHERE Salary > 60000;


-- 15. SUM()

-- 1. Find the total salary of all employees
SELECT SUM(Salary) AS Total_Salary
FROM Employees;

-- 2. Find the total salary paid to CSE employees
SELECT SUM(Salary) AS CSE_Total_Salary
FROM Employees
WHERE Department_ID = 10;

-- 3. Find the total salary paid to ECE employees
SELECT SUM(Salary) AS ECE_Total_Salary
FROM Employees
WHERE Department_ID = 20;

-- Challenge: Find the department with the highest total salary
SELECT Department_ID, SUM(Salary) AS Total_Salary
FROM Employees
GROUP BY Department_ID
ORDER BY Total_Salary DESC
LIMIT 1;


-- 16. AVG()

-- 1. Find the average salary of all employees
SELECT AVG(Salary) AS Average_Salary
FROM Employees;

-- 2. Find the average CSE salary
SELECT AVG(Salary) AS CSE_Average_Salary
FROM Employees
WHERE Department_ID = 10;

-- 3. Find the average ECE salary
SELECT AVG(Salary) AS ECE_Average_Salary
FROM Employees
WHERE Department_ID = 20;

-- Challenge: Compare the average salary of CSE and ECE
SELECT Department_ID, AVG(Salary) AS Average_Salary
FROM Employees
GROUP BY Department_ID;


-- 17. MIN()

-- 1. Find the lowest salary
SELECT MIN(Salary) AS Lowest_Salary
FROM Employees;

-- 2. Find the lowest CSE salary
SELECT MIN(Salary) AS CSE_Lowest_Salary
FROM Employees
WHERE Department_ID = 10;

-- 3. Find the lowest ECE salary
SELECT MIN(Salary) AS ECE_Lowest_Salary
FROM Employees
WHERE Department_ID = 20;


-- 18. MAX()

-- 1. Find the highest salary
SELECT MAX(Salary) AS Highest_Salary
FROM Employees;

-- 2. Find the highest CSE salary
SELECT MAX(Salary) AS CSE_Highest_Salary
FROM Employees
WHERE Department_ID = 10;

-- 3. Find the highest ECE salary
SELECT MAX(Salary) AS ECE_Highest_Salary
FROM Employees
WHERE Department_ID = 20;

-- Challenge: Display the employee who earns the highest salary
SELECT *
FROM Employees
WHERE Salary = (SELECT MAX(Salary) FROM Employees);


-- 19. Aggregation with JOINs

-- Display department name, number of employees, average salary,
-- total salary, highest salary and lowest salary for each department.

SELECT
    Departments.Department_Name,
    COUNT(Employees.Employee_ID) AS Number_of_Employees,
    AVG(Employees.Salary) AS Average_Salary,
    SUM(Employees.Salary) AS Total_Salary,
    MAX(Employees.Salary) AS Highest_Salary,
    MIN(Employees.Salary) AS Lowest_Salary
FROM Departments
INNER JOIN Employees
ON Departments.Department_ID = Employees.Department_ID
GROUP BY Departments.Department_ID, Departments.Department_Name;