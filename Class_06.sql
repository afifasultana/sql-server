CREATE DATABASE Class_06
GO
USE Class_06 
GO
CREATE TABLE products_1
(
	productId INT PRIMARY KEY,
	productName VARCHAR(30) NOT NULL,
	unitPrice MONEY NOT NULL
)
GO
CREATE TABLE salesSummary_1
(
	id INT PRIMARY KEY IDENTITY,
	[date] DATE NOT NULL,
	quantity INT NOT NULL,
	productId INT REFERENCES products_1(productId)
)
GO
INSERT INTO products_1 (productId,productName,unitPrice) VALUES
	(1,'Tab XN 50mg',1200.00),
	(2,'Tab RN 20mg',2200.00),
	(3,'Tab NA 1000mg',3200.00),
	(5,'Nexus 7',1600.00),
	(6,'Lenovo 5',45000.00)
GO
INSERT INTO salesSummary_1  VALUES
	('2015-10-25',45,2),
	('2020-12-20',500,5),
	('2021-05-2',400,6)
GO
SELECT * FROM products_1 
GO
SELECT * FROM salesSummary_1 
GO
USE Class_06
GO
SELECT  p.productId,p.productName,p.unitprice,s.date,s.quantity FROM products_1 p
INNER JOIN salesSummary_1 s ON p.productId=s.productId
ORDER BY s.date
GO
--LEFT OUTER JOIN
SELECT  p.productId,p.productName,p.unitprice,s.date,s.quantity FROM products_1 p
LEFT OUTER JOIN salesSummary_1 s ON p.productId=s.productId
ORDER BY s.date
GO
--Right outer join
SELECT  p.productId,p.productName,p.unitprice,s.date,s.quantity FROM products_1 p
 RIGHT OUTER JOIN salesSummary_1 s ON p.productId=s.productId
ORDER BY s.date
GO
--Full outer join
SELECT  p.productId,p.productName,p.unitprice,s.date,s.quantity FROM products_1 p
 FULL OUTER JOIN salesSummary_1 s ON p.productId=s.productId
ORDER BY s.date
GO
--cross join
SELECT  p.productId,p.productName,p.unitprice,s.date,s.quantity FROM products_1 p
CROSS JOIN salesSummary_1 s 
ORDER BY s.date
GO



