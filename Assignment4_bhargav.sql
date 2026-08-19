create table employee(
EmpID INT PRIMARY KEY,
Name VARCHAR(50),
Department VARCHAR(30),
Salary DECIMAL(10,2));

INSERT INTO employee (EmpID, Name, Department, Salary) VALUES
(1, 'John Doe', 'HR', 50000),
(2, 'Jane Smith', 'IT', 60000),
(3, 'Alice Johnson', 'Finance', 55000),
(4, 'Bob Brown', 'HR', 45000),
(5, 'Charlie White', 'IT', 65000);

select * from employee;
SELECT DISTINCT Department FROM Employee;
SELECT * FROM Employee WHERE Salary > 55000;


create table departments(
DeptID INT PRIMARY KEY, 
DeptName VARCHAR(50),
Location VARCHAR(50));

INSERT INTO Departments (DeptID, DeptName, Location) VALUES 
(101, 'Sales', 'New York');

select * from departments;