USE SQLlearn;
-- Method 1
CREATE TABLE Student1
(
	Roll CHAR(4) PRIMARY KEY UNIQUE,
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(60) UNIQUE,
    Address VARCHAR(255),
    Age INT CHECK(Age>10)
);
-- Method 2
CREATE TABLE Student1
(
	Roll CHAR(4),
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(60),
    Address VARCHAR(255),
    Age INT,
    PRIMARY KEY(Roll),
    UNIQUE(Email),
    CHECK(Age>10)
);
-- Method 3
CREATE TABLE Student1
(
	Roll CHAR(4),
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(60),
    Address VARCHAR(255),
    Age INT,
    Constraint pk_rule PRIMARY KEY(Roll),
    Constraint unique_rule UNIQUE(Email),
    Constraint checking_rule CHECK(Age>10)
);

CREATE TABLE Library
(
	BookName VARCHAR(50) PRIMARY KEY,
    WhoHired_Roll CHAR(4),
    FOREIGN KEY(WhoHired_Roll) REFERENCES Student1(Roll)
);

INSERT INTO Student1(Roll,Name,Email,Address,Age) VALUES('0001','Sushmoy','sushmoy@gmail.com','Dhaka',11);
INSERT INTO Student1(Roll,Name,Email,Address,Age) VALUES('0002','Sushmoy','sushmoy1@gmail.com','Dhaka',11);
-- Composite Primary Key
CREATE TABLE Course
(
	CourseName VARCHAR(10),
    University VARCHAR(10),
    Credit INT,
    
    PRIMARY KEY(CourseName,University)
);
SELECT * FROM Student1;
	