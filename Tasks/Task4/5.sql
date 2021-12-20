-- Показать товары, цена которых больше средней цены в любой линейке продуктов (линейка продуктов определена) (Таблица Production.Product). Показать поля [Name], ListPrice и ProductLine.

-- Средняя цена товаров в каждой линейке продуктов
SELECT AVG(ListPrice)
	, ProductLine
FROM Production.Product
WHERE ListPrice > 0
AND ProductLine IS NOT NULL
GROUP BY ProductLine;

-- Решение (> 965.3488)
SELECT [Name]
	, ListPrice
	, ProductLine
FROM Production.Product
WHERE ListPrice > ALL
	(
		SELECT AVG(ListPrice)
		FROM Production.Product
		WHERE ListPrice > 0
		AND ProductLine IS NOT NULL
		GROUP BY ProductLine
	)
ORDER BY ListPrice;