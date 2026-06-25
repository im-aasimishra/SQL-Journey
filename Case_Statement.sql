/* create report showing total sales for each of the following categories:
high(greater than 50), medium(between 21 and 50) and else low
sort categories from highest sales to lowest*/
SELECT 
Category,
SUM(Sales) AS TotalSales
FROM(
SELECT 
OrderID,
Sales,
CASE 
	WHEN Sales > 50 THEN 'High'
	WHEN Sales > 20 THEN 'Medium'
	ELSE 'low'
	END Category
FROM Sales.Orders
)t
GROUP BY Category
ORDER BY TotalSales  DESC

--find the average scores of the customers and treats null as 0
--add provide detials such as customer id and last name
SELECT 
CustomerID,
LastName,
Score,
CASE 
	WHEN Score IS NULL THEN 0
	ELSE Score
	END NewScore,
AVG(CASE 
	WHEN Score IS NULL THEN 0
	ELSE Score
	END) OVER() Filter_Avg
FROM Sales.Customers

--Count how many time each customers has made an order with sales greater than 30
SELECT 
CustomerID,
SUM(CASE WHEN 
	Sales>30 THEN 1
	ELSE 0
	END ) TotalSales,
	COUNT(*) TotalOrder
FROM Sales.Orders
GROUP BY CustomerID