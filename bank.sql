-- Task: Create a Bank Database

-- 1. Create the database
CREATE DATABASE BankDB;

-- 2. Select the database
USE BankDB;

-- 3. Create one table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    account_type VARCHAR(20),
    balance DECIMAL(10,2),
    city VARCHAR(50)
);

-- 4. Insert 5 records
INSERT INTO Customers
(customer_id, customer_name, account_type, balance, city)
VALUES
(101, 'Sri', 'Savings', 25000.00, 'Vijayawada'),
(102, 'Chinni', 'Current', 45000.00, 'Guntur'),
(103, 'Sarvani', 'Savings', 30000.00, 'Hyderabad'),
(104, 'Vidya', 'Savings', 55000.00, 'Chennai'),
(105, 'Appu', 'Current', 40000.00, 'Bangalore');
SELECT * FROM Customers;