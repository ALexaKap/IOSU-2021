-- Показать поле Measurement, так, чтобы, если значение в поле Style известно, то показать его, а иначе, показать значение в поле Weight. Если и в поле Weight значение неизвестно, то вывести значение 'UNKNOWN'

SELECT Style
     , [Weight]
	, COALESCE(Style, CAST([Weight] AS VARCHAR(10)), 'UNKNOWN') AS Measurment
FROM Production.Product;
