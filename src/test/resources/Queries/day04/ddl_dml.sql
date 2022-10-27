select * from employees;
--create table

/*
create table syntax:
    create table TableName(
        colName1 DataType Constraints,
        colName2 DataType Constraints(optional)
        colName3 DataType Constraints,
        ...
    );
*/

create table scrumTeam(
    EmpID INTEGER PRIMARY KEY , --Not null and Unique
    FirstName varchar(30) not null, --varchar-->String (30)-->size -->can't be null
    JobTitle varchar(20) not null,
    age Integer, -- there is no constraints
    salary INTEGER
);

select * from scrumTeam;

/*
 INSERT
INTO tableName (column1, column2,...)
 VALUES (value1, value2 ... );
 */

INSERT INTO scrumTeam(empid, firstname, jobtitle, age, salary)
values (1,'Mike','Tester',25,12000);

INSERT INTO scrumTeam(empid, firstname, jobtitle, age, salary)
values (2,'Mike','Tester',25,12000);

INSERT INTO scrumTeam(empid, firstname, jobtitle, age, salary)
values (3,'John','Tester',25,12000);

INSERT INTO scrumTeam(empid, firstname, jobtitle, age, salary)
values (4,'Joe','Developer',28,13000);

select * from scrumTeam
order by EmpID;

/*
 UPDATE

  UPDATE table_name
  SET column1 = value1,
        column2 = value2 , ...
  WHERE condition;

 */

 -- Increase all employees salary
UPDATE scrumTeam
SET salary = salary + 5000
where JOBTITLE = 'Tester';

--Add age for Mike
UPDATE scrumTeam
set age = 27, salary = 160000
where FIRSTNAME = 'John';

UPDATE scrumTeam
set  salary = 130000
where FIRSTNAME = 'Joe';

UPDATE scrumTeam
set  salary = 120000
where FIRSTNAME = 'Mike';

/*
DELETE FROM table_name
WHERE condition;
 */

 delete from scrumTeam
where EmpID = 2;
select * from scrumTeam
order by EmpID;

--commit work or commit
commit;

/*
 ALTER
 we will use this keyword to update table structure


 */

-- ADD NEW COLUMN
ALTER TABLE scrumTeam
    ADD gender varchar(20);

select * from scrumTeam;

-- Update all scrumteam gender as Male
UPDATE scrumTeam
SET gender='Male';

-- RENAME COLUMN
ALTER TABLE scrumTeam
    RENAME COLUMN salary TO annual_salary;

--DROP COLUMN --> Delete from table
ALTER TABLE scrumTeam
    DROP COLUMN gender;

--RENAME TABLE
ALTER TABLE scrumTeam
    RENAME TO agileteam;

select * from scrumTeam; --> scrumTeam --> agileteam (renamed)

select * from agileteam;


-- TRUNCATE
TRUNCATE TABLE agileteam;

-- DROP
DROP TABLE agileteam;

--IQ--> What is the difference between DROP and TRUNCATE ?
-- Trunc --> will delete all table content/data
-- DROP  --> Delete table itself with datas

commit; --save changes

--view
    -- It doesn't exist in datatable with data, It's just a virtual table to reuse that query
--table
    --it exists in database with their data





