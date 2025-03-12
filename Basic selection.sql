### Basic Queries

-- 1. Display first and last name with aliases

SELECT first_name AS "First Name", last_name AS "Last Name" FROM employee;

-- 2. Get unique department IDs

SELECT DISTINCT department_id FROM employee;

-- 3. Get all employee details sorted by first_name in descending order

SELECT * FROM employee ORDER BY first_name DESC;

-- 4. Get employee name, salary, and PF (15% of salary)

SELECT first_name, last_name, salary, salary * 0.15 AS PF FROM employee;

-- 5. Get employee details sorted by salary in ascending order

SELECT employee_id, first_name, last_name, salary FROM employee ORDER BY salary ASC;

-- 6. Get total salaries payable

SELECT SUM(salary) AS total_salaries FROM employee;

-- 7. Get maximum and minimum salary

SELECT MAX(salary) AS max_salary, MIN(salary) AS min_salary FROM employee;

-- 8. Get average salary and number of employee

SELECT AVG(salary) AS avg_salary, COUNT(*) AS num_employee FROM employee;

-- 9. Get number of employee in the company

SELECT COUNT(*) AS total_employee FROM employee;

