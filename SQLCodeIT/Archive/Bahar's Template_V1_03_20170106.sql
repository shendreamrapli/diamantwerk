-- ================================================
-- Template generated FROM Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify VALUES for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- VALUES below.
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
	@Youssefi NVARCHAR(50) = NULL, 
	@Bahar NVARCHAR(50) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets FROM
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT @Youssefi, @Bahar
END
GO

-- ********************** Creat the table ProductNames *********************************
USE BachlerArbeit
GO

CREATE TABLE ProductNames(
	Prod_ID INT NOT NULL PRIMARY KEY,
	Model_ID INT NOT NULL,	--	Create the FK like other indexes
	VendID INT NOT NULL,	--	Create the FK like other indexes
	-- CONSTRAINT 'the name of table which the FK comes FROM'_'the name of foreign key'_fk
	CONSTRAINT ModelCategory_ModelID_fk	-- 'ModelCategory': this is the name of table which the FK comes FROM, 'Model_ID_fk': what we named the key 'Model_ID_fk', and that it's a foreign key(FK)
	FOREIGN KEY (Model_ID)	-- what ever we write in (), will become the name of FK
	REFERENCES ModelCategory (Model_ID),	-- 'ModelCategory' Specifies where the FK comes FROM, 
	--(Model_ID) is what it is called in other table
	CONSTRAINT Vendor_VendID_fk 
	FOREIGN KEY (VendID)
	REFERENCES [Vendor ] (VendID)	
);
SP_RENAME 'ProductNames.Model_ID ', 'Product_Model_ID' , 'COLUMN';
-- Add another column to the table:
ALTER TABLE ProductNames
ADD Name  NVARCHAR (255) NULL;
Select * from ProductNames

--*******insert data to ProductNames 
--?????????????????????
Select * from ProductNames
Select * from [Vendor ]
Select * from dbo.ModelCategory
Select * from dbo.PrinterAbrasives
Select * from dbo.AssetDataAbrasives
Select * from dbo.AssetDataAbrasivesMatch
Select * from dbo.AssetDataAbrasivesPrinter

-- ********************** Creat the table ModelCategory *********************************
-- Creat the table
CREATE TABLE ModelCategory(
	Model_ID INT identity(1,1),
	Name NVARCHAR (255) NULL
);
--insert data
INSERT INTO ModelCategory VALUES ('Computer')
INSERT INTO ModelCategory VALUES ('Printer')
INSERT INTO ModelCategory VALUES ('Software')
INSERT INTO ModelCategory VALUES ('FestNet')
INSERT INTO ModelCategory VALUES ('Mobile')
INSERT INTO ModelCategory VALUES ('Tablet')
INSERT INTO ModelCategory VALUES ('Server')
INSERT INTO ModelCategory VALUES ('Workstation')
INSERT INTO ModelCategory VALUES ('IndustryPC')
INSERT INTO ModelCategory VALUES ('Tiny')

-- ********************** Creat the table Vendor *********Date 02.12.2016***********
CREATE TABLE Vendor(
	VendID INT identity (1,1) NOT NULL,
	VendorName   nvarchar (255) NULL,
);
SELECT * FROM Vendor
--******************* Import Data to "dbo.Vendor " table *****************
-- ********************** Create a copy of a database table and place it in the new one *********************************
-- In order to keep the original table "dbo.PrinterAbrasives" I creat the copy of that 
USE BachlerArbeit 
GO
SELECT * INTO Test_PrinterAbrasives	
FROM PrinterAbrasives;
SELECT * FROM Test_PrinterAbrasives
SELECT * FROM dbo.PrinterAbrasives

-- ********************** Finde the Duplicated Manufacturer in PrinterAbrasives table  *********************************
SELECT Manufacturer, COUNT(*)
FROM PrinterAbrasives
GROUP BY Manufacturer
HAVING COUNT(*) >=1

-- DISTINCT Statement *******************************************
--By using the Distinct you can see the only Distinct (Different) valuses
SELECT DISTINCT Manufacturer
FROM dbo.PrinterAbrasives
--Insert the DISTINCT VALUES into the new table "Vendor" Table FROM "PrinterAbrasives" ***************
INSERT INTO [Vendor ]

-- ********************** Finde the Duplicated Manufacturer in AssetDataAbrasivesMatch table  *********************************
SELECT Manufacturer , COUNT(*)
FROM AssetDataAbrasivesMatch
GROUP BY Manufacturer
HAVING COUNT(*) >=1

