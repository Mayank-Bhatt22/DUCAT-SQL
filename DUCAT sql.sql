/* 01/07/2025 (Tusesday)*/

/* all ways end the command with ; it is like a full stop for sql you can write like this to explain your command to other coder and you
can click ctrl+b to make it look more beautiful */

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

