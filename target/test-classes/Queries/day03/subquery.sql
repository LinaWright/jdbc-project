select * from Employees;
/*
 Subquery
 -Query inside Query
 -Inner queries will run first
 */

 --Display all information from employees who is making highest salary in company
select max(SALARY) from EMPLOYEES; --24000
select * from  EMPLOYEES
where SALARY = 24000; --hardcoded

--dynamic
select * from  EMPLOYEES
where SALARY = (select max(SALARY) from EMPLOYEES);

--Display all information from employees who is making second highest salary in company
--find max salary
select max(SALARY) from EMPLOYEES;--24000

--find second highest salary
select max(SALARY) from EMPLOYEES
where SALARY<(select max(SALARY) from EMPLOYEES);

--find information about second highest salary
select * from EMPLOYEES
where SALARY = 17000;

--make it dynamic
select * from EMPLOYEES
where SALARY = (select max(SALARY) from EMPLOYEES
                where SALARY<(select max(SALARY) from EMPLOYEES));

--display all information who is getting more than avg salary
--find avg salary
select round(avg(SALARY)) from EMPLOYEES;

--get all employees who is getting more than avg
select * from EMPLOYEES
where SALARY > 6461;

--make it dynamic
select * from EMPLOYEES
where SALARY > (select avg(SALARY) from EMPLOYEES);


