CREATE VIEW View_Of_Printer AS
SELECT     TOP (100) PERCENT dbo.Printers_Computers.Info_ID, dbo.ProductNames.Name AS [Product Names], dbo.ModelCategory.Name AS [Model Category], dbo.Vendor.VendorName AS Vendor, 
                      dbo.Location.LCity AS Location, dbo.DepartmentNames.DepName AS [Department Name], dbo.Printers_Computers.SerialNumber AS [Serial Number], dbo.Printers_Computers.ManagedBy, 
                      dbo.Printers_Computers.IPAddress, dbo.Status.StatusName AS Status
FROM         dbo.ModelCategory INNER JOIN
                      dbo.ProductNames ON dbo.ModelCategory.Model_ID = dbo.ProductNames.Model_ID_FK INNER JOIN
                      dbo.Vendor ON dbo.ProductNames.Vendor_ID_FK = dbo.Vendor.Vendor_ID INNER JOIN
                      dbo.Printers_Computers ON dbo.ModelCategory.Model_ID = dbo.Printers_Computers.Model_ID_FK AND dbo.ProductNames.Product_ID = dbo.Printers_Computers.Product_ID_IFK AND 
                      dbo.ProductNames.Model_ID_FK = dbo.Printers_Computers.Model_ID_FK INNER JOIN
                      dbo.Location ON dbo.Printers_Computers.Location_ID_FK = dbo.Location.L_ID INNER JOIN
                      dbo.DepartmentNames ON dbo.Printers_Computers.Departmen_ID_FK = dbo.DepartmentNames.DepID INNER JOIN
                      dbo.Status ON dbo.Printers_Computers.Status_ID_FK = dbo.Status.StID
WHERE     (dbo.ModelCategory.Name = N'Printer')
SELECT * FROM dbo.Viow_Of_Printers