-- Выдавать список дел по данной статье (по характеру преступления)
SELECT q.Qualification
	, a.Article
	, CA.*
FROM Article AS a
INNER JOIN Qualification AS q
ON a.ArticleID = q.ArticleID
INNER JOIN Content AS c
ON q.QualificationID = c.QualificationID
INNER JOIN [Case] AS CA
ON CA.ContentID = c.ContentID --;
--WHERE a.Article LIKE '%ст.105%'; 
WHERE q.Qualification LIKE '%Средней тяжести%'; 
