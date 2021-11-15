-- Показать суммарную стоимость для товара, чья стоимость меньше 100, в каждой линейке размеров Size из таблицы Production.Product (из выборки исключить пустые поля)
SELECT Size
	, SUM(ListPrice) AS Sum_Price
FROM Production.Product
WHERE ListPrice IS NOT NULL AND ListPrice < 100 AND Size IS NOT NULL
GROUP BY Size;