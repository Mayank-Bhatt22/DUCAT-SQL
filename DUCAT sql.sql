-- 01/07/2025 (Tusesday)

-- all ways end the command with ; it is like a full stop for sql you can write like this to explain your command to other coder and you
-- can click ctrl+b to make it look more beautiful 

-- firstly we are going to create a database to store all table 
CREATE DATABASE Homerevison;

-- So we have created the database we are telling computer to use it 
USE Homerevison;

-- Now we are going to make table for the database to store data INT means number, VARCHAR mean to write some word, CHAR means also are 
-- words and NOT NULL mean that you can not leave this place empty 
CREATE TABLE student
(
id INT NOT NULL,
name VARCHAR(30),
gender CHAR(10)
);

-- DESC is used to describe the table use to see table 
DESC student;

-- To INSERT the data in the table 
INSERT INTO student(id,name,gender) values
(1,"Mayank Bhatt","Male"),
(2, "Dexant Bhatt", "Male"),
(3, "Sonali Bhatt", "Female");

-- To see table * mean all 
SELECT * FROM student;

-- 02/07/2025 (Wednesday) 

-- UNIQUE mean only one, PRIMARY KEY mean it is like a mix of UNIQUE and NOT NULL 
CREATE TABLE department (
Did INT PRIMARY KEY,
Dname VARCHAR(30) UNIQUE,
Dlocation VARCHAR(30) NOT NULL
);

-- to INSERT the data in the table 
INSERT INTO department(Did,Dname,Dlocation) VALUES
(1, "Mayank Bhatt", "Delhi"),
(2, "Dexant Bhatt","Delhi"),
(3, "Sonali Bhatt", "UP");

-- 03/07/2025 (Thursday) 

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


-- 08/07/2025 (Tuesday)
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


-- 9/6/2025 (wednesday)
DROP DATABASE Company1;

CREATE DATABASE company1;

USE company1;

CREATE TABLE Branch(
Branch_id INT PRIMARY KEY,
B_name VARCHAR(20),
Location VARCHAR(50)
);

DESC Branch;

CREATE TABLE Department(
Dep_id INT PRIMARY KEY,
Dep_name VARCHAR(20),
Branch_id INT,
CONSTRAINT FOREIGN KEY(Branch_id) REFERENCES Branch(Branch_id)
);

CREATE TABLE employee(
e_id INT PRIMARY KEY,
e_name VARCHAR(40),
salary FLOAT,
D_id INT,
CONSTRAINT FOREIGN KEY(D_id) REFERENCES Department (Dep_id)
);

Create table Product(
P_id int primary key,
P_name Varchar(30),
Branch_id int,
constraint foreign key(Branch_id) references Branch(Branch_id)
);

-- we created this table so we can make a relation between many to many 
Create table Product_emp(
Start_date Date primary key,
P_id int,
e_id int,
constraint foreign key(p_id) references Product(p_id),
constraint foreign key(e_id) references employee(e_id)
);

-- INT for numbers and BIGINT for big number
-- FLOAT for number like (1.00) and DOUBLE for number like (1.998443)
-- CHAR() for one word, VARCHAR() for more then one word and TEXT for write a text 
-- DATE for date and DATETIME for date & time 


-- 10/7/2025 (Thusday)
-- Revison of inserting data 
INSERT INTO Branch VALUES
(01,"Management Branch","Delhi"),
(02, "Head", "Delhi"),
(03, "Mumbai","uk"),
(04, "Mayank", "UP"),
(05, "Bhatt", "Patna");

SELECT * FROM Branch;

INSERT INTO Department VALUES 
(101,"HR",01),
(102,"MB",02),
(103,"DA",03),
(104,"DS",01),
(105,"ba",02),
(106,"VLB",04),
(107,"SB",05),
(108,"PB",04),
(109,"DB",02),
(110,"DB",04);
SELECT * FROM Department;

Insert INTO employee VALUES
(1001,"Mayank",28000,103),
(1002,"Satyam",25000,106),
(1003,"Dexant",30000,108),
(1004,"Gopal", 20000,102),
(1005,"Uday", 32000,101);
SELECT * FROM employee;

Insert INTO product VALUES
(1,"asd",02),
(2,"ZXC",01),
(3,"QWE",03),
(4,"POI",05),
(5,"LKJ",04);
SELECT * FROM product;

 Insert INTO Product_emp VALUES
('2022-04-02',1,1001),
('2022-04-03',4,1004),
('2022-04-04',3,1002),
('2022-04-05',2,1005),
('2022-04-06',5,1003);
SELECT * FROM Product_emp;

-- 11/7/2025 (friday)

-- Useing database that you prefer
USE College;

-- Createing wrong table to learning who to rewrite it without droping it
CREATE TABLE Parson(
Id INT,
NAME CHAR(10),
Address VARCHAR(50)
);

