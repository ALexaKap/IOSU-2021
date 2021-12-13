-- Выдать список дел по ФИО осужденного
SELECT p.PersonID
	, p.[Name]
	, CA.*
FROM Person AS p 
INNER JOIN Content AS c
ON p.PersonID = c.ConvictID
INNER JOIN [Case] AS CA
ON CA.ContentID = c.ContentID --; -- Все осужденные, проходящие по всем делам
WHERE p.[Name] = 'Сидоров Елисей Евгеньевич'; 
