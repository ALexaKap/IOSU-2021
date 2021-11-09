-- Из таблицы Production.Document показать место документа в памяти (DocumentNode), уровень документа (DocumentLevel), заголовок документа (Title) и итоговый документ (DocumentSummary). Показать только те документы, которые не имеют итогового документа.

SELECT DocumentNode
     , DocumentLevel
     , Title
     , DocumentSummary
FROM Production.Document
WHERE DocumentSummary IS NULL;