-- This is who to add one rows in the table
ALTER TABLE Parson ADD Contact INT UNIQUE;

-- This is who to add multiple rows in the table
ALTER TABLE Parson ADD (Gender CHAR(6),Email VARCHAR(50), Age INT CHECK(age>=18));

-- To see if every thing is good
SELECT * FROM Parson;

-- Inserting data
INSERT INTO parson VALUES 
(01,"Mayank","abcd",4667775,"Male","asf@gmail.com",35),
(02,"Dexant","efgh",9455445,"Woman","acf@gmail.com",34),
(03,"Satyam","ijkl",9344245,"Transwoman","vsf@gmail.com",65);

-- To drop a row of a table without droping the whole table
ALTER TABLE Parson DROP COLUMN Gender;

-- To modify meaning to rewrite the charteristic of row header which we did wrong above
ALTER TABLE Parson MODIFY Contact BIGINT;
ALTER TABLE Mayank MODIFY Name VARCHAR(30);

-- To renameing the database 
ALTER TABLE Parson RENAME Mayank;

-- To see every thing is good 
SELECT * FROM Mayank;

-- 15/7/2025 (Tuesday)

-- useing the database we changed name ok the database 
USE mayank;

-- TO renameing the column name of the table
ALTER TABLE course RENAME COLUMN course_id TO BHATT; 

-- To remove all the data of the table without droping the table
TRUNCATE TABLE course;

-- Add Constraint primary key in the column 
ALTER TABLE course ADD UNIQUE (TITLE);

-- You can change Constraint and charteristic in one line
ALTER TABLE course MODIFY title VARCHAR(45) NOT NULL;
ALTER TABLE course MODIFY credits INT UNIQUE;
ALTER TABLE course MODIFY Bhatt VARCHAR(45) DEFAULT "Bhatt";

ALTER TABLE COURSE ADD CONSTRAINT title CHECK (title IN ("Delhi","Mayank"));

-- to see if  all thing work good  
SELECT * FROM course;
DESC course;
INSERT INTO course (Bhatt,title,credits)VALUES
("so","BHATT",2);


-- 16/7/2025 (wednesday)
-- Useing the database
USE mayank;

-- makeing table to add foregin key in it by alter
CREATE TABLE customer(
c_id INT PRIMARY KEY,
name VARCHAR(50),
address TEXT,
contact BIGINT
);

CREATE TABLE orders(
o_id INT PRIMARY KEY,
o_date DATE,
item VARCHAR(50),
c_id INT
);

-- adding the foregin key after the table was already created
ALTER TABLE orders ADD CONSTRAINT cust_order1 FOREIGN KEY(c_id) REFERENCES customer(c_id);

-- droping foreign key but 
ALTER TABLE orders DROP FOREIGN KEY cust_order1;

-- Inserting the data to see everthing ok
INSERT INTO orders VALUES(01, "2025-07-16","adc",123);
SELECT * FROM orders;


-- 17/07/2025 (Thursday)

-- Ways to insert the data in the table
CREATE table XYZ(
A INT,
B VARCHAR(30),
C FLOAT,
D DATE
);

-- Type no 1 to add one row
INSERT INTO XYZ VALUES (3, "ABCD", 4.56, '2005-09-21');

-- Type no 2 to add more then one in one time
INSERT INTO XYZ VALUES 
(1, "ABCD", 4.56, '2005-09-21'),
(2, "EFGH", 5.67, '2005-04-22');

-- Type no 3 to add data in selected column 
INSERT INTO XYZ (B,D)VALUES 
("ABCD",'2005-09-21'),
("EFGH",'2005-04-22');

-- Type no 4 nothing new but it can solve some maths 
INSERT INTO XYZ(A,C) VALUES (7,10+(20/5));

-- Checking everything
SELECT * FROM XYZ;

-- Use of auto_increment it is used for to count something like we give everyone id so we have to give one id then we don't need to add Anything after we tell sql the one
-- id it will now count it by himself like first id we gave was 1 then we don't need to add id after That will count it from the number we give it in our case 1,2,3,4,5,____
-- and so on if it was 100,101,102,103,____  
CREATE TABLE bhatt(
A INT PRIMARY KEY AUTO_INCREMENT,
B VARCHAR(30) DEFAULT("Mayank"),
C FLOAT,
D DATE
);

-- Trying to add data
INSERT INTO bhatt (a, c, d) VALUES (100,12.44,'2005-04-22');
INSERT INTO bhatt (c, d) VALUES (12.44,'2005-04-22');
SELECT * FROM bhatt;


-- 19/07/2025 (Friday)
-- Useing the dataset
USE mayank;

