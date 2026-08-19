CREATE TABLE Product(
ProductID INT PRIMARY KEY,
ProductName VARCHAR(50),
Price DECIMAL(10,2),
QuantitySold INT,
Category VARCHAR(50));

SELECT * FROM PRODUCT;

INSERT INTO Product (ProductID, ProductName, Price, QuantitySold, Category) VALUES
(1, 'Laptop', 	800.00,  5,  'Electronics'),
(2, 'Smartphone', 600.00, 10,  'Electronics'),
(3, 'Desk Chair', 120.00, 15,  'Furniture'),
(4, 'Table',  	200.00,  8,  'Furniture'),
(5, 'Notebook', 	5.00, 20,  'Stationery'),
(6, 'Pen',      	2.00, 50,  'Stationery');

--1. a)Above-Average Price: 

SELECT * FROM PRODUCT WHERE PRICE > (SELECT AVG(PRICE) FROM PRODUCT);

--2. b) Most Expensive Product:

SELECT TOP 1 PRODUCTNAME,PRICE FROM PRODUCT ORDER BY PRICE DESC;

--3. c) Category Counts: 

SELECT DISTINCT CATEGORY,
(SELECT COUNT(*) FROM PRODUCTS P2
WHERE P2.CATEGORY = P1.CATEGORY) AS PRODUCTCOUNT
FROM PRODUCTS P1

--4. d) Below-Average Sales:

SELECT * FROM PRODUCT WHERE QUANTITYSOLD < (SELECT AVG(QUANTITYSOLD) FROM PRODUCT);

--5. e) Electronics View:

CREATE VIEW ELECTRONICSVIEW 
AS 
SELECT * FROM PRODUCT 
WHERE CATEGORY = 'ELECTRONICS';

SELECT * FROM ELECTRONICSVIEW;