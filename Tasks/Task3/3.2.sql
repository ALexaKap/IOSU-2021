-- Показать список продуктов (поле Name), в котором указано, есть ли у продукта количество заказов или нет, из таблиц Production.Product, Sales. SalesOrderDetail, используя LEFT OUTER JOIN.
SELECT p.[Name]
	, s.OrderQty
FROM Production.Product AS p
LEFT OUTER JOIN Sales.SalesOrderDetail AS s
ON p.ProductID = s.ProductID
WHERE s.OrderQty IS NOT NULL;