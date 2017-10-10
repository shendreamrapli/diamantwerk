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

--*******insert data to ProductNames **** 10.01.2017

-- ************** Finde the Duplicated Model in PrinterAbrasives table  *****************
--INSERT INTO BackupTable
Select Model, COUNT(*)
From dbo.OriginalPrinterAbrasives
GROUP BY Model
HAVING COUNT(*) >=1

Select * from ProductNames
-- INSERT DATA
INSERT INTO ProductNames VALUES ( '13','27','Aficio MP 2000' )
INSERT INTO ProductNames VALUES ( '13','27','Aficio MP 201' )
INSERT INTO ProductNames VALUES ( '13','27','Aficio MP 2852' )
INSERT INTO ProductNames VALUES ( '13','27','Aficio MP C2051' )
INSERT INTO ProductNames VALUES ( '13','27','Aficio MP C3002' )
INSERT INTO ProductNames VALUES ( '13','27','Aficio MP C305' )
INSERT INTO ProductNames VALUES ( '13','27','Aficio SP C242SF' )
INSERT INTO ProductNames VALUES ( '13','22','Brother MFC-5490CN' )
INSERT INTO ProductNames VALUES ( '13','26','C610' )
INSERT INTO ProductNames VALUES ( '13','26','C822' )
INSERT INTO ProductNames VALUES ( '13','23','Canon iPF820 1.10' ) 
INSERT INTO ProductNames VALUES ( '13','24','HP Color LaserJet 2605dtn' )
INSERT INTO ProductNames VALUES ( '13','24','hp color LaserJet 4600' )
INSERT INTO ProductNames VALUES ( '13','24','HP Color LaserJet CP3505' )
INSERT INTO ProductNames VALUES ( '13','24','HP Color LaserJet CP3525' )
INSERT INTO ProductNames VALUES ( '13','24','HP Color LaserJet CP4020 Series' )
INSERT INTO ProductNames VALUES ( '13','24','HP LaserJet 400 color M451dn' )
INSERT INTO ProductNames VALUES ( '13','24','HP LaserJet 400 M401dn' )
INSERT INTO ProductNames VALUES ( '13','24','HP LaserJet 4100 Series' )
INSERT INTO ProductNames VALUES ( '13','24','hp LaserJet 4200' )
INSERT INTO ProductNames VALUES ( '13','24','HP LaserJet 600 M601' )
INSERT INTO ProductNames VALUES ( '13','24','HP LaserJet P2055dn' )
INSERT INTO ProductNames VALUES ( '13','24','HP LaserJet Professional P1606dn' )
INSERT INTO ProductNames VALUES ( '13','27','MP C2003' )
INSERT INTO ProductNames VALUES ( '13','27','MP C4503' )
INSERT INTO ProductNames VALUES ( '13','24','Officejet 7000 E809a' )
INSERT INTO ProductNames VALUES ( '13','28','Samsung ML-4550' )
INSERT INTO ProductNames VALUES ( '13','27','SP C252SF' )
INSERT INTO ProductNames VALUES ( '13','25','T650' )
--************ insert from AssetDataAbrasivesMatch table to ProductNames
-- ************** Finde the Duplicated Model in AssetDataAbrasivesMatch table  *****************
--INSERT INTO BackupTable
Select Name, COUNT(*)
From dbo.ProductNames
GROUP BY Name
HAVING COUNT(*) >1
--Select * from BackupTable
Select * from dbo.AssetDataAbrasivesMatch
--delete from ProductNames

INSERT INTO ProductNames VALUES ('12','29','Dell' )
INSERT INTO ProductNames VALUES ('12','30','Industry M93-Tiny' )
INSERT INTO ProductNames VALUES ('12','30','Lenovo ThinkCentre M55e' )
--INSERT INTO ProductNames VALUES ('12','30','Lenovo ThinkCentre M55e' )
INSERT INTO ProductNames VALUES ('12','30','Lenovo ThinkCentre M58p' )
INSERT INTO ProductNames VALUES ('12','30','Lenovo ThinkCentre M72e Tiny' )
INSERT INTO ProductNames VALUES ('12','30','Lenovo ThinkCentre M81' )
INSERT INTO ProductNames VALUES ('12','30','Lenovo ThinkCentre M82' )
INSERT INTO ProductNames VALUES ('12','30','Lenovo ThinkCentre M900' )
INSERT INTO ProductNames VALUES ('12','30','Lenovo ThinkCentre M93p' )
INSERT INTO ProductNames VALUES ('12','30','Lenovo ThinkPad L412' )
INSERT INTO ProductNames VALUES ('12','30','Lenovo ThinkPad T420' )
INSERT INTO ProductNames VALUES ('12','30','Lenovo ThinkPad T430' )
INSERT INTO ProductNames VALUES ('12','30','Lenovo ThinkPad T440' )
INSERT INTO ProductNames VALUES ('12','30','Lenovo ThinkPad T450' )
INSERT INTO ProductNames VALUES ('12','30','Lenovo ThinkPad T460' )
INSERT INTO ProductNames VALUES ('12','30','Lenovo ThinkPad X201' )
INSERT INTO ProductNames VALUES ('12','30','Lenovo ThinkPad X220' )
INSERT INTO ProductNames VALUES ('12','30','Lenovo ThinkPad X230' )
INSERT INTO ProductNames VALUES ('12','30','Lenovo ThinkPad X240' )
INSERT INTO ProductNames VALUES ('12','30','Lenovo ThinkPad X250' )
INSERT INTO ProductNames VALUES ('12','30','Lenovo ThinkPad X260' )
INSERT INTO ProductNames VALUES ('12','30','Lenovo ThinkStation D20' )
INSERT INTO ProductNames VALUES ('12','30','Lenovo ThinkStation D30' )
INSERT INTO ProductNames VALUES ('12','30','Lenovo ThinkStation P500' )
INSERT INTO ProductNames VALUES ('12','30','M58P' )
INSERT INTO ProductNames VALUES ('12','30','M81' )
INSERT INTO ProductNames VALUES ('12','30','M93P' )
INSERT INTO ProductNames VALUES ('12','30','M93-TINY' )
INSERT INTO ProductNames VALUES ('12','29','OptiPlex GX260' )
INSERT INTO ProductNames VALUES ('12','29','OptiPlex GX270' )
INSERT INTO ProductNames VALUES ('12','29','Precision T3610' )
INSERT INTO ProductNames VALUES ('12','30','PRODUKTION' )
INSERT INTO ProductNames VALUES ('12','30','T420' )
INSERT INTO ProductNames VALUES ('12','30','T460' )
INSERT INTO ProductNames VALUES ('12','30','ThinkCentre M57' )
INSERT INTO ProductNames VALUES ('12','30','ThinkCentre M58p' )
INSERT INTO ProductNames VALUES ('12','30','ThinkCentre M72e Tiny' )
INSERT INTO ProductNames VALUES ('12','30','ThinkCentre M81' )
INSERT INTO ProductNames VALUES ('12','30','ThinkPad P50' )
INSERT INTO ProductNames VALUES ('12','30','ThinkPad T430' )
INSERT INTO ProductNames VALUES ('12','30','Thinkpad T440' )
INSERT INTO ProductNames VALUES ('12','30','ThinkPad X201' )
INSERT INTO ProductNames VALUES ('12','30','ThinkPad X240' )
INSERT INTO ProductNames VALUES ('12','30','ThinkStation D30' )
INSERT INTO ProductNames VALUES ('12','30','W540' )
INSERT INTO ProductNames VALUES ('12','30','X220' )

