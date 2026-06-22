/*get all customers along with their order , but the customer whho has placed order*/
SELECT * 
FROM customers
INNER JOIN orders
ON id = customer_id