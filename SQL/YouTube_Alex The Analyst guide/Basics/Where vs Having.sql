-- Having vs Where

-- This query groups employee salaries by occupation and calculates the average salary for each occupation.
select occupation, avg(salary)
from employee_salary 
group by occupation
;
-- Result:
-- | occupation                                      | avg(salary) |
-- |------------------------------------------------|-------------|
-- | Deputy Director of Parks and Recreation        | 75000       |
-- | Director of Parks and Recreation                | 70000       |
-- | Entrepreneur                                    | 50000       |
-- | Assistant to the Director of Parks and Recreation| 25000      |
-- | Office Manager                                  | 55000       |
-- | Nurse                                          | 55000       |
-- | City Manager                                    | 90000       |
-- | State Auditor                                   | 70000       |
-- | Shoe Shiner and Musician                       | 20000       |
-- | City Planner                                    | 57000       |
-- | Parks Director                                  | 65000       |

-- This query filters employee salaries before grouping by occupation.
-- It will return the average salary for occupations that include 'manager'.
select occupation, avg(salary)
from employee_salary 
where occupation like '%manager%'
group by occupation
;
-- Result:
-- | occupation                                      | avg(salary) |
-- |------------------------------------------------|-------------|
-- | Assistant to the Director of Parks and Recreation| 25000      |
-- | Office Manager                                  | 55000       |
-- | City Manager                                    | 90000       |
-- | State Auditor                                   | 70000       |
-- | City Planner                                    | 57000       |

-- This query filters the results after grouping by occupation.
select occupation, avg(salary)
from employee_salary 
group by occupation
having avg(salary) > 75000
;
-- Result:
-- | occupation                                      | avg(salary) |
-- |------------------------------------------------|-------------|
-- | Deputy Director of Parks and Recreation        | 75000       |
-- | Director of Parks and Recreation                | 70000       |
-- | City Manager                                    | 90000       |
-- | State Auditor                                   | 70000       |
-- | Parks Director                                  | 65000       |


-- Additional example using WHERE to filter before aggregation
-- This will return the average salary for employees in the 'Office Manager' occupation.
select avg(salary)
from employee_salary
where occupation = 'Office Manager'
;
-- Result:
-- | avg(salary) |
-- |-------------|
-- | 55000       |


-- Additional example using HAVING to filter after aggregation
-- This will return occupations with an average salary greater than 60000.
select occupation, avg(salary)
from employee_salary
group by occupation
having avg(salary) > 60000
;
-- Result:
-- | occupation                                      | avg(salary) |
-- |------------------------------------------------|-------------|
-- | Deputy Director of Parks and Recreation        | 75000       |
-- | Director of Parks and Recreation                | 70000       |
-- | City Manager                                    | 90000       |
-- | State Auditor                                   | 70000       |
-- | Parks Director                                  | 65000       |



select occupation, avg(salary)
from employee_salary 
where occupation like '%manager%'
group by occupation
having avg(salary) > 75000
;
