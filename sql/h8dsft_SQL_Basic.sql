/*Carilah dosen yang memiliki gaji tertinggi per masing-masing mata kuliah. Tampilkan  semua atribut dosen dan 
semua atribut mata kuliahnya. Urutkan hasilnya berdasarkan nama  mata kuliahnya secara ascending(A-Z).*/

SELECT teachers.id, teachers.first_name,teachers.last_name,teachers.school,teachers.hire_date,Max(teachers.salary) salary, courses.* 
from teachers
INNER JOIN courses
on teachers.id = courses.teachers_id
GROUP BY courses.name
ORDER by courses.name ASC