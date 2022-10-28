--create database with file detailes
CREATE DATABASE sqlstore
--data file
ON
(
	name='sqlstore_1',
	filename='E:\SQL Server\sqlstore_1.mdf',
	size=2mb,
	filegrowth=10%
)
LOG ON
(
	name='sqlstorelog_1',
	filename='E:\SQL Server\sqlstorelog_1.ldf',
	size=3mb,
	filegrowth=1mb
)
GO
EXEC sp_helpdb 'sqlstore'
GO