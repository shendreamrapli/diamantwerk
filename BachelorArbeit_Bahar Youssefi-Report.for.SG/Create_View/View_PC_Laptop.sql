
CREATE VIEW View_PC_Laptop AS
SELECT     dbo.AssetDataAbrasives.ADAID, dbo.ModelCategory.Name AS ModelCategory, dbo.ProductNames.Name AS ProductNames, dbo.Location.LCity AS Location, 
                      dbo.DepartmentNames.DepName AS DepartmentNames, dbo.SGID.ID AS SGID, dbo.SGID.LastName, dbo.SGID.FirstName
FROM         dbo.AssetDataAbrasives INNER JOIN
                      dbo.DepartmentNames ON dbo.AssetDataAbrasives.DepName_ID_FK = dbo.DepartmentNames.DepID INNER JOIN
                      dbo.Location ON dbo.AssetDataAbrasives.LID_FK = dbo.Location.L_ID INNER JOIN
                      dbo.ModelCategory ON dbo.AssetDataAbrasives.Model_ID_fk = dbo.ModelCategory.Model_ID INNER JOIN
                      dbo.ProductNames ON dbo.AssetDataAbrasives.Prod_ID_FK = dbo.ProductNames.Product_ID AND dbo.AssetDataAbrasives.Model_ID_fk = dbo.ProductNames.Model_ID_FK AND 
                      dbo.ModelCategory.Model_ID = dbo.ProductNames.Model_ID_FK INNER JOIN
                      dbo.Vendor ON dbo.AssetDataAbrasives.Vendor_ID_FK = dbo.Vendor.Vendor_ID AND dbo.ProductNames.Vendor_ID_FK = dbo.Vendor.Vendor_ID INNER JOIN
                      dbo.SGID ON dbo.AssetDataAbrasives.SGID_FK = dbo.SGID.SGID

select * from dbo.View_PC_Laptop