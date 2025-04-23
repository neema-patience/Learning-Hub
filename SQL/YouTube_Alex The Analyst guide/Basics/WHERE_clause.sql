-- where clause: This section demonstrates the use of the WHERE clause in SQL queries.

select *
from employee_salary
where first_name= 'Leslie'
;
-- Result: 
-- | employee_id | first_name | last_name | occupation | salary | dept_id |
-- |-------------|------------|-----------|------------|--------|---------|
-- | 1           | Leslie     | Knope     | Deputy Director of Parks and Recreation | 75000  | 1       |

select *
from employee_salary
where salary > 50000
;
-- Result: 
-- | employee_id | first_name | last_name | occupation | salary | dept_id |
-- |-------------|------------|-----------|------------|--------|---------|
-- | 1           | Leslie     | Knope     | Deputy Director of Parks and Recreation | 75000  | 1       |
-- | 2           | Ron        | Swanson   | Director of Parks and Recreation | 70000  | 1       |
-- | 7           | Ann        | Perkins   | Nurse      | 55000  | 4       |
-- | 8           | Chris      | Traeger   | City Manager | 90000  | 3       |
-- | 9           | Ben        | Wyatt     | State Auditor | 70000  | 6       |
-- | 11          | Mark       | Brendanawicz | City Planner | 57000  | 3       |
-- | 12          | Craig      | Middlebrooks | Parks Director | 65000  | 1       |

select *
from employee_salary
where salary >= 50000
;
-- Result: 
-- | employee_id | first_name | last_name | occupation | salary | dept_id |
-- |-------------|------------|-----------|------------|--------|---------|
-- | 1           | Leslie     | Knope     | Deputy Director of Parks and Recreation | 75000  | 1       |
-- | 2           | Ron        | Swanson   | Director of Parks and Recreation | 70000  | 1       |
-- | 3           | Tom        | Haverford | Entrepreneur | 50000  | 1       |
-- | 7           | Ann        | Perkins   | Nurse      | 55000  | 4       |
-- | 8           | Chris      | Traeger   | City Manager | 90000  | 3       |
-- | 9           | Ben        | Wyatt     | State Auditor | 70000  | 6       |
-- | 11          | Mark       | Brendanawicz | City Planner | 57000  | 3       |
-- | 12          | Craig      | Middlebrooks | Parks Director | 65000  | 1       |

select *
from employee_salary
where salary < 50000
;
-- Result: 
-- | employee_id | first_name | last_name | occupation | salary | dept_id |
-- |-------------|------------|-----------|------------|--------|---------|
-- | 4           | April      | Ludgate   | Assistant to the Director of Parks and Recreation | 25000  | 1       |
-- | 10          | Andy       | Dwyer     | Shoe Shiner and Musician | 20000  | NULL    |

select *
from employee_salary
where salary <= 50000
;
-- Result: 
-- | employee_id | first_name | last_name | occupation | salary | dept_id |
-- |-------------|------------|-----------|------------|--------|---------|
-- | 3           | Tom        | Haverford | Entrepreneur | 50000  | 1       |
-- | 4           | April      | Ludgate   | Assistant to the Director of Parks and Recreation | 25000  | 1       |
-- | 5           | Jerry      | Gergich   | Office Manager | 50000  | 1       |
-- | 10          | Andy       | Dwyer     | Shoe Shiner and Musician | 20000  | NULL    |

select *
from employee_demographics
where gender = 'Female'
;
-- Result: 
-- | employee_id | first_name | last_name | age | gender | birth_date |
-- |-------------|------------|-----------|-----|--------|------------|
-- | 1           | Leslie     | Knope     | 44  | Female | 1979-09-25 |
-- | 4           | April      | Ludgate   | 29  | Female | 1994-03-27 |
-- | 6           | Donna      | Meagle    | 46  | Female | 1977-07-30 |
-- | 7           | Ann        | Perkins   | 35  | Female | 1988-12-01 |

