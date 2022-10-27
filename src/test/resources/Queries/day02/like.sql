select * from departments;


/*
 LIKE
Percent ( %)      -->  for matching any sequence of characters.
Underscore ( _ )  -->  for matching any single character.

  - contains
  - startwith
  - endswith

 */

-- get me all employees whose firstname startswith B
select * from EMPLOYEES
where FIRST_NAME LIKE 'B%';

-- get me all employees whose firstname startswith B and has 5 letter
select * from EMPLOYEES
where FIRST_NAME LIKE 'B____';

-- get me 5 letter names where the middle char is z
select * from EMPLOYEES
where FIRST_NAME LIKE '__z__';

-- get me firstname where second char is a
select * from EMPLOYEES
where FIRST_NAME LIKE '_a%';

-- get me all information whose first name ends with r
select * from EMPLOYEES
where FIRST_NAME LIKE '%r';

--get me any job title information endswith manager from jobs table
select * from jobs
where JOB_TITLE LIKE '%Manager';

-- how many managers we have (get me any job title information endswith manager from jobs table)
select count(*) from jobs
where JOB_TITLE LIKE '%Manager';