-- duplicate DISTINCT Statement *******************************************
--By using the Distinct you can see the only Distinct (Different) valuses
SELECT DISTINCT Manufacturer
FROM dbo.AssetDataAbrasivesMatch

--Insert the DISTINCT VALUES into the new table "Vendor" Table ***************
INSERT INTO [Vendor] 
SELECT DISTINCT Manufacturer
FROM dbo.AssetDataAbrasivesMatch

-- ************* Finde the Duplicated Manufacturer in AssetDataAbrasivesPrinter table  *********************************
SELECT Manufacturer , COUNT(*)
FROM AssetDataAbrasivesPrinter
GROUP BY Manufacturer
HAVING COUNT(*) >=1

-- DISTINCT Statement *******************************************
--By using the Distinct you can see the only Distinct (Different) valuses
SELECT DISTINCT Manufacturer
FROM dbo.AssetDataAbrasivesPrinter

--Insert the DISTINCT VALUES FROM "AssetDataAbrasivesPrinter" table into the Backup table inorder to have just one FROM each value 
INSERT INTO dbo.BackupTable 
SELECT DISTINCT Manufacturer
FROM dbo.AssetDataAbrasivesPrinter

-- check for duplication of the BackupTable
SELECT BackupName , COUNT(*)
FROM dbo.BackupTable 
GROUP BY BackupName
HAVING COUNT(*) >= 1

-- insert the new data into Vendor table FROM backup table if NOT EXISTS!
INSERT INTO [Vendor ](VendorName)
SELECT BackupName
FROM dbo.BackupTable
WHERE NOT EXISTS(SELECT VendorName FROM [Vendor ] WHERE [Vendor ].VendorName = BackupTable.BackupName) 
DELETE  FROM BackupTable -- Delete data FROM before FROM here, to prevent duplication

-- ********************** Finde the Duplicated Manufacturer in SWListAbrasives table  *********************************
SELECT Manufacturer , COUNT(*)
FROM SWListAbrasives
GROUP BY Manufacturer
HAVING COUNT(*) >= 1

-- DISTINCT Statement *******************************************
--By using the Distinct you can see the only Distinct (Different) valuses
SELECT DISTINCT Manufacturer
FROM dbo.SWListAbrasives

--Insert the VALUES FROM "AssetDataAbrasivesPrinter" table into the Backup table***************
--copy DISTINCT VALUES in Backuptable inorder to have just one FROM each value
INSERT INTO BackupTable 
SELECT DISTINCT Manufacturer
FROM dbo.SWListAbrasives

DELETE FROM BackupTable
WHERE BackupName = NULL;

-- check for duplication of the BackupTable
SELECT BackupName , COUNT(*)
FROM dbo.BackupTable 
GROUP BY BackupName
HAVING COUNT(*) >= 1

-- insert the new datas into Vendor table FROM backup table if NOT EXIST!
INSERT INTO [Vendor ](VendorName)
SELECT BackupName
FROM dbo.BackupTable
WHERE NOT EXISTS(SELECT VendorName FROM [Vendor ] WHERE [Vendor ].VendorName = BackupTable.BackupName) 
-- Source for Line above :
--http://cc.davelozinski.com/sql/fastest-way-to-insert-new-records-where-one-doesnt-already-exist

DELETE  FROM BackupTable -- Delete data FROM before FROM here, to prevent duplication
SELECT * FROM BackupTable
--************************************ All data are imported to "Vendor" Table ****************
-- ********************** TEST,Finde the Duplicated Manufacturer in Vendor table  *********************************
SELECT VendorName, COUNT(*)
FROM [Vendor ]
GROUP BY VendorName
HAVING COUNT(*) >=1

SELECT * FROM [Vendor ]

--************** Creat Table Location **** Date 01.12.201*************
CREATE TABLE Location(
	LID INT IDENTITY (1,1) NOT NULL,
	LCity NVARCHAR (255) NULL,
	LCode   NVARCHAR  (255) NULL,
	LPlace   NVARCHAR  (255) NULL,
	Lcountry   NVARCHAR  (255) NULL,
	StandOrdID INT 
);