--************ insert from AssetDataAbrasivesPrinter table to ProductNames
-- ************** Finde the Duplicated Model in AssetDataAbrasivesPrinter table  *****************
/*
INSERT INTO BackupTable
Select Model, COUNT(*)
From dbo.AssetDataAbrasivesPrinter
GROUP BY Model
HAVING COUNT(*) >=1
*/
INSERT INTO ProductNames VALUES ('13','24','HP Color LaserJet 2605dtn' )
INSERT INTO ProductNames VALUES ('13','24','hp color LaserJet 4600' )
INSERT INTO ProductNames VALUES ('13','24','HP Color LaserJet CP3505' )
INSERT INTO ProductNames VALUES ('13','24','HP Officejet 7000 E809a' )

--************ insert from SWListAbrasives table to ProductNames
-- ************** Finde the Duplicated ProductName in SWListAbrasives table  *****************
/*
INSERT INTO BackupTable
Select ProductName, COUNT(*)
From dbo.SWListAbrasives
GROUP BY ProductName
HAVING COUNT(*) >=1
Select * from BackupTable
Select * from dbo.SWListAbrasives

*/
--Select * from dbo.ProductNames
/*
select ProductName, [Vendor - Manufacturer] 
from SWListAbrasives
order by ProductName
*/
/*
Select * from dbo.[Vendor ]
order by VendorName
SELECT  ProductName  , VendID,VendorName
from SWListAbrasives as sw left join [Vendor ] as vn
ON sw.[Vendor - Manufacturer] = vn.VendorName
order by ProductName
*/
INSERT INTO ProductNames VALUES ('14','76','1E NomadBranch' ) 
INSERT INTO ProductNames VALUES ('14','77','3Dconnexion 3DxSoftware' )
INSERT INTO ProductNames VALUES ('14','77','3Dconnexion 3DxWare' )
INSERT INTO ProductNames VALUES ('14','77','3Dconnexion Trainer' )
INSERT INTO ProductNames VALUES ('14','78','7Zip' )
INSERT INTO ProductNames VALUES ('14','79','ABBYY FineReader' )
INSERT INTO ProductNames VALUES ('14','141','AdminSwitch' )
INSERT INTO ProductNames VALUES ('14','80','Adobe Acrobat DC' )
INSERT INTO ProductNames VALUES ('14','80','Adobe Acrobat Professional' )
INSERT INTO ProductNames VALUES ('14','80','Adobe Acrobat Reader DC' )
INSERT INTO ProductNames VALUES ('14','80','Adobe AIR' )
INSERT INTO ProductNames VALUES ('14','80','Adobe Flash Player ActiveX' )
INSERT INTO ProductNames VALUES ('14','80','Adobe Flash Player NPAPI' )
INSERT INTO ProductNames VALUES ('14','80','Adobe Flash Player Plugin' )
INSERT INTO ProductNames VALUES ('14','80','Adobe Illustrator' )
INSERT INTO ProductNames VALUES ('14','80','Adobe InDesign' )
INSERT INTO ProductNames VALUES ('14','80','Adobe Photoshop' )
INSERT INTO ProductNames VALUES ('14','80','Adobe Photoshop Elements' )
INSERT INTO ProductNames VALUES ('14','80','Adobe Reader' ) 
INSERT INTO ProductNames VALUES ('14','85','AutoCAD LT' )
INSERT INTO ProductNames VALUES ('14','85','AutoCAD LT Language Pack' )
INSERT INTO ProductNames VALUES ('14','85','AutoCAD Mechanical' )
INSERT INTO ProductNames VALUES ('14','85','AutoCAD Mechanical Language Pack' )
INSERT INTO ProductNames VALUES ('14','85','Autodesk Design Review' )
INSERT INTO ProductNames VALUES ('14','85','Autodesk Inventor Content Center Libraries (Desktop Content)' )
INSERT INTO ProductNames VALUES ('14','85','Autodesk Inventor Fusion Language Pack' )
INSERT INTO ProductNames VALUES ('14','85','Autodesk Mechanical Desktop' )
INSERT INTO ProductNames VALUES ('14','85','Autodesk Vault (Client)' )
INSERT INTO ProductNames VALUES ('14','85','AutoSketch' )
INSERT INTO ProductNames VALUES ('14','86','Avery Wizard' )
INSERT INTO ProductNames VALUES ('14','138','BlackBerry Desktop Software' )
INSERT INTO ProductNames VALUES ('14','95','Dassault SolidWorks eDrawings' )
INSERT INTO ProductNames VALUES ('14','87','DesignPro' )
INSERT INTO ProductNames VALUES ('14','82','Dino-Lite EZ AM310 & Dino-Lite AM311 & Dino-Eye AM321' )
INSERT INTO ProductNames VALUES ('14','96','Dolby Advanced Audio' )
INSERT INTO ProductNames VALUES ('14','117','DriverTuner' )
INSERT INTO ProductNames VALUES ('14','85','DWG TrueView' )
INSERT INTO ProductNames VALUES ('14','143','DYMO Label' )
INSERT INTO ProductNames VALUES ('14','109','Easy2Sync' )
INSERT INTO ProductNames VALUES ('14','115','ElsterFormular' )
INSERT INTO ProductNames VALUES ('14','101','FARO LS' )
INSERT INTO ProductNames VALUES ('14','102','Firebird' )
INSERT INTO ProductNames VALUES ('14','103','Foxit Reader' )
INSERT INTO ProductNames VALUES ('14','107','Free DWG Viewer' )
INSERT INTO ProductNames VALUES ('14','99','Free YouTube To MP3 Converter' )
INSERT INTO ProductNames VALUES ('14','145','FreePDF' )
INSERT INTO ProductNames VALUES ('14','151','GIMP' )
INSERT INTO ProductNames VALUES ('14','105','Google Chrome' )
INSERT INTO ProductNames VALUES ('14','105','Google Earth' )
INSERT INTO ProductNames VALUES ('14','105','Google Picasa' )
INSERT INTO ProductNames VALUES ('14','105','Google Toolbar for Internet Explorer' )
INSERT INTO ProductNames VALUES ('14','106','Greenshot' )
INSERT INTO ProductNames VALUES ('14','159','Hardcopy' )
INSERT INTO ProductNames VALUES ('14','146','HiPath 3000 Manager' )
INSERT INTO ProductNames VALUES ('14','84','iCloud' )
INSERT INTO ProductNames VALUES ('14','88','Image Resizer for Windows' )
INSERT INTO ProductNames VALUES ('14','108','IrfanView' )
INSERT INTO ProductNames VALUES ('14','84','iTunes' )
INSERT INTO ProductNames VALUES ('14','110','IVI Shared Components' )
INSERT INTO ProductNames VALUES ('14','111','Ixia Performance Endpoint for Windows' )
INSERT INTO ProductNames VALUES ('14','132','Java Runtime Environment (32bit)' )
INSERT INTO ProductNames VALUES ('14','132','Java Runtime Environment (64bit)' )
INSERT INTO ProductNames VALUES ('14','97','KeePass Password Safe' )
INSERT INTO ProductNames VALUES ('14','113','Kofax VRS' )
INSERT INTO ProductNames VALUES ('14','116','Lenovo Solution Center' )
INSERT INTO ProductNames VALUES ('14','119','McAfee Agent' )
INSERT INTO ProductNames VALUES ('14','119','McAfee Endpoint Encryption' )
INSERT INTO ProductNames VALUES ('14','119','McAfee Host Intrusion Prevention' )
INSERT INTO ProductNames VALUES ('14','119','McAfee Policy Auditor Agent' )
INSERT INTO ProductNames VALUES ('14','119','McAfee VirusScan Enterprise' )
INSERT INTO ProductNames VALUES ('14','163','MicroCapture' )
--INSERT INTO [Vendor ] VALUES ('NULL')
Select Name, COUNT(*)
From dbo.ProductNames
GROUP BY Name
HAVING COUNT(*) >1

