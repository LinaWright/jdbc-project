select * from employees;
--Display job_ids where their acg salary is more than 5000
select JOB_ID, avg(SALARY) from EMPLOYEES
group by JOB_ID
having avg(SALARY)>5000;

--display department_id where employees count greater than 5
select DEPARTMENT_ID, count(*) from EMPLOYEES
group by DEPARTMENT_ID
having count(*) <5;

--IQ display duplicate first_name from employees table
select FIRST_NAME, count(*) from EMPLOYEES
group by FIRST_NAME
having count(*)>1;



