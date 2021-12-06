-- Показать список покупателей (CustomerID), которые имеют несколько дат оформления заказа (OrderDate), из таблицы Sales.SalesOrderHeader, используя SELF JOIN.
SELECT s1.CustomerID
	, s1.OrderDate
FROM Sales.SalesOrderHeader AS s1
INNER JOIN Sales.SalesOrderHeader AS s2
ON s1.CustomerID = s2.CustomerID
AND s1.OrderDate <> s2.OrderDate;