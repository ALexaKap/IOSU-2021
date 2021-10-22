-- Показать место документа в памяти (DocumentNode), заголовок документа (Title) и расширение файла (FileExtension) из таблицы Production.Document, если значения поля Title содержат слово 'Assembly' («сборка»).

SELECT DocumentNode
     , Title
     , FileExtension
FROM Production.Document
WHERE Title LIKE '%Assembly%';