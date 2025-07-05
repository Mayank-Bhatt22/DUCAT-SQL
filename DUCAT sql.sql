/* 01/07/2025 (Tusesday)*/

/* all ways end the command with ; it is like a full stop for sql you can write like this to explain your command to other coder and you
can click ctrl+b to make it look more beautiful */
/* ctrl+enter to run the code*/
/* firstly we are going to create a database to store all table */
CREATE DATABASE Homerevison;

/* So we have created the database we are telling computer to use it */
USE Homerevison;

/*now we are going to make table for the database to store data INT means number, VARCHAR mean to write some word, CHAR means also are 
words and NOT NULL mean that you can not leave this place empty */
CREATE TABLE student
(
id INT NOT NULL,
name VARCHAR(30),
gender CHAR(10)
);

/* DESC is used to describe the table use to see table */
DESC student;

/* to INSERT the data in the table */
INSERT INTO student(id,name,gender) values
(1,"Mayank Bhatt","Male"),
(2, "Dexant Bhatt", "Male"),
(3, "Sonali Bhatt", "Female");

/* to see table * mean all */
SELECT * FROM student;

/* 02/07/2025 (Wednesday) */

/* UNIQUE mean only one, PRIMARY KEY mean it is like a mix of UNIQUE and NOT NULL */
CREATE TABLE department (
Did INT PRIMARY KEY,
Dname VARCHAR(30) UNIQUE,
Dlocation VARCHAR(30) NOT NULL
);

/* to INSERT the data in the table */
INSERT INTO department(Did,Dname,Dlocation) values
(1, "Mayank Bhatt", "Delhi"),
(2, "Dexant Bhatt","Delhi"),
(3, "Sonali Bhatt", "UP");

/* 03/07/2025 (Thursday) */

-- to delete the table we use DROP TABLE and we can drop the database also by DROP DATABASE
DROP TABLE Department;

-- Create table to link other table you can say there are two type of table parent table and child table here we are linking Department to 
-- employee meaning we will be useing departmnet column in employee table 
CREATE TABLE Department (
 D_id INT PRIMARY KEY, 
 D_name VARCHAR(25) UNIQUE
 );

-- CREATE TABLE IF NOT EXISTS is a good practice to use it is used to check if that table exist if not make it 
-- FLOAT allows decimal numbers, CONSTRAINT keyword in SQL is used to set rules on columns in a table (this is not that important)  
-- FOREIGN KEY creates a relationship It links D_id in the employee table to D_id in the Department table.
-- REFERENCES is like telling that this column is telling about this columns.
CREATE TABLE IF NOT EXISTS employee(
e_id INT PRIMARY KEY,
e_name VARCHAR(40),
salary FLOAT,
D_id INT,
CONSTRAINT FOREIGN KEY(D_id) REFERENCES Department (D_id)
);

-- INSERT data in department 
INSERT INTO department (D_id,D_name) VALUES
(101,"HR"),
(102, "Admin"),
(103, "Devloper");

-- INSERT data in employee
INSERT INTO employee(e_id,e_name,salary,D_id) VALUES
(1001, "Mayank","45000","101");

-- CHECK is like to put some condition before INSERT data will CREATEing table 
CREATE TABLE emp(
e_id INT PRIMARY KEY,
E_name VARCHAR(30),
age INT CHECK(Age>=18),
address VARCHAR(50)
);

-- INSERT data in emp
INSERT INTO emp(e_id,Age) VALUES
(1, 20);

-- to see the table 
SELECT * FROM emp;

-- INSERT data but it will not take it because age is not 18+ will creating table we used check to see age must be +18
INSERT INTO emp(e_id,Age) VALUE
(1, 15); 

-- DEFAULT is like haveing default value if you not put anything  
CREATE TABLE emp1(
e_id INT PRIMARY KEY,
E_name VARCHAR(30) DEFAULT("New Joiner"),
age INT CHECK(Age>=18),
address VARCHAR(50)
);

-- INSERT data in emp1
INSERT INTO emp1(e_id,Age) VALUES
(1, 20); 

-- see the table but you can see E_name New Joiner because will creating table we put default value in emp1 
SELECT * FROM emp1;

