--group by

-- This query selects all columns from the employee demographics table.
-- This will return all records in the employee demographics.
select *
from employee_demographics;



-- This query groups employee demographics by gender.
-- This will return the distinct genders present in the employee demographics.
-- Result:
-- | gender  |
-- |---------|
-- | Female  |
-- | Male    |

select gender
from employee_demographics
group by gender
;


-- This query groups employee demographics by gender and calculates the average age for each gender.
-- This will return the average age of employees grouped by gender.
-- Result:
-- | gender  | AVG(age) |
-- |---------|----------|
-- | Female  | 43.67    |
-- | Male    | 43.25    |

select gender, AVG(age)
from employee_demographics
group by gender
;



-- This query groups employee salaries by occupation.
-- This will return the distinct occupations present in the employee salary table.
-- Result:
-- | occupation                                      |
-- |------------------------------------------------|
-- | Deputy Director of Parks and Recreation        |
-- | Director of Parks and Recreation                |
-- | Entrepreneur                                    |
-- | Assistant to the Director of Parks and Recreation|
-- | Office Manager                                  |
-- | Nurse                                          |
-- | City Manager                                    |
-- | State Auditor                                   |
-- | Shoe Shiner and Musician                       |
-- | City Planner                                    |
-- | Parks Director                                  |

select occupation
from employee_salary
group by occupation
;



-- This query groups employee salaries by occupation and salary.
-- This will return the distinct combinations of occupation and salary.
-- Result:
-- | occupation                                      | salary |
-- |------------------------------------------------|--------|
-- | Deputy Director of Parks and Recreation        | 75000  |
-- | Director of Parks and Recreation                | 70000  |
-- | Entrepreneur                                    | 50000  |
-- | Assistant to the Director of Parks and Recreation| 25000  |
-- | Office Manager                                  | 50000  |
-- | Office Manager                                  | 60000  |
-- | Nurse                                          | 55000  |
-- | City Manager                                    | 90000  |
-- | State Auditor                                   | 70000  |
-- | Shoe Shiner and Musician                       | 20000  |
-- | City Planner                                    | 57000  |
-- | Parks Director                                  | 65000  |

select occupation, salary
from employee_salary
group by occupation, salary
;


-- This query groups employee demographics by gender and calculates the average, maximum, and minimum age for each gender.
-- This will return the average, max, and min ages of employees grouped by gender.
-- Result:
-- | gender  | AVG(age) | max(age) | min(age) |
-- |---------|----------|----------|----------|
-- | Female  | 43.67    | 61       | 29       |
-- | Male    | 43.25    | 50       | 36       |

select gender, AVG(age), max(age), min(age)
from employee_demographics
group by gender
;


-- This query groups employee demographics by gender and calculates the average, maximum, minimum age, and count of ages for each gender.
-- This will return the average, max, min ages, and count of employees grouped by gender.
-- Result:
-- | gender  | AVG(age) | max(age) | min(age) | count(age) |
-- |---------|----------|----------|----------|------------|
-- | Female  | 43.67    | 61       | 29       | 6          |
-- | Male    | 43.25    | 50       | 36       | 6          |

select gender, AVG(age), max(age), min(age), count(age)
from employee_demographics
group by gender
;


-- Order by
-- This query selects all columns from the employee demographics table and orders the results by first name.
-- This will return all records in the employee demographics ordered by first name.
-- Result:
-- | employee_id | first_name | last_name | age | gender | birth_date |
-- |-------------|------------|------------|-----|--------|------------|
-- | 1           | Leslie     | Knope      | 44  | Female | 1979-09-25 |
-- | 2           | Ron        | Swanson    | 50  | Male   | 1974-04-30 |
-- | 3           | Tom        | Haverford  | 36  | Male   | 1987-03-04 |
-- | 4           | April      | Ludgate    | 29  | Female | 1994-03-27 |
-- | 5           | Jerry      | Gergich    | 61  | Male   | 1962-08-28 |
-- | 6           | Donna      | Meagle     | 46  | Female | 1977-07-30 |
-- | 7           | Ann        | Perkins    | 35  | Female | 1988-12-01 |
-- | 8           | Chris      | Traeger    | 43  | Male   | 1980-11-11 |
-- | 9           | Ben        | Wyatt      | 38  | Male   | 1985-07-26 |
-- | 10          | Andy       | Dwyer      | 34  | Male   | 1989-03-25 |
-- | 11          | Mark       | Brendanawicz| 40 | Male   | 1983-06-14 |
-- | 12          | Craig      | Middlebrooks| 37 | Male   | 1986-07-27 |

