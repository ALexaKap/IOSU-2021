-- Показать среднюю цену товара в каждой линейке продуктов ProductLine из таблицы Production.Product, где средняя цена больше 800 (из выборки исключить пустые поля).
SELECT ProductLine
	, AVG(ListPrice) AS Avg_Price
FROM Production.Product
WHERE ProductLine IS NOT NULL
GROUP BY ProductLine
HAVING AVG(ListPrice) > 800;