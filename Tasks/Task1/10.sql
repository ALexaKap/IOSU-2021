-- Показать поля TaxType, TaxRate и [Name] из таблицы Sales.SalesTaxRate. Все значения поля TaxType, равные 2, заменить на NULL. Названия полей оставить без изменений.

SELECT NULLIF(TaxType, '2') AS TaxType
	, TaxRate
	, [Name]
FROM Sales.SalesTaxRate;