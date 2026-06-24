/*find the avg score for each country considering only coustumers score not equal to
zero and and return only countries whose avg score is greater than 430*/
SELECT 
	country,
	AVG(score) AS avg_score
FROM customers
WHERE SCORE != 0
GROUP BY COUNTRY
HAVING AVG(score)>430