--************** Insert Data to Location table ******* Date 13.12.2016
SET IDENTITY_INSERT Location ON -- use SET IDENTITY_INSERT commant inorder to set the Identity_Insert On So we can insert the LID Manually 
--there was some gap in LID , so Ineeded to import them manually
INSERT INTO Location (LID,LCity, LCode, LPlace, Lcountry, StandOrdID)
SELECT   '1','Nordestedt' , 'DE0264', 'A78-Abrasives', 'Germany', '0' 
UNION all  -- with union we join the SELECT together!
SELECT   '2','Jena' , 'DE0675', 'A78-Abrasives', 'Germany', '4'
UNION all  -- with union we join the SELECT together!
SELECT   '3','Gerozhofer' , 'DE0127', 'A78-Abrasives', 'Germany' , '1'
UNION all  -- with union we join the SELECT together!
SELECT   '4','Herzogenrath' , 'NULL', 'A78-Abrasives', 'Germany', '3'
UNION all  -- with union we join the SELECT together!
SELECT   '5','Wesseling ' , 'DE0369', 'A78-Abrasives', 'Germany', '2'
SET IDENTITY_INSERT Location OFF -- turn it off after you insert the value, FROM now on we need the auto generated LID number

SELECT * FROM Location

-- ********************** Creat the table BackupTable *********************************
CREATE TABLE BackupTable(
	BackupName NVARCHAR(255) NULL UNIQUE
);

--************************* Creat the table DepartmentNames*************************
CREATE TABLE DepartmentNames(
	DepID INT NOT NULL PRIMARY KEY,
	DepName NVARCHAR (255) NULL ,
	LID INT NULL ,	--	Create the FK like other indexes
	CONSTRAINT Location_LID_fk	-- 'Location': this is the name of table which the FK comes FROM,'LID_FK': what we named the key 'LID_FK', and that it's a foreign key(FK)
	FOREIGN KEY (LID)	-- what ever we write in (), will become the name of FK
	REFERENCES Location (LID),	-- 'Location' Specifies where the FK comes FROM, (LID) is what it is called in other table
);
--insert data to DepartmentNames
INSERT INTO DepartmentNames (DepID, DepName) VALUES (1, 'Einkauf');
INSERT INTO DepartmentNames (DepID, DepName) VALUES (2,'Buchhaltung');
INSERT INTO DepartmentNames (DepID, DepName) VALUES (3, 'Controling');
INSERT INTO DepartmentNames (DepID, DepName) VALUES (4,'Personal');
INSERT INTO DepartmentNames (DepID, DepName) VALUES (5,'IT');

SELECT * FROM DepartmentNames
 
--********************** Creat table Department ******************
CREATE TABLE Department(
	ID INT IDENTITY (1,1),
	LID INT NULL ,		--	Create the FK like other indexes
	DepID INT NULL ,	--	Create the FK like other indexes
	
	CONSTRAINT Location_LID_fk	-- 'Location': this is the name of table which the FK comes FROM,'LID_FK': what we named the key 'LID_FK', and that it's a foreign key(FK)
	FOREIGN KEY (LID)	-- what ever we write in (), will become the name of FK
	REFERENCES Location (LID),	-- 'Location' Specifies where the FK comes FROM, (LID) is what it is called in other table
	
	CONSTRAINT DepartmentNames_DepID_fk
	FOREIGN KEY (DepID)
	REFERENCES DepartmentNames (DepID)
		
);
--*******insert data to Department 05.01.2017

INSERT INTO Department 
SELECT DepID, LID
FROM DepartmentNames , Location

/*
SELECT DepID, LID
INTO TempTable 
FROM DepartmentNames , Location
select * from TempTable
*/
--drop table TempTable
/*
SELECT * FROM DepartmentNames 	
SELECT * FROM Location
SELECT * FROM Department 	
Order by DepNameID, LID
Select ID, Department.LID, Department.DepNameID,DepName,LCity
from Department,DepartmentNames,Location
*/

--//////////////////////////////// TEST ODE // Remove this later!!! 

/*SELECT   LCity, DepName
FROM Location,DepartmentNames  
ORDER BY DepName DESC

------Another code
SELECT LID , SUM(StandOrdID) FROM Location
--WHERE LID = 1
GROUP BY LID
------Another code
SELECT DepID, LID,DepName
FROM DepartmentNames as dep INNER JOIN Location as Lo
ON Lo.LID = 1 

--And dep.DepID = 1
----Another code
SELECT DepID FROM DepartmentNames
union all
SELECT LID FROM Location
*/

--************** data 03.01.2017
--reset the Identity value 
--delete  From Department
--DBCC CHECKIDENT(Department, RESEED, 0) 

