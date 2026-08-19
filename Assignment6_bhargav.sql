CREATE TABLE Orders (
OrderID INT PRIMARY KEY,
CustomerName VARCHAR(50),
ProductCategory VARCHAR(50),
Quantity INT,
TotalPrice DECIMAL(10,2),
OrderDate DATE);

select * from orders;

INSERT INTO Orders (OrderID, CustomerName, ProductCategory, Quantity, TotalPrice, OrderDate) VALUES
(1, 'Alice',   'Electronics', 2,  1600.00, '2024-11-01'),
(2, 'Bob', 	'Furniture',   1,   300.00, '2024-11-02'),
(3, 'Charlie', 'Electronics', 1,   800.00, '2024-11-03'),
(4, 'Diana',   'Stationery', 10,	50.00, '2024-11-04'),
(5, 'Eve', 	'Electronics', 3,  2400.00, '2024-11-05'),
(6, 'Frank',   'Stationery', 20,   100.00, '2024-11-06');

--1.a) Total Quantity by Category:

select productcategory,count(quantity) as totalquantity from orders group by productcategory;

--2.b) Categories with High Sales Volume:

select productcategory from (select productcategory,sum(quantity) as totalquantity from orders group by productcategory)as total 
where totalquantity > 10;

--3.c) Average Order Value by Category:

select productcategory,avg(totalprice) as avgprice from Orders group by productcategory;

--4.d) Categories with Low Average Price:

select productcategory from (select productcategory,avg(totalprice) as avgprice from Orders group by productcategory) as totalap
where avgprice < 1000;

--5.e) Classify Orders by Value:

select * , case when totalprice > 1000 then 'high value' else 'low value' end as valuecategory from orders;