INSERT INTO ProductNames VALUES ('14','121','Microsoft .Net Framework' )
INSERT INTO ProductNames VALUES ('14','121','Microsoft Chart Controls for Microsoft .NET Framework' )
INSERT INTO ProductNames VALUES ('14','121','Microsoft Internet Explorer' )
INSERT INTO ProductNames VALUES ('14','121','Microsoft Lync Web App Plug-in' )
INSERT INTO ProductNames VALUES ('14','121','Microsoft Office Communicator' )
INSERT INTO ProductNames VALUES ('14','121','Microsoft Office Interactive Guide' )
INSERT INTO ProductNames VALUES ('14','121','Microsoft Office Language Pack (MUI)' )
INSERT INTO ProductNames VALUES ('14','121','Microsoft Office Professional' )
INSERT INTO ProductNames VALUES ('14','121','Microsoft Office Standard' )
INSERT INTO ProductNames VALUES ('14','121','Microsoft Outlook Personal Folders Backup' )
INSERT INTO ProductNames VALUES ('14','121','Microsoft Project Professional' )
INSERT INTO ProductNames VALUES ('14','121','Microsoft Project Standard' )
INSERT INTO ProductNames VALUES ('14','121','Microsoft ReportViewer Redistributable' )
INSERT INTO ProductNames VALUES ('14','121','Microsoft SharePoint Designer' )
INSERT INTO ProductNames VALUES ('14','121','Microsoft Silverlight' )
INSERT INTO ProductNames VALUES ('14','121','Microsoft SQL Server Express Edition' )
INSERT INTO ProductNames VALUES ('14','121','Microsoft SQL Server Management Studio' )
INSERT INTO ProductNames VALUES ('14','121','Microsoft SQL Server Management Studio Express' )
INSERT INTO ProductNames VALUES ('14','121','Microsoft System Center Configuration Manager Console' )
INSERT INTO ProductNames VALUES ('14','121','Microsoft Visio Interactive Guide' )
INSERT INTO ProductNames VALUES ('14','121','Microsoft Visio Premium' )
INSERT INTO ProductNames VALUES ('14','121','Microsoft Visio Professional' )
INSERT INTO ProductNames VALUES ('14','121','Microsoft Visio Standard' )
INSERT INTO ProductNames VALUES ('14','121','Microsoft Windows Mobile Device Center' )
INSERT INTO ProductNames VALUES ('14','122','Mindjet MindManager' )
INSERT INTO ProductNames VALUES ('14','123','Minitab' )
INSERT INTO ProductNames VALUES ('14','125','Mozilla Firefox' )
INSERT INTO ProductNames VALUES ('14','126','NAVIGON Fresh' )
INSERT INTO ProductNames VALUES ('14','127','Nitro PDF Professional' )
INSERT INTO ProductNames VALUES ('14','128','Nokia Ovi Suite' )
INSERT INTO ProductNames VALUES ('14','129','Notepad++' )
INSERT INTO ProductNames VALUES ('14','24','OCR Software' )
INSERT INTO ProductNames VALUES ('14','131','Open Text WebDAV ActiveX Control' )
INSERT INTO ProductNames VALUES ('14','98','Paint.NET' )
INSERT INTO ProductNames VALUES ('14','134','PDF Architect' )
INSERT INTO ProductNames VALUES ('14','81','PDF Split and Merge' )
INSERT INTO ProductNames VALUES ('14','133','PDF24 Creator' )
INSERT INTO ProductNames VALUES ('14','147','PDFCreator' )
INSERT INTO ProductNames VALUES ('14','153','PDF-Xchange' )
INSERT INTO ProductNames VALUES ('14','153','PDF-Xchange Pro' )
INSERT INTO ProductNames VALUES ('14','153','PDF-XChange Viewer' )
INSERT INTO ProductNames VALUES ('14','121','Photo Gallery' )
INSERT INTO ProductNames VALUES ('14','84','QuickTime' )
INSERT INTO ProductNames VALUES ('14','104','Redmon - Redirection Port Monitor' )
INSERT INTO ProductNames VALUES ('14','140','SafeNet MobilePASS' )
INSERT INTO ProductNames VALUES ('14','142','Samsung Kies' )
INSERT INTO ProductNames VALUES ('14','144','SAP GUI for Windows' )
INSERT INTO ProductNames VALUES ('14','144','SAP Interactive Excel' )
INSERT INTO ProductNames VALUES ('14','144','SAP Netweaver Business Client' )
INSERT INTO ProductNames VALUES ('14','121','SMS Advanced Client' )
INSERT INTO ProductNames VALUES ('14','149','SnagIt' )
INSERT INTO ProductNames VALUES ('14','90','tax' )
INSERT INTO ProductNames VALUES ('14','148','TeamViewer' )
INSERT INTO ProductNames VALUES ('14','150','testo 175-176-2010' )
INSERT INTO ProductNames VALUES ('14','150','testo Comfort Software Basic' )
INSERT INTO ProductNames VALUES ('14','162','testXpert II' )
INSERT INTO ProductNames VALUES ('14','112','TreeSize Free' )
INSERT INTO ProductNames VALUES ('14','136','UltraMon' )
INSERT INTO ProductNames VALUES ('14','157','UltraVnc' )
INSERT INTO ProductNames VALUES ('14','100','VirtualCloneDrive' )
INSERT INTO ProductNames VALUES ('14','110','VISA Shared Components' )
INSERT INTO ProductNames VALUES ('14','155','VLC media player' )
INSERT INTO ProductNames VALUES ('14','156','VMware vSphere Client' )
INSERT INTO ProductNames VALUES ('14','157','Vodafone Mobile Broadband' )
INSERT INTO ProductNames VALUES ('14','130','Vodafone Mobile Connect' )
INSERT INTO ProductNames VALUES ('14','121','Winamp' )
INSERT INTO ProductNames VALUES ('14','121','Windows 7 USB/DVD Download Tool' )
INSERT INTO ProductNames VALUES ('14','121','Windows Live Communications Platform' )
INSERT INTO ProductNames VALUES ('14','139','WinPcap' )
INSERT INTO ProductNames VALUES ('14','158','WinRAR' )
INSERT INTO ProductNames VALUES ('14','118','WinSCP' )
INSERT INTO ProductNames VALUES ('14','152','Wireshark' )
INSERT INTO ProductNames VALUES ('14','83','XAMPP' )
INSERT INTO ProductNames VALUES ('14','160','Yahoo! Toolbar' )
INSERT INTO ProductNames VALUES ('14','161','Zebra Setup Utilities' )
INSERT INTO ProductNames VALUES ('14','124','ZipMail for Microsoft Outlook' )

