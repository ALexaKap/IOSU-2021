-- Из таблицы HumanResources.Department показать поля DepartmentID, Name, GroupName. Все значения поля Name равные 'Finance' («финансы») заменить на NULL, а затем все NULL этого же поля заменить на 'Other' («другое»). Получившиеся поле вынести отдельно и назвать OtherName

SELECT DepartmentID
	, [Name] 
	, COALESCE(NULLIF([Name], 'Finance'), 'Other') AS OtherName
	, GroupName
FROM HumanResources.Department;
