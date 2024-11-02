CREATE DATABASE college;

USE college;

CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50)
);

SELECT * FROM student;

CREATE DATABASE xyz_company;
USE xyz_company;

CREATE TABLE employee(
	id INT PRIMARY KEY,
    name VARCHAR(100),
    salary INT
);

INSERT INTO employee
(id,name,salary)
VALUES
(1,"Sushmoy",25000),
(2,"Nandi",30000),
(3,"Bappi",40000);

CREATE TABLE temp1(
	id INT UNIQUE
);


INSERT INTO temp1 VALUES(101);

 
SELECT * FROM temp1;

CREATE TABLE temp1(
	id INT,
    name VARCHAR(50),
    city VARCHAR(20),
    PRIMARY KEY(id, name)
);

CREATE TABLE emp(
	id INT,
    salary INT DEFAULT 25000);
    
INSERT INTO emp(id) VALUES(101);
SELECT * FROM emp;










