-- Delete a column  **** Author: Bahar Youssefi **** Date 01.12.2016
USE BachlerArbeit
Go 
ALTER TABLE dbo.SWListAbrasives DROP COLUMN Kommentar

--Show the table after delete the desired Column
SELECT * from  SWListAbrasives