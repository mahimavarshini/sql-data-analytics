-- Task: Create a real-world Hospital Database
CREATE DATABASE HospitalDB;
-- 2. Select the database
USE HospitalDB;
-- 3. Create one table
CREATE TABLE Patients (
    patient_id INT PRIMARY KEY,
    patient_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    disease VARCHAR(50)
);
INSERT INTO Patients (patient_id, patient_name, age, gender, disease)
VALUES
(101, 'Sri', 22, 'Female', 'Fever'),
(102, 'Kumar', 25, 'Male', 'Cold'),
(103, 'Sarvani', 21, 'Female', 'Headache'),
(104, 'Chinnu', 24, 'Female', 'Cough'),
(105, 'Vidya', 23, 'Female', 'Fever');

-- 5. Display all records
SELECT * FROM Patients;