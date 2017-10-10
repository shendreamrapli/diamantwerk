-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
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
	@Youssefi nvarchar(50) = NULL, 
	@Bahar nvarchar(50) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT @Youssefi, @Bahar
END
GO

-- ********************** Create a copy of a database table and place it in the new one *********************************

use BachlerArbeit 
go
select * into Test_PrinterAbrasives
from PrinterAbrasives;
select * from Test_PrinterAbrasives
-- ********************** Finde the Duplicated Manufacturer  *********************************

Select Manufacturer, COUNT(*)
From PrinterAbrasives
GROUP BY Manufacturer
HAVING COUNT(*) >=1

-- ********************** Create a copy of a database table and place it in the new one *********************************
