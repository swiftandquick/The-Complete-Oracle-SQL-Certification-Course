/* Check how many employees share the same job.  */
SELECT JOB, COUNT(JOB) AS COUNT_JOB FROM EMP GROUP BY JOB;

/* Group by both JOB and DEPTNO.  This basically display the different jobs (JOB) in each department (DEPTNO), and count how many entries in each group. */
SELECT DEPTNO, JOB, COUNT(JOB) AS COUNT_JOB_IN_DEPT FROM EMP GROUP BY JOB, DEPTNO;