select *
from employee_demographics
where gender != 'Female'
;
-- Result: 
-- | employee_id | first_name | last_name | age | gender | birth_date |
-- |-------------|------------|-----------|-----|--------|------------|
-- | 2           | Ron        | Swanson   | 50  | Male   | 1974-04-30 |
-- | 3           | Tom        | Haverford | 36  | Male   | 1987-03-04 |
-- | 5           | Jerry      | Gergich   | 61  | Male   | 1962-08-28 |
-- | 8           | Chris      | Traeger   | 43  | Male   | 1980-11-11 |
-- | 9           | Ben        | Wyatt     | 38  | Male   | 1985-07-26 |
-- | 10          | Andy       | Dwyer     | 34  | Male   | 1989-03-25 |
-- | 11          | Mark       | Brendanawicz | 40 | Male   | 1983-06-14 |
-- | 12          | Craig      | Middlebrooks | 37 | Male   | 1986-07-27 |

select *
from employee_demographics
where birth_date > '1985-01-01'
;
-- Result: 
-- | employee_id | first_name | last_name | age | gender | birth_date |
-- |-------------|------------|-----------|-----|--------|------------|
-- | 3           | Tom        | Haverford | 36  | Male   | 1987-03-04 |
-- | 4           | April      | Ludgate   | 29  | Female | 1994-03-27 |
-- | 6           | Donna      | Meagle    | 46  | Female | 1977-07-30 |
-- | 7           | Ann        | Perkins   | 35  | Female | 1988-12-01 |
-- | 8           | Chris      | Traeger   | 43  | Male   | 1980-11-11 |
-- | 9           | Ben        | Wyatt     | 38  | Male   | 1985-07-26 |
-- | 10          | Andy       | Dwyer     | 34  | Male   | 1989-03-25 |
-- | 11           | Mark       | Brendanawicz | 40 | Male   | 1983-06-14 |
-- | 12           | Craig       | Middlebrooks | 37 | Male   | 1986-07-27 |

-- AND, OR, NOT -- Logical Operators: This section demonstrates the use of logical operators in SQL queries.

select *
from employee_demographics
where birth_date > '1985-01-01'
or gender = 'Male'
;
-- Result: 
-- This query selects all columns from the employee_demographics table where the birth date is after January 1, 1985 or the gender is 'Male'.

select *
from employee_demographics
where birth_date > '1985-01-01'
or not gender = 'Male'
;
-- Result: 
-- This query selects all columns from the employee_demographics table where the birth date is after January 1, 1985 or the gender is not 'Male'.

select *
from employee_demographics
where (first_name = 'Leslie' and age = 44) or age > 55
;
-- Result: 
-- This query selects all columns from the employee_demographics table where the first name is 'Leslie' and age is 44, or age is greater than 55.

-- LIKE statements: This section demonstrates the use of the LIKE operator in SQL queries.
-- % and _ -- % = Matches any sequence of characters, _ = Matches a single character.

select *
from employee_demographics
where first_name like 'Jer%'
;
-- Result: 
-- This query selects all columns from the employee_demographics table where the first name starts with 'Jer'.

select *
from employee_demographics
where first_name like '%er%'
;
-- Result: 
-- This query selects all columns from the employee_demographics table where the first name contains 'er'.

select *
from employee_demographics
where first_name like 'a%'
;
-- Result: 
-- This query selects all columns from the employee_demographics table where the first name starts with 'a'.

select *
from employee_demographics
where first_name like 'a__'
;
-- Result: 
-- This query selects all columns from the employee_demographics table where the first name starts with 'a' and has exactly two more characters.

select *
from employee_demographics
where first_name like 'a___'
;
-- Result: 
-- This query selects all columns from the employee_demographics table where the first name starts with 'a' and has exactly three more characters.

select *
from employee_demographics
where first_name like 'a___%'
;
-- Result: 
-- This query selects all columns from the employee_demographics table where the first name starts with 'a' and has at least three more characters.

select *
from employee_demographics
where birth_date like '1989%'
;
-- Result: 
-- This query selects all columns from the employee_demographics table where the birth date starts with '1989'.
