-- SELF JOIN
-- A SELF JOIN is used to join a table with itself.
-- Here, the Employees table is used twice:
-- E represents the Employee
-- M represents the Manager
-- Manager_ID of an employee matches Employee_ID of the manager.
-- Display Employee Name along with their Manager Name.



CREATE DATABASE SelfJoinDB;

USE SelfJoinDB;

CREATE TABLE Employees (
    Employee_ID INT PRIMARY KEY,
    Employee_Name VARCHAR(50) NOT NULL,
    Manager_ID INT
);

INSERT INTO Employees (Employee_ID, Employee_Name, Manager_ID)
VALUES
(1, 'Arun', NULL),
(2, 'Ravi', 1),
(3, 'Priya', 1),
(4, 'Kiran', 2);

SELECT * FROM Employees;

SELECT
    E.Employee_Name AS Employee_Name,
    M.Employee_Name AS Manager_Name
FROM Employees E
LEFT JOIN Employees M
ON E.Manager_ID = M.Employee_ID;