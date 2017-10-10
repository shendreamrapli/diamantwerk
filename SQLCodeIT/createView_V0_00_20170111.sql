

CREATE VIEW V_Prod
AS SELECT Name, Product_VendID,Product_Model_ID
FROM ProductNames

sp_helptext  V_Prod


select *  from dbo.V_Prod

where Product_VendID = 30
-- shows what view i have and which information there have 
select * from INFORMATION_SCHEMA.VIEWS