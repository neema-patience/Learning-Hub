-- SELECT Tutorial: This section demonstrates various SELECT statements in SQL.

-- Selecting all columns from employee_demographics
select *
from Parks_and_Recreation.employee_demographics;
-- Result: 
-- | employee_id | first_name | last_name | age | gender | birth_date |
-- |-------------|------------|-----------|-----|--------|------------|
-- | 1           | Leslie     | Knope     | 44  | Female | 1979-09-25 |
-- | 2           | Ron        | Swanson   | 50  | Male   | 1974-04-30 |
-- | 3           | Tom        | Haverford | 36  | Male   | 1987-03-04 |
-- | 4           | April      | Ludgate   | 29  | Female | 1994-03-27 |
-- | 5           | Jerry      | Gergich   | 61  | Male   | 1962-08-28 |
-- | 6           | Donna      | Meagle    | 46  | Female | 1977-07-30 |
-- | 7           | Ann        | Perkins   | 35  | Female | 1988-12-01 |
-- | 8           | Chris      | Traeger   | 43  | Male   | 1980-11-11 |
-- | 9           | Ben        | Wyatt     | 38  | Male   | 1985-07-26 |
-- | 10          | Andy       | Dwyer     | 34  | Male   | 1989-03-25 |
-- | 11          | Mark       | Brendanawicz | 40 | Male   | 1983-06-14 |
-- | 12          | Craig      | Middlebrooks | 37 | Male   | 1986-07-27 |

-- Selecting specific columns from employee_demographics
select first_name, last_name, birth_date
from Parks_and_Recreation.employee_demographics;
-- Result: 
-- | first_name | last_name | birth_date |
-- |------------|-----------|------------|
-- | Leslie     | Knope     | 1979-09-25 |
-- | Ron        | Swanson   | 1974-04-30 |
-- | Tom        | Haverford | 1987-03-04 |
-- | April      | Ludgate   | 1994-03-27 |
-- | Jerry      | Gergich   | 1962-08-28 |
-- | Donna      | Meagle    | 1977-07-30 |
-- | Ann        | Perkins   | 1988-12-01 |
-- | Chris      | Traeger   | 1980-11-11 |
-- | Ben        | Wyatt     | 1985-07-26 |
-- | Andy       | Dwyer     | 1989-03-25 |
-- | Mark       | Brendanawicz | 1983-06-14 |
-- | Craig      | Middlebrooks | 1986-07-27 |

-- Selecting first_name, last_name, birth_date, age, and age + 10
select first_name,
last_name,
birth_date,
age,
age + 10
from Parks_and_Recreation.employee_demographics;
-- Result: 
-- | first_name | last_name | birth_date | age | age + 10 |
-- |------------|-----------|------------|-----|----------|
-- | Leslie     | Knope     | 1979-09-25 | 44  | 54       |
-- | Ron        | Swanson   | 1974-04-30 | 50  | 60       |
-- | Tom        | Haverford | 1987-03-04 | 36  | 46       |
-- | April      | Ludgate   | 1994-03-27 | 29  | 39       |
-- | Jerry      | Gergich   | 1962-08-28 | 61  | 71       |
-- | Donna      | Meagle    | 1977-07-30 | 46  | 56       |
-- | Ann        | Perkins   | 1988-12-01 | 35  | 45       |
-- | Chris      | Traeger   | 1980-11-11 | 43  | 53       |
-- | Ben        | Wyatt     | 1985-07-26 | 38  | 48       |
-- | Andy       | Dwyer     | 1989-03-25 | 34  | 44       |
-- | Mark       | Brendanawicz | 1983-06-14 | 40 | 50       |
-- | Craig      | Middlebrooks | 1986-07-27 | 37 | 47       |

-- Selecting first_name, last_name, birth_date, age, and a mathematical expression
select first_name,
last_name,
birth_date,
age,
(age + 10) * 10 + 10
from Parks_and_Recreation.employee_demographics;

-- PEMDAS - BODMAS is used for mathematical queries in sql
-- Result: 
-- | first_name | last_name | birth_date | age | (age + 10) * 10 + 10 |
-- |------------|-----------|------------|-----|-----------------------|
-- | Leslie     | Knope     | 1979-09-25 | 44  | 450                   |
-- | Ron        | Swanson   | 1974-04-30 | 50  | 610                   |
-- | Tom        | Haverford | 1987-03-04 | 36  | 460                   |
-- | April      | Ludgate   | 1994-03-27 | 29  | 390                   |
-- | Jerry      | Gergich   | 1962-08-28 | 61  | 710                   |
-- | Donna      | Meagle    | 1977-07-30 | 46  | 560                   |
-- | Ann        | Perkins   | 1988-12-01 | 35  | 460                   |
-- | Chris      | Traeger   | 1980-11-11 | 43  | 530                   |
-- | Ben        | Wyatt     | 1985-07-26 | 38  | 480                   |
-- | Andy       | Dwyer     | 1989-03-25 | 34  | 440                   |
-- | Mark       | Brendanawicz | 1983-06-14 | 40 | 500                   |
-- | Craig      | Middlebrooks | 1986-07-27 | 37 | 470                   |

-- Selecting distinct first names from employee_demographics
select distinct first_name
from Parks_and_Recreation.employee_demographics;
-- Result: 
-- | first_name |
-- |------------|
-- | Leslie     |
-- | Ron        |
-- | Tom        |
-- | April      |
-- | Jerry      |
-- | Donna      |
-- | Ann        |
-- | Chris      |
-- | Ben        |
-- | Andy       |
-- | Mark       |
-- | Craig      |

-- Selecting gender from employee_demographics
select gender
from Parks_and_Recreation.employee_demographics;
-- Result: 
-- | gender |
-- |--------|
-- | Female |
-- | Male   |
-- | Male   |
-- | Female |
-- | Male   |
-- | Female |
-- | Female |
-- | Male   |
-- | Male   |
-- | Male   |
-- | Male   |
-- | Male   |

-- Selecting distinct genders from employee_demographics
select distinct gender
from Parks_and_Recreation.employee_demographics;
-- Result: 
-- | gender |
-- |--------|
-- | Female |
-- | Male   |

-- Selecting distinct first names and genders from employee_demographics
select DISTINCT first_name, gender
from Parks_and_Recreation.employee_demographics;
-- Result: 
-- | first_name | gender |
-- |------------|--------|
-- | Leslie     | Female |
-- | Ron        | Male   |
-- | Tom        | Male   |
-- | April      | Female |
-- | Jerry      | Male   |
-- | Donna      | Female |
-- | Ann        | Female |
-- | Chris      | Male   |
-- | Ben        | Male   |
-- | Andy       | Male   |
-- | Mark       | Male   |
-- | Craig      | Male   |
