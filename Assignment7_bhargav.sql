--Employees table

CREATE TABLE Employees (
EmpID INT PRIMARY KEY,
EmpName VARCHAR(50),
DepartmentID INT);

select * from employees;

INSERT INTO Employees (EmpID, EmpName, DepartmentID) VALUES
(1, 'Alice',   101),
(2, 'Bob', 	102),
(3, 'Charlie', 103),
(4, 'Diana',   NULL),
(5, 'Eve', 	101);

--Department table

CREATE TABLE Department (
DepartmentID INT PRIMARY KEY,
DeptName VARCHAR(50),
Location VARCHAR(50));

select * from department;

 INSERT INTO Department (DepartmentID, DeptName, Location) VALUES
 (101, 'HR',   	'New York'),
 (102, 'IT',   	'San Francisco'),
 (103, 'Finance',  'Chicago'),
 (104, 'Sales',	'Boston');

--1. a) Inner Join:

select e.empid,e.empname,d.deptname from employees e inner join department d on e.departmentid = d.departmentid;

--2. b) Left Join:

select e.empid,e.empname,d.deptname from employees e left join department d on e.departmentid = d.departmentid;

--3. c) Right Join:

select d.departmentid,d.deptname,e.empname from employees e right join department d on e.departmentid = d.departmentid;

--4. d) Full Outer Join:

select e.empid,e.empname,d.deptname from employees e full outer join department d on e.departmentid = d.departmentid;

--5. e) Cross Join:

select e.empname,d.deptname from employees e cross join department d;

--6. f) Union All:

select empname as name from employees union all select deptname from department;

--7. g) Intersect:

select departmentid from employees intersect select departmentid from department;

--8. h) Except:

select departmentid from department except select departmentid from employees;