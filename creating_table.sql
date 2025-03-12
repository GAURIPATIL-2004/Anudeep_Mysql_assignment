CREATE DATABASE gauri;
use gauri;

### Creating Tables
-- 1. Create a table "countries" with country_id, country_name, and region_id

CREATE TABLE countries (
    country_id INT,
    country_name VARCHAR(50),
    region_id INT
);

-- 2. Create "countries" table if it already exists

CREATE TABLE IF NOT EXISTS countries (
    country_id INT,
    country_name VARCHAR(50),
    region_id INT
);

-- 3. Create a table "dup_countries" with the same structure as "countries"

CREATE TABLE dup_countries LIKE countries;

-- 4. Create a copy of "countries" table including data

CREATE TABLE dup_countries AS SELECT * FROM countries;

-- 5. Create "countries" table with columns allowing NULL values

CREATE TABLE countries (
    country_id INT NULL,
    country_name VARCHAR(50) NULL,
    region_id INT NULL
);

-- 6. Create a "jobs" table with salary limit check

CREATE TABLE jobs (
    job_id INT PRIMARY KEY,
    job_title VARCHAR(50),
    min_salary DECIMAL(10,2),
    max_salary DECIMAL(10,2) CHECK (max_salary <= 25000)
);

-- 7. Create "countries" table allowing only specific countries

CREATE TABLE countries (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(50) CHECK (country_name IN ('Italy', 'India', 'China')),
    region_id INT
);

-- 8. Create "job_history" table ensuring "end_date" format

CREATE TABLE job_history (
    employee_id INT PRIMARY KEY,
    start_date DATE,
    end_date DATE NOT NULL DEFAULT '00/00/0000',
    job_id INT,
    department_id INT
);

-- 9. Create "countries" table with unique country_id

CREATE TABLE countries (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(50),
    region_id INT
);

-- 10. Create "jobs" table with default values

CREATE TABLE jobs (
    job_id INT PRIMARY KEY,
    job_title VARCHAR(50) DEFAULT '',
    min_salary DECIMAL(10,2) DEFAULT 8000,
    max_salary DECIMAL(10,2) DEFAULT NULL
);

-- 11. Create "countries" table ensuring unique country_id

CREATE TABLE countries (
    country_id INT UNIQUE,
    country_name VARCHAR(50),
    region_id INT
);

-- 12. Create "countries" table with auto-incremented country_id

CREATE TABLE countries (
    country_id INT AUTO_INCREMENT PRIMARY KEY,
    country_name VARCHAR(50),
    region_id INT
);

-- 13. Create "countries" table ensuring unique combination of 

CREATE TABLE countries (
    country_id INT,
    country_name VARCHAR(50),
    region_id INT,
    UNIQUE (country_id, region_id)
);

-- 14. Create "job_history" table ensuring job_id exists in "jobs" table

CREATE TABLE job_history (
    employee_id INT PRIMARY KEY,
    start_date DATE,
    end_date DATE,
    job_id VARCHAR(10),
    department_id INT,
    FOREIGN KEY (job_id) REFERENCES jobs(job_id)
);

-- 15. Create "employee" table ensuring department_id and manager_id exist in "departments"

CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(20),
    hire_date DATE,
    job_id VARCHAR(10),
    salary DECIMAL(10,2),
    commission DECIMAL(10,2),
    manager_id INT,
    department_id INT,
    FOREIGN KEY (department_id, manager_id) REFERENCES departments(department_id, manager_id)
);

CREATE TABLE locations (
    location_id INT PRIMARY KEY,
    street_address VARCHAR(100),
    city VARCHAR(50),
    state_province VARCHAR(50),
    country_id VARCHAR(10)
);

CREATE TABLE employee (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,  -- Unique ID for each employee
    first_name VARCHAR(50),  -- Employee's first name
    last_name VARCHAR(50),   -- Employee's last name
    email VARCHAR(100) UNIQUE,  -- Employee's email (must be unique)
    phone_number VARCHAR(20), -- Employee's phone number
    hire_date DATE NOT NULL,  -- Date when the employee was hired
    job_id VARCHAR(10),  -- Job role (linked to the jobs table)
    salary DECIMAL(10,2),  -- Employee's salary
    commission DECIMAL(5,2), -- Commission percentage (if applicable)
    manager_id INT,  -- ID of the manager (references another employee)
    department_id INT  -- ID of the department (linked to departments table)
    );
ALTER TABLE employee ADD COLUMN gender VARCHAR(10);

INSERT INTO employee (first_name, last_name, hire_date, gender, email, phone_number, job_id, salary, commission, manager_id, department_id)  
VALUES  
('Gauri', 'Patil', '2004-11-19', 'Female', 'gauri@example.com', '1234567890', 'DEV101', 50000, 10, NULL, 1),  
('Jane', 'Smith', '2001-07-20', 'Female', 'jane.smith@example.com', '2345678901', 'DEV102', 55000, 12, NULL, 1),  
('Kalyani', 'Khanavakar', '2004-12-27', 'Female', 'kk2712@example.com', '3456789012', 'HR201', 48000, 8, NULL, 2),  
('Satyam', 'Gaud', '2004-03-25', 'Male', 'satyam@example.com', '4567890123', 'IT301', 60000, 15, NULL, 3),  
('Harsh', 'Mokal', '2005-01-21', 'Male', 'harsh@example.com', '5678901234', 'FIN401', 47000, 5, NULL, 4),  
('Sahil', 'Bewnak', '2003-12-30', 'Male', 'sahil@example.com', '6789012345', 'MKT501', 52000, 7, NULL, 5);  
