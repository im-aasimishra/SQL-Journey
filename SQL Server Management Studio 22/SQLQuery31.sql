INSERT INTO dbo.person (id, person_name, birth_date, email
)
SELECT
    id,
    first_name,
    NULL,
    'Unknown'
FROM dbo.customers;
SELECT * FROM person