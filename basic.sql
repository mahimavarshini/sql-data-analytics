CREATE DATABASE basics;
USE basics;
CREATE TABLE staff (
    id INT PRIMARY KEY AUTO_INCREMENT,
    staff_id INT UNIQUE NOT NULL,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    dept VARCHAR(20),
    job VARCHAR(20)
);
INSERT INTO staff (id, staff_id, name, email, dept, job) VALUES
(1, 101, 'varshini', 'abc@gmail.com', 'cse', 'software'),
(2, 102, 'abhi', 'z@gvil.com', 'mec', 'software'),
(3, 103, 'balli', 'balli@gmail.com', 'ece', 'software');
CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    dept VARCHAR(20)
);
INSERT INTO students (id, name, email, dept) VALUES
(1, 'satya', 'satya@gmail.com', 'cse'),
(2, 'madhan', 'madhan@gmail.com', 'mec'),
(3, 'pandu', 'pandu@gmail.com', 'ece');