Select Name, COUNT(*)
From dbo.ProductNames
GROUP BY Name
HAVING COUNT(*) >1

select * from ProductNames
select * from ModelCategory


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
	Name NVARCHAR(255) NULL UNIQUE,
	number int null
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
-- DELETE FROM Printer_Computers_Informations -- here after deleting don't assume it is ganna reset VALUES FROM identity culomn
--By using the DBCC command we can reset the identity value
-- CODE : DBCC CHECKIDENT(Tablename, RESEED, 0)
--DBCC CHECKIDENT(Printer_Computers_Informations, RESEED, 0)

---- Add another column to the Printer_Computers_Informations table:******************  13.01.2017

ALTER TABLE Printer_Computers_Informations
	ADD Location  NVARCHAR(255)  NULL;
	
	ALTER TABLE Printer_Computers_Informations
	ADD Department  NVARCHAR(255)  NULL;
	
	--------------  17.01.2017
	ALTER TABLE Printer_Computers_Informations
	add DepID_FK INT NULL,	--	Create the FK like other indexes From "Department" Table
	CONSTRAINT Department_DepID_FK	-- 'dbo.Department': this is the name of table which the FK comes FROM,
	--'DepID_FK': what we named the key 'Dep_ID_FK', and that it's a foreign key(FK)
	FOREIGN KEY (DepID_FK)	-- what ever we write in (), will become the name of FK
	REFERENCES Department (ID)	-- 'Department' Specifies where the FK comes FROM,(ID) is what it is called in other table
	
	--------------  17.01.2017
	ALTER TABLE Printer_Computers_Informations
	add LocationID_FK INT NULL,	--	Create the FK like other indexes From "Location" Table
	CONSTRAINT Location_LocationID_FK -- 'dbo.Location': this is the name of table which the FK comes FROM,
	--'LID_FK': what we named the key 'LID_FK', and that it's a foreign key(FK)
	FOREIGN KEY (LocationID_FK)	-- what ever we write in (), will become the name of FK
	REFERENCES Location (LID);	-- 'Department' Specifies where the FK comes FROM,(ID) is what it is called in other table
	
	
	--------------  17.01.2017
	ALTER TABLE Printer_Computers_Informations
	add DepartmentID_FK int,	--	Create the FK like other indexes From "DepartmentNames" Table
		CONSTRAINT DepartmentNames_DepartmentID_FK	-- 'dbo.DepartmentNames': this is the name of table which the FK comes FROM,
	--'DepID_FK': what we named the key 'DepID_FK', and that it's a foreign key(FK)
	FOREIGN KEY (DepartmentID_FK)	-- what ever we write in (), will become the name of FK
	REFERENCES DepartmentNames (DepID);	-- 'Department' Specifies where the FK comes FROM,(ID) is what it is called in other table
	
		--- 17.01.2017 		
	ALTER TABLE Printer_Computers_Informations
	add ProdIDFK INT  ,	--	Create the FK like other indexes From "dbo.ProductNames" Table
		CONSTRAINT ProductNames_ProdIDFK	-- 'dbo.ProductNames': this is the name of table which the FK comes FROM,
	--'Prod_ID_FK': what we named the key 'Prod_ID_FK', and that it's a foreign key(FK)
	FOREIGN KEY (ProdIDFK)	-- what ever we write in (), will become the name of FK
	REFERENCES ProductNames (Prod_ID);	-- 'Department' Specifies where the FK comes FROM,(ID) is what it is called in other table
	
	