select *
from employee_demographics
order by first_name 
;


-- This query selects all columns from the employee demographics table and orders the results by first name in ascending order.
-- This will return all records in the employee demographics ordered by first name in ascending order.
-- Result:
-- | employee_id | first_name | last_name | age | gender | birth_date |
-- |-------------|------------|------------|-----|--------|------------|
-- | 1           | Leslie     | Knope      | 44  | Female | 1979-09-25 |
-- | 2           | Ron        | Swanson    | 50  | Male   | 1974-04-30 |
-- | 3           | Tom        | Haverford  | 36  | Male   | 1987-03-04 |
-- | 4           | April      | Ludgate    | 29  | Female | 1994-03-27 |
-- | 5           | Jerry      | Gergich    | 61  | Male   | 1962-08-28 |
-- | 6           | Donna      | Meagle     | 46  | Female | 1977-07-30 |
-- | 7           | Ann        | Perkins    | 35  | Female | 1988-12-01 |
-- | 8           | Chris      | Traeger    | 43  | Male   | 1980-11-11 |
-- | 9           | Ben        | Wyatt      | 38  | Male   | 1985-07-26 |
-- | 10          | Andy       | Dwyer      | 34  | Male   | 1989-03-25 |
-- | 11          | Mark       | Brendanawicz| 40 | Male   | 1983-06-14 |
-- | 12          | Craig      | Middlebrooks| 37 | Male   | 1986-07-27 |

select *
from employee_demographics
order by first_name asc
;



-- This query selects all columns from the employee demographics table and orders the results by first name in descending order.
-- This will return all records in the employee demographics ordered by first name in descending order.
-- Result:
-- | employee_id | first_name | last_name | age | gender | birth_date |
-- |-------------|------------|------------|-----|--------|------------|
-- | 12          | Craig      | Middlebrooks| 37 | Male   | 1986-07-27 |
-- | 11          | Mark       | Brendanawicz| 40 | Male   | 1983-06-14 |
-- | 10          | Andy       | Dwyer      | 34  | Male   | 1989-03-25 |
-- | 9           | Ben        | Wyatt      | 38  | Male   | 1985-07-26 |
-- | 8           | Chris      | Traeger    | 43  | Male   | 1980-11-11 |
-- | 7           | Ann        | Perkins    | 35  | Female | 1988-12-01 |
-- | 6           | Donna      | Meagle     | 46  | Female | 1977-07-30 |
-- | 5           | Jerry      | Gergich    | 61  | Male   | 1962-08-28 |
-- | 4           | April      | Ludgate    | 29  | Female | 1994-03-27 |
-- | 3           | Tom        | Haverford  | 36  | Male   | 1987-03-04 |
-- | 2           | Ron        | Swanson    | 50  | Male   | 1974-04-30 |
-- | 1           | Leslie     | Knope      | 44  | Female | 1979-09-25 |

select *
from employee_demographics
order by first_name desc
;


-- This query selects all columns from the employee demographics table and orders the results by gender in descending order.
-- This will return all records in the employee demographics ordered by gender in descending order.
-- Result:
-- | employee_id | first_name | last_name | age | gender | birth_date |
-- |-------------|------------|------------|-----|--------|------------|
-- | 1           | Leslie     | Knope      | 44  | Female | 1979-09-25 |
-- | 4           | April      | Ludgate    | 29  | Female | 1994-03-27 |
-- | 6           | Donna      | Meagle     | 46  | Female | 1977-07-30 |
-- | 2           | Ron        | Swanson    | 50  | Male   | 1974-04-30 |
-- | 3           | Tom        | Haverford  | 36  | Male   | 1987-03-04 |
-- | 5           | Jerry      | Gergich    | 61  | Male   | 1962-08-28 |
-- | 8           | Chris      | Traeger    | 43  | Male   | 1980-11-11 |
-- | 9           | Ben        | Wyatt      | 38  | Male   | 1985-07-26 |
-- | 10          | Andy       | Dwyer      | 34  | Male   | 1989-03-25 |
-- | 11          | Mark       | Brendanawicz| 40 | Male   | 1983-06-14 |
-- | 12          | Craig      | Middlebrooks| 37 | Male   | 1986-07-27 |

