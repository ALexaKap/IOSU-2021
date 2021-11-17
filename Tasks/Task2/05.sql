-- Вывести ProductID, где средняя цена (StandardCost) меньше 10 из таблицы Production.ProductCostHistory. Добавить столбец с номером строки, определяя его порядок в зависимости от средней цены.
SELECT ROW_NUMBER() OVER (ORDER BY AVG(StandardCost)) AS N
	, ProductID
	, AVG(StandardCost) AS Avg_Cost
FROM Production.ProductCostHistory
GROUP BY ProductID
HAVING AVG(StandardCost) < 10;