--************* insert values of "LocationID_FK" ** 17.01.2017
UPDATE Printer_Computers_Informations
	SET Printer_Computers_Informations.LocationID_FK = '5'
	WHERE Printer_Computers_Informations.Location = 'Wesseling'
 
 UPDATE Printer_Computers_Informations
	SET Printer_Computers_Informations.LocationID_FK = '1'
	WHERE Printer_Computers_Informations.Location = 'Norderstedt'
	
	
UPDATE Printer_Computers_Informations
	SET Printer_Computers_Informations.LocationID_FK = '2'
	WHERE Printer_Computers_Informations.Location = 'Jena'
	
UPDATE Printer_Computers_Informations
	SET Printer_Computers_Informations.LocationID_FK = '3'
	WHERE Printer_Computers_Informations.Location = 'Gerolzhofen'  
	
UPDATE Printer_Computers_Informations
	SET Printer_Computers_Informations.LocationID_FK = '4'
	WHERE Printer_Computers_Informations.Location = 'Herzogenrath'
	
--************* insert values of DepartmenNamestID_FK  ** 17.01.2017
	
UPDATE Printer_Computers_Informations
	SET Printer_Computers_Informations.DepartmenNamesID_FK = '3'
	WHERE Printer_Computers_Informations.Department = 'Controlling'

UPDATE Printer_Computers_Informations
	SET Printer_Computers_Informations.DepartmenNamesID_FK = '1'
	WHERE Printer_Computers_Informations.Department = 'Einkauf'
	
	
UPDATE Printer_Computers_Informations
	SET Printer_Computers_Informations.DepartmenNamesID_FK = '5'
	WHERE Printer_Computers_Informations.Department = 'IT'
	
UPDATE Printer_Computers_Informations
	SET Printer_Computers_Informations.DepartmenNamesID_FK = '4'
	WHERE Printer_Computers_Informations.Department = 'Personal'	
	
UPDATE Printer_Computers_Informations
	SET Printer_Computers_Informations.DepartmenNamesID_FK = '2'
	WHERE Printer_Computers_Informations.Department = 'Buchhaltung'	
	
	--IN order To set up the DepartmenNamesID_FK to PK and FK we need to defint it as NOT NULL, So every thing which has NULL we change it to 0

	UPDATE Printer_Computers_Informations
	SET Printer_Computers_Informations.DepartmenNamesID_FK = '0'
	WHERE Printer_Computers_Informations.DepartmenNamesID_FK IS NULL

-- to insert the tuple DepID_FK first we find all those which has LocationID_FK , and DepartmenNamestID_FK as following ** 17.01.2017
--source : http://www.w3schools.com/sql/sql_null_values.asp

SELECT * FROM Printer_Computers_Informations	
WHERE   DepartmenNamestID_FK  IS NOT NULL

UPDATE Printer_Computers_Informations
	SET Printer_Computers_Informations.DepID_FK = '15'
	WHERE Printer_Computers_Informations.LocationID_FK = '5' and Printer_Computers_Informations.DepartmenNamestID_FK = '3'
	
UPDATE Printer_Computers_Informations
	SET Printer_Computers_Informations.DepID_FK = '21'
	WHERE Printer_Computers_Informations.LocationID_FK = '1' and Printer_Computers_Informations.DepartmenNamestID_FK = '5'
			
UPDATE Printer_Computers_Informations
	SET Printer_Computers_Informations.DepID_FK = '1'
	WHERE Printer_Computers_Informations.LocationID_FK = '1' and Printer_Computers_Informations.DepartmenNamestID_FK = '1'
			
--IN order To set up the DepID_FK to PK and FK we need to defint it as NOT NULL, So every thing which has NULL we change it to 0

	UPDATE Printer_Computers_Informations
	SET Printer_Computers_Informations.DepID_FK = '0'
	WHERE Printer_Computers_Informations.DepID_FK IS NULL
	

	
--ProdIDFK
	
SELECT * FROM Printer_Computers_Informations	

/*	
ALTER TABLE Printer_Computers_Informations
	ADD Location_ID INT NULL  --	Create the FK like other indexes From "dbo.Department" Table

	CONSTRAINT Location_LocationID_fk	-- 'Location': this is the name of table which the FK comes FROM,
	--'Location_ID_fk': what we named the key 'Location_ID_fk', and that it's a foreign key(FK)
	FOREIGN KEY (Location_ID_fk)	-- what ever we write in (), will become the name of FK
	REFERENCES Location (LID)	-- 'OfficeOrIndustry' Specifies where the FK comes FROM,(ID) is what it is called in other table
	
	
*/	

--******* insert data to Printer_Computers_Informations 

SELECT * FROM Printer_Computers_Informations
SELECT * FROM dbo.OriginalPrinterAbrasives

--FIRST Copy information of  printers FROM PrinterAbrasives table
INSERT INTO dbo.Printer_Computers_Informations (SerialNumber,IPAddress,MACAddress,Address,SystemName, Location,Department)
SELECT Serialnumber,IPAddress,MACAddress,Address,Systemname,City,location
FROM dbo.OriginalPrinterAbrasives --93 ta 
  --******17.01.2017
SELECT * FROM Printer_Computers_Informations
where Information_Model_ID = 13 --121 ta



  update Printer_Computers_Informations
 SET Printer_Computers_Informations.ProdIDFK = '0 '
 where Printer_Computers_Informations.ProdIDFK  IS NULL


-- Finde the Duplicated   IPAddress in  table  OriginalPrinterAbrasives
Select IPAddress, COUNT(*)
From OriginalPrinterAbrasives
GROUP BY IPAddress
HAVING COUNT(*) >1


--*************
-- To see which rows has NULL Model_ID
SELECT Printer_Computers_Informations.InfoID, Information_Model_ID
FROM Printer_Computers_Informations
WHERE Printer_Computers_Informations.Information_Model_ID is NULL;