-- use of Decimal(6,2) it means you can put like 6 number in it like 100000 and 2 means (.) before that number from last like 1000.00 
-- Default(now()) in datetime means it is used to put the date and correct timeing in which data was stored 
CREATE TABLE bhatt2(
A INT PRIMARY KEY AUTO_INCREMENT,
B VARCHAR(30) DEFAULT("Mayank"),
C DECIMAL (6,2), -- 1000.00
D DATETIME DEFAULT (now())
);

-- Inserting the data 
INSERT INTO bhatt2 VALUES (200,"mayank",4.7,'2002-09-23');
INSERT INTO bhatt2 (b,c,d)VALUES ("mayank",2234.7445,'2005-09-13');
INSERT INTO bhatt2 (b,c) VALUES("anuj",2224.23);
SELECT * FROM bhatt2;

-- use of default (curdate()) in datatime it is used to only put the data only
CREATE table bhatt3(
A INT PRIMARY KEY AUTO_INCREMENT,
B VARCHAR(30) DEFAULT("Mayank"),
C DECIMAL (6,2), -- 1000.00
D DATETIME DEFAULT (curdate())
);

-- inserting the data
INSERT INTO bhatt3 VALUES (200,"mayank",4.7,'2002-09-23');
INSERT INTO bhatt3 (b,c,d) VALUES ("mayank",2234.7445,'2005-09-13');
INSERT INTO bhatt3 (b,c) VALUES ("anuj",2224.23);
SELECT * FROM bhatt3;

-- Nothing new here
CREATE table bhatt3(
A INT PRIMARY KEY AUTO_INCREMENT,
B VARCHAR(30) DEFAULT("Mayank"),
C DECIMAL (6,2), -- 1000.00
D DATETIME DEFAULT (curdate())
);

-- Inserting data by default,default which will fill the default value given in table
INSERT INTO bhatt4 VALUES (202,"mayank",DEFAULT,DEFAULT);
SELECT * FROM bhatt4;

-- createing the table to copy the data from another table
CREATE table bhatt3(
A INT PRIMARY KEY,
B VARCHAR(30),
C DECIMAL, 
D DATETIME
);

-- Select * from in insert is used to copy the data from another table but the column name and there type should be same
INSERT INTO bhatt5(a,b,c,d) SELECT * FROM bhatt;
SELECT * FROM bhatt5;

-- delete from is use to delete data from the table and wrhere is used to tell where to see for it
DELETE FROM bhatt5 WHERE a=104;
DELETE FROM bhatt5 WHERE b="mayank";

-- sql make sure you are 100% sure about deleting anything so if you are sure about it so we remove safe update from it by set sql_safe_updates=0;
SET sql_safe_updates=0;

-- it is same like truncate to remove all data from it 
DELETE FROM bhatt5;


-- 22/07/2025 (Tuseday) 
-- useing batch4pm
USE batch4pm;

-- Limit 1 is used to give the number of lines of data you want
SELECT e_id,e_name FROM employee LIMIT 1;

-- Drop tables if already exist
DROP TABLE IF EXISTS Employee;
DROP TABLE IF EXISTS Department;

-- Create Department Table
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100),
    Location VARCHAR(100)
);

INSERT INTO Department (DepartmentID, DepartmentName, Location) VALUES
(1, 'HR', 'Delhi'),
(2, 'Finance', 'Mumbai'),
(3, 'IT', 'Bangalore'),
(4, 'Sales', 'Chennai'),
(5, 'Support', 'Hyderabad');

-- Create Employee Table
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100),
    DepartmentID INT,
    ManagerID INT,
    Salary DECIMAL(10, 2),
    JoinDate DATE,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

INSERT INTO Employee (EmployeeID, Name, DepartmentID, ManagerID, Salary, JoinDate) VALUES
(101, 'Amit Sharma', 1, NULL, 60000, '2022-01-15'),
(102, 'Bhavna Mehra', 2, 101, 55000, '2022-03-18'),
(103, 'Chirag Verma', 3, 101, 65000, '2022-05-22'),
(104, 'Deepa Rawat', 3, 103, 70000, '2022-07-25'),
(105, 'Eshan Singh', 4, 101, 48000, '2022-09-29'),
(106, 'Farah Khan', 5, 101, 52000, '2022-11-30'),
(107, 'Gaurav Patel', 1, 101, 58000, '2023-01-10'),
(108, 'Heena Das', 2, 102, 61000, '2023-02-15'),
(109, 'Imran Ali', 3, 103, 54000, '2023-03-21'),
(110, 'Jyoti Rana', 4, 105, 47000, '2023-04-18'),
(111, 'Kunal Joshi', 5, 106, 51000, '2023-05-20'),
(112, 'Lata Sharma', NULL, NULL, 40000, '2023-06-12'),  -- No department (test LEFT JOIN)
(113, 'Manoj Bhat', 1, 107, 63000, '2023-07-25'),
(114, 'Nisha Jain', 2, 108, 57000, '2023-08-30'),
(115, 'Omkar Rao', 3, 104, 75000, '2023-09-05'),
(116, 'Pooja Sen', 4, 110, 49000, '2023-10-10'),
(117, 'Qasim Sheikh', NULL, NULL, 42000, '2023-11-11'), -- No department
(118, 'Ritika Ghosh', 5, 106, 53000, '2023-12-01'),
(119, 'Sanjay Sinha', 1, 107, 62000, '2024-01-01'),
(120, 'Tina Kaur', 2, 102, 58000, '2024-02-12'),
(121, 'Uday Bhatt', 3, NULL, 67000, '2024-03-15');

