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
(102, 'Varshini', 'ECE', 21),
(103, 'lohitha', 'CSE', 20),
(102, 'Kiran', 'ECE', 21),
(104, 'vennala', 'IT', 22);
SELECT *from Students;