-- Set Information_Model_ID of all tuples to  Model_Id Of Printer. which is 13
SELECT * FROM ModelCategory -- to find out the Model_ID

UPDATE Printer_Computers_Informations
SET Information_Model_ID = 13
WHERE Printer_Computers_Informations.Information_Model_ID is NULL; --93 ta 

--********************************
--SECOND Copy information of  printers FROM  table dbo.AssetDataAbrasivesMatch
SELECT * FROM Printer_Computers_Informations
SELECT * FROM dbo.OriginalAssetDataAbrasivesMatch

INSERT INTO dbo.Printer_Computers_Informations (SerialNumber,Location,Department)
SELECT [SerialNumber],Location,Department
FROM  dbo.OriginalAssetDataAbrasivesMatch--509 ta 

-- To see which rows has NULL Model_ID
SELECT Printer_Computers_Informations.InfoID, Information_Model_ID
FROM Printer_Computers_Informations
WHERE Printer_Computers_Informations.Information_Model_ID is NULL;

-- Set Model_ID of all tuples to  Model_Id Of Computer. which is 12
SELECT * FROM ModelCategory -- to find out the Model_ID
UPDATE Printer_Computers_Informations
SET Information_Model_ID = 12
WHERE Printer_Computers_Informations.Information_Model_ID is NULL; --509 ta 




--********************************
--THIRD Copy information of  printers FROM  table dbo.AssetDataAbrasivesPrinter
SELECT * FROM Printer_Computers_Informations
SELECT * FROM dbo.OriginalAssetDataAbrasivesPrinter
--there was some NULL Rows here, by the following roe we can delete those!
DELETE FROM dbo.OriginalAssetDataAbrasivesPrinter
Where OriginalAssetDataAbrasivesPrinter.AssetTag  is null AND OriginalAssetDataAbrasivesPrinter.ModelCategory is null

INSERT INTO dbo.Printer_Computers_Informations (SerialNumber,Location,Department)
SELECT SerialNumber , Location,Department
FROM OriginalAssetDataAbrasivesPrinter --28 ta

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

-- 17.1.2077
SELECT * FROM dbo.OriginalAssetDataAbrasivesPrinter

SELECT * FROM Printer_Computers_Informations
where Information_Model_ID = 13   

select  Prod_ID ,SerialNumber
from OriginalAssetDataAbrasivesPrinter as osa left join ProductNames as po
ON osa.Model = po.Name

-- 17.1.2077
SELECT * FROM dbo.OriginalAssetDataAbrasivesMatch

SELECT * FROM Printer_Computers_Informations
where Information_Model_ID = 12   

create table temp (
	Pro_ID INT,
	Model Nvarchar (255),
	serialnumber Nvarchar (255)
);
insert into temp
select  Prod_ID ,Model,SerialNumber
from  OriginalAssetDataAbrasivesMatch as osa left join ProductNames as po
ON osa.Model = po.Name

select * from temp
select * from Printer_Computers_Informations
/* ???????????????????????????????? 17.01.2017 

Update Printer_Computers_Informations
select  Pro_ID
from temp as t left join Printer_Computers_Informations as pr
ON t.serialnumber = pr.SerialNumber

*/


-- ********************** Finde the Duplicated MACAddress in Printer_Computers_Informations table  *********************************
SELECT MACAddress, COUNT(*)
FROM Printer_Computers_Informations
GROUP BY MACAddress
HAVING COUNT(*) >1
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

--************** IMPORT DATA to Version table ************** 05.01.2017***************
--DELETE From Version
--************** data 06.01.2017
--reset the Identity value 
--delete  From Version
DBCC CHECKIDENT(Version, RESEED, 0) 

INSERT INTO Version
SELECT  MajorVersion, VersionNumber,ProductEdition , VendID
FROM  dbo.OriginalSWListAbrasives as SW  left JOIN Vendor as VN
ON SW.[Vendor - Manufacturer] = VN.VendorName
ORDER BY VendID ASC

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

--************** IMPORT DATA to Price table ** 11.01.2017

--First Insert data from table AssetDataAbrasivesMatch
SELECT Cost, Currency, CostCenter,ModelCategory
 FROM  dbo.AssetDataAbrasivesMatch
 
 INSERT INTO Price (Price_Currency_ID, Price_Model_ID)
 VALUES (1,12)
 
-- Second Insert data from table AssetDataAbrasivesPrinter
 SELECT Cost, Currency, CostCenter,ModelCategory
 FROM   dbo.AssetDataAbrasivesPrinter
 
 INSERT INTO Price (Price_Currency_ID, Price_Model_ID)
 VALUES (1,13)
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


--************** IMPORT DATA to Asset table ** 11.01.2017

--first we insert  AssetTag, ConfigurationItem from AssetDataAbrasivesMatch into asset table
SELECT * FROM dbo.AssetDataAbrasivesMatch -- has Asset Tag


INSERT INTO Asset (AssetTag, ConfigurationItem) 
SELECT AssetTag, ConfigurationItem
FROM dbo.AssetDataAbrasivesMatch

-- Set Model_ID of all tuples to  Model_Id Of computer. which is 12
UPDATE Asset
SET Asset_Model_ID = 12
WHERE Asset.Asset_Model_ID is NULL;

--**** Second we insert  AssetTag, ConfigurationItem from AssetDataAbrasivesPrinter into asset table
SELECT Liste FROM dbo.AssetDataAbrasivesPrinter -- has Asset Tag

INSERT INTO Asset (AssetTag, Liste, ConfigurationItem) 
SELECT AssetTag, Liste, ConfigurationItem
FROM dbo.AssetDataAbrasivesPrinter

-- Set Model_ID of all tuples to  Model_Id Of printer. which is 13
UPDATE Asset
SET Asset_Model_ID = 13
WHERE Asset.Asset_Model_ID is NULL;


