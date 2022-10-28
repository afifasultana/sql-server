CREATE DATABASE relation
GO
USE relation 
GO
CREATE TABLE products_1
(
	productId INT PRIMARY KEY,
	productName VARCHAR (15) NOT NULL,
	unitprice MONEY NOT NULL
)
GO
INSERT INTO products_1 (productId,productName,unitprice) VALUES 
	(01,'Tab Napa20',50),
	(02,'Tab NX50',500),
	(03,'Tab RN100',7000)
GO
CREATE TABLE salesSummary
(
	id INT PRIMARY KEY IDENTITY,
	[date] DATE NOT NULL,
	quantity INT NOT NULL,
	productId INT REFERENCES products_1 (productId)
)
GO
INSERT INTO salesSummary ([date],quantity,productId) VALUES ('5-10-2020',250,1)
GO
SELECT * FROM salesSummary 
GO
	