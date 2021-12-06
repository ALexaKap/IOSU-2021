-- Показать список товаров (поле Name), в котором указан, есть ли у товара полка (поле Shelf) или нет, из таблицы Production.ProductInventory, Production.Product, используя RIGHT OUTER JOIN.
SELECT p.[Name]
	, i.Shelf
FROM Production.ProductInventory AS i
RIGHT OUTER JOIN Production.Product AS p
ON i.ProductID = p.ProductID;