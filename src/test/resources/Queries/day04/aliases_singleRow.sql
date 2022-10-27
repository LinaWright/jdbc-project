select * from employees;
/*
 Aliases

 -- Rename column -- > Give an temporary name for column.It will not anything into database
 -- Rename table --> JOINS

 */
 --Rename column
--space is not allowed, it'll show in the table with uppercase
select FIRST_NAME as given_name from EMPLOYEES;

--It will nor change anything from db
select FIRST_NAME from EMPLOYEES;

select max(SALARY) as hightst_salary from EMPLOYEES;

--another way to rename -->using double quote, we can use spaces inside of the quotation, it'll show as it is in the table
select FIRST_NAME as "Given name" from EMPLOYEES;

/*
 String functions
 --CONCAT
 In java --> + -->firstname + " " + lastname
 In SQL --> || -->firstname ||' '|| lastname
 */

 --Add email to @gmail.com domain and display as full_email
select EMAIL ||'@gmail.com' as full_email from EMPLOYEES; --> SKING@gmail.com --> colum name us full_email

--Another way to concat
select concat(EMAIL,'@gmail.com') as full_email from EMPLOYEES;

--lower
select lower(concat(EMAIL,'@gmail.com')) as full_email from EMPLOYEES;

--upper
select upper(concat(EMAIL,'@gmail.com')) as full_email from EMPLOYEES;

--Initcap
--it makes first letter uppercase
select initcap(EMAIL) from EMPLOYEES;

--length
--It will show the length of the data
--display all the employees first name and length of the result

select length(EMAIL) from EMPLOYEES;

select FIRST_NAME, length(FIRST_NAME) as length_firstname from EMPLOYEES
order by length(FIRST_NAME);

--bu column aliases
select FIRST_NAME, length(FIRST_NAME) as length_firstname from EMPLOYEES
order by length_firstname;

--by column index
select FIRST_NAME, length(FIRST_NAME) as length_firstname from EMPLOYEES
order by 2;

/*
 Substr(colName, beginIndex, NumberOfChar)
 If beginningIndex is 0, it is treated as 1
 --If beginIndex is negative, it will start from backward of data
 --if numberOfcChar is omitted, it works till the end
 */

 --Displau allinitl from emplyees --> Lina Wright -->L.W.
select substr(FIRST_NAME, 0,1)||'.'||substr(LAST_NAME,0,1)||'.' as initails from EMPLOYEES;

--IQ
select FIRST_NAME,SALARY from EMPLOYEES
where SALARY > 3000
order by LOWER(substr(FIRST_NAME,-3)) ASC,SALARY DESC;

--It will order them based on last 3char and if there is same order , it'll order by salary desc
