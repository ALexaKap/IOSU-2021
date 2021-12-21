-- Показать товар с самой маленькой стандартной ценой (цена больше нуля) (Таблица Production.Product). Показать поля [Name], StandardCost.

-- Подзапрос
SELECT MIN(StandardCost)
FROM Production.Product
WHERE StandardCost > 0;

-- Проверка
SELECT StandardCost
FROM Production.Product
WHERE StandardCost = '0.8565';

-- Решение
SELECT [Name]
	, StandardCost
FROM Production.Product
WHERE StandardCost = 
	(
	SELECT MIN(StandardCost)
	FROM Production.Product
	WHERE StandardCost > 0
	);
