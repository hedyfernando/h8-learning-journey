CREATE TABLE teachers (
  id IntEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  first_name varchar(25) NOT NULL,
  last_name varchar(50),
  school varchar(50) NOT NULL,
  hire_date date,
  salary numeric
);