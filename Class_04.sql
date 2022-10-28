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