select * from employees;
--find the 3rd minimum salary from the employees table (do not  include duplicates)
select  distinct SALARY from EMPLOYEES order by SALARY desc;
--first sort salary in desc order
--cut the list from line 4 to get first 3
select *from (select  distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM<4;
--use min salary to find 3 maximum
select min(salary) from (select  distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM<4;

--How can we get information about that employee(3rd max)
select * from EMPLOYEES
where SALARY = (select min(salary) from (select  distinct SALARY from EMPLOYEES order by SALARY desc)
                where ROWNUM<4);

--find the 3th maximum salary from the employees table (do not include duplicates)
-- first sort salaries in asc order
select distinct salary
from EMPLOYEES
order by SALARY asc;

-- cut the list from line 4


--use max salary to find 3 maximum
select max(salary) from (select distinct salary
                         from EMPLOYEES
                         order by SALARY asc)
where ROWNUM<4;

--How can we get information about that employee(3rd min)
select * from EMPLOYEES
where SALARY = (select max(salary) from (select distinct salary
                                         from EMPLOYEES
                                         order by SALARY asc)
                where ROWNUM<4);

--Why do we have 2 result here when we already used distinct to make salaries unique?
    --3rd min query will return one value 2400
    --But we are looking for who has that salary
    --2 employees gas same salary that is why it returns 2 result
