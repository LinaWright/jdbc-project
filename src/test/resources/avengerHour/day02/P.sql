select * from employees;

INSERT INTO CUSTOMER(FIRST_NAME,LAST_NAME)VALUES ('MIKE','SMITH');
update CUSTOMER SET LAST_NAME = 'Doe'
where LAST_NAME='Smith';
delete from CUSTOMER where FIRST_NAME = 'Mike';
