CREATE DATABASE MultiJoinDB;
USE MultiJoinDB;

CREATE TABLE Students (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50) NOT NULL,
    Department_ID INT
);

CREATE TABLE Departments (
    Department_ID INT PRIMARY KEY,
    Department_Name VARCHAR(50) NOT NULL
);

CREATE TABLE Courses (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(50) NOT NULL,
    Department_ID INT
);

CREATE TABLE Enrollments (
    Student_ID INT,
    Course_ID INT
);

INSERT INTO Students (Student_ID, Student_Name, Department_ID)
VALUES
(101, 'Sri', 10),
(102, 'Kumar', 20),
(103, 'Sarvani', 10),
(104, 'Chinni', 30),
(105, 'Vidya', 20);

INSERT INTO Departments (Department_ID, Department_Name)
VALUES
(10, 'CSE'),
(20, 'ECE'),
(30, 'EEE'),
(40, 'MECH');

INSERT INTO Courses (Course_ID, Course_Name, Department_ID)
VALUES
(201, 'Java', 10),
(202, 'SQL', 10),
(203, 'Electronics', 20),
(204, 'Networks', 30),
(205, 'Python', 10);

INSERT INTO Enrollments (Student_ID, Course_ID)
VALUES
(101, 201),
(101, 202),
(102, 203),
(103, 202),
(103, 205),
(104, 204),
(105, 203);


-- MULTIPLE TABLE JOIN
-- Join Students, Departments, Enrollments and Courses.
-- Students is connected to Departments using Department_ID.
-- Students is connected to Enrollments using Student_ID.
-- Enrollments is connected to Courses using Course_ID.
-- Display Student Name, Department Name and Course Name.
SELECT
    Students.Student_Name,
    Departments.Department_Name,
    Courses.Course_Name
FROM Students
INNER JOIN Departments
    ON Students.Department_ID = Departments.Department_ID
INNER JOIN Enrollments
    ON Students.Student_ID = Enrollments.Student_ID
INNER JOIN Courses
    ON Enrollments.Course_ID = Courses.Course_ID;

-- MULTIPLE TABLE JOIN WITH FILTER
-- Join all four tables to display Student Name, Department and Course.
-- Use WHERE condition to display only students from the CSE department.

SELECT
    Students.Student_Name,
    Departments.Department_Name,
    Courses.Course_Name
FROM Students
INNER JOIN Departments
    ON Students.Department_ID = Departments.Department_ID
INNER JOIN Enrollments
    ON Students.Student_ID = Enrollments.Student_ID
INNER JOIN Courses
    ON Enrollments.Course_ID = Courses.Course_ID
WHERE Departments.Department_Name = 'CSE';