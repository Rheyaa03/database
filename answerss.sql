CREATE DATABASE mYYDatabase;
USE mYYDatabase;
CREATE TABLE payments (
    checkNumber VARCHAR(50) PRIMARY KEY,
    paymentDate DATE,
    amount DECIMAL(10,2)
);
CREATE TABLE orders (
    orderID INT PRIMARY KEY AUTO_INCREMENT,
    orderDate DATE,
    requiredDate DATE,
    status VARCHAR(50)
);
CREATE TABLE employees (
    employeeNumber INT PRIMARY KEY,
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    email VARCHAR(100),
    jobTitle VARCHAR(50)
);
CREATE TABLE products (
    productID INT PRIMARY KEY AUTO_INCREMENT,
    productName VARCHAR(100),
    quantityInStock INT,
    buyPrice DECIMAL(10,2)
);
INSERT INTO payments (checkNumber, paymentDate, amount) 
VALUES ('CHK001', '2024-03-01', 500.00),
       ('CHK002', '2024-03-05', 750.00);
INSERT INTO orders (orderDate, requiredDate, status) 
VALUES ('2024-03-10', '2024-03-15', 'In Process'),
       ('2024-03-08', '2024-03-12', 'Shipped');
INSERT INTO orders (orderDate, requiredDate, status) 
VALUES ('2024-03-10', '2024-03-15', 'In Process'),
       ('2024-03-08', '2024-03-12', 'Shipped');
INSERT INTO employees (employeeNumber, firstName, lastName, email, jobTitle) 
VALUES (101, 'John', 'Doe', 'johndoe@example.com', 'Sales Rep'),
       (102, 'Jane', 'Smith', 'janesmith@example.com', 'Sales Rep');
INSERT INTO offices (officeCode, city, phone, addressLine1, country, postalCode, territory) 
VALUES (1, 'New York', '123-456-7890', '123 5th Ave', 'USA', '10001', 'NA');
INSERT INTO products (productName, quantityInStock, buyPrice) 
VALUES ('Laptop', 50, 1200.00),
       ('Smartphone', 30, 800.00),
       ('Tablet', 20, 500.00),
       ('Monitor', 25, 300.00),
       ('Keyboard', 40, 50.00);
SELECT checkNumber, paymentDate, amount FROM payments;
SELECT orderDate, requiredDate, status 
FROM orders 
WHERE status = 'In Process' 
ORDER BY orderDate DESC;
SELECT firstName, lastName, email 
FROM employees 
WHERE jobTitle = 'Sales Rep' 
ORDER BY employeeNumber DESC;
SELECT * FROM offices;
SELECT productName, quantityInStock 
FROM products 
ORDER BY buyPrice ASC 
LIMIT 5;

