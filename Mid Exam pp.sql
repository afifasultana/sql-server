USE Northwind 
GO
SELECT * FROM Customers 
GO
--Q1
SELECT CustomerID,CompanyName,Country FROM Customers 
WHERE Country IN ('USA','UK','Germany')
ORDER BY Country DESC
GO
--Q2
SELECT CustomerID AS 'Customer code',CompanyName AS'Company',Country AS 'Origin' FROM Customers 
GO
--Q3
SELECT*FROM Orders WHERE OrderDate BETWEEN'01-01-1997'AND'12-31-2000'
GO
--Q4
SELECT * FROM Customers WHERE CompanyName LIKE'A%'
GO
--Q5
SELECT TOP 3 * FROM  Orders ORDER BY OrderID DESC
GO
--Q6
SELECT TOP 3 * FROM ORDERS ORDER BY OrderID ASC
GO
--Q7
SELECT C. CustomerID, C.CompanyName, O.OrderID, O.OrderDate FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID 
GO
--Q8
SELECT c.customerID, c.CompanyName ,o. OrderID, o.OrderDate FROM Orders o
LEFT OUTER JOIN Customers c ON o.CustomerID =c.CustomerID 
GO
--09
SELECT * FROM Customers 
WHERE City IN(SELECT DISTINCT City From Employees )
GO
--10
SELECT COUNT(*)'NO of row' FROM Customers WHERE Country='USA'
GO
