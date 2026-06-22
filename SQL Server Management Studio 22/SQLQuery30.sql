--change the score of customer with id 6 to 0
UPDATE customers
SET score = 0
WHERE id = 6

SELECT *
FROM customers
WHERE id = 6