/* Employee records that have job ID's
corresponding to those in the jobs table */

select * FROM employees 
where JOB_ID in (select JOB_IDENT from jobs);

/* Employee records where Job_title is Jr.designer */

select * from employees 
where JOB_ID 
IN (select JOB_IDENT FROM jobs WHERE JOB_TITLE= 'Jr. Designer');

/* job info for those with salaries >70000 */

select JOB_TITLE, MIN_SALARY,MAX_SALARY,JOB_IDENT 
from jobs where JOB_IDENT IN (select JOB_ID from employees where SALARY > 70000);

/* job info for those with a birth year > 1976 */

select JOB_TITLE, MIN_SALARY,MAX_SALARY,JOB_IDENT 
from jobs where JOB_IDENT IN (select JOB_ID from employees where YEAR(B_DATE) > 1976 ); 

/* job info for those with a birth year > 1976 and Female*/

select JOB_TITLE, MIN_SALARY,MAX_SALARY,JOB_IDENT 
from jobs where JOB_IDENT IN 
(select JOB_ID from employees where YEAR(B_DATE) > 1976 AND SEX = "F"); 

/* Return a list of employees who work in the department with the largeset department ID value*/

SELECT * FROM EMPLOYEES WHERE DEP_ID = 
(SELECT MAX(DEPT_ID_DEP) FROM DEPARTMENTS); 

/* returning the name and department name of employees */

SELECT F_NAME, DEP_NAME FROM EMPLOYEES, DEPARTMENTS WHERE DEPT_ID_DEP = DEP_ID;

/*Rerutning employee job information via an implicit join*/

select E.EMP_ID,E.F_NAME,E.L_NAME, J.JOB_TITLE from employees E, jobs J where E.JOB_ID = J.JOB_IDENT;