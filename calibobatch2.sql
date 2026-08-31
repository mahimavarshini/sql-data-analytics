CREATE DATABASE calibobatch2;
USE calibobatch2;
create table employee(
employee_id INT Primary key,
emp_name VARCHAR(50) NOT NULL,
dept_id INT,
dept_name VARCHAR(30),
hire_date DATE,
salary DECIMAL(10,2)
);
INSERT INTO employee
(employee_id, emp_name, dept_id, dept_name, hire_date, salary)
VALUES
(101, 'srini',     10, 'CSE', '2021-06-15', 70000),
(102, 'yash',   10, 'CSE', '2022-08-20', 80000),
(103, 'karunakar', 20, 'HR',  '2021-01-10', 50000),
(104, 'mayank',  20, 'HR',  '2023-03-05', 55000),
(105, 'chinni',   30, 'ECE', '2019-11-12', 75000),
(106, 'appu',    30, 'ECE', '2022-04-18', 65000),
(107, 'varshini',   40, 'IT',  '2023-07-10', 90000),
(108, 'vallabh', 40, 'IT',  '2021-09-25', 70000);
SELECT * FROM employee;
SELECT dept_id, AVG(salary) AS avg_salary
FROM employee
WHERE hire_date > '2020-01-01'
GROUP BY dept_id
HAVING AVG(salary) > 60000;