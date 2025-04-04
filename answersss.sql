CREATE DATABASE schools;
USE school;
CREATE TABLE student (
    id INT PRIMARY KEY,
    fullName VARCHAR(100),
    age INT
);
INSERT INTO student (id, fullName, age) VALUES
(1, 'Alice Johnson', 22),
(2, 'Bob Smith', 19),
(3, 'Charlie Brown', 21);
SHOW TABLES;
UPDATE student
SET age = 20
WHERE id = 2;