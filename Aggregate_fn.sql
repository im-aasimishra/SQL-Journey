SELECT
COUNT(Score) AS Nr_Score,
SUM(Score) AS Total_Sc,
AVG(Score) AS Avg_Sc,
MAX(Score) AS Max_Sc,
MIN(Score) AS Min_Sc
FROM Sales.Customers