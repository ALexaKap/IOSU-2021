-- Найти количество разнообразных должностей из таблицы HumanResources.Employee.
SELECT COUNT(DISTINCT JobTitle) AS Count_Job
FROM HumanResources.Employee;