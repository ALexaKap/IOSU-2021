-- Показать товары, для которых существует только один стиль в одном цвете (стиль и цвет определен) (Таблица Production.Product). Показать поля [Name], Style и Color.

-- Один стиль - один цвет
SELECT COUNT(DISTINCT p2.Style) AS StyleCount
		, p2.Color
	FROM Production.Product AS p2
	WHERE p2.Style IS NOT NULL 
	AND p2.Color IS NOT NULL
	GROUP BY p2.Color --; -- Сколько стилей у одного цвета?
	HAVING COUNT(DISTINCT p2.Style) = 1; -- Один стиль - один цвет

-- Проверяем: Правда ли, что существует только 1 стиль в КРАСНОМ цвете?
SELECT Style
FROM Production.Product
WHERE Style IS NOT NULL AND Color LIKE '%Red%'; 

-- Решение
SELECT p1.[Name]
	, p1.Style
	, p1.Color
FROM Production.Product AS p1
WHERE p1.Color IS NOT NULL 
AND p1.Style IS NOT NULL
AND	(
	SELECT COUNT(DISTINCT p2.Style) AS StyleCount
	FROM Production.Product AS p2
	WHERE p2.Style IS NOT NULL 
	AND p1.Color = p2.Color
	) = 1 --; -- Один стиль 3 цвета: BLUE, RED, WHITE
AND p1.Color LIKE '%Blue%'; -- Один стиль - один цвет