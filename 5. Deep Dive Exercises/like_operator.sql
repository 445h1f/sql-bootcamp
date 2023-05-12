/*
* DB: Employees
* Table: employees
* Question: Find the age of all employees who's name starts with M.
* Sample output: https://imgur.com/vXs4093
* Use EXTRACT (YEAR FROM AGE(birth_date)) we will learn about this in later parts of the course
*/
SELECT emp_no, CONCAT(first_name, ' ', last_name) AS "full_name",
EXTRACT (YEAR FROM AGE(birth_date)) AS "age" 
FROM employees
WHERE first_name ILIKE 'M%';


/*
* DB: Employees
* Table: employees
* Question: How many people's name start with A and end with R?
* Expected output: 1846
*/
SELECT count(emp_no)
FROM employees
WHERE first_name ILIKE 'A%R';

  
/*
* DB: Store
* Table: customers
* Question: How many people's zipcode have a 2 in it?.
* Expected output: 4211 
*/
SELECT COUNT(region)
FROM customers
-- where CAST(zip as text) like '%2%';
WHERE zip::TEXT LIKE '%2%';

/*
* DB: Store
* Table: customers
* Question: How many people's zipcode start with 2 with the 3rd character being a 1.
* Expected output: 109 
*/
SELECT count(region)
FROM customers
WHERE zip::TEXT LIKE '2_1%';


/*
* DB: Store
* Table: customers
* Question: Which states have phone numbers starting with 302?
* Replace null values with "No State"                                                  
* Expected output: https://imgur.com/AVe6G4c
*/
SELECT COALESCE(state, 'No State') AS "states"
FROM customers
WHERE phone::TEXT LIKE '302%';
 
