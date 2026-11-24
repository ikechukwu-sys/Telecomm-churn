select *
from employee_demographics;

select first_name 
from employee_demographics;

select first_name, last_name
from employee_demographics;


select first_name, last_name
from employee_demographics
limit 5;

select DISTINCT (gender)
from employee_demographics;

select count(last_name)
from employee_demographics;


select count(last_name) AS COUNT_NAME
from employee_demographics;

# MAX, MIN, AVERAGE

select *
from employee_salary;


select MAX(salary)
from employee_salary;

select MIN(salary)
from employee_salary;

select AVG(salary)
from employee_salary;


select *
from employee_demographics
WHERE first_name = 'Pelu' ;


select *
from employee_demographics
WHERE first_name <> 'Pelu';

# GREATER than and Less than 
select *
from employee_demographics
WHERE age > 30;


select *
from employee_demographics
WHERE age >= 30;

select *
from employee_demographics
WHERE age < 32;

select *
from employee_demographics
WHERE age <= 32;

# AND / OR

select *
from employee_demographics
WHERE age < 32 AND gender = 'Female';

select *
from employee_demographics
WHERE age > 32 AND gender = 'Male';

select *
from employee_demographics
WHERE age < 32 OR gender = 'Male';


# LIKE with % wildcards

select *
from employee_demographics
WHERE first_name LIKE '%y';


select *
from employee_demographics
WHERE first_name LIKE 'A%n%';

# IS NULL/ IS NOT NULL
select *
from employee_demographics
WHERE first_name IS NOT NULL;

select *
from employee_demographics
WHERE first_name IS NULL;

# IN

select *
from employee_demographics
WHERE first_name IN('pelu', 'Ann', 'Jerry');

#GROUPBY
select distinct(gender)
from employee_demographics;

select gender, COUNT(gender)
from employee_demographics
group by gender;

select gender, age, COUNT(gender)
from employee_demographics
group by gender, age;

# WHERE AND GROUPBY

select gender, COUNT(gender) AS CountGender
from employee_demographics
WHERE age > 31
group by gender;

select gender, COUNT(gender) AS CountGender
from employee_demographics
WHERE age > 31
group by gender
order by CountGender;


select gender, COUNT(gender) AS CountGender
from employee_demographics
WHERE age > 31
group by gender
order by CountGender desc;


select gender, COUNT(gender) AS CountGender
from employee_demographics
WHERE age > 31
group by gender
order by 2 desc;



