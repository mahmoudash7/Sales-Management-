-- Cleansed DIM_Customer Table --

SELECT 
	c.customerKey AS CustomerKey,
	c.FirstName AS [First Name],
	c.LastName AS [Last Name],
	c.FirstName + ' ' + LastName AS [Full Name],
	-- Combined First and Last Name in one column
	CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
	c.DateFirstPurchase,
	g.City AS [Customer City]
FROM dbo.DimCustomer AS c
	LEFT JOIN dbo.DimGeography AS g 
	ON g.GeographyKey = c.GeographyKey
ORDER BY
CustomerKey ASC