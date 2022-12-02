SELECT p.[Id],p.[Name],p.[Surname],p.[IdNumber],p.[DateOfBirth]
FROM [dbo].[Person] p
LEFT JOIN [dbo].[Address] a
ON p.Id = a.PersonId
WHERE a.Id IS NULL;

SELECT DISTINCT n, m FROM
(SELECT [Name] as n, MONTH([DateOfBirth]) as m
FROM [dbo].[Person])
AS data WHERE m IN ('7','8')

select Top(1)
at.Name,
count(*) as c
FROM Address a
INNER JOIN AddressType at
ON a.AddressTypeId = at.Id
GROUP BY at.Name
ORDER BY c DESC;

select * FROM (
select
p.Name as Person
, at.Name as AddressType
, count(*) as c
FROM Address a
INNER JOIN AddressType at
ON a.AddressTypeId = at.Id
INNER JOIN Person p
ON a.PersonId = p.Id
GROUP BY p.Name, at.Name) selectA
WHERE c>1
ORDER BY selectA.c DESC;

SELECT AVG(age) FROM
(
SELECT Name
, Surname
, FLOOR(DATEDIFF(DAY, DateOfBirth, GETDATE()) / 365.25) AS age
, IdNumber
, SUBSTRING(IdNumber, 10, 1) AS Sex
FROM Person
) setectA
WHERE Sex % 2 = 0;