select * from employees;
-- 1. FIND OUT COUNTRY NAME AND REGION NAME FROM COUNTRIES AND REGION TABLE
select COUNTRY_NAME, REGION_NAME from
                                     COUNTRIES c inner join REGIONS r on c.REGION_ID = r.REGION_ID;
    --How many countries do we have for each regions
select REGION_NAME, count(*) from
    COUNTRIES c inner join REGIONS r on c.REGION_ID = r.REGION_ID
group by REGION_NAME;

-- 2. FIND OUT FIRST_NAME AND JOB_TITLE FROM JOBS AND EMPLOYEES TABLE
select FIRST_NAME, JOB_TITLE from
                                 EMPLOYEES e join JOBS j on j.JOB_ID = e.JOB_ID;
    --How many employees we have for each job title
select JOB_TITLE, count(*) from
    EMPLOYEES e join JOBS j on j.JOB_ID = e.JOB_ID
group by JOB_TITLE;

    --Display job title that has more than 5 employees
select JOB_TITLE, count(*) from
    EMPLOYEES e join JOBS j on j.JOB_ID = e.JOB_ID
group by JOB_TITLE
having count(*)>5;

-- 3. FIND OUT DEPARTMENT_NAME AND CITY
select * from DEPARTMENTS d inner join LOCATIONS l
on d.LOCATION_ID = l.LOCATION_ID;

    --same result without manager id is null
select *from DEPARTMENTS d inner join LOCATIONS l
                                                           on d.LOCATION_ID = l.LOCATION_ID
where MANAGER_ID is not null;

    --How many department we have in each location
select d.LOCATION_ID, count(*) from DEPARTMENTS d inner join LOCATIONS l
                                       on d.LOCATION_ID = l.LOCATION_ID
group by d.LOCATION_ID;

-- 4. FIND OUT ALL CITIES  AND COUNTRY NAMES
select CITY, COUNTRY_NAME from LOCATIONS l inner join COUNTRIES c
on l.COUNTRY_ID = c.COUNTRY_ID;

-- 5. FIND OUT FIRST_NAME, LAST NAME, DEPARTMENT ID , DEPARTMENT NAME  FOR DEPARTMENT ID 80 OR 40
select FIRST_NAME, LAST_NAME, DEPARTMENT_ID, DEPARTMENT_NAME from  EMPLOYEES e inner join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID
where d.DEPARTMENT_ID in (80,40);

    --How many employees we have for that department
select DEPARTMENT_NAME, count(*) from  EMPLOYEES e inner join DEPARTMENTS d
                                                                                          on e.DEPARTMENT_ID = d.DEPARTMENT_ID
where d.DEPARTMENT_ID in (80,40)
group by DEPARTMENT_NAME;

-- 6. FIND OUT CITY , COUNTRY_NAME OF THAT CITY , REGION_NAME OF THAT CITY
select CITY, COUNTRY_NAME, REGION_NAME from LOCATIONS l
    inner join COUNTRIES c on l.COUNTRY_ID = c.COUNTRY_ID
inner join REGIONS r on c.REGION_ID = r.REGION_ID;

-- 7. FIND OUT EMPLOYEES FIRST_NAME , JOB_TITLE , DEPARTMENT_NAME , CITY
select FIRST_NAME, JOB_TITLE, DEPARTMENT_NAME, CITY from JOBS j
    inner join EMPLOYEES E on j.JOB_ID = E.JOB_ID
    inner join DEPARTMENTS d on E.DEPARTMENT_ID = d.DEPARTMENT_ID
    inner join LOCATIONS L on d.LOCATION_ID = L.LOCATION_ID;


-- 8. FIND OUT EMPLOYEES FIRST_NAME , JOB_TITLE , DEPARTMENT_NAME , CITY , COUNTRY_NAME , REGION_NAME
select FIRST_NAME, JOB_TITLE, DEPARTMENT_NAME, CITY, COUNTRY_NAME , REGION_NAME from JOBS j
    inner join EMPLOYEES E on j.JOB_ID = E.JOB_ID
    inner join DEPARTMENTS d on E.DEPARTMENT_ID = d.DEPARTMENT_ID
    inner join LOCATIONS L on d.LOCATION_ID = L.LOCATION_ID
    inner join COUNTRIES c on L.COUNTRY_ID = c.COUNTRY_ID
    inner join REGIONS r on c.REGION_ID = r.REGION_ID;


--9. FIND OUR  EMPLOYEES FIRST_NAME, LAST NAME, DEPARTMENT ID AND ALL DEPARTMENTS
--  INCLUDING  WHERE DO NOT HAVE ANY EMPLOYEE.
select FIRST_NAME, LAST_NAME, d.DEPARTMENT_ID from EMPLOYEES e
                                                             right outer join DEPARTMENTS d
                                                                 on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

select FIRST_NAME, LAST_NAME, d.DEPARTMENT_ID from DEPARTMENTS d
                                                       left outer join EMPLOYEES e
                                                                        on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--10. FIND OUT ALL DEPARTMENT_NAME  , LOCATION_ID , AND COUNTRY_ID
-- INCLUDING THOSE LOCATIONS  WITH NO DEPARTMENT
select DEPARTMENT_NAME, l.LOCATION_ID, COUNTRY_ID from DEPARTMENTS d
    right join LOCATIONS l
        on d.LOCATION_ID = l.LOCATION_ID;

--11.FIND OUT DEPARTMENT_NAME , LOCATION_ID , AND COUNTRY_NAME
-- INCLUDING THOSE COUNTRIES WITH NO DEPARTMENT
select DEPARTMENT_NAME, l.LOCATION_ID, COUNTRY_NAME from DEPARTMENTS d
    --returns all matching location for departments + any location that doesn't have any department
      right join LOCATIONS l on d.LOCATION_ID = l.LOCATION_ID
    --returns all matching counties for locations + any counties that doesn't have any locations
      right join COUNTRIES c on l.COUNTRY_ID = c.COUNTRY_ID;

--12. FIND OUT EMPLOYEES FIRST_NAME, DEPARTMENT ID AND DEPARTMENT NAME
-- INCLUDING THOSE DOES NOT HAVE DEPARTMENT
-- INCLUDING THOSE DEPARTMENTS  DOES NOT HAVE ANY MATCHING EMPLOYEES
select FIRST_NAME, e.DEPARTMENT_ID, DEPARTMENT_NAME from EMPLOYEES e
full join DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

