-- Показать поля TransactionID, ProductID, TransactionType, Quantity, ActualCost из таблицы Production.TransactionHistoryArchive.

SELECT TransactionID
     , ProductID
     , TransactionType
	, Quantity
     , ActualCost
FROM Production.TransactionHistoryArchive;