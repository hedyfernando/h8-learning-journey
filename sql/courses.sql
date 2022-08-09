CREATE TABLE courses (
  id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  name varchar(20),
  teachers_id int,
  total_students int
);