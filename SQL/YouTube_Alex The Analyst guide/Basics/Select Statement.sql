-- SELECT STATEMENT

-- The SELECT statement is used to work with columns and specify what columns you want to see in your output. 
-- There are a few other things as well that we will discuss throughout this video.

-- We can also select a specific number of columns based on our requirement. 

-- Now remember we can just select everything by saying:
SELECT * 
FROM parks_and_recreation.employee_demographics;

-- Let's try selecting a specific column
SELECT first_name
FROM parks_and_recreation.employee_demographics;

-- As you can see from the output, we only have the one column here now and don't see the others.

-- Now let's add some more columns. We just need to separate the columns with commas.
SELECT first_name, last_name
FROM parks_and_recreation.employee_demographics;

-- Now the order doesn't normally matter when selecting your columns.
-- There are some use cases we will look at in later modules where the order of the column
-- names in the SELECT statement will matter, but for this you can put them in any order.

SELECT last_name, first_name, gender, age
FROM parks_and_recreation.employee_demographics;

-- You'll also often see SQL queries formatted like this:
SELECT last_name, 
       first_name, 
       gender, 
       age
FROM parks_and_recreation.employee_demographics;

-- The query still runs the exact same way, but it is easier to read and pick out the columns
-- being selected and what you're doing with them.

-- Math operations in SQL
SELECT first_name,
       last_name,
       salary,
       salary + 100 AS increased_salary
FROM parks_and_recreation.employee_salary;

-- PEMDAS (Parenthesis, Exponent, Multiplication, Division, Addition, Subtraction) applies in SQL math operations.
SELECT first_name, 
       last_name,
       salary,
       (salary + 100) * 10 AS calculated_salary
FROM parks_and_recreation.employee_salary;

-- The DISTINCT statement returns only unique values in the output (removes duplicates).
SELECT department_id
FROM parks_and_recreation.employee_salary;

SELECT DISTINCT department_id
FROM parks_and_recreation.employee_salary;
