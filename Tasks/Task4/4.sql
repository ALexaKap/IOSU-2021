-- Показать товары, цена которых равна минимальной (больше нуля) цене товара того же размера (размер определен) (Таблица Production.Product). Показать поля [Name], ListPrice и Size.

-- Минимальная цена товара для каждого размера
SELECT MIN(p2.ListPrice)
	, p2.Size
FROM Production.Product AS p2
WHERE p2.ListPrice > 0
AND p2.Size IS NOT NULL 
GROUP BY Size

-- Решение
SELECT p1.[Name]
	, p1.ListPrice
	, p1.Size
FROM Production.Product AS p1
WHERE p1.Size IS NOT NULL
AND p1.ListPrice =
	(
		SELECT MIN(p2.ListPrice)
		FROM Production.Product AS p2
		WHERE p1.Size = p2.Size
	)
ORDER BY p1.Size;