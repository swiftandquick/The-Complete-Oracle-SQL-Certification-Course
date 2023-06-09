/* Group entries with the same JOB value together, then find the average SAL value for each group.  This query finds the average salary for each job position.  */
SELECT AVG(SAL) AS AVG_SAL, JOB FROM EMP GROUP BY JOB;

/* Group entries with the same JOB value together, then find how many entries there are for each group.  This query finds the number of employees for each job.  */
SELECT COUNT(JOB) AS COUNT_JOB, JOB FROM EMP GROUP BY JOB;

/* Group entries with the same JOB value together, then find the minimum SAL value for each group.  This query finds the minimum salary for each job.  */
SELECT MIN(SAL) AS COUNT_JOB, JOB FROM EMP GROUP BY JOB;

/* Get all unique JOB values from EMP table.  */
SELECT DISTINCT JOB FROM EMP;

/* Select the JOB value where 2 entries share the same JOB value.  */
SELECT JOB, COUNT(JOB) AS COUNT_JOB FROM EMP GROUP BY JOB HAVING COUNT(JOB) = 2;

/* Select the DEPTNO value where more than 3 entries share the same DEPTNO value.  */
SELECT DEPTNO FROM EMP GROUP BY DEPTNO HAVING COUNT(DEPTNO) > 3;