SELECT * FROM Employee;

-- Where is used to see where is the thing 
SELECT * FROM Employee WHERE EmployeeID=107;
SELECT * FROM Employee WHERE DepartmentID=1;
SELECT * FROM Employee WHERE ManagerID=107;

-- You can use ( +, -, *, / ) in select 
SELECT Salary+1000 FROM Employee;
SELECT (salary+(salary*10)/100) FROM Employee;
SELECT salary*1.10 FROM Employee;

-- you can use ( <, >, <=, >=, != ) in select
SELECT * FROM Employee WHERE salary<50000;
SELECT * FROM Employee WHERE salary>50000;
SELECT * FROM Employee WHERE salary<=50000;
SELECT * FROM Employee WHERE salary>=50000;
SELECT * FROM Employee WHERE salary!=50000;

-- and in select is to confirm both statement 
 SELECT * FROM Employee WHERE salary>50000 AND DepartmentID=1;
-- or in select is to confirm if first statment is ture if not check for second name
SELECT * FROM Employee WHERE salary>50000 OR ManagerID=102;

-- we can use ( count, sum, min, max, avg ) in select
SELECT COUNT(*) FROM Employee; 
SELECT COUNT(DepartmentID) FROM Employee;
SELECT sum(Salary) FROM Employee; 
SELECT max(Salary) FROM Employee; 
SELECT min(Salary) FROM Employee; 
SELECT avg(Salary) FROM Employee;


-- 23/7/2025 (wednesday)
-- useing the database
USE batch4pm;

-- use of (where) and (and) in select 
SELECT * FROM employee WHERE salary!=50000 and DepartmentID=1;

-- use of like Operator in select like is used to show like this one
SELECT * FROM employee WHERE name LIKE "A%"; -- any value start with a
SELECT * FROM employee WHERE name LIKE "%A"; -- any value that end with a
SELECT * FROM employee WHERE name LIKE "%A%"; -- any value that have a in it
SELECT * FROM employee WHERE name LIKE "_A%"; -- any value that have a in second position
SELECT * FROM employee WHERE name LIKE "A_%"; -- any value that start with a and are at least 2 charaters in length
SELECT * FROM employee WHERE name LIKE "A__%"; -- any value that start with a and are at least 3 charaters in length
SELECT * FROM employee WHERE name LIKE "A%A"; -- find any values that start with a and end with a 

-- use of distinct is it find the unique values in data 
SELECT DISTINCT(departmentID) FROM employee;
SELECT DISTINCT(departmentID) FROM employee where DepartmentID IS NOT NULL;

-- use of IN is which was these value in it
SELECT * FROM employee WHERE name IN ("Amit Sharma", "uday Bhatt", "Manyank Bhatt");
SELECT * FROM employee WHERE salary IN (40000,55000,40000);

-- (between) and (add) is used to see anything which between the data
SELECT * FROM employee WHERE salary BETWEEN 40000 AND 55000;

-- order by is used order things in table in asc and desc
SELECT * FROM employee ORDER BY SALARY ASC;
SELECT * FROM employee ORDER BY SALARY DESC;

-- group by is used in makeing the group 
SELECT DepartmentID,sum(Salary) FROM Employee GROUP BY DepartmentID;
SELECT DepartmentID,max(Salary) FROM Employee GROUP BY DepartmentID;
SELECT DepartmentID,min(Salary) FROM Employee GROUP BY DepartmentID;
SELECT DepartmentID,avg(Salary) FROM Employee GROUP BY DepartmentID;


SELECT * FROM employee;
-- use of count() and group by in one line
SELECT DepartmentID,COUNT(*) FROM Employee GROUP BY DepartmentID;
SELECT EmployeeID,COUNT(*) FROM Employee GROUP BY EmployeeID;

-- use of count(), group by and order by in one line;
SELECT DepartmentID,COUNT(*) FROM Employee GROUP BY DepartmentID ORDER BY COUNT(*);


-- 24/7/2025 (Thursday) 

-- using the database
USE batch4pm;

