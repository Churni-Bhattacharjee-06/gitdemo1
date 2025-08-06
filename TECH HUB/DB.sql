create database TechHubDB;
use TechHubDB;
create table departments (
dept_id int primary key,
dept_name varchar(100) NOT NULL
);
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(20),
    emp_id INT,
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);
INSERT INTO employees VALUES
(101, 'Alice','alice@giet.edu', 1),     -- has students
(102, 'Bob', 'bob@giet.edu',  2),       -- has students
(103, 'Charlie', 'charlie@giet.edu', 1),   -- has no students
(104, 'David','david@giet.edu',  3),     -- has no students
(105, 'Eve','Eve@giet.edu',  2);       -- has students

select * from employees;

INSERT INTO students VALUES 
(201, 'Anu', 20, 'Female', 101),
(202, 'Ravi', 21, 'Male', 101),
(203, 'Sneha', 19, 'Female', 102),
(204, 'Arjun', 22, 'Male', 105),
(205, 'Meena', 18, 'Female', NULL),   -- no mentor
(206, 'Soham', 23, 'Male', 105),
(207, 'Divya', 20, 'Female', NULL),   -- no mentor
(208, 'Kiran', 21, 'Female', NULL);   -- changed 999 to NULL
desc students;
INSERT INTO departments VALUES
(1, 'Computer Science'),
(2, 'Electronics'),
(3, 'Mechanical');



show tables;
select * from employees;