--************************* Creat the table OfficeOrIndustry.*********Date 13.12.2016****************
CREATE TABLE OfficeOrIndustry(
	ID INT IDENTITY (1,1),
	NAme NVARCHAR (255) NULL,
);
--�Insert Values
INSERT INTO OfficeOrIndustry VALUES ('Office'), ('Industry')
--************************* Creat the table AssetDataAbrasives.*********Date 13.01.2017 ***************
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
	Pr�fkommentar NVARCHAR (255) NULL,
	GLAccount NVARCHAR (255) NULL,
	---------------
	select * from dbo.AssetDataAbrasives
	
	ALTER TABLE AssetDataAbrasives
	add Dep_ID_FK INT NULL,	--	Create the FK like other indexes From "Department" Table
	CONSTRAINT Department_Dep_ID_FK	-- 'dbo.Department': this is the name of table which the FK comes FROM,
	--'Dep_ID_FK': what we named the key 'Dep_ID_FK', and that it's a foreign key(FK)
	FOREIGN KEY (Dep_ID_FK)	-- what ever we write in (), will become the name of FK
	REFERENCES Department (ID);	-- 'Department' Specifies where the FK comes FROM,(ID) is what it is called in other table
	
	--------------
	LID_Dep INT NULL,	--	Create the FK like other indexes From "Location" Table
	CONSTRAINT Location_LID_Dep -- 'dbo.Location': this is the name of table which the FK comes FROM,
	--'LID_Dep': what we named the key 'LID_Dep', and that it's a foreign key(FK)
	FOREIGN KEY (LID_Dep)	-- what ever we write in (), will become the name of FK
	REFERENCES Location (LID),	-- 'Department' Specifies where the FK comes FROM,(ID) is what it is called in other table
	
	
	-------------------
	Dep_Name_ID INT,	--	Create the FK like other indexes From "DepartmentNames" Table
		CONSTRAINT DepartmentNames_Dep_Name_ID	-- 'dbo.DepartmentNames': this is the name of table which the FK comes FROM,
	--'LID_Dep': what we named the key 'LID_Dep', and that it's a foreign key(FK)
	FOREIGN KEY (Dep_Name_ID)	-- what ever we write in (), will become the name of FK
	REFERENCES DepartmentNames (DepID),	-- 'Department' Specifies where the FK comes FROM,(ID) is what it is called in other table
	
	
	------------------
	ADA_OfficeOrInd2_ID INT NULL,	--	Create the FK like other indexes From "OfficeOrIndustry" Table
	CONSTRAINT OfficeOrIndustry_ADA_OfficeOrInd_ID	-- 'OfficeOrIndustry': this is the name of table which the FK comes FROM,
	--'ADA_OfficeOrInd_ID': what we named the key 'Model_ID_fk', and that it's a foreign key(FK)
	FOREIGN KEY (ADA_OfficeOrInd_ID)	-- what ever we write in (), will become the name of FK
	REFERENCES OfficeOrIndustry (ID),	-- 'OfficeOrIndustry' Specifies where the FK comes FROM,(ID) is what it is called in other table
); 
-- Add another column to the table:
ALTER TABLE AssetDataAbrasives
	ADD ModelID_fk  INT  NULL --	Create the FK like other indexes From "dbo.ModelCategory" Table
	
	CONSTRAINT ModelCategory_ModelID_fk	-- 'ModelCategory': this is the name of table which the FK comes FROM,
	--'ModelID_ID': what we named the key 'ModelID_ID', and that it's a foreign key(FK)
	FOREIGN KEY (ModelID_fk)	-- what ever we write in (), will become the name of FK
	REFERENCES ModelCategory (Model_ID);	-- 'OfficeOrIndustry' Specifies where the FK comes FROM,(ID) is what it is called in other table

--************** IMPORT DATA to AssetDataAbrasives table *** 13.01.2017

SELECT * FROM dbo.AssetDataAbrasives
where assetTag = 'A78LTGE26124'
SELECT * FROM  dbo.AssetDataAbrasivesMatch
where assetTag = 'A78LTGE26124'

INSERT INTO AssetDataAbrasives
 (AssetTag,Substate,Stockroom, Usage, BusinessEntity, Company, AssignedTo, LastLogon, Beschreibung, 
			OfficeCommunicationsServerAddress, Assigned, Due, DueIn, Installed, Retireddate, Ordered,PONumber, Purchased, WarrantyExpiration,
			 LeaseContract, ManagedBy,OwnedBy,  Parent, Comments, Owner, HistoricalEZV, DepreciationEffectiveEate, OutsideTheNetwork, Pr�fkommentar, 
			 GLAccount, Office_IND, Department, Location)
  
SELECT AssetTag,Substate,Stockroom, Usage, BusinessEntity, Company, AssignedTo, LastLogon, Beschreibung, OfficeCommunicationsServerAddress,
 Assigned, Due, DueIn, Installed, Retireddate, Ordered,PONumber, Purchased, WarrantyExpiration, LeaseContract, ManagedBy,OwnedBy,  Parent,
  Comments, Owner,HistoricalEZV, DepreciationEffectiveEate, OutsideTheNetwork, Pr�fkommentar, GLAccount, [Office/Industry], Department, Location
 FROM  dbo.AssetDataAbrasivesMatch
 
 
 update AssetDataAbrasives
 SET AssetDataAbrasives.ADA_OfficeOrInd_ID = '1'
 where AssetDataAbrasives.Office_IND = 'Office'
  
 update AssetDataAbrasives
 SET AssetDataAbrasives.ADA_OfficeOrInd_ID = '2'
 where AssetDataAbrasives.Office_IND = 'Industry'
 
 
select assetTag,Office_IND,ADA_OfficeOrInd_ID
from AssetDataAbrasives
where Office_IND = 'Office'
 
 -- Set ADA_OfficeOrInd_ID�of  tuples to  Office  which is 1
SELECT * FROM dbo.AssetDataAbrasives
--SELECT * FROM dbo.OfficeOrIndustry
SELECT * FROM  AssetDataAbrasivesMatch
SELECT * FROM  Asset
UPDATE AssetDataAbrasives
SET ADA_OfficeOrInd_ID = 1
WHERE AssetDataAbrasives.Office_IND = 'Office';

 
 -- Set ADA_OfficeOrInd_ID�of  tuples to  Office  which is 2
select * FROM dbo.AssetDataAbrasives
SELECT * FROM dbo.OfficeOrIndustry

