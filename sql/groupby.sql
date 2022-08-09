/**Group by**/
/*Who is the teacher with the highest salary for each university?*/

SELECT school, first_name, last_name, MAX(salary) 
from teachers
GROUP BY school

/*---------------------------------------------------*/
/*Who is the teacher with the highest salary from stanford university?*/

SELECT school, first_name, last_name, MAX(salary)
FROM teachers
WHERE school = 'Stanford University'
GROUP BY school