-- did some question 
SELECT departmentID,sum(salary) AS total_salary FROM Employee GROUP BY DepartmentID HAVING Total_salary>150000;
SELECT departmentID,avg(salary) AS avg_salary FROM Employee GROUP BY DepartmentID HAVING avg_salary<55000; 
SELECT ManagerID,count(EmployeeID) AS employee FROM Employee GROUP BY ManagerID HAVING Employee>2 AND ManagerID IS NOT NULL; 
SELECT ManagerID,count(EmployeeID) AS employee FROM Employee WHERE managerID IS NOT NULL GROUP BY ManagerID HAVING Employee>2; 
SELECT * FROM Employee WHERE DepartmentID IS NULL;
SELECT * FROM employee ORDER BY JoinDate DESC;
SELECT * FROM employee ORDER BY Name ASC;
SELECT * FROM Department ORDER BY departmentName ASC;
SELECT * FROM employee ORDER BY salary DESC LIMIT 5;

-- round used in int to round things up 
SELECT EmployeeID,Name,round(((salary-(salary*5)/100))) as salary FROM Employee;


-- 7/25/2025 (Friday)
USE batch4pm;

-- Merge to join two table in one select but it need something same in both table to join
-- Some ude case of Merge
SELECT * FROM Employee, department WHERE Employee.DepartmentID=department.departmentID;
SELECT * FROM Employee E, department D WHERE E.DepartmentID=D.departmentID;
SELECT E.EmployeeID,E.Name,D.DepartmentID,D.DepartmentName,E.ManagerID,D.Location,E.salary,E.JoinDate FROM Employee E, department D 
 WHERE E.DepartmentID=D.departmentID;
SELECT E.EmployeeID,E.Name,D.DepartmentID,D.DepartmentName,E.ManagerID,D.Location,E.salary,E.JoinDate FROM Employee E, department D 
 WHERE E.DepartmentID=D.departmentID AND D.DepartmentName="hr";
SELECT E.EmployeeID,E.Name,D.DepartmentID,D.DepartmentName,E.ManagerID,D.Location,E.salary,E.JoinDate FROM Employee E, department D 
 WHERE E.DepartmentID=D.departmentID AND D.LOCaTION="Bangalore";
SELECT count(EmployeeID) FROM Employee E, department D 
 WHERE E.DepartmentID=D.departmentID AND D.DepartmentName="IT";

-- Returns only the rows where there is a match in both tables (common in both)
SELECT * FROM EMPLOYEE AS E INNER JOIN DEPARTMENT D ON E.DepartmentID=D.departmentID;

-- Returns all rows from the left table, plus matching rows from the right table. 
-- If there’s no match in the right table, you get NULLs
SELECT * FROM EMPLOYEE AS E LEFT JOIN DEPARTMENT D ON E.DepartmentID=D.departmentID;

-- Returns all rows from the right table, plus matching rows from the left table.
-- If there’s no match in the left table, you get NULLs
SELECT * FROM EMPLOYEE AS E RIGHT JOIN DEPARTMENT D ON E.DepartmentID=D.departmentID;

-- Returns all rows from both tables. If there’s no match in one table, the other side shows NULLs 
-- UNION is used to combine the results of two or more SELECT queries into a single result set — and it removes duplicate rows by default.
SELECT * FROM EMPLOYEE AS E LEFT JOIN DEPARTMENT D ON E.DepartmentID=D.departmentID UNION 
SELECT * FROM EMPLOYEE AS E RIGHT JOIN DEPARTMENT D ON E.DepartmentID=D.departmentID;

-- UNION ALL is used to combine the results of two or more SELECT queries, just like UNION, but it does NOT remove duplicates.
SELECT * FROM EMPLOYEE AS E LEFT JOIN DEPARTMENT D ON E.DepartmentID=D.departmentID 
UNION ALL
SELECT * FROM EMPLOYEE AS E RIGHT JOIN DEPARTMENT D ON E.DepartmentID=D.departmentID;

-- 29/7/2025 (Tuesday)

-- Useing Database
USE batch4pm;

-- createing table 
CREATE TABLE PROJECT2(
P_id int primary key auto_increment,
name varchar(50),
no_emp int,
r_date date
);

Insert into project2 (P_id,name,no_emp,r_date) values
(1,'AI Chatbot', 5, '2023-08-01');
INSERT INTO project2(name, no_emp, R_date) VALUES
('Fraud Detection', 3, '2023-09-15'),
('Sales Dashboard', 4, '2023-07-10'),
('Customer Segmentation', 2, '2023-06-20'),
('HR Analytics', 6, '2023-10-01'),
('Inventory Forecasting', 3, '2023-09-25'),
('Loan Default Prediction', 5, '2023-08-10'),
('Healthcare AI', 2,'2023-07-22');