--
-- ********************** Creat the table Printer_Computers_Informations *********************************
CREATE TABLE  Printer_Computers_Informations(
	InfoID INT IDENTITY(1,1),
	SerialNumber NVARCHAR (255) NULL,
	IPAddress FLOAT NULL,
	MACAddress NVARCHAR (255) NULL,
	Address NVARCHAR(255) NULL,
	SystemName NVARCHAR(255) NULL,
	Model_ID INT NULL,	--	Create the FK like other indexes
	CONSTRAINT ModelCategory_Model_ID_fk	-- 'ModelCategory': this is the name of table which the FK comes FROM,
	--'ModelID_fk': what we named the key 'ModelID_fk', and that it's a foreign key(FK)
	FOREIGN KEY (Model_ID)	-- what ever we write in (), will become the name of FK
	REFERENCES ModelCategory (Model_ID),	-- 'ModelCategory' Specifies where the FK comes FROM, (ModelID) is what it is called in other table		
);

select * from Printer_Computers_Informations
SP_RENAME 'Printer_Computers_Informations.Model_ID ', 'Information_Model_ID' , 'COLUMN';
--************** data 13.12.2016
-- after deleting and importing data twice the idedntity numberes (InfoID) starts FROM 1430! I want to reset that VALUES
--So first I delete all teh rows FROM table "Printer_Computers_Informations"
DELETE FROM Printer_Computers_Informations -- here after deleting don't assume it is ganna reset VALUES FROM identity culomn
--By using the DBCC command we can reset the identity value
-- CODE : DBCC CHECKIDENT(Tablename, RESEED, 0)
--DBCC CHECKIDENT(Printer_Computers_Informations, RESEED, 0)


--******* insert data to Printer_Computers_Informations 
SELECT * FROM Printer_Computers_Informations
SELECT * FROM PrinterAbrasives
--Copy information of  printers FROM PrinterAbrasives table
INSERT INTO dbo.Printer_Computers_Informations (SerialNumber,IPAddress,MACAddress,Address,SystemName)
SELECT Serialnumber,IPAddress,MACAddress,Address,Systemname
FROM dbo.PrinterAbrasives
--*************
-- To see which rows has NULL Model_ID
SELECT Printer_Computers_Informations.InfoID, Information_Model_ID
FROM Printer_Computers_Informations
WHERE Printer_Computers_Informations.Information_Model_ID is NULL;

-- Set Information_Model_ID of all tuples to  Model_Id Of Printer. which is 13
SELECT * FROM ModelCategory -- to find out the Model_ID

UPDATE Printer_Computers_Informations
SET Information_Model_ID = 13
WHERE Printer_Computers_Informations.Information_Model_ID is NULL;

--********************************
--Copy information of  printers FROM  table dbo.AssetDataAbrasivesMatch
SELECT * FROM Printer_Computers_Informations
SELECT * FROM AssetDataAbrasivesMatch

INSERT INTO dbo.Printer_Computers_Informations (SerialNumber)
SELECT [SerialNumber]
FROM dbo.AssetDataAbrasivesMatch

-- To see which rows has NULL Model_ID
SELECT Printer_Computers_Informations.InfoID, Information_Model_ID
FROM Printer_Computers_Informations
WHERE Printer_Computers_Informations.Information_Model_ID is NULL;

-- Set Model_ID of all tuples to  Model_Id Of Computer. which is 12
SELECT * FROM ModelCategory -- to find out the Model_ID
UPDATE Printer_Computers_Informations
SET Information_Model_ID = 12
WHERE Printer_Computers_Informations.Information_Model_ID is NULL;

--********************************
--Copy information of  printers FROM  table dbo.AssetDataAbrasivesPrinter
SELECT * FROM Printer_Computers_Informations
SELECT * FROM AssetDataAbrasivesPrinter
--there was some NULL Rows here, by the following roe we can delete those!
DELETE FROM AssetDataAbrasivesPrinter
Where AssetDataAbrasivesPrinter.AssetTag  is null AND AssetDataAbrasivesPrinter.ModelCategory is null

INSERT INTO dbo.Printer_Computers_Informations (SerialNumber)
SELECT SerialNumber
FROM AssetDataAbrasivesPrinter

-- To see which rows has NULL Model_ID
SELECT Printer_Computers_Informations.InfoID, Information_Model_ID
FROM Printer_Computers_Informations
WHERE Printer_Computers_Informations.Information_Model_ID is NULL;

