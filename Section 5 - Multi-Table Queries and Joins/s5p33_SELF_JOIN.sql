/* E represents the employee data, M represents the manager data.  The EMP table joins itself on the condition that MGR is equal to EMPNO.  
First column displays the employee name, second column displays the manager of the employee.  */
SELECT E.ENAME AS EMPLOYEE, M.ENAME AS MANAGER FROM EMP E, EMP M WHERE E.MGR = M.EMPNO;

/* Entry with 'KING' as ENAME exists on the left table, so it will be displayed because it exists in the left table, and we are using LEFT JOIN.  */
SELECT E.ENAME AS EMPLOYEE, M.ENAME AS MANAGER FROM EMP E LEFT JOIN EMP M ON E.MGR = M.EMPNO;