-- createing table 
CREATE TABLE PROJECT3(
P_id int primary key auto_increment,
name varchar(50),
no_emp int,
r_date date
);

INSERT INTO project3 (p_id,name, no_emp, R_date) VALUES
(1,'AI Chatbot', 5, '2023-08-01'),
(2,'Fraud Detection', 3, '2023-09-15'),
(3,'Sales Dashboard', 4, '2023-07-10'),
(18,'Customer Segmentation', 2, '2023-06-20'),
(10,'HR Analytics', 6, '2023-10-01'),
(12,'Inventory Forecasting', 3, '2023-09-25'),
(15,'Loan Default Prediction', 5, '2023-08-10'),
(17,'Healthcare AI', 2,'2023-07-22');

-- createing table 
create table employee12(
e_id int primary key auto_increment,
E_name varchar(30),
department varchar(30),
p_id int,
salary int
);

INSERT INTO employee12(E_id,E_name, department, p_id, salary) VALUES
(1,"mayank",'Analytics',1,50000);
INSERT INTO employee12(E_name, department, p_id, salary) VALUES
('Rahul', 'Data Science', 1, 55000),
('Priya', 'Data Science', 1, 58000),
('Ankit', 'Analytics', 12, 60000),
('Neha', 'BI', 3, 50000),
('Karan', 'Marketing', 3, 45000),
('Sonal', 'HR', NULL, 47000),
('Deepak', 'Finance', NULL, 52000),
('Simran', 'Data Science', 4, 61000),
('Amit', 'Marketing', 5, 53000),
('Manish', 'Analytics', 5, 56000),
('Pooja', 'HR', 11, 49000),
('Rohit', 'Analytics', NULL, 62000),
('Meena', 'IT', 4, 65000),
('Vikas', 'Healthcare', 2, 50000),
('Rani', 'Healthcare',NULL,48000),
('Ajay', 'BI',3, 51000);

-- Inner Join
select * from Employee12 E inner join Project2 P ON E.P_Id=P.P_Id;

-- Left Join
select * from Employee12 E Left join Project2 P ON E.P_Id=P.P_Id;

-- Right Jion
select * from Employee12 E Right join Project2 P ON E.P_Id=P.P_Id;

-- Union Join
select * from project2 
union 
select * from project3;

-- Union all
select * from project2
union all
select * from project3;

-- Creteing table to see for cross join
create table cloths(
id int,
name varchar (50)
);

insert into cloths values(101,"Jins"),(102,"shit"),(103,"shose");

create table colour(
id int,
name varchar (50)
);

insert into colour values(1,"red"),(2,"yellow"),(3,"green");

-- CROSS JOIN returns the Cartesian product of two tables — meaning it combines every row from the first table with every row from the second.
select * from cloths cross join colour;
select c1.name, c2.name from cloths c1 cross join colour c2;


-- 30/7/2025 (wednesday)
 
-- useing database
use batch4pm;

select * from employee;

-- distinct is like unique used in select 
select distinct managerId FROM EMPLOYEE;

-- A SELF JOIN is when a table is joined with itself — it's useful when you want to compare rows within the same table, 
-- like finding a manager of an employee, or comparing items in a hierarchy.
SELECT * FROM EMPLOYEE E1 JOIN EMPLOYEE E2 ON E1.EMPLOYEEid= E2.MANAGERid;
SELECT E1.NAME AS EMPLOYEE_NAME ,E2.NAME AS MANAGER FROM EMPLOYEE E1 JOIN EMPLOYEE E2 ON E1.MANAGERid = E2.EMPLOYEEid;
SELECT distinct E2.NAME AS MANAGER FROM EMPLOYEE E1 JOIN EMPLOYEE E2 ON E1.MANAGERid = E2.EMPLOYEEid;


-- 31/1/2025 (Thursday)

-- useing database
use batch4pm;

SELECT E1.NAME AS EMPLOYEE_NAME, E2.NAME AS MANAGER, E1.DEPARTMENTID FROM EMPLOYEE E1 JOIN EMPLOYEE E2 ON E1.MANAGERid = E2.EMPLOYEEid 
WHERE E1.DEPARTMENTID != E2.DEPARTMENTID;

-- A subquery is a SQL query that is written inside another query.
-- It helps you get data that the main (outer) query depends on.
select name,max(salary) from employee;
select * from employee where salary=75000;

-- Uncorrelated= The inner query is independent of the outer query. 
-- It executes once, returning a set of results used by the outer query.
select * from employee where salary = (select max(salary) from employee);
-- find the record of employee who get more salary then avg salary
SELECT Name, Salary FROM Employee WHERE Salary > (SELECT AVG(Salary) FROM Employee);
-- find the name of emp whose salary is high then manager
SELECT Name, Salary FROM Employee WHERE Salary > (SELECT Salary FROM Employee where employeeID = managerID);

