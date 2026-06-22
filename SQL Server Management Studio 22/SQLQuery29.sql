--change the score of customer 10 to 0 & update the country tp uk 
UPDATE customers
SET score = 0,
country='UK'
WHERE id = 7

SELECT * FROM customers
WHERE id = 7