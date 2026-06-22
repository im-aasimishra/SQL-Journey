SELECT
OrderID,
CreationTime,
--eomonth()
EOMONTH(CreationTime) EO_Month,
--datetrunc()
DATETRUNC(minute,CreationTime) no_min,
DATETRUNC(day,CreationTime) no_day,
--datename()
DATENAME(month, CreationTime) month_name,
DATENAME(WEEKDAY, CreationTime) week_name,
--datepaert()
DATEPART(month,CreationTime) month_dp,
DATEPART(hour, CreationTime) hour_dp,
DATEPART(QUARTER, CreationTime) quarter_dp,
DATEPART(WEEK, CreationTime) week_dp,
--month(),day(),year()
YEAR(CreationTime) Year,
MONTH(CreationTime) Month,
DAY(CreationTime) Day
FROM Sales.Orders
--no. of order in a year?
SELECT 
YEAR(OrderDate),
COUNT(*)
FROM Sales.Orders
GROUP BY YEAR(OrderDate)
--no. of order in a MONTH?
SELECT 
DATENAME(MONTH,OrderDate) AS month_name,
COUNT(*)
FROM Sales.Orders
GROUP BY DATENAME(MONTH,OrderDate)
--SHOW ALL ORDER PLACED IN FEB MONTH
SELECT 
*
FROM Sales.Orders
WHERE MONTH(OrderDate) = 2