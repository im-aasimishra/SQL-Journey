--find total score and total number of customer for each country
SELECT 
	country,
	SUM(score) AS total_score,
	COUNT(id) AS total_customer
FROM customers
GROUP BY country