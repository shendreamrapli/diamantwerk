--Creat Table MAnufacture **** Author: Bahar Youssefi **** Date 02.12.2016

USE BachlerArbeit
go
-- Creat the table
CREATE TABLE Vendor(
	VendID int identity (1,1) NOT NULL,
	VendorName   nvarchar (255) NULL,
	
);

--Insert Data 

select * from Location