-- Set Model_ID of all tuples to  Model_Id Of Computer. which is 13
UPDATE Printer_Computers_Informations
SET Information_Model_ID = 13
WHERE Printer_Computers_Informations.Information_Model_ID is NULL;

-- To see which rows has  Model_ID = 12
SELECT Printer_Computers_Informations.InfoID, Information_Model_ID
FROM Printer_Computers_Informations
WHERE Printer_Computers_Informations.Information_Model_ID = 12 ;

-- To see which rows has  Model_ID = 13
SELECT Printer_Computers_Informations.InfoID, Information_Model_ID
FROM Printer_Computers_Informations
WHERE Printer_Computers_Informations.Information_Model_ID = 13 ;

-- To retrive the last generated column we use one of the following columns
SELECT SCOPE_IDENTITY()	-- it showes 
SELECT @@IDENTITY

-- ********************** Finde the Duplicated MACAddress in Printer_Computers_Informations table  *********************************
SELECT MACAddress, COUNT(*)
FROM Printer_Computers_Informations
GROUP BY MACAddress
HAVING COUNT(*) >=1
--******
SELECT DISTINCT (MACAddress) FROM Printer_Computers_Informations

--************************* Creat the table Version.*********Date 13.12.2016****************
CREATE TABLE Version(
	VersionID INT IDENTITY (1,1),
	MajorVersion NVARCHAR (255) NULL,
	VersionNumber  NVARCHAR (255) NULL,
	ProductEdition  NVARCHAR (255) NULL,
	VendorID INT NULL ,	--	Create the FK like other indexes From "Vendor" Table
	CONSTRAINT Vendor_VendorID_fk	-- 'Vendor': this is the name of table which the FK comes FROM,
	--'VendID_fk': what we named the key 'LID_FK', and that it's a foreign key(FK)
	FOREIGN KEY (VendorID)	-- what ever we write in (), will become the name of FK
	REFERENCES [Vendor ] (VendID),	-- 'Vendor' Specifies where the FK comes FROM, (VendorID) is what it is called in other table
);
SELECT * FROM dbo.Version
SELECT * FROM dbo.[Vendor ]
SELECT * FROM dbo.SWListAbrasives
ORDER BY ProductName DESC

--************** IMPORT DATA to Version table ************** 05.01.2017***************
--?????????????? Not sure if this is correct !!!!!!!!!!!!!!!!!!!!!!!!!!
--DELETE From Version
--************** data 06.01.2017
--reset the Identity value 
delete  From Version
DBCC CHECKIDENT(Version, RESEED, 0) 

INSERT INTO Version
SELECT  MajorVersion, VersionNumber,ProductEdition , VendID
FROM SWListAbrasives as SW  left JOIN Vendor as VN
ON SW.[Vendor - Manufacturer] = VN.VendorName
ORDER BY VendID ASC
--//////////////////////// TEST 
SELECT * FROM Vendor
JOIN  SWListAbrasives
	WHERE SWListAbrasives.[Vendor - Manufacturer] = VN.VendorName
	GIVING Temp
PROJECT Temp OVER (VendorName, VersionNumber,ProductEdition , VendID)
	GIVING Answer



-- ************** Finde the Duplicated  in  table  *****************
SELECT DISTINCT MajorVersion, VersionNumber,ProductEdition , VendorID
FROM Version 
ORDER BY MajorVersion, VersionNumber, ProductEdition, VendorID ASC

Select * from Vendor


SELECT * FROM dbo.Version
ORDER BY VendorID ASC
--SELECT VendID , VendorName ,MajorVersion, VersionNumber,ProductEdition  
--FROM SWListAbrasives , Vendor 
--************************* Creat the table Currency*********Date 13.12.2016****************
CREATE TABLE Currency (
	CurrencyID INT IDENTITY (1,1),
	Currency NVARCHAR (255) NULL,
);
--insert values in Currency table
INSERT INTO Currency VALUES ('Euro'),('Dollar')

