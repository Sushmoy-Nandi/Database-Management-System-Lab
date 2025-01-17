USE dummydb;
-- SELECT QUERY
SELECT * FROM Countries;
SELECT * FROM DEPARTMENTS;
SELECT * FROM employees;
SELECT FIRST_NAME, LAST_NAME
FROM EMPLOYEES;

-- WHERE QUERY 
SELECT * FROM employees
WHERE department_id=60 AND salary>8000;

-- ARITHMETIC OPERATORS
SELECT FIRST_NAME,department_id,SALARY,SALARY+1000
FROM employees
WHERE department_id=100;

-- COMPARISON OPERATOR
SELECT * FROM employees
WHERE salary =17000; 

-- DISTINCT

SELECT DISTINCT JOB_ID
FROM employees;

-- ORDER BY, LIMIT, OFFSET
SELECT * FROM employees
ORDER BY salary DESC
-- LIMIT 4,5;
LIMIT 5
OFFSET 4;
-- IN, NOT IN, LIKE, AS
SELECT * FROM employees
WHERE LAST_NAME LIKE '%EE%';

SELECT FIRST_NAME AS NAME, SALARY AS CURRENT_SALARY, SALARY+10000 AS INCREASED_SALARY
FROM EMPLOYEES;


