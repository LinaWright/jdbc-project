select * from employees;

-- Display manager name of Neena
select MANAGER_ID
from EMPLOYEES where FIRST_NAME='Neena';

select * from EMPLOYEES
where EMPLOYEE_ID = (select MANAGER_ID
                     from EMPLOYEES where FIRST_NAME='Neena');

select workers.FIRST_NAME, workers.LAST_NAME, managers.FIRST_NAME, managers.LAST_NAME
from EMPLOYEES workers inner join EMPLOYEES managers
on workers.MANAGER_ID=managers.EMPLOYEE_ID;

--show me Steven as well
select workers.FIRST_NAME, workers.LAST_NAME, managers.FIRST_NAME, managers.LAST_NAME
from EMPLOYEES workers left join EMPLOYEES managers
                                  on workers.MANAGER_ID=managers.EMPLOYEE_ID;

