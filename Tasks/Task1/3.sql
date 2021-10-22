-- Показать поля ProductId, UnitPrice, LineTotal, ReceivedQty, RejectedQty и OrderQty из таблицы Purchasing.PurchaseOrderDetail, где количество, фактически полученное от продавца (ReceivedQty) больше 60, а количество отклоненное во время проверки (RejectedQty) находится в диапазоне от 50 до 80

SELECT ProductId
     , UnitPrice
     , LineTotal
     , ReceivedQty
     , RejectedQty
     , OrderQty
FROM Purchasing.PurchaseOrderDetail
WHERE ReceivedQty > 60 AND RejectedQty BETWEEN 50 AND 80;