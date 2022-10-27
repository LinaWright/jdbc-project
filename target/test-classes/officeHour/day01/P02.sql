select * from employees;

-- 1. display full addresses from locations table in a single column
select * from LOCATIONS;
select STREET_ADDRESS ||' '|| POSTAL_CODE ||'-'|| LOCATIONS.CITY ||'-'|| COUNTRY_ID as "Full address" from LOCATIONS;

-- 2. display all informations of the employee who has the minimum salary in employees table
select * from EMPLOYEES where SALARY = (select min(SALARY) from EMPLOYEES);

-- 3. display the second minimum salary from the employees


-- 4. display all informations of the employee who has the second minimum salary
select * from EMPLOYEES
where SALARY = (select min(SALARY) from EMPLOYEES
                where SALARY > (select min(SALARY) from EMPLOYEES));

-- 5. list all the employees who are making above the average salary;
select * from EMPLOYEES
where SALARY > (select round(avg(SALARY)) from EMPLOYEES);

-- 6. list all the employees who are making less than the average salary
select * from EMPLOYEES
where SALARY < (select round(avg(SALARY)) from EMPLOYEES);

    -- How many employees are making less than the average salary
select JOB_ID, count(*) from EMPLOYEES
where SALARY < (select round(avg(SALARY)) from EMPLOYEES)
group by JOB_ID;

-- 7. display manager name of 'Neena'

select FIRST_NAME from EMPLOYEES
where EMPLOYEE_ID = (select MANAGER_ID from EMPLOYEES
                    where FIRST_NAME='Neena');

-- 8. find the 3rd maximum salary from the employees table (do not include duplicates)

select min(SALARY) from  (select distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM < 4;

-- 9. find the 5th maximum salary from the employees table (do not include duplicates)
select min(SALARY) from  (select distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM < 6;

-- 10. find the 7th maximum salary from the employees table (do not include duplicates)
select min(SALARY) from  (select distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM < 8;

-- 11. find the 10th maximum salary from the employees table (do not include duplicates)
select min(SALARY) from  (select distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM < 11;

-- 12. find the 3rd minimum salary from the employees table (do not include duplicates)
select max(SALARY) from  (select distinct SALARY from EMPLOYEES order by SALARY)
where ROWNUM < 4;

-- 13. find the 5th minimum salary from the employees table (do not include duplicates)
select max(SALARY) from  (select distinct SALARY from EMPLOYEES order by SALARY)
where ROWNUM < 6;

-- 14. find the 7th minimum salary from the employees table (do not include duplicates)
select max(SALARY) from  (select distinct SALARY from EMPLOYEES order by SALARY)
where ROWNUM < 8;

-- 15. find the 10th minimum salary from the employees table (do not include duplicates)
select max(SALARY) from  (select distinct SALARY from EMPLOYEES order by SALARY)
where ROWNUM < 11;

-- Tasks
-- Display how many country we have in each region_ID
select REGION_ID, count(*) from COUNTRIES
group by REGION_ID;

-- Display how many country we have in each region_name
select REGION_NAME, count(*) from COUNTRIES c inner join REGIONS r
                on c.REGION_ID = r.REGION_ID
group by REGION_NAME;

--Display how many country we have in Europe
--with where
select REGION_NAME, count(*) from COUNTRIES c inner join REGIONS r
                                                         on c.REGION_ID = r.REGION_ID
                             where REGION_NAME ='Europe'
group by REGION_NAME;

--with having
select REGION_NAME, count(*) from COUNTRIES c inner join REGIONS r
                                                         on c.REGION_ID = r.REGION_ID

group by REGION_NAME
having REGION_NAME ='Europe';

--Display region name where they have more than 5 country

select REGION_NAME, count(*) from COUNTRIES c inner join REGIONS r
                                                         on c.REGION_ID = r.REGION_ID

group by REGION_NAME
having count(*)>5;




