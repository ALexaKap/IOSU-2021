-- Вывести данные о работниках, которые старше 50 лет из таблицы HumanResources.Employee
SELECT *
FROM HumanResources.Employee
WHERE DATEDIFF(YEAR, BirthDate, GETDATE()) > 50;

SELECT DATEDIFF(YEAR, BirthDate, GETDATE()) AS Age
FROM HumanResources.Employee;