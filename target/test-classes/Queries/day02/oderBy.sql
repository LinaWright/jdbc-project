select * from employees;
/*
 It allows to sort your data based on provided column/index
 -BY DEFAULT ir orders ASC(a-z or 0-9)
 -if you want to desc, we need to specify after column/index
 */

 --display all information from employees who is making low salary to high
select * from EMPLOYEES
order by SALARY;

select * from EMPLOYEES
order by SALARY asc;

--display all information from employees who is making high salary to low
select * from EMPLOYEES
order by SALARY desc;

-- How can we use index to sort data
  -- index needs to be in limit of your column count
select * from EMPLOYEES
order by 8;

select email, FIRST_NAME from EMPLOYEES
order by 1;

-- display all information where employee_id<120
--and order them based firstname in alphabetical order
select * from EMPLOYEES
where EMPLOYEE_ID < 120
order by 2;

--IQ --> display information from employees based on first ame asc and last name desc
select * from EMPLOYEES
order by FIRST_NAME, LAST_NAME desc;

