SELECT 
CustomerID,
Score,
COALESCE(Score,0) Score2,
AVG(COALESCE(Score,0)) OVER() AvgScore
FROM Sales.Customers

--Display the full name of a customers in a single feild
--by merging their first and last name
--and add 10 bonus points to each customer
SELECT 
CustomerID,
FirstName,
LastName,
FirstName + ' ' + COALESCE(LastName,'') AS FullName,
Score,
COALESCE(SCORE,0) + 10 AS BonusScore
FROM Sales.Customers

--sorting customers from  lowest to highestscores will null appearing last 
SELECT 
FirstName,
Score
FROM Sales.Customers
ORDER BY CASE WHEN Score IS NULL THEN 1 ELSE 0 END, Score

--Find the sales price for each order 
SELECT
OrderID,
Sales,
Quantity,
Sales/NULLIF(Quantity,0) As Price
FROM Sales.Orders

--list all customers details who have not placed order
SELECT 
c.*,
o.orderID
FROM Sales.Customers c
LEFT JOIN Sales.Orders o
ON c.CustomerID = o.customerID
WHERE o.customerID IS NULL