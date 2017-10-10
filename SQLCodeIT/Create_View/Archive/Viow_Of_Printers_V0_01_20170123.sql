CREATE VIEW Viow_Of_Printers_V0_00_20170120 AS
SELECT     dbo.Printer_Computers_Informations.InfoID, dbo.ModelCategory.Name, dbo.ProductNames.Name AS ProductNames, 
                      dbo.Printer_Computers_Informations.SerialNumber, dbo.Location.LCity AS Location, dbo.DepartmentNames.DepName AS [Department Name], 
                      dbo.[Vendor ].VendorName
FROM         dbo.ModelCategory INNER JOIN
                      dbo.Printer_Computers_Informations ON dbo.ModelCategory.Model_ID = dbo.Printer_Computers_Informations.Information_Model_ID INNER JOIN
                      dbo.DepartmentNames ON dbo.Printer_Computers_Informations.DepartmenNamesID_FK = dbo.DepartmentNames.DepID INNER JOIN
                      dbo.Location ON dbo.Printer_Computers_Informations.LocationID_FK = dbo.Location.LID INNER JOIN
                      dbo.ProductNames ON dbo.Printer_Computers_Informations.ProdIDFK = dbo.ProductNames.Prod_ID INNER JOIN
                      dbo.[Vendor ] ON dbo.ProductNames.Product_VendID = dbo.[Vendor ].VendID
WHERE     (dbo.ModelCategory.Name = N'Printer')
SELECT * FROM  dbo.Viow_Of_Printers_V0_00_20170120