`Retrieve salaries lower than the average` 
select EMP_ID, F_NAME, L_NAME, SALARY 
from employees 
where SALARY < (select AVG(SALARY) 
                from employees);

`Display employees and salaries compared to max salary`

select EMP_ID, SALARY, F_NAME, L_NAME, 
(Select MAX(SALARY) from employees) AS MAX_SALARY 
from employees; 

`Create a new table with no Sensitive employee information`

select * FROM 
(select EMP_ID, F_NAME, L_NAME, JOB_ID, DEP_ID from employees) 
AS EMP4ALL;