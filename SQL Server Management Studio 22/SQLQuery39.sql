SELECT 
	first_name,
	country,
	CONCAT(first_name,'-', country) AS Name_Country
FROM customers

