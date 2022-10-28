--create database 
	CREATE DATABASE class_05
	GO
	USE class_05 
	GO
--create table
CREATE TABLE trainee
(
	id CHAR (7) NOT NULL,
	[name] VARCHAR (20) NOT NULL,
	coures VARCHAR (40) NOT NULL, CONSTRAINT DF_course DEFAULT 'NA',
	[round] INT DEFAULT 53 
)
	GO
	SELECT * FROM trainee 
	GO
--insert data
	INSERT INTO trainee (id,[name],coures,[round]) VALUES ('1234561','Rakib','DDD',49)
	INSERT INTO trainee (id,[name],coures,[round]) VALUES ('1234562','Rita','JE',50)
	INSERT INTO trainee (id,[name],coures,[round]) VALUES ('1234563','jamal','WDPF',51)
	INSERT INTO trainee (id,[name],coures,[round]) VALUES ('1234564','jaima','NT',52)
	INSERT INTO trainee (id,[name],coures,[round]) VALUES ('1234565','Kaima','C#',52)
	INSERT INTO trainee (id,[name],coures,[round]) VALUES ('1234565','Kaima','C#',53)
	GO
	INSERT INTO trainee (id,[name],coures) VALUES ('1234568','Tina','C#')
	GO


EXEC sp_help 'trainee'
GO
USE class_05 
GO
EXEC sp_helpconstraint 'product'
GO
--check constraint

DROP TABLE product
GO

CREATE TABLE product
(
	id CHAR (5) NOT NULL CHECK (id like 'A-[0-9][0-9][0-9]'),
	[name] VARCHAR (15) NOT NULL,
	price MONEY NOT NULL CHECK (price>0)
)
GO

	INSERT INTO product (id,[name],price) VALUES ('A-001','Keybord',500)
GO

SELECT * FROM product
GO
USE class_05
GO
CREATE TABLE machine_log
(
	[machine-code] CHAR (6) NOT NULL,
	[aquire-date] DATE NOT NULL,
	[release-date] DATE NOT NULL,
	CHECK([release-date]>[aquire-date])
)
GO
INSERT INTO machine_log([machine-code],[aquire-date],[release-date]) VALUES ('12','5-10-2020','10-12-2020')
GO
SELECT * FROM machine_log 
GO
--Primary key constraint
CREATE TABLE trainee_1
(
traineeId CHAR (5) PRIMARY KEY,
traineeName VARCHAR (10) NOT NULL,
email VARCHAR (15)
)
GO
SELECT * FROM trainee_1 
GO
EXEC sp_helpconstraint 'trainee_1'
GO
INSERT INTO trainee_1 (traineeId,traineeName,email) VALUES ('01234','Zaima','ja@gmail.com')
GO