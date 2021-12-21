-- Показать количество продуктов и размер, для которого представлено максимальное количество продуктов (Таблица Production.Product).

-- Какому размеру соответсвует максимальное количество продуктов?
SELECT p.Size
FROM Production.Product AS p
GROUP BY p.Size
HAVING COUNT(p.Size) = 
	(
		-- Максимальное количество продуктов
		SELECT MAX(r.AllProductNumber) AS MaxProductNumber
		FROM 
			(
				-- Количество продуктов для ВСЕХ размеров
				SELECT COUNT(p.ProductNumber) AS AllProductNumber
					, p.Size
				FROM Production.Product AS p
				WHERE p.Size IS NOT NULL
				GROUP BY p.Size
			) AS r	
	);