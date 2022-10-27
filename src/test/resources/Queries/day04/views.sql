select *
from employees;

create view EmployeesInfo as
select substr(FIRST_NAME, 0, 1) || '.' || substr(LAST_NAME, 0, 1) || '.' as initials,
       FIRST_NAME || ' makes ' || SALARY as Employees_salary
from EMPLOYEES;

drop view EmployeesInfo;

create view EmployeesInfo as
select substr(FIRST_NAME, 0, 1) || '.' || substr(LAST_NAME, 0, 1) || '.' as initials,
       FIRST_NAME || ' makes ' || SALARY as Employees_salary
from EMPLOYEES;

select * from EMPLOYEESINFO;

select initials from EMPLOYEESINFO;

