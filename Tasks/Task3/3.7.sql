-- Показать комбинированный список таблиц Production.Product, Production.ProductSubcategory по полям Name, ProductSubcategoryID, используя UNION.
SELECT [Name]
	, ProductSubcategoryID
FROM Production.Product
UNION
SELECT [Name]
	, ProductSubcategoryID
FROM Production.ProductSubcategory;