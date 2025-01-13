CREATE DATABASE bank;
USE bank;

CREATE TABLE customer
(
	cust_id VARCHAR(6) PRIMARY KEY,
    fname VARCHAR(30) NOT NULL,
    mname VARCHAR(30),
    ltname VARCHAR(30),
    city VARCHAR(15),
    mobile_no INT(10),
    occupation VARCHAR(10),
    dob DATE
);
INSERT INTO customer (cust_id, fname, mname, ltname, city, mobile_no, occupation, dob)  
VALUES ('102', 'Sushmoy1', 'Nandi1', 'Bappi1', 'Jashore1', '017777776', 'manager1', '2003-03-05');

CREATE TABLE branch
(
	bid VARCHAR(6) PRIMARY KEY,
    bname VARCHAR(30),
    bcity VARCHAR(30)
);
INSERT INTO branch(bid,bname,bcity) 
VALUES('10002','XYZ','Dhaka');

CREATE TABLE account
(
	acnumber VARCHAR(6) PRIMARY KEY,
    cust_id VARCHAR(6),
    bid VARCHAR(6),
    FOREIGN KEY (cust_id) REFERENCES customer(cust_id),
    FOREIGN KEY (bid) REFERENCES branch(bid)
);
CREATE TABLE loan
(
	lid INT PRIMARY KEY,
    cid VARCHAR(6),
    bid VARCHAR(10),
    anum VARCHAR(10),
    FOREIGN KEY (cid) REFERENCES customer(cust_id),
    FOREIGN KEY (bid) REFERENCES branch(bid),
    FOREIGN KEY (anum) REFERENCES account(acnumber)
);
