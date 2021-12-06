-- Показать список ProductID, которые содержатся и в таблице Production.Product, и в таблице Production.ProductDocument.
SELECT ProductID
FROM Production.Product
INTERSECT 
SELECT ProductID
FROM Production.ProductDocument;

-- Проверка
SELECT ProductID
FROM Production.Product
WHERE ProductID LIKE '317';

SELECT ProductID
FROM Production.ProductDocument
WHERE ProductID LIKE '317';