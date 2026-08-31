-- Task: Select a database, create a table,
-- check the current database, and display databases

-- 1. Select one database
USE BankDB;

-- 2. Create a table inside the selected database
CREATE TABLE Transaction (
    transaction_id INT PRIMARY KEY,
    customer_id INT,
    transaction_type VARCHAR(20),
    amount DECIMAL(10,2)
);

-- 3. Check which database is currently selected
SELECT DATABASE();

-- 4. Display all available databases
SHOW DATABASES;