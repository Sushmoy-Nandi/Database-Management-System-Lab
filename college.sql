CREATE DATABASE college1;
USE college1;

CREATE TABLE student1(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO student1
(rollno,name,marks,grade,city)
VALUES
(101,"Sushmoy",78,"C","Dhaka"),
(102,"Nandi",93,"A","Jashore"),
(103,"Bappi",85,"B","Kushtia"),
(104,"Bijoy",96,"A","Chittagong"),
(105,"Kanchon",60,"D","Satkhira"),
(106,"Surjo",82,"B","ShreeMongol");


SELECT name, marks FROM student1;
SELECT DISTINCT city FROM student1;
SELECT grade FROM student1;


SELECT * 
FROM student1 
WHERE marks > 80;

SELECT * 
FROM student1
WHERE city = "Dhaka";

SELECT *
FROM student1
WHERE marks > 80 AND city ="Jashore";


