SELECT 
	CustomerID,
	FirstName as f_name,
	LastName as l_name
FROM Sales.Customers
UNION
select 
	EmployeeID,
	FirstName,
	LastName
from Sales.Employees

SELECT 
	CustomerID,
	FirstName as f_name,
	LastName as l_name
FROM Sales.Customers
UNION ALL
select 
	EmployeeID,
	FirstName,
	LastName
from Sales.Employees

--EMPLOYEE WHO IS NOT CUSTOMER
select 
	EmployeeID,
	FirstName,
	LastName
from Sales.Employees
EXCEPT
SELECT 
	CustomerID,
	FirstName as f_name,
	LastName as l_name
FROM Sales.Customers

--FIND EMPLOEE WHO ARE ALSO A CUSTOMERselect 
SELECT EmployeeID,
	FirstName,
	LastName
from Sales.Employees
INTERSECT
SELECT 
	CustomerID,
	FirstName as f_name,
	LastName as l_name
FROM Sales.Customers