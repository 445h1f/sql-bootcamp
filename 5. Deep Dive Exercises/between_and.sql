
/*
* Write your query here
*/
SELECT * 
FROM customers
WHERE age BETWEEN 30 AND 50 AND income < 50000;

-- What is the average income between the ages of 20 and 50? (Including 20 and 50)
/*
* Write your query here
*/

SELECT AVG(income) FROM customers
WHERE age BETWEEN 20 AND 50;
