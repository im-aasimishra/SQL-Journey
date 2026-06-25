WITH Orders AS (
SELECT 1 Id, 'A' Category UNION
SELECT 2 Id, NULL UNION
SELECT 3 Id, '' UNION
SELECT 4 Id, '  ' 
)
SELECT 
* ,
DATALENGTH(Category) DataLEN,
DATALENGTH(TRIM(Category))  POLICY1,
NULLIF(TRIM(Category), '') POLICY2,
COALESCE(NULLIF(TRIM(Category), ''), 'unknown') POLICY3
FROM Orders