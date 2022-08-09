/*join*/
/*Display all courses with teacher's identity*/

SELECT teachers.id, teachers.first_name, courses.name FROM courses
INNER JOIN teachers
on teachers.id = courses.teachers_id

/*Display how many courses per universities*/

SELECt teachers.school university, COUNT(courses.name) course
from teachers
INNER JOIN courses
on teachers.id = courses.teachers_id
GROUP by teachers.school

/*Display how many total_students per teachers*/

SELECT teachers.first_name|| ' ' ||teachers.last_name teachers, 
sum(courses.total_students) Students
FROM teachers
INNER JOIN courses
ON teachers.id = courses.teachers_id
GROUP BY teachers.id
ORDER BY teachers.first_name ASC

/*Display how many courses per teachers*/
SELECT teachers.first_name|| ' ' ||teachers.last_name teachers,
COUNT(courses.name)
FROM teachers
INNER JOIN courses
on teachers.id = courses.teachers_id
GROUP BY teachers.id