--************************* Creat the table Price.*********Date 13.12.2016****************
CREATE TABLE Price(
	PriceID INT IDENTITY (1,1),
	Cost NVARCHAR (255) NULL,
	CostCenter NVARCHAR (255) NULL,
	ModelIDOfCategory INT NULL , 	--	Create the FK like other indexes From "ModelCategory" Table
	Currency_ID_fk INT NULL ,	--	Create the FK like other indexes From "Currency" Table
	
	CONSTRAINT ModelCategory_ModelIDOfCategory	-- 'ModelCategory': this is the name of table which the FK comes FROM,
	--'Model_ID_fk': what we named the key 'Model_ID_fk', and that it's a foreign key(FK)
	FOREIGN KEY (ModelIDOfCategory)	-- what ever we write in (), will become the name of FK
	REFERENCES ModelCategory(Model_ID),	-- 'ModelCategory' Specifies where the FK comes FROM,(Model_ID) is what it is called in other table

	CONSTRAINT Currency_Currency_ID	-- 'Currency': this is the name of table which the FK comes FROM,
	--'CurrencyID_fk': what we named the key 'CurrencyID_fk', and that it's a foreign key(FK)
	FOREIGN KEY (Currency_ID_fk)	-- what ever we write in (), will become the name of FK
	REFERENCES Currency (CurrencyID),	-- 'Currency' Specifies where the FK comes FROM, (CurrencyID) is what it is called in other table
);

--  The syntax to rename a column in an existing table in SQL Server (Transact-SQL) is:
-- sp_rename 'table_name.old_column_name', 'new_column_name', 'COLUMN';
-- Source : https://www.techonthenet.com/sql_server/tables/alter_table.php
SP_RENAME 'Price.CurrencyID ', 'Price_CurrencyID' , 'COLUMN';
SP_RENAME 'Price.ModelIDOfCategory ', 'Price_Model_ID' , 'COLUMN';

--************** IMPORT DATA to Price table
--?????????????? 
SELECT * FROM dbo.Price

--************************* Creat the table Asset.*********Date 13.12.2016****************
CREATE TABLE Asset(
	AssetID INT IDENTITY (1,1),
	AssetTag NVARCHAR (255) NULL,
	Liste  NVARCHAR (255) NULL,
	ConfigurationItem NVARCHAR (255) NULL,
	
	Model_ID INT NULL , 	--	Create the FK like other indexes From "ModelCategory" Table
	CONSTRAINT ModelCategory_Model_ID	-- 'ModelCategory': this is the name of table which the FK comes FROM,
	--'Model_ID_fk': what we named the key 'Model_ID_fk', and that it's a foreign key(FK)
	FOREIGN KEY (Model_ID)	-- what ever we write in (), will become the name of FK
	REFERENCES ModelCategory(Model_ID),	-- 'ModelCategory' Specifies where the FK comes FROM,(Model_ID) is what it is called in other table
);
SP_RENAME 'Asset.FK_Model_ID ', 'Asset_Model_ID' , 'COLUMN';

--If we then wanted to enable the foreign key, we could execute the following command:
 -- Enable the constraint
 --ALTER TABLE  Asset
 --WITH CHECK CHECK CONSTRAINT fk_Model_ID
 --GO
 
--ALTER TABLE Asset
--CHECK CONSTRAINT fk_Model_ID;


--************** IMPORT DATA to Version table
--?????????????? 
SELECT * FROM dbo.Asset

--************************* Creat the table OfficeOrIndustry.*********Date 13.12.2016****************
CREATE TABLE OfficeOrIndustry(
	ID INT IDENTITY (1,1),
	NAme NVARCHAR (255) NULL,
);
--´Insert Values
INSERT INTO OfficeOrIndustry VALUES ('Office'), ('Industry')

