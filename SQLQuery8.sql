--retrive customer detail who is from germany
SELECT 
	first_name,
	country
FROM customers
WHERE country = 'Germany'