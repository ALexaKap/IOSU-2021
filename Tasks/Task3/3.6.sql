-- Показать список продавцов (SalesPersonID из Sales.SalesOrderHeader), которые имеют нескольких покупателей, CustomerID которых начинается с 3, используя SELF JOIN.
SELECT s1.SalesPersonID
	, s1.CustomerID
FROM Sales.SalesOrderHeader AS s1
INNER JOIN Sales.SalesOrderHeader AS s2
ON s1.SalesPersonID = s2.SalesPersonID
AND s1.CustomerID <> s2.CustomerID
WHERE s1.CustomerID >= 3
AND s2.CustomerID >= 3;
