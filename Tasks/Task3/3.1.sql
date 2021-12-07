-- Показать дни рождения (DateBirth) и поля PersonType, FirstName, LastName из таблиц Person.Person, Person.Employee.
SELECT p.PersonType
	, p.FirstName
	, p.LastName
	, h.BirthDate
FROM Person.Person AS p
INNER JOIN HumanResources.Employee AS h
ON p.BusinessEntityID = h.BusinessEntityID;