-- Correlated= The inner query depends on the outer query. 
-- Each iteration of the outer query runs the inner query with the current row's value.
SELECT Name, Salary FROM Employee E WHERE Salary > (SELECT Salary FROM Employee WHERE EmployeeID = E.ManagerID);

-- Nested= Multiple subqueries are nested within each other. 
-- The innermost query executes first, and the results are used by the next query, and so on.
select *,(select avg(salary) from employee ) as avg_salary from employee;


-- 1/8/2025 (friday)

-- Test day

-- 5/8/2025 (Tuesday)

-- Useing the Database
use batch4pm;

SELECT E1.NAME AS EMPLOYEE_NAME, E2.NAME AS MANAGER, E1.DEPARTMENTID FROM EMPLOYEE E1 JOIN EMPLOYEE E2 ON E1.MANAGERid = E2.EMPLOYEEid 
WHERE E1.DEPARTMENTID != E2.DEPARTMENTID;
select name,max(salary) from employee;
select * from employee where salary=75000;

-- subquery
select * from employee where salary = (select max(salary) from employee);
-- find the record of employee who get more salary then avg salary
SELECT Name, Salary FROM Employee WHERE Salary > (SELECT AVG(Salary) FROM Employee);
-- find the name of emp whose sAlary is high then manager
SELECT Name, Salary FROM Employee WHERE Salary > (SELECT Salary FROM Employee where employeeID = managerID);
SELECT Name, Salary FROM Employee E WHERE Salary > (SELECT Salary FROM Employee WHERE EmployeeID = E.ManagerID);
select *,(select avg(salary) from employee ) as avg_salary from employee;


use homework;

Select * from employee;
Select * from Department;


-- 1. Find the employee(s) who earns the maximum salary.
select name from employee where salary = (select max(salary) from employee);

-- 2. List employees who earn more than the average salary of all employees.
SELECT Name, Salary FROM Employee WHERE Salary > (SELECT AVG(Salary) FROM Employee);

-- 3. Find the department name of the employee ‘Omkar Rao’.
select departmentName from department where departmentID = (select departmentID from employee where name = "Omkar Rao");


-- 6/8/25 (Wednesday)

-- Useing homework
Use homework;

-- In= Used for Matching Values from a List/Subquery
-- Use when: You want to filter rows based on matching values from a list or another table. The subquery returns a list of values (1 column only).
-- Think of it like: “Is this value in that list?”
SELECT Name FROM Employee WHERE DepartmentID IN (SELECT DepartmentID FROM Department);

-- NOT IN — Used for Finding Values NOT in a List
-- Use when: You want to exclude rows that match values from another table or list. The subquery must not contain NULL, or it may return no rows at all!
-- Think of it like: “Is this value not in that list?”
SELECT Name FROM Employee WHERE DepartmentID NOT IN (SELECT DepartmentID FROM Department WHERE DepartmentID IS NOT NULL);

-- EXISTS — Used for Checking If a Match Exists
-- Use when: You want to check existence of related rows in another table. It returns TRUE if any row is found — it stops checking after finding the first match (faster in some cases).
-- Think of it like: “Does this row have a match?”
SELECT DepartmentName FROM Department D WHERE EXISTS (SELECT 1 FROM Employee E WHERE E.DepartmentID = D.DepartmentID);

-- NOT EXISTS — Used to Check If No Match Exists
-- Use when: You want to find rows that have no related data in another table. Best for anti-joins (e.g., find departments with no employees).
-- Think of it like: “Does this row NOT have a match?”
SELECT DepartmentName FROM Department D WHERE NOT EXISTS (SELECT 1 FROM Employee E WHERE E.DepartmentID = D.DepartmentID);

 -- wroking in hr and it
SELECT * FROM EMPLOYEE WHERE DEPARTMENTid IN (SELECT DEPARTMENTID FROM DEPARTMENT WHERE Departmentname in ("it" OR "hR"));
select DEPARTMENTid, MAX(SALARY) FROM EMPLOYEE GROUP BY DEPARTMENTID;  
SELECT * FROM EMPLOYEE WHERE (DEPARTMENTID,SALARY) IN ( select DEPARTMENTid, MAX(SALARY) FROM EMPLOYEE GROUP BY DEPARTMENTID) order by DEPARTMENTid;
 
 -- FIND EMPLOYYEE SHARE (d_ID,M_ID ) WITH THOSE EARNING MORE THEN 600000
 SELECT * FROM EMPLOYEE WHERE (DEPARTMENTID,SALARY) IN ( select DEPARTMENTid FROM EMPLOYEE where salary>60000); 
 
 -- find employees whose d_id and salary of employee join in 2023
