### Advanced Queries

-- 1. Get employee whose salary is NOT between 10,000 and 15,000

SELECT first_name, last_name, salary FROM employee WHERE salary NOT BETWEEN 10000 AND 15000;

-- 2. Get employee from department 30 or 100 in ascending order

SELECT first_name, last_name, department_id FROM employee WHERE 
department_id IN (30, 100) ORDER BY department_id ASC;

-- 3. Get employee whose salary is NOT between 10,000 and 15,000 and are in department 30 or 100

SELECT first_name, last_name, salary FROM employee WHERE salary NOT BETWEEN 10000 AND 15000 AND department_id IN (30, 100);

-- 4. Get employee hired in 1987

SELECT first_name, last_name, hire_date FROM employee WHERE YEAR(hire_date) = 1987;

-- 5. Get employee with both "b" and "c" in first name

SELECT first_name FROM employee WHERE first_name LIKE '%b%' AND first_name LIKE '%c%';

-- 6. Get employee who are Programmers or Shipping Clerks with salary not 4500, 10000, or 15000

SELECT last_name, job_id, salary FROM employee WHERE job_id IN ('Programmer', 'Shipping Clerk') AND salary NOT IN (4500, 10000, 15000);

-- 7. Get last names of employee with exactly 6 characters

SELECT last_name FROM employee WHERE LENGTH(last_name) = 6;

-- 8. Get last names of employee with 'e' as the third character

SELECT last_name FROM employee WHERE last_name LIKE '__k%';

-- 9. Get all job designations

SELECT DISTINCT job_id FROM employee;

-- 10. Get employee name, salary, and PF (15% of salary)

SELECT first_name, last_name, salary, salary * 0.15 AS PF FROM employee;
