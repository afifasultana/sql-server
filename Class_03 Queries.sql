USE Northwind 
GO
SELECT * FROM Customers 
GO
SELECT CustomerID,ContactName,City,Country FROM Customers
GO
SELECT TOP 10 CustomerID,ContactName,Country  FROM Customers 
GO
SELECT TOP 10 CustomerID,City,Phone FROM Customers ORDER BY CustomerID DESC
GO
SELECT CustomerID,ContactName,City FROM Customers
WHERE Country ='UK'
ORDER BY Country 
GO
SELECT CustomerID,CompanyName,City,[Address]  FROM Customers 
WHERE City ='Berlin'
ORDER BY City
GO
SELECT CustomerID,City,Country,[Address] FROM Customers
WHERE Country IN ('Germany','Mexico')
ORDER BY Country 
GO
SELECT CustomerID,City,PostalCode,Country FROM Customers
WHERE Country LIKE'B%'
ORDER BY Country 
GO
SELECT CustomerID,City,PostalCode,Country FROM Customers
WHERE Country LIKE'%K'
ORDER BY Country 
GO
SELECT CustomerID,City,PostalCode,Country FROM Customers
WHERE Country LIKE'%A%'
ORDER BY Country 
GO
USE Northwind 
GO
SELECT DISTINCT Country FROM Customers 
GO
SELECT City+' _ '+Country AS 'CC' FROM Customers 
GO
SELECT ProductID,SUM(UnitPrice*Quantity) 'Price' FROM [Order Details] 
GROUP BY ProductID 
HAVING ProductID =11
SELECT ProductID,SUM(UnitPrice*Quantity) FROM [Order Details] 
GROUP BY ProductID
GO

