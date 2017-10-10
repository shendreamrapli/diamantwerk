--Creat Table Information **** Author: Bahar Youssefi **** Date 02.12.2016

USE BachlerArbeit
go
-- Creat the table Information
USE BachlerArbeit
go

create table Information_Of_HW(
	InfoID int NOT NULL PRIMARY KEY,
	Serialnumber nvarchar (255) NULL,
	IPAddress float NULL,
	MAC
	
	nvarchar(255)
	
	Prod_ID int NOT NULL PRIMARY KEY,
	Model_ID int NOT NULL,	--	Create the FK like other indexes
	VendID int NOT NULL,	--	Create the FK like other indexes
	-- CONSTRAINT 'the name of table which the FK comes from'_'the name of foreign key'_fk
	CONSTRAINT Model_Category_Model_ID_fk	-- 'Model_Category': this is the name of table which the FK comes from, 'Model_ID_fk': what we named the key 'Model_ID_fk', and that it's a foreign key(FK)
	FOREIGN KEY (Model_ID)	-- what ever we write in (), will become the name of FK
	REFERENCES Model_Category (Model_ID),	-- 'Model_Category' Specifies where the FK comes from, 
	--(Model_ID) is what it is called in other table
	CONSTRAINT Vendor_VendID_fk 
	FOREIGN KEY (VendID)
	REFERENCES Vendor(VendID)

);
