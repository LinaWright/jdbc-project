/*
 We'll use where keyword to filter requested result
 */

 --display first name, last name salary from employees where first name is David.

select first_name, last_name, salary from employees
where first_name = 'David' and Last_name = 'Lee';

select * from employees
where first_name = 'David' and Last_name = 'Lee';

--'' inside the single quote is case sensitive;

--display all information from employees who makes more than 6000;
select * from EMPLOYEES
where SALARY > 6000;

select * from EMPLOYEES
where SALARY <= 6000;

select EMAIL from EMPLOYEES
where salary <= 6000;

select FIRST_NAME,SALARY from EMPLOYEES
where SALARY > 6000 and DEPARTMENT_ID = 80;

select  FIRST_NAME, SALARY from EMPLOYEES
where SALARY<=6000 and SALARY>3000;

--Between lower and upper --> boundaries are included
--It'll give all matching result within range
select  FIRST_NAME, SALARY from EMPLOYEES
where SALARY between 3000 and 6000;

--display all information from employees who is working as IT_PROG and SA_REP

select * from EMPLOYEES
where JOB_ID = 'IT_PROG' or JOB_ID = 'SA_REP';

--In clauses
--It uses OR logic

select * from EMPLOYEES
where JOB_ID IN('IT_PROG', 'SA_REP');

-- exclude all information from employees who is working as IT_PROG and SA_REP
select * from EMPLOYEES
where JOB_ID NOT IN('IT_PROG', 'SA_REP');

select *
from LOCATIONS
where CITY IN ('Tokyo','Roma');

select * from EMPLOYEES
where EMPLOYEE_ID IN ('113','145','124','122');

--Null and not Null
select * from EMPLOYEES
where DEPARTMENT_ID is null;

--Null and not Null
select * from EMPLOYEES
where DEPARTMENT_ID is not null;