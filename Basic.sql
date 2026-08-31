CREATE database kluDB;
USE kluDB;
Create table Students(
student_id INT,
student_name VARCHAR(40),
dept VARCHAR(20),
age INT
);
INSERT INTO Students (student_id, student_name, dept, age)
VALUES
(101, 'Srini', 'CSE', 20),
(102, 'Vidya', 'ECE', 21),
(103, 'lohith', 'CSE', 20),
(102, 'Kumar', 'ECE', 21),
(104, 'varshini', 'IT', 22);
SELECT *from Students;