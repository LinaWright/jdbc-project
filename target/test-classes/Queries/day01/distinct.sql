/*
 Distinct: remove duplicate from the request result, original file is not changed in the database
 */
 select distinct first_name from employees;

--display unique job_ids from employees;
select distinct JOB_ID from EMPLOYEES;

--display unique county_ids from locations;
select distinct COUNTRY_ID from LOCATIONS;

