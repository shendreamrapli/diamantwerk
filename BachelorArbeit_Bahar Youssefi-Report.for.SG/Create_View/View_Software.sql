CREATE VIEW View_Software AS
SELECT     dbo.Software.ID, dbo.ProductNames.Name AS [Product Names], dbo.ModelCategory.Name AS [Model Category], dbo.Software.[Product Edition], dbo.Software.Version AS [Version Number], 
                      dbo.Software.[Major Version], dbo.Software.Count, dbo.Software.LicenceNeeded, dbo.Software.LicenceExisting
FROM         dbo.ModelCategory INNER JOIN
                      dbo.ProductNames ON dbo.ModelCategory.Model_ID = dbo.ProductNames.Model_ID_FK INNER JOIN
                      dbo.Software ON dbo.ModelCategory.Model_ID = dbo.Software.Mode_lID_FK AND dbo.ProductNames.Product_ID = dbo.Software.Product_ID_FK AND 
                      dbo.ProductNames.Model_ID_FK = dbo.Software.Mode_lID_FK
SELECT * From dbo.View_Software