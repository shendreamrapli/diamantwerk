-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bahar Youssefi
-- Create date: December 2016 - April 2017
-- Description:	Codes for thesis
-- =============================================
CREATE PROCEDURE ProcedureName 
	-- Add the parameters for the stored procedure here
	@Youssefi nvarchar(50) = NULL, 
	@Bahar nvarchar(50) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT @Youssefi, @Bahar
END
GO
-- ********************** Creat the table Product_Names *********************************
USE BachlerArbeit
go

create table Product_Names(

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

select * from Product_Names
-- Add another column to the table:
	--ALTER TABLE table_name
	-- ADD column_name column-definition;
ALTER TABLE Product_Names
ADD Name  nvarchar (255) NULL;

-- ********************** Creat the table BackupTable *********************************
CREATE TABLE BackupTable(
	BackupName nvarchar(255) NULL UNIQUE
	
);
select * from BackupTable
-- ********************** Creat the table Product_Names *********************************












--******************* Import Data to "dbo.Vendor " table *****************

-- ********************** Create a copy of a database table and place it in the new one *********************************
-- In order to keep the original table "dbo.PrinterAbrasives" I creat the copy of that
use BachlerArbeit 
go
select * into Test_PrinterAbrasives	
from PrinterAbrasives;
select * from Test_PrinterAbrasives
select * from dbo.PrinterAbrasives

-- ********************** Finde the Duplicated Manufacturer in PrinterAbrasives table  *********************************
Select Manufacturer, COUNT(*)
From PrinterAbrasives
GROUP BY Manufacturer
HAVING COUNT(*) >=1

-- DISTINCT Statement *******************************************
--By using the Distinct you can see the only Distinct (Different) valuses
SELECT DISTINCT Manufacturer
From dbo.PrinterAbrasives
--Insert the DISTINCT Values into the new table "Vendor" Table from "PrinterAbrasives" ***************
INSERT INTO [Vendor ]
SELECT DISTINCT Manufacturer
FROM PrinterAbrasives

-- ********************** Finde the Duplicated Manufacturer in AssetDataAbrasivesMatch table  *********************************
Select Manufacturer , COUNT(*)
From AssetDataAbrasivesMatch
GROUP BY Manufacturer
HAVING COUNT(*) >=1

-- DISTINCT Statement *******************************************
--By using the Distinct you can see the only Distinct (Different) valuses
SELECT DISTINCT Manufacturer
From dbo.AssetDataAbrasivesMatch

--Insert the DISTINCT Values into the new table "Vendor" Table ***************
INSERT INTO [Vendor ] 
SELECT DISTINCT Manufacturer
FROM dbo.AssetDataAbrasivesMatch

-- ********************** Finde the Duplicated Manufacturer in AssetDataAbrasivesPrinter table  *********************************
Select Manufacturer , COUNT(*)
From AssetDataAbrasivesPrinter
GROUP BY Manufacturer
HAVING COUNT(*) >=1

-- DISTINCT Statement *******************************************
--By using the Distinct you can see the only Distinct (Different) valuses
SELECT DISTINCT Manufacturer
From dbo.AssetDataAbrasivesPrinter

--Insert the Values from "AssetDataAbrasivesPrinter" table into the Backup table***************
--copy DISTINCT values in Backuptable inorder to have just one from each value
INSERT INTO dbo.BackupTable 
SELECT DISTINCT Manufacturer
FROM dbo.AssetDataAbrasivesPrinter

-- check for duplication of the BackupTable
Select BackupName , COUNT(*)
From dbo.BackupTable 
GROUP BY BackupName
HAVING COUNT(*) >=1

-- insert the new datas into Vendor table from backup table if NOT EXIST!
INSERT INTO [Vendor ](VendorName)
SELECT BackupName
FROM dbo.BackupTable
WHERE NOT EXISTS(Select VendorName From [Vendor ] WHERE [Vendor ].VendorName = BackupTable.BackupName) 
DELETE  From BackupTable -- Delete data from before from here, to prevent duplication

-- ********************** Finde the Duplicated Manufacturer in SWListAbrasives table  *********************************
Select Manufacturer , COUNT(*)
From SWListAbrasives
GROUP BY Manufacturer
HAVING COUNT(*) >=1

-- DISTINCT Statement *******************************************
--By using the Distinct you can see the only Distinct (Different) valuses
SELECT DISTINCT Manufacturer
From dbo.SWListAbrasives

--Insert the Values from "AssetDataAbrasivesPrinter" table into the Backup table***************
--copy DISTINCT values in Backuptable inorder to have just one from each value
INSERT INTO BackupTable 
SELECT DISTINCT Manufacturer
FROM dbo.SWListAbrasives

DELETE from BackupTable
WHERE BackupName = NULL;


-- check for duplication of the BackupTable
Select BackupName , COUNT(*)
From dbo.BackupTable 
GROUP BY BackupName
HAVING COUNT(*) >=1

-- insert the new datas into Vendor table from backup table if NOT EXIST!
INSERT INTO [Vendor ](VendorName)
SELECT BackupName
FROM dbo.BackupTable
WHERE NOT EXISTS(Select VendorName From [Vendor ] WHERE [Vendor ].VendorName = BackupTable.BackupName) 



DELETE  From BackupTable -- Delete data from before from here, to prevent duplication
select * from BackupTable
--************************************ All data are imported to "Vendor" Table ****************
-- ********************** TEST,Finde the Duplicated Manufacturer in Vendor table  *********************************
Select VendorName, COUNT(*)
From [Vendor ]
GROUP BY VendorName
HAVING COUNT(*) >=1

--******************* Import Data to "dbo.Department" table *****************

Select * from Department