UPDATE AssetDataAbrasives
SET ADA_OfficeOrInd_ID = 2
WHERE AssetDataAbrasives.Office_IND = 'Industry';

 -- Set LID_Dep   tuples to '5 '    which is Wesseling  the same with rest *** 17.01.2017

 update AssetDataAbrasives
 SET AssetDataAbrasives.LID_Dep = '5 '
 where AssetDataAbrasives.Location = 'Wesseling'
 
  update AssetDataAbrasives
 SET AssetDataAbrasives.LID_Dep = '4 '
 where AssetDataAbrasives.Location = 'Herzogenrath'
 
   update AssetDataAbrasives
 SET AssetDataAbrasives.LID_Dep = '3 '
 where AssetDataAbrasives.Location = 'Gerolzhofen'

update AssetDataAbrasives
 SET AssetDataAbrasives.LID_Dep = '1 '
 where AssetDataAbrasives.Location = 'Norderstedt'
  
update AssetDataAbrasives
 SET AssetDataAbrasives.LID_Dep = '2 '
 where AssetDataAbrasives.Location = 'Jena'
 
 select * FROM dbo.AssetDataAbrasives
 
 --IN order To set up the Dep_ID_FK to PK and FK we need to defint it as NOT NULL, So every thing which has NULL we change it to 0

UPDATE AssetDataAbrasives
	SET AssetDataAbrasives.Dep_ID_FK = '0'
	WHERE AssetDataAbrasives.Dep_ID_FK IS NULL
 
--IN order To set up the Dep_Name_ID to PK and FK we need to defint it as NOT NULL, So every thing which has NULL we change it to 0

UPDATE AssetDataAbrasives
	SET AssetDataAbrasives.Dep_Name_ID = '0'
	WHERE AssetDataAbrasives.Dep_Name_ID IS NULL

/*
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
	Pr�fkommentar NVARCHAR (255) NULL,
	GLAccount NVARCHAR (255) NULL,
	
	ADA_OfficeOrInd_ID INT NULL,	--	Create the FK like other indexes From "OfficeOrIndustry" Table
	CONSTRAINT OfficeOrIndustry_ADA_OfficeOrInd_ID	-- 'OfficeOrIndustry': this is the name of table which the FK comes FROM,
	--'ADA_OfficeOrInd_ID': what we named the key 'Model_ID_fk', and that it's a foreign key(FK)
	FOREIGN KEY (ADA_OfficeOrInd_ID)	-- what ever we write in (), will become the name of FK
	REFERENCES OfficeOrIndustry (ID),	-- 'OfficeOrIndustry' Specifies where the FK comes FROM,(ID) is what it is called in other table
); 
*/
--************** IMPORT DATA to AssetDataAbrasives from AssetDataAbrasivesMatch table *** 11.01.2017

SELECT * FROM dbo.AssetDataAbrasives
SELECT * FROM  Asset

SELECT * FROM  dbo.AssetDataAbrasivesMatch

INSERT INTO AssetDataAbrasives (AssetTag,Substate,Stockroom, Usage, BusinessEntity, Company, AssignedTo, LastLogon, Beschreibung, 
			OfficeCommunicationsServerAddress, Assigned, Due, DueIn, Installed, Retireddate, Ordered,PONumber, Purchased, WarrantyExpiration,
			 LeaseContract, ManagedBy,OwnedBy,  Parent, Comments, Owner, HistoricalEZV, DepreciationEffectiveEate, OutsideTheNetwork, Pr�fkommentar, 
			 GLAccount, Office_IND)
  
SELECT AssetTag,Substate,Stockroom, Usage, BusinessEntity, Company, AssignedTo, LastLogon, Beschreibung, OfficeCommunicationsServerAddress,
 Assigned, Due, DueIn, Installed, Retireddate, Ordered,PONumber, Purchased, WarrantyExpiration, LeaseContract, ManagedBy,OwnedBy,  Parent,
  Comments, Owner,HistoricalEZV, DepreciationEffectiveEate, OutsideTheNetwork, Pr�fkommentar, GLAccount, [Office/Industry]
 FROM  dbo.AssetDataAbrasivesMatch
 
 -- Set ADA_OfficeOrInd_ID�of  tuples to  Office  which is 1
SELECT * FROM dbo.AssetDataAbrasives
SELECT * FROM dbo.OfficeOrIndustry

UPDATE AssetDataAbrasives
SET ADA_OfficeOrInd_ID = 1
WHERE AssetDataAbrasives.Office_IND = 'Office';

 
 -- Set ADA_OfficeOrInd_ID�of  tuples to  Office  which is 2
SELECT * FROM dbo.AssetDataAbrasives
SELECT * FROM dbo.OfficeOrIndustry

UPDATE AssetDataAbrasives
SET ADA_OfficeOrInd_ID = 2
WHERE AssetDataAbrasives.Office_IND = 'Industry';

UPDATE AssetDataAbrasives
SET ModelID_fk = 12
WHERE AssetDataAbrasives.ModelID_fk is NULL;

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
--************** IMPORT DATA to PrinterInfo table ** 11.01.2017 
--?????????????? 

INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,1,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',2,2,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',3,3,13 ) 
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,4,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',2,5,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,6,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,7,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',3,8,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,9,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,10,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Registering',1,11,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,12,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,13,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,14,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,15,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,16,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,17,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,18,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,19,13 )

INSERT INTO Status VALUES ('Replace/Supply')
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',4,20,13 )

INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,21,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,22,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',3,23,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',3,24,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',3,25,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',2,26,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,27,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,28,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,29,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,30,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,31,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,32,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,33,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,34,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,35,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',3,36,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',3,37,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,38,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,39,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,40,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,41,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,42,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,43,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,44,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,45,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,46,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,47,13 )
INSERT INTO PrinterInfo VALUES ('not active', 'Managed',1,48,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,49,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,50,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,51,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,52,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,53,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,54,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,55,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,56,13 )

INSERT INTO Status VALUES ('Call Service')
SELECT * FROM Status

INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',5,57,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,58,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,59,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,60,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,61,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,62,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,63,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,64,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,65,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,66,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,67,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,68,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,69,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,70,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,71,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,72,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,73,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,74,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',3,75,13 ) 
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',3,76,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,77,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,78,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,79,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,80,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,81,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,82,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,83,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',5,84,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,85,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,86,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,87,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',5,88,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,89,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,90,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,91,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',1,92,13 )
INSERT INTO PrinterInfo VALUES ('SLNX', 'Managed',3,93,13 )


Select * from PrinterInfo


Select * from dbo.AssetDataAbrasives 