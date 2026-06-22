SELECT 
	OrderID,
	CreationTime,
	FORMAT(CreationTime, 'dd') dd,
	FORMAT(CreationTime, 'ddd') ddd,
	FORMAT(CreationTime, 'dddd') dddd,
	FORMAT(CreationTime, 'MM') MM,
	FORMAT(CreationTime, 'MMM') MMM,
	FORMAT(CreationTime, 'MMMM') MMMM,
	FORMAT(CreationTime, 'dd-MM-yyyy') date_fromat
FROM Sales.Orders

--CONVERT() casting the datatype
SELECT 
	OrderID,
	CreationTime,
	CONVERT(DATE, CreationTime) AS [Datetime to date],
	CONVERT(VARCHAR, CreationTime, 32) AS [Datetime to varchar style of us],
	CONVERT(VARCHAR, CreationTime, 34) AS [Datetime to varchar style of eur]
FROM Sales.Orders

--CAST()
SELECT 
	OrderID,
	CreationTime,
	CAST('2025-08-03' AS DATE) [string to date],
	CAST(CreationTime AS DATE) [datetime to date]
FROM Sales.Orders

--DATEDIFF()
SELECT 
	EmployeeID,
	BirthDate,
	DATEDIFF(year, BirthDate, getDate()) age
FROM Sales.Employees

--DATEADD()
SELECT 
	CreationTime,
	DATEADD(DAY, 23,creationTime)
FROM Sales.Orders

--find average shipping duration in days for each month
SELECT 
	MONTH(OrderDate) AS OrderMonth,
AVG(DATEDIFF(DAY, OrderDate, ShipDate)) As AvgDaysShip
FROM Sales.Orders
GROUP BY MONTH(OrderDate)

--find the number of days between each orders and previous order(time gap analysis)
SELECT 
OrderID,
OrderDate,
LAG(OrderDate) OVER (ORDER BY OrderDate) AS PreviousODate,
DATEDIFF(DAY, LAG(OrderDate) OVER (ORDER BY OrderDate), OrderDate) NoOfDays
FROM Sales.Orders