select name,departmentid,salary,JoinDate from employee WHERE JoinDate LIKE "2023%" and departmentid is not null;
select * from employee e where exists (select * FROM DEPARTMENT D WHERE E.DEPARTMENTID=D.DEPARTMENTID); 
 
 -- EMPLOYEE WHOSE LOCTION IS IN Hyderabad
select Employeeid,name from employee e where exists (select * FROM DEPARTMENT D WHERE E.DEPARTMENTID=D.DEPARTMENTID and location = "Hyderabad"); 


-- 7/8/25 (Thursday)

-- Scenario-Based Operations on Date and Time in MySQL 

-- 1. Get Current Date and Time 
SELECT NOW(); -- Returns current date and time 
SELECT CURDATE(); -- Returns current date 
SELECT CURTIME(); -- Returns current time 

-- 2. Calculate the Difference Between Two Dates • Example: Calculate the number of days between two dates. 
SELECT DATEDIFF('2025-01-17', '2024-12-25') AS Days_Difference; 

-- 3. Filter Data Based on Date • Example: Fetch records created in the last 7 days. 
SELECT * FROM orders WHERE order_date >= DATE_SUB(CURDATE(), INTERVAL 7 DAY); 

-- 4. Add or Subtract Date Intervals • Add 10 days to a specific date. 
SELECT DATE_ADD('2025-01-17', INTERVAL 10 DAY) AS New_Date; 
-- • Subtract 3 months from the current date. 
SELECT DATE_SUB(NOW(), INTERVAL 3 MONTH) AS Modified_Date; 

-- 5. Extract Components from a Date • Get year, month, and day from a date. 
SELECT YEAR(joindate) AS Year, MONTH(joindate) AS Month, DAY(joindate) AS Day FROM employee;

-- 6. Format a Date • Convert a date to a specific string format. 
SELECT DATE_FORMAT(Joindate, '%Y-%m-%d') AS Formatted_Date  FROM employee; 

-- 7. Find the Last Day of a Month • Example: Get the last day of January 2025. 
SELECT LAST_DAY('2025-01-01') AS Last_Day; 

-- 8. Convert Between Date and Timestamp • Convert a date to a UNIX timestamp. 
SELECT UNIX_TIMESTAMP('2025-01-17 14:30:00') AS Timestamp; 
-- • Convert a UNIX timestamp back to a DATETIME. 
SELECT FROM_UNIXTIME(1737102600) AS DateTime; 

-- 9. Work with Time Zones • Display the current UTC date and time. 
SELECT UTC_DATE(), UTC_TIME(), UTC_TIMESTAMP(); 

-- 10. Find Weekdays • Example: Get the weekday name of a specific date. 
SELECT DAYNAME('2025-01-17') AS Weekday; 
-- • Get the weekday index. 
SELECT DAYOFWEEK('2025-01-17') AS Weekday_Index; -- 1 = Sunday 

-- 11. Find Records Matching Specific Time Intervals • Example: Fetch records created between 9 AM and 5 PM. 
SELECT *  FROM employee WHERE TIME(Joindate) BETWEEN '09:00:00' AND '17:00:00'; 

-- 12. Check if a Date is a Weekend 
SELECT CASE WHEN DAYOFWEEK(Joindate) IN (1, 7) THEN 'Weekend' ELSE 'Weekday' END AS Day_Type FROM employee; 

-- 13. Calculate Age from a Birthdate 
SELECT YEAR(CURDATE()) - YEAR(birth_date) - (DATE_FORMAT(CURDATE(), '%m%d') < DATE_FORMAT(birth_date, '%m%d')) AS Age FROM employees; 

-- 14. Group Data by Date/Month/Year • Example: Group orders by year and calculate total sales. 
SELECT YEAR(order_date) AS Order_Year,  SUM(total_amount) AS Total_Sales FROM orders GROUP BY YEAR(order_date); 

-- 15. Generate a Sequence of Dates • Example: Create a list of dates between two given dates. 
WITH RECURSIVE date_sequence AS ( SELECT '2025-01-01' AS generated_date UNION ALL 
SELECT DATE_ADD(generated_date, INTERVAL 1 DAY) FROM date_sequence WHERE generated_date < '2025-01-10' ) SELECT * FROM date_sequence;

-- Window Function

-- it don't work like this 
SELECT *,AVG(SALARY) FROM EMPLOYEE;

-- OVER() is used with window functions to perform calculations across a set of rows related to the current row without collapsing them.
SELECT *,AVG(SALARY) OVER() FROM EMPLOYEE;

-- OVER(PARTITION BY column) is used with window functions to perform calculations across groups of rows that share the same value in that column,
-- without collapsing rows. It’s like GROUP BY but keeps all row details visible.
SELECT *,AVG(SALARY) OVER(partition by departmentid) FROM EMPLOYEE;