--************************* Creat the table AssetDataAbrasives.*********Date 13.12.2016****************
CREATE TABLE AssetDataAbrasives(
	ADAID INT IDENTITY (1,1),
	assetTag NVARCHAR NOT NULL , 
	Substate NVARCHAR (255) NULL,
	Stockroom NVARCHAR (255) NULL,
	Usage NVARCHAR (255) NULL,
	BusinessEntity NVARCHAR (255) NULL,
	Company NVARCHAR (255) NULL,
	AssignedTo NVARCHAR (255) NULL,
	LastLogon NVARCHAR (255) NULL,
	Beschreibung NVARCHAR (255) NULL,
	OfficeCommunicationsServerAddress NVARCHAR (255) NULL,
	Assigned NVARCHAR (255) NULL,
	Due NVARCHAR (255) NULL,
	DueIn NVARCHAR (255) NULL,
	Installed NVARCHAR (255) NULL,
	Retireddate NVARCHAR (255) NULL,
	Ordered NVARCHAR (255) NULL,
	PONumber NVARCHAR (255) NULL,
	Purchased NVARCHAR (255) NULL,
	WarrantyExpiration NVARCHAR (255) NULL,
	LeaseContract NVARCHAR (255) NULL,
	ManagedBy NVARCHAR (255) NULL,
	OwnedBy NVARCHAR (255) NULL,
	Parent NVARCHAR (255) NULL,
	Comments NVARCHAR (255) NULL,
	Owner NVARCHAR (255) NULL,
	HistoricalEZV NVARCHAR (255) NULL,
	DepreciationEffectiveEate NVARCHAR (255) NULL,
	OutsideTheNetwork NVARCHAR (255) NULL,
	Prüfkommentar NVARCHAR (255) NULL,
	GLAccount NVARCHAR (255) NULL,
	
	ADA_OfficeOrInd_IDINTNULL,	--	Create the FK like other indexes From "OfficeOrIndustry" Table
	CONSTRAINT OfficeOrIndustry_ADA_OfficeOrInd_ID	-- 'OfficeOrIndustry': this is the name of table which the FK comes FROM,
	--'ADA_OfficeOrInd_ID': what we named the key 'Model_ID_fk', and that it's a foreign key(FK)
	FOREIGN KEY (ADA_OfficeOrInd_ID)	-- what ever we write in (), will become the name of FK
	REFERENCES OfficeOrIndustry (ID),	-- 'OfficeOrIndustry' Specifies where the FK comes FROM,(ID) is what it is called in other table
); 

--************** IMPORT DATA to AssetDataAbrasives table
--?????????????? 
select * from dbo.AssetDataAbrasives


--************************* Creat the table Status.*********Date 13.12.2016****************
CREATE TABLE Status(
	StIDINTIDENTITY (1,1),
	StatusName NVARCHAR (255) NULL,
	PRIMARY KEY (StID),
);
-- Inser Values into "Status" Table
INSERT INTO Status Values ('Ready'), ('Error'), ('NoResponse')

--************************* Creat the table PrinterInfo.*********Date 13.12.2016****************
CREATE TABLE PrinterInfo(
	PrinterInfoID INT IDENTITY (1,1),
	RicohApp NVARCHAR (255) NULL,
	RemoteConnector NVARCHAR (255) NULL,
	PRIMARY KEY (PrinterInfoID),
	
	PrinterInfo_StID INT NULL,	--	Create the FK like other indexes From "dbo.Status" Table
	CONSTRAINT Status_PrinterInfo_StID_fk	-- 'Status': this is the name of table which the FK comes FROM,
	--'PrinterInfo_StID_fk': what we named the key 'PrinterInfo_StID_fk', and that it's a foreign key(FK)
	FOREIGN KEY (PrinterInfo_StID)	-- what ever we write in (), will become the name of FK
	REFERENCES Status(StID),	-- 'Status' Specifies where the FK comes FROM,(StID) is what it is called in other table
	
	PrinterInfo_InfoIDINTNULL,	--	Create the FK like other indexes From "Printer_Computers_Informations" Table
	CONSTRAINT Printer_Computers_Informations_PrinterInfo_InfoID	-- 'Printer_Computers_Informations': this is the name of table which the FK comes FROM,
	--'PrinterInfo_InfoID': what we named the key 'PrinterInfo_StID_fk', and that it's a foreign key(FK)
	FOREIGN KEY (PrinterInfo_InfoID)	-- what ever we write in (), will become the name of FK
	REFERENCES Printer_Computers_Informations(InfoID),	-- 'Printer_Computers_Informations' Specifies where the FK comes FROM,(InfoID) is what it is called in other table
	
	PrinterInfo_Model_IDINTNULL,	--	Create the FK like other indexes From "dbo.Status" Table
	CONSTRAINT ModelCategory_PrinterInfo_Model_ID_FK	-- 'ModelCategory_': this is the name of table which the FK comes FROM,
	--'PrinterInfo_Model_ID_FK': what we named the key 'PrinterInfo_StID_fk', and that it's a foreign key(FK)
	FOREIGN KEY (PrinterInfo_Model_ID)	-- what ever we write in (), will become the name of FK
	REFERENCES ModelCategory(Model_ID),	-- 'ModelCategory' Specifies where the FK comes FROM,(Model_ID) is what it is called in other table
);
--************** IMPORT DATA to PrinterInfo table
--?????????????? 
Select * from PrinterInfo