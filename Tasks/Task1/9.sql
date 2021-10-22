-- Показать поля TransactionID, ProductID, ReferenceOrderID, TransactionType, Quantity, ActualCost из таблицы Production.TransactionHistory, где значения поля Quantity больше 4. Отсортировать строки в алфавитном порядке относительно поля ActualCost.

SELECT TransactionID
	, ProductID
	, ReferenceOrderID
	, TransactionType
	, Quantity
	, ActualCost 
FROM Production.TransactionHistory
WHERE Quantity > 4
ORDER BY ActualCost;