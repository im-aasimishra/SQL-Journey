--FIND TOTAL SCORE FOR EACH COUNTRY 
SELECT 
	country,
	SUM(score) AS total_score
FROM customers
GROUP BY country