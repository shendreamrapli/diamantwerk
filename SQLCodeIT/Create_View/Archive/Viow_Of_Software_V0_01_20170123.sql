CREATE VIEW View_Software_V0_00_20170120 AS
SELECT     dbo.Software.ID, dbo.ModelCategory.Name AS ModelCategory, dbo.ProductNames.Name AS ProductNames, dbo.Software.ProductEdition, 
                      dbo.Software.VersionNumber, dbo.Software.MajorVersion
FROM         dbo.Software INNER JOIN
                      dbo.ProductNames ON dbo.Software.ProdNameID_FK = dbo.ProductNames.Prod_ID INNER JOIN
                      dbo.ModelCategory ON dbo.Software.ModelID_FK = dbo.ModelCategory.Model_ID
 
 SELECT * FROM View_Software_V0_00_20170120                     