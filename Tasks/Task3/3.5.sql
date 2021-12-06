-- Показать список дат оформления заказа (OrderDate), которые относятся к нескольким покупателям (CustomerID), из таблицы Sales.SalesOrderHeader, используя SELF JOIN.
SELECT s1.OrderDate
	, s1.CustomerID
FROM Sales.SalesOrderHeader AS s1
INNER JOIN Sales.SalesOrderHeader AS s2
ON s1.OrderDate = s2.OrderDate
AND s1.CustomerID <> s2.CustomerID;