--Creat Table Location **** Author: Bahar Youssefi **** Date 01.12.2016

USE BachlerArbeit
go
-- Creat the table
CREATE TABLE Location(
	LID int identity (1,1) NOT NULL,
	LCity   nvarchar (255) NULL,
	LCode   nvarchar  (255) NULL,
	LPlace   nvarchar  (255) NULL,
	Lcountry   nvarchar  (255) NULL,
	StandOrdID int 
);

--Insert Data 
INSERT INTO Location (LCity, LCode, LPlace, Lcountry, StandOrdID)
select   'Nordestedt' , 'DE0264', 'A78-Abrasives', 'Germany', '0' 
union all  -- with union we join the select together!
select   'Jena' , 'DE0675', 'A78-Abrasives', 'Germany', '4'
union all  -- with union we join the select together!
select   'Gerozhofer' , 'DE0127', 'A78-Abrasives', 'Germany' , '1'
union all  -- with union we join the select together!
select   'Herzogenrath' , 'NULL', 'A78-Abrasives', 'Germany', '3'
union all  -- with union we join the select together!
select   'Wesseling ' , 'DE0369', 'A78-Abrasives', 'Germany', '2'

select * from Location