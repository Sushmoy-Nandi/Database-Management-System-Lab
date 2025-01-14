
SELECT * FROM EMPLOYEES
WHERE SALARY= (SELECT MAX(SALARY)
			FROM EMPLOYEES
                );
                
SELECT AVG(SALARY)
FROM EMPLOYEES
WHERE DEPARTMENT_ID=(
					SELECT DEPARTMENT_ID
					FROM DEPARTMENTS
					WHERE DEPARTMENT_NAME='MARKETING'
                     );

SELECT COUNT(*) AS MEMBERS
FROM EMPLOYEES
WHERE DEPARTMENT_ID=(
					SELECT DEPARTMENT_ID
					FROM DEPARTMENTS
					WHERE DEPARTMENT_NAME='IT'
                    );
SELECT SUM(SALARY)
FROM EMPLOYEES
WHERE JOB_ID= (SELECT JOB_ID
			  FROM JOBS
			  WHERE JOB_TITLE='PROGRAMMER'
              );





