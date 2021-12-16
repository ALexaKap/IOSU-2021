-- Находить дела по содержанию
SELECT CA.*
FROM Content AS c
INNER JOIN [Case] AS CA
ON CA.ContentID = c.ContentID --; -- Все дела и их содержания
WHERE c.ContentID = '2'; 