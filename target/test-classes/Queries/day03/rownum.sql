/*
 RowNum
 -It limits data that you wanna into result as a row
 -It works with < and <=
 */

--Display only 10 rows from employees
select * from employees
where Rownum <=11;

--Display all information who is getting first 5 highest salary
select * from (select * from EMPLOYEES order by SALARY desc)
where ROWNUM <=5;

--display all information from employees who is getting 5th highest salary

select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM <=5;


-- Display all information from employees who is getting 15th highest salary
select min(salary) from (select distinct SALARY from EMPLOYEES order by salary desc)
where ROWNUM<16;

-- Display all information from employees who is getting 213th highest salary
select min(salary) from (select distinct SALARY from EMPLOYEES order by salary desc)
where ROWNUM<214;   -- this is just a sample from IQ's

-- Display all information who is making 5th salary

--hardcoded
select * from employees
where salary=13000;

-- make it dynamic
select * from employees
where salary=(select min(salary) from (select distinct SALARY from EMPLOYEES order by salary desc)
              where ROWNUM<6 );