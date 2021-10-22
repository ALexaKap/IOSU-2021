-- Показать поля TransactionID, ProductID, ReferenceOrderID, TransactionType, Quantity, ActualCost из таблицы Production.TransactionHistory. Показать только значения поля TransactionType из списка ('W', 'P'). Использовать оператор IN.

SELECT TransactionID
     , ProductID
     , ReferenceOrderID
	, TransactionType
	, Quantity
	, ActualCost
FROM Production.TransactionHistory
WHERE TransactionType IN ('W', 'P');