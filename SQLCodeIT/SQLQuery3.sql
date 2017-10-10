


INSERT INTO dbo.temp
Select Department, Location --509 roe
from dbo.AssetDataAbrasivesMatch as Match Left join AssetDataAbrasives ab
ON Match.AssetTag = ab.assetTag

select * from temp 
SELECT assetTag
from dbo.AssetDataAbrasives   
select * from  dbo.AssetDataAbrasives   --509 row
Select * from dbo.AssetDataAbrasivesPrinter 
Select * from dbo.PrinterAbrasives
SELECT * FROM dbo.Asset 
SELECT * FROM dbo.ModelCategory 
select * from Location
select * from Department
select * from DepartmentNames

select * from ModelCategory
select * from PrinterInfo
select * from Printer_Computers_Informations
select * from dbo.PrinterAbrasives
select * from DepartmentNames

SELECT     TOP (100) PERCENT dbo.Asset.AssetTag AS [Asset Tag], dbo.ModelCategory.Name AS [Model Category], dbo.ProductNames.Name AS [Product's Names], 
                      dbo.Location.LCity AS Location, dbo.DepartmentNames.DepName AS [department's Name], dbo.OfficeOrIndustry.Name AS [Office / Industry]
FROM         dbo.AssetDataAbrasives INNER JOIN
                      dbo.OfficeOrIndustry ON dbo.AssetDataAbrasives.ADA_OfficeOrInd_ID = dbo.OfficeOrIndustry.ID CROSS JOIN
                      dbo.ProductNames INNER JOIN
                      dbo.Asset INNER JOIN
                      dbo.ModelCategory ON dbo.Asset.Asset_Model_ID = dbo.ModelCategory.Model_ID ON 
                      dbo.ProductNames.Product_Model_ID = dbo.ModelCategory.Model_ID CROSS JOIN
                      dbo.DepartmentNames INNER JOIN
                      dbo.Department ON dbo.DepartmentNames.DepID = dbo.Department.DepNameID INNER JOIN
                      dbo.Location ON dbo.Department.LID = dbo.Location.LID
WHERE     (dbo.ModelCategory.Name = N'Computer') 

--WHERE     (dbo.ModelCategory.Name = N'Computer')