
CREATE VIEW View_Of_PC_Laptop_V0_00_20170120 AS
SELECT     TOP (100) PERCENT dbo.AssetDataAbrasives.ADAID AS ID, dbo.ModelCategory.Name AS ModelCategory, dbo.ProductNames.Name AS ProductNames, 
                      dbo.Location.LCity AS Location, dbo.DepartmentNames.DepName AS DepartmentNames, dbo.AssetDataAbrasives.SGID, dbo.SGID.FirstName, dbo.SGID.LastName, 
                      dbo.[Vendor ].VendorName
FROM         dbo.AssetDataAbrasives INNER JOIN
                      dbo.DepartmentNames ON dbo.AssetDataAbrasives.Dep_Name_ID = dbo.DepartmentNames.DepID INNER JOIN
                      dbo.Location ON dbo.AssetDataAbrasives.LID_FK = dbo.Location.LID INNER JOIN
                      dbo.ModelCategory ON dbo.AssetDataAbrasives.ModelID_fk = dbo.ModelCategory.Model_ID INNER JOIN
                      dbo.[Vendor ] ON dbo.AssetDataAbrasives.VendorID_FK = dbo.[Vendor ].VendID INNER JOIN
                      dbo.ProductNames ON dbo.AssetDataAbrasives.ProdID_FK = dbo.ProductNames.Prod_ID INNER JOIN
                      dbo.SGID ON dbo.AssetDataAbrasives.SGID = dbo.SGID.SGID
ORDER BY ID, dbo.AssetDataAbrasives.SGID
 SELECT * FROM View_Of_PC_Laptop_V0_00_20170120                     