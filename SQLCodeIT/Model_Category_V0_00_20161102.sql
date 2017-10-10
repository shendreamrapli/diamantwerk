--Creat Table Model_Category **** Author: Bahar Youssefi **** Date 02.12.2016

USE BachlerArbeit
go
-- Creat the table
create table Model_Category(

	Model_ID int NOT NULL PRIMARY KEY,
	Name nvarchar (255) NULL
);
	

select * from Model_Category
