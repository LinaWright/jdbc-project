select * from employees;

--1. Display all first_name and department_name
--Ex:
--Jennifer,Administration
--Pat,Marketing

-- join ans inner join is the same
select FIRST_NAME, DEPARTMENT_NAME from EMPLOYEES e join DEPARTMENTS d
    on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--2.Display all first_name and department_name including the  department without employee
select FIRST_NAME, DEPARTMENT_NAME from EMPLOYEES e right join DEPARTMENTS d
    on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--3.Display all first_name and department_name including the  employee without department
select FIRST_NAME, DEPARTMENT_NAME from EMPLOYEES e left join DEPARTMENTS d
                                                               on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--4.Display all first_name and department_name
--including the  department without employee  and  employees  without departments
select FIRST_NAME, DEPARTMENT_NAME from EMPLOYEES e full join DEPARTMENTS d
                                                              on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--5.Display All cities and related country names
select * from COUNTRIES;
select * from LOCATIONS;
select CITY, COUNTRY_NAME from COUNTRIES c inner join LOCATIONS l on c.COUNTRY_ID = l.COUNTRY_ID;

--6.Display All cities and related country names  including with countries without city
select CITY, COUNTRY_NAME from COUNTRIES c left join LOCATIONS l on c.COUNTRY_ID = l.COUNTRY_ID;

--7.Display all department name and  street adresss
select * from DEPARTMENTS;
select * from LOCATIONS;

select DEPARTMENT_NAME , STREET_ADDRESS
from DEPARTMENTS d inner join  LOCATIONS l
                               on d.LOCATION_ID = l.LOCATION_ID;

--8.Display first_name,last_name and department_name,city for all employees
select FIRST_NAME, LAST_NAME, d.DEPARTMENT_NAME, CITY from DEPARTMENTS d
    inner join EMPLOYEES e
        on d.DEPARTMENT_ID = e.DEPARTMENT_ID
    inner join LOCATIONS l
        on d.LOCATION_ID = l.LOCATION_ID;

select * from EMPLOYEES;
select * from DEPARTMENTS;
select * from LOCATIONS;

--9.Display first_name,last_name and department_name,city,country_name for all employees

select FIRST_NAME, LAST_NAME, d.DEPARTMENT_NAME, CITY, COUNTRY_NAME from DEPARTMENTS d
                                                               inner join EMPLOYEES e
                                                                          on d.DEPARTMENT_ID = e.DEPARTMENT_ID
                                                               inner join LOCATIONS l
                                                                          on d.LOCATION_ID = l.LOCATION_ID
                                                               inner join COUNTRIES c
                                                                          on l.COUNTRY_ID = c.COUNTRY_ID;

--10.Display first_name,last_name and department_name,city who is living in United Kingdom
select FIRST_NAME, LAST_NAME, d.DEPARTMENT_NAME, CITY, COUNTRY_NAME from DEPARTMENTS d
      inner join EMPLOYEES e
            on d.DEPARTMENT_ID = e.DEPARTMENT_ID
      inner join LOCATIONS l
            on d.LOCATION_ID = l.LOCATION_ID
      inner join COUNTRIES c
            on l.COUNTRY_ID = c.COUNTRY_ID
      where COUNTRY_NAME = 'United Kingdom';

--without country name
select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,city from EMPLOYEES e
                                                          inner join DEPARTMENTS d
                                                                     on e.DEPARTMENT_ID = d.DEPARTMENT_ID
                                                          inner join LOCATIONS l
                                                                     on d.LOCATION_ID = l.LOCATION_ID

Where COUNTRY_ID='UK';

--11.Display how many employee we have for each country name
select COUNTRY_NAME, count(*) from DEPARTMENTS d
      inner join EMPLOYEES e
          on d.DEPARTMENT_ID = e.DEPARTMENT_ID
      inner join LOCATIONS l
          on d.LOCATION_ID = l.LOCATION_ID
      inner join COUNTRIES c
          on l.COUNTRY_ID = c.COUNTRY_ID
      group by COUNTRY_NAME
      order by count(*);