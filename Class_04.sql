CREATE DATABASE Class_04
GO
USE Class_04
GO
--create table
CREATE TABLE contacts
(
	id INT,
	[name] VARCHAR(30) 
)
GO
SELECT * FROM contacts
GO
EXEC sp_help contacts
GO
INSERT INTO contacts (id,name)VALUES (2,'Raki')
GO
INSERT INTO contacts VALUES (3,'Habib')
GO
INSERT INTO contacts VALUES 
(4,'Fahim'),
(5,'Jala'),
(6,'kulsum')
GO
--Change column order
INSERT INTO contacts (name,id) VALUES ('karim',7)
GO
--Apply Nullability constraint
CREATE TABLE contract_1
(
	id INT NOT NULL,
	[name] VARCHAR(30)
)
GO
INSERT INTO contract_1 VALUES
	(1,'Hahim'),
	(2,'Jaila'),
	(3,'Zulsum')
GO
--Auto -generating unique data
CREATE TABLE contract_2
(
	id INT IDENTITY NOT NULL,
	[name]VARCHAR (20)
)
GO
SELECT * FROM contract_2
GO
EXEC sp_help 'contract_2'
GO
INSERT INTO contract_2 VALUES
	('zaila'),
	('Tina')
GO
USE Class_04
GO
--Insert explicit value in identity column
SET IDENTITY_INSERT contract_2 ON
INSERT INTO contract_2(id,name) VALUES (500,'Shanto')
SET IDENTITY_INSERT contract_2 OFF
GO
SET IDENTITY_INSERT contract_2 ON
INSERT INTO contract_2(id,name) VALUES (3,'Shanto')
SET IDENTITY_INSERT contract_2 OFF
GO
INSERT INTO contract_2(name) VALUES ('Shanto')
GO
--uqique Identifier
CREATE TABLE product 
(
	id UNIQUEIDENTIFIER NOT NULL,
	[name]VARCHAR (30) NOT NULL
)
GO
EXEC sp_help 'product'
GO
INSERT INTO product(id,name) VALUES (NEWID(),'MOUSE')
INSERT INTO product(id,name) VALUES (NEWID(),'Keybord')
INSERT INTO product(id,name) VALUES (NEWID(),'Desktop')
GO
SELECT * FROM product 
GO
--Altering Table
--Changing dataType ordize
CREATE TABLE books
(
	id INT NOT NULL,
	[name]VARCHAR (20),
	author VARCHAR (40),
	price MONEY NULL
)
GO
INSERT INTO books VALUES(1,'SQL','Murach','2000.00')
INSERT INTO books VALUES(2,'Java','Murach','2000.00')
GO
SELECT * FROM books 
GO
--Alter 
ALTER TABLE books
ALTER COLUMN name VARCHAR (25) NOT NULL
GO
ALTER TABLE books
ALTER  COLUMN id BIGINT NOT NULL
GO
--Adding column
ALTER TABLE books
ADD publishYer INT NULL
GO
--Adding colun with Defult value
ALTER TABLE books
ADD edition VARCHAR(30) NOT NULL DEFAULT'NA'
GO
INSERT INTO books VALUES (3,'IKIGAI','Sigma',1200.00,2011,'5th')
INSERT INTO books VALUES (4,'STORY','Book',200.00,2011,'5th')
GO
--Droping a column from a table
ALTER TABLE books
DROP COLUMN edition
GO
--Computed column
CREATE TABLE products_1
(
	id INT IDENTITY NOT NULL,
	[name] VARCHAR (30) NOT NULL,
	regularprice MONEY NOT NULL,
	discount DECIMAL(4,2) NOT NULL,
	currentPrice AS regularprice*(1-discount)--computed column
)
GO
SELECT * FROM products_1 
GO
INSERT INTO products_1 VALUES ('Kurti',4080.00,.20)
GO



