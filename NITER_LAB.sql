USE niter;
CREATE DATABASE niter;
CREATE TABLE Student3
(
	Roll CHAR(10) PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Age INT
);

INSERT INTO Student3(Roll,Name,Age) VALUES
('101','Sushmoy',21);
INSERT INTO Student3(Roll,Name,Age) VALUES
('102','Surjo',20);


