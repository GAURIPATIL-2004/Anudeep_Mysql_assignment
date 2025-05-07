# MySQL Database Basics

Welcome to the **MySQL Database Basics** repository! This is a collection of SQL scripts and queries to help you understand the key concepts of MySQL databases. This repository is perfect for anyone looking to enhance their skills in relational databases and SQL!

## 🎯 **What You'll Learn**

- **Database Creation and Design**
- **CRUD Operations**
- **JOINs** (INNER, LEFT, RIGHT)
- **Subqueries**
- **Indexes & Keys**

---

### ✨ **MySQL Demo**

Here’s a basic **MySQL query** example that demonstrates creating a database and inserting data:

![MySQL Example](https://media0.giphy.com/media/v1.Y2lkPTc5MGI3NjExbjQxNjRkMGhucWZyeDNycHB2ZXZ4bGZkYzA1c2J4N3B1ZDkwdmYzaCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/l0HlOdmwAyOMrQtZS/giphy.gif)

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

