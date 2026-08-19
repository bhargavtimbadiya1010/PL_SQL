--Assignment 5: SQL Advanced Queries

CREATE TABLE Products (
ProductID INT PRIMARY KEY,
ProductName VARCHAR(50),
Category VARCHAR(50),
Price DECIMAL(10,2),
Stock INT
 );

select * from products;

INSERT INTO Products (ProductID, ProductName, Category, Price, Stock) VALUES
(1, 'Laptop',	'Electronics', 800.00,  50),
(2, 'Smartphone','Electronics', 600.00,  30),
(3, 'Desk Chair','Furniture',   120.00, 100),
(4, 'Table', 	'Furniture',   200.00,  20),
(5, 'Notebook',  'Stationery',	5.00, 500),
(6, 'Pen',   	'Stationery',	2.00,1000);

--1.a) Electronics & Furniture:

select * from products where category IN ('Electronics','Furniture');

--2.b) Price Range:

select * from products where price between 100 and 800;

--3.c) Stock Range:

select * from products where stock between 50 and 500;

--4.d) Name Contains 'Pen':

select * from products where productname like '%pen%';

--5.e) Name Starts With 'S':

select * from products where productname like 'S%';

--6.f) Category & Price:

select productname,category,price from products where category IN ('Stationery','Furniture') and price between 100 and 300;

--7.g) Low-Price 'o':

select productname,category,price from products where price between 1 and 10 and productname like '%o%';