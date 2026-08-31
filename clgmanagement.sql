CREATE DATABASE clgmanagement;
USE clgmanagement;
CREATE TABLE Students (
    Student_ID INT UNSIGNED PRIMARY KEY,
    Student_Name VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(15) UNIQUE,
    Age INT UNSIGNED,
    Department VARCHAR(30) NOT NULL,
    `Year` INT UNSIGNED NOT NULL,
    CGPA DECIMAL(3,2) UNSIGNED
);
INSERT INTO Students
(Student_ID, Student_Name, Email, Phone, Age, Department, `Year`, CGPA)
VALUES
(101, 'Sri',     'sri@gmail.com',     '9876543210', 22, 'CSE',  4, 8.75),
(102, 'Kutty',   'kutty@gmail.com',   '9876543211', 21, 'ECE',  3, 8.20),
(103, 'Sarvani', 'sarvani@gmail.com', '9876543212', 20, 'CSE',  2, 9.10),
(104, 'Chinni',  'chinni@gmail.com',  '9876543213', 23, 'IT',   4, 7.85),
(105, 'Vidya',   'vidya@gmail.com',   '9876543214', 22, 'CSE',  3, 8.60),
(106, 'Appu',    'appu@gmail.com',    '9876543215', 21, 'EEE',  3, 7.90),
(107, 'Satya',   'satya@gmail.com',   '9876543216', 24, 'CSE',  4, 9.25),
(108, 'Vallabh', 'vallabh@gmail.com', '9876543217', 20, 'ECE',  2, 8.05),
(109, 'Anu',     'anu@gmail.com',     '9876543218', 22, 'IT',   3, 8.40),
(110, 'Ravi',    'ravi@gmail.com',    '9876543219', 23, 'CSE',  4, 7.95);
SELECT * FROM Students;

SELECT * FROM Students
WHERE Department = 'CSE';
SELECT * FROM Students
WHERE CGPA > 8;
SELECT * FROM Students
WHERE Age > 20;

INSERT INTO Students
(Student_ID, Student_Name, Email, Phone, Age, Department, `Year`, CGPA)
VALUES
(111, 'Test', 'sri@gmail.com', '9999999998', 22, 'CSE', 4, 8.50);

INSERT INTO Students
(Student_ID, Student_Name, Email, Phone, Age, Department, `Year`, CGPA)
VALUES
(112, NULL, 'test@gmail.com', '9999999997', 22, 'CSE', 4, 8.50);
-- 9. Add a new column Address
ALTER TABLE Students
ADD Address VARCHAR(100);

-- 10. Describe the table
DESC Students;