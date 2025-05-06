
# MySQL Database Basics

This repository includes structured MySQL scripts and exercises based on my learning during the Anudeeo Foundation Course. It serves as a reference and practice ground for database management using SQL.

## Overview

Learn the fundamentals of relational databases and SQL through practical scripts and examples. This includes creating databases, writing queries, and managing data using MySQL.

## Topics Covered

- **Database and Table Creation**
- **Data Types & Constraints**
- **CRUD Operations** (`INSERT`, `SELECT`, `UPDATE`, `DELETE`)
- **Filtering, Sorting, and Aggregating Data**
- **JOINS** (INNER, LEFT, RIGHT)
- **Subqueries**
- **Indexes and Keys**

## How to Use

1. Install MySQL Server and a client like **MySQL Workbench** or **phpMyAdmin**.
2. Open the `.sql` files in your SQL editor.
3. Execute scripts in order to understand and practice various MySQL features.

## Example

```sql
CREATE DATABASE student_db;

USE student_db;

CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    grade VARCHAR(10)
);

INSERT INTO students (name, age, grade)
VALUES ('Alice', 18, 'A');