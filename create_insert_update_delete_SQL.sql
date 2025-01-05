USE SQLlearn;
CREATE database SQLlearn;
CREATE TABLE Student(
	Roll CHAR(4) PRIMARY KEY,
    Name VARCHAR(50),
    Marks DOUBLE
);
DROP table Student;
INSERT INTO Student 
(Roll,Name) VALUES(2,'Nandi');

SET SQL_SAFE_UPDATES = 0;
UPDATE Student
SET Name='Sushmoy Nandi'
WHERE Roll=1;
SET SQL_SAFE_UPDATES = 1;

SET SQL_SAFE_UPDATES = 0;
DELETE FROM Student
WHERE Roll=1;
SET SQL_SAFE_UPDATES = 1;

SELECT * FROM Student;


