--Retrive all the customer and sort them by country and then by highest score
SELECT *
FROM customers
ORDER BY country ASC,
		 score DESC