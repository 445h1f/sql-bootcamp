-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: Employees
 */
-- 


-- Question 1: What is the average salary for the company?
-- Table: Salaries
SELECT AVG(salary) AS "average_salary" FROM salaries;

-- Question 2: What year was the youngest person born in the company?
-- Table: employees

SELECT MIN(birth_date) FROM employees;


-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: France
 */
-- 

-- Question 1: How many towns are there in france?
-- Table: Towns
SELECT COUNT(id) AS "total_towns" FROM towns;

-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: World
 */
-- 

-- Question 1: How many official languages are there?
-- Table: countrylanguage
SELECT COUNT(isofficial) AS "total_official" FROM countrylanguage
WHERE isofficial = TRUE;

-- Question 2: What is the average life expectancy in the world?
-- Table: country
SELECT AVG(lifeexpectancy) AS "avg_lifeexpectancy" FROM country;

-- Question 3: What is the average population for cities in the netherlands?
-- Table: city
SELECT AVG(population) AS "nld_avg" FROM city WHERE countrycode = 'NLD';