select *
from employee_demographics
order by gender desc
;



-- This query selects all columns from the employee demographics table and orders the results by gender and age in descending order.
-- This will return all records in the employee demographics ordered by gender and age in descending order.
-- Result:
-- | employee_id | first_name | last_name | age | gender | birth_date |
-- |-------------|------------|------------|-----|--------|------------|
-- | 2           | Ron        | Swanson    | 50  | Male   | 1974-04-30 |
-- | 5           | Jerry      | Gergich    | 61  | Male   | 1962-08-28 |
-- | 1           | Leslie     | Knope      | 44  | Female | 1979-09-25 |
-- | 6           | Donna      | Meagle     | 46  | Female | 1977-07-30 |
-- | 3           | Tom        | Haverford  | 36  | Male   | 1987-03-04 |
-- | 4           | April      | Ludgate    | 29  | Female | 1994-03-27 |
-- | 8           | Chris      | Traeger    | 43  | Male   | 1980-11-11 |
-- | 9           | Ben        | Wyatt      | 38  | Male   | 1985-07-26 |
-- | 10          | Andy       | Dwyer      | 34  | Male   | 1989-03-25 |
-- | 11          | Mark       | Brendanawicz| 40 | Male   | 1983-06-14 |
-- | 12          | Craig      | Middlebrooks| 37 | Male   | 1986-07-27 |

select *
from employee_demographics
order by gender, age desc
;


-- This query selects all columns from the employee demographics table and orders the results by age and gender.
-- This will return all records in the employee demographics ordered by age and gender.
-- Result:
-- | employee_id | first_name | last_name | age | gender | birth_date |
-- |-------------|------------|------------|-----|--------|------------|
-- | 4           | April      | Ludgate    | 29  | Female | 1994-03-27 |
-- | 7           | Ann        | Perkins    | 35  | Female | 1988-12-01 |
-- | 10          | Andy       | Dwyer      | 34  | Male   | 1989-03-25 |
-- | 9           | Ben        | Wyatt      | 38  | Male   | 1985-07-26 |
-- | 1           | Leslie     | Knope      | 44  | Female | 1979-09-25 |
-- | 8           | Chris      | Traeger    | 43  | Male   | 1980-11-11 |
-- | 6           | Donna      | Meagle     | 46  | Female | 1977-07-30 |
-- | 2           | Ron        | Swanson    | 50  | Male   | 1974-04-30 |
-- | 3           | Tom        | Haverford  | 36  | Male   | 1987-03-04 |
-- | 5           | Jerry      | Gergich    | 61  | Male   | 1962-08-28 |
-- | 11          | Mark       | Brendanawicz| 40 | Male   | 1983-06-14 |
-- | 12          | Craig      | Middlebrooks| 37 | Male   | 1986-07-27 |

select *
from employee_demographics
order by age, gender
;



-- This query selects all columns from the employee demographics table and orders the results by the 5th and 4th columns.
-- This will return all records in the employee demographics ordered by the specified column positions.
-- Result:
-- | employee_id | first_name | last_name | age | gender | birth_date |
-- |-------------|------------|------------|-----|--------|------------|
-- | 1           | Leslie     | Knope      | 44  | Female | 1979-09-25 |
-- | 2           | Ron        | Swanson    | 50  | Male   | 1974-04-30 |
-- | 3           | Tom        | Haverford  | 36  | Male   | 1987-03-04 |
-- | 4           | April      | Ludgate    | 29  | Female | 1994-03-27 |
-- | 5           | Jerry      | Gergich    | 61  | Male   | 1962-08-28 |
-- | 6           | Donna     | Meagle     | 46  | Female | 1977-07-30 |
-- | 7           | Ann       | Perkins    | 35  | Female | 1988-12-01 |
-- | 8           | Chris     | Traeger    | 43  | Male   | 1980-11-11 |
-- | 9           | Ben       | Wyatt      | 38  | Male   | 1985-07-26 |
-- | 10          | Andy      | Dwyer      | 34  | Male   | 1989-03-25 |
-- | 11          | Mark      | Brendanawicz| 40 | Male   | 1983-06-14 |
-- | 12          | Craig     | Middlebrooks| 37 | Male   | 1986-07-27 |

select *
from employee_demographics
order by 5, 4
;


-- Don't order using column number in case columns positions change.
-- It's better to use column names for clarity and to avoid issues if the column order changes.
