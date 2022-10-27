select * from EMPLOYEES;
/*
 MULTI-ROW/AGGEREGATE/GROUPING FUNCTION
 count
 max
 min
 avg
 sum

 it'll take multiple tow abd gives single output

 All aggregate functions ignore null value
 */
-- How many department that we have?
select count(*) from DEPARTMENTS;

-- How many different name we have?
select count(distinct FIRST_NAME) from EMPLOYEES;

-- How many employees we have works as 'IT_PROG' or 'SA_REP'
select * from EMPLOYEES;
select count(*) from EMPLOYEES
where JOB_ID in ('IT_PROG', 'SA_REP');

-- NOTE:
  --> If you want to count your result use* to get the correct answer, because All aggregate functions ignore null value

-- How many employees we have as department_id is null

-- This gives us correct result since it counting the rows
select count(*) from EMPLOYEES
where DEPARTMENT_ID is null ;

-- This gives us wrong data if you wanna count rows, since aggregate functions ignore the null values
select count(DEPARTMENT_ID) from EMPLOYEES
where DEPARTMENT_ID is null ;

-- This bot h gives you same result since there is no null the result
select count(*) from EMPLOYEES
where DEPARTMENT_ID is not null ;

select count(DEPARTMENT_ID) from EMPLOYEES
where DEPARTMENT_ID is not null ;

-- Max
-- display max salary from employees
select max(SALARY) from EMPLOYEES;

-- Min
-- display min salary from employees
select min(SALARY) from EMPLOYEES;

--Sum
-- display total salary from employees
select SUM(SALARY) from  EMPLOYEES;

--Avg
-- display avg salary from employees
select avg(SALARY) from  EMPLOYEES;

--ROUND -->It is not an aggregate func, it is numeric functions
select round(avg(SALARY)) from EMPLOYEES;

select round(avg(SALARY),2) from EMPLOYEES;

