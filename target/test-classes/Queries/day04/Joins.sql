select * from employees;

/*
 Inner join
 Only matching portion of the tables
 */

 select * from CUSTOMER;
select * from ADDRESS;

select FIRST_NAME, LAST_NAME, address, PHONE
from CUSTOMER inner join ADDRESS
on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;

select FIRST_NAME, LAST_NAME, ADDRESS.ADDRESS_ID, address, PHONE
from CUSTOMER inner join ADDRESS
on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;

--Aliases
--Instead of using table name we can use alias to specify table
select FIRST_NAME, LAST_NAME, A.ADDRESS_ID, address, PHONE
from CUSTOMER C inner join ADDRESS A
                         on C.ADDRESS_ID = A.ADDRESS_ID;

/*
 Left outer join
 Match Part + only unique for left table
 */
select FIRST_NAME, LAST_NAME, A.ADDRESS_ID, address, PHONE
from CUSTOMER C left outer join ADDRESS A
                           on C.ADDRESS_ID = A.ADDRESS_ID;

select FIRST_NAME, LAST_NAME, A.ADDRESS_ID, address, PHONE
from ADDRESS A Right outer join CUSTOMER C
                                 on C.ADDRESS_ID = A.ADDRESS_ID;

/*
 Right outer join
 Match Part + only unique for Right table
 there is no difference between right outer join between right join
 */
select FIRST_NAME, LAST_NAME, A.ADDRESS_ID, address, PHONE
from CUSTOMER C Right outer join ADDRESS A
                                on C.ADDRESS_ID = A.ADDRESS_ID;

select FIRST_NAME, LAST_NAME, A.ADDRESS_ID, address, PHONE
from ADDRESS A left join CUSTOMER C
                                on C.ADDRESS_ID = A.ADDRESS_ID;

/*
 Full outer join
 Match Part + only unique for left + right table
 there is no difference between Full outer join between Full join
 */
select FIRST_NAME, LAST_NAME, A.ADDRESS_ID, address, PHONE
from CUSTOMER C Full outer join ADDRESS A
                                 on C.ADDRESS_ID = A.ADDRESS_ID;


/*
 LEFT OUTER WITH WHERE
 -- Get me only unique for left table

 NOTE --> If there is a customer with addressID 6 , since there is no matching data
 from address table it will assing NULL value for address table address_id

 That is why we are using WHERE with address.addrees_id IS NULL to get unique for LEFT table
 */

SELECT customer_id, first_name, last_name,customer.ADDRESS_ID,ADDRESS.ADDRESS_ID,phone
FROM customer LEFT OUTER JOIN address
                              ON customer.address_id = address.address_id
WHERE ADDRESS.ADDRESS_ID IS NULL;

/*
 Full outer with where
 --get non-matching part of the tables
 */

SELECT customer_id, first_name, last_name,customer.ADDRESS_ID,ADDRESS.ADDRESS_ID,phone
FROM customer full OUTER JOIN address
                              ON customer.address_id = address.address_id
WHERE ADDRESS.ADDRESS_ID is null or CUSTOMER.ADDRESS_ID IS NULL;