-- Выдавать список дел, которые вёл данный следователь
SELECT p.PersonID
	, p.[Name]
	, CA.*
FROM Person AS p 
INNER JOIN Content AS c
ON p.PersonID = c.InvestigatorID
INNER JOIN [Case] AS CA
ON CA.ContentID = c.ContentID --; -- Все следователи, что вели дела
WHERE p.[Name] = 'Петров Иоанн Аркадьевич'; 