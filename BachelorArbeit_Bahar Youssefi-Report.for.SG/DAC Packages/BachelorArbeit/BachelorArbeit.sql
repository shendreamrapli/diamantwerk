CREATE DATABASE [BachlerArbeit]
 COLLATE Latin1_General_CI_AS
GO
ALTER DATABASE [BachlerArbeit] SET COMPATIBILITY_LEVEL = 100
GO
ALTER DATABASE [BachlerArbeit] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BachlerArbeit] SET  DISABLE_BROKER 
GO

SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModelCategory](
	[Model_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_Model_Category] PRIMARY KEY CLUSTERED 
(
	[Model_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO

SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asset](
	[AssetID] [int] IDENTITY(1,1) NOT NULL,
	[Model_ID_FK] [int] NOT NULL,
	[AssetTag] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Liste] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[ConfigurationItem] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_Asset] PRIMARY KEY CLUSTERED 
(
	[AssetID] ASC,
	[Model_ID_FK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO

SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepartmentNames](
	[Department_ID] [int] NOT NULL,
	[Department_Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK__Departme__DB9CAA7F28B808A7] PRIMARY KEY CLUSTERED 
(
	[Department_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO

SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[Location_ID] [int] NOT NULL,
	[Location_City] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Location_Code] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Location_Place] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Location_country] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[StandOrd_ID] [int] NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[Location_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO

SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OfficeOrIndustry](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_OfficeOrIndustry] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO

SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendor ](
	[Vendor_ID] [int] NOT NULL,
	[VendorName] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_Vendor] PRIMARY KEY CLUSTERED 
(
	[Vendor_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO

SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductNames](
	[Product_ID] [int] NOT NULL,
	[Model_ID_FK] [int] NOT NULL,
	[Vendor_ID_FK] [int] NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_ProductNames] PRIMARY KEY CLUSTERED 
(
	[Product_ID] ASC,
	[Model_ID_FK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO

SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SGID](
	[SGID] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[ID] [int] NULL,
	[Mitarbeiter] [float] NULL,
	[LastName] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[FirstName] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_SGID_1] PRIMARY KEY CLUSTERED 
(
	[SGID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO

SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetDataAbrasives](
	[ADAID] [int] NOT NULL,
	[Model_ID_FK] [int] NOT NULL,
	[DepName_ID_FK] [int] NOT NULL,
	[Prod_ID_FK] [int] NOT NULL,
	[SGID_FK] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Location_ID_FK] [int] NULL,
	[OfficeOrInd_ID_FK] [int] NULL,
	[Vendor_ID_FK] [int] NULL,
	[assetTag] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Location] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Department] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Substate] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Stockroom] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Usage] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[BusinessEntity] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Company] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[LastLogon] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Beschreibung] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[OfficeCommunicationsServerAddress] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Assigned] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Due] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[DueIn] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Installed] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Retireddate] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Ordered] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[PONumber] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Purchased] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[WarrantyExpiration] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[LeaseContract] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[ManagedBy] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[OwnedBy] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Parent] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Comments] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Owner] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[HistoricalEZV] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[DepreciationEffectiveEate] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[OutsideTheNetwork] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Prüfkommentar] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[GLAccount] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Office_IND] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_deleteAssetDataAbrasives] PRIMARY KEY CLUSTERED 
(
	[ADAID] ASC,
	[Model_ID_FK] ASC,
	[DepName_ID_FK] ASC,
	[Prod_ID_FK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO

SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Currency](
	[CurrencyID] [int] NOT NULL,
	[Currency] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_Currency] PRIMARY KEY CLUSTERED 
(
	[CurrencyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO

SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OriginalAssetDataAbrasivesMatch](
	[AssetTag] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[ModelCategory] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Model] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Office/Industry] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[State] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Substate] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Stockroom] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Usage] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Cost] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Currency] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[ConfigurationItem] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[BusinessEntity] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Company] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Manufacturer] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[CostCenter] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[GLAccount] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Department] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Location] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[SGID] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[LastLogon] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Beschreibung] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[OfficeCommunicationsServerAddress] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Assigned] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Due] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[DueIn] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Installed] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Retireddate] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Ordered] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[PONumber] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Purchased] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[WarrantyExpiration] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[LeaseContract] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[ManagedBy] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[OwnedBy] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[SerialNumber] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Parent] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Comments] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Owner] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[HistoricalEZV] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[DepreciationEffectiveEate] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[OutsideTheNetwork] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Prüfkommentar] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL
)

GO

SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OriginalAssetDataAbrasivesPrinter](
	[AssetTag] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[ModelCategory] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Model] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Office/Industry] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[State] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Substate] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Stockroom] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Usage] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Cost] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Currency] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[ConfigurationItem] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[BusinessEntity] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Company] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Manufacturer] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[CostCenter] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[GLAccount] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Department] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Location] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[AssignedTo] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Assigned] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Due] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[DueIn] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Installed] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[RetiredDate] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Ordered] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[PONumber] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Purchased] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[WarrantyExpiration] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[LeaseContract] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[ManagedBy] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[OwnedBy] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[SerialNumber] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Liste] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Parent] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Comments] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Owner] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[HistoricalEZV] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[DepreciationEffectiveDate] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[OutsideTheNetwork] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Prüfkommentar] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL
)

GO

SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OriginalPrinterAbrasives](
	[Location - this is just for ur info] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[City] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[LocationCode] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Manufacturer] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Model] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[SerialNumber] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[IPAddress] [float] NULL,
	[DisplayName] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Address] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[MACAddress] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Department] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[SystemName] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Status] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[CommunicationTime] [datetime] NULL,
	[PageCounter] [float] NULL,
	[RicohApp] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[RemoteConnector] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL
)

GO

SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OriginalSWListAbrasives](
	[Country] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Place] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[city] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[LocationCode] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[ProductName] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Vendor - Manufacturer] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[ProductEdition] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[MajorVersion] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[VersionNumber] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Count] [float] NULL,
	[StandardInstallationorMaster] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Kommentar] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL
)

GO

SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Price](
	[Price_ID] [int] NOT NULL,
	[Model_ID] [int] NOT NULL,
	[Currency_ID] [int] NULL,
	[Cost] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[CostCenter] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_Price_1] PRIMARY KEY CLUSTERED 
(
	[Price_ID] ASC,
	[Model_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO

SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[Status_ID] [int] NOT NULL,
	[StatusName] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK__Status__C33CEFE207220AB2] PRIMARY KEY CLUSTERED 
(
	[Status_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO

SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Printer_Computers](
	[InfoID] [int] NOT NULL,
	[Model_ID_FK] [int] NOT NULL,
	[Prod_ID_FK] [int] NOT NULL,
	[DepartmenNames_ID_FK] [int] NULL,
	[Location_ID_FK] [int] NULL,
	[Status_ID_FK] [int] NULL,
	[SerialNumber] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[RemoteConnector] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[IPAddress] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[MACAddress] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Address] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[SystemName] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Location] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Department] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[RicohApp] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[ManagedBy] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_DeletePrinter_Computers] PRIMARY KEY CLUSTERED 
(
	[InfoID] ASC,
	[Model_ID_FK] ASC,
	[Prod_ID_FK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO

SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Software](
	[ID] [int] NOT NULL,
	[ProdName_ID_FK] [int] NOT NULL,
	[Model_ID_FK] [int] NOT NULL,
	[Vendor_ID_FK] [int] NULL,
	[Major Version] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Version] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Count] [int] NULL,
	[Product Edition] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[LicenceNeeded] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[LicenceExisting] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_Software] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[ProdName_ID_FK] ASC,
	[Model_ID_FK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO

SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ProcedureName]
	@Youssefi [nvarchar](50) = NULL,
	@Bahar [nvarchar](50) = NULL
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT @Youssefi, @Bahar
END

GO

CREATE USER [cdc] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[cdc]
GO

CREATE SCHEMA [cdc] AUTHORIZATION [cdc]
GO

SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [cdc].[fn_cdc_get_all_changes_dbo_MyTable](@from_lsn [binary](10), @to_lsn [binary](10), @row_filter_option [nvarchar](30))
RETURNS TABLE AS 
return
	
	select NULL as __$start_lsn,
		NULL as __$seqval,
		NULL as __$operation,
		NULL as __$update_mask, NULL as [ID], NULL as [Name]
	where ( [sys].[fn_cdc_check_parameters]( N'dbo_MyTable', @from_lsn, @to_lsn, lower(rtrim(ltrim(@row_filter_option))), 0) = 0)

	union all
	
	select t.__$start_lsn as __$start_lsn,
		t.__$seqval as __$seqval,
		t.__$operation as __$operation,
		t.__$update_mask as __$update_mask, t.[ID], t.[Name]
	from [cdc].[dbo_MyTable_CT] t with (nolock)    
	where (lower(rtrim(ltrim(@row_filter_option))) = 'all')
	    and ( [sys].[fn_cdc_check_parameters]( N'dbo_MyTable', @from_lsn, @to_lsn, lower(rtrim(ltrim(@row_filter_option))), 0) = 1)
		and (t.__$operation = 1 or t.__$operation = 2 or t.__$operation = 4)
		and (t.__$start_lsn <= @to_lsn)
		and (t.__$start_lsn >= @from_lsn)
		
	union all	
		
	select t.__$start_lsn as __$start_lsn,
		t.__$seqval as __$seqval,
		t.__$operation as __$operation,
		t.__$update_mask as __$update_mask, t.[ID], t.[Name]
	from [cdc].[dbo_MyTable_CT] t with (nolock)     
	where (lower(rtrim(ltrim(@row_filter_option))) = 'all update old')
	    and ( [sys].[fn_cdc_check_parameters]( N'dbo_MyTable', @from_lsn, @to_lsn, lower(rtrim(ltrim(@row_filter_option))), 0) = 1)
		and (t.__$operation = 1 or t.__$operation = 2 or t.__$operation = 4 or
		     t.__$operation = 3 )
		and (t.__$start_lsn <= @to_lsn)
		and (t.__$start_lsn >= @from_lsn)
	
GO

SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [cdc].[fn_cdc_get_net_changes_dbo_MyTable](@from_lsn [binary](10), @to_lsn [binary](10), @row_filter_option [nvarchar](30))
RETURNS TABLE AS 
return

	select NULL as __$start_lsn,
		NULL as __$operation,
		NULL as __$update_mask, NULL as [ID], NULL as [Name]
	where ( [sys].[fn_cdc_check_parameters]( N'dbo_MyTable', @from_lsn, @to_lsn, lower(rtrim(ltrim(@row_filter_option))), 1) = 0)

	union all
	
	select __$start_lsn,
	    case __$count_62276C4E
	    when 1 then __$operation
	    else
			case __$min_op_62276C4E 
				when 2 then 2
				when 4 then
				case __$operation
					when 1 then 1
					else 4
					end
				else
				case __$operation
					when 2 then 4
					when 4 then 4
					else 1
					end
			end
		end as __$operation,
		null as __$update_mask , [ID], [Name]
	from
	(
		select t.__$start_lsn as __$start_lsn, __$operation,
		case __$count_62276C4E 
		when 1 then __$operation 
		else
		(	select top 1 c.__$operation
			from [cdc].[dbo_MyTable_CT] c with (nolock)   
			where  ( (c.[ID] = t.[ID]) )  
			and ((c.__$operation = 2) or (c.__$operation = 4) or (c.__$operation = 1))
			and (c.__$start_lsn <= @to_lsn)
			and (c.__$start_lsn >= @from_lsn)
			order by c.__$seqval) end __$min_op_62276C4E, __$count_62276C4E, t.[ID], t.[Name] 
		from [cdc].[dbo_MyTable_CT] t with (nolock) inner join 
		(	select  r.[ID], max(r.__$seqval) as __$max_seqval_62276C4E,
		    count(*) as __$count_62276C4E 
			from [cdc].[dbo_MyTable_CT] r with (nolock)   
			where  (r.__$start_lsn <= @to_lsn)
			and (r.__$start_lsn >= @from_lsn)
			group by   r.[ID]) m
		on t.__$seqval = m.__$max_seqval_62276C4E and
		    ( (t.[ID] = m.[ID]) ) 	
		where lower(rtrim(ltrim(@row_filter_option))) = N'all'
			and ( [sys].[fn_cdc_check_parameters]( N'dbo_MyTable', @from_lsn, @to_lsn, lower(rtrim(ltrim(@row_filter_option))), 1) = 1)
			and (t.__$start_lsn <= @to_lsn)
			and (t.__$start_lsn >= @from_lsn)
			and ((t.__$operation = 2) or (t.__$operation = 4) or 
				 ((t.__$operation = 1) and
				  (2 not in 
				 		(	select top 1 c.__$operation
							from [cdc].[dbo_MyTable_CT] c with (nolock) 
							where  ( (c.[ID] = t.[ID]) )  
							and ((c.__$operation = 2) or (c.__$operation = 4) or (c.__$operation = 1))
							and (c.__$start_lsn <= @to_lsn)
							and (c.__$start_lsn >= @from_lsn)
							order by c.__$seqval
						 ) 
	 			   )
	 			 )
	 			) 	
	) Q
	
	union all
	
	select __$start_lsn,
	    case __$count_62276C4E
	    when 1 then __$operation
	    else
			case __$min_op_62276C4E 
				when 2 then 2
				when 4 then
				case __$operation
					when 1 then 1
					else 4
					end
				else
				case __$operation
					when 2 then 4
					when 4 then 4
					else 1
					end
			end
		end as __$operation,
		case __$count_62276C4E
		when 1 then
			case __$operation
			when 4 then __$update_mask
			else null
			end
		else	
			case __$min_op_62276C4E 
			when 2 then null
			else
				case __$operation
				when 1 then null
				else __$update_mask 
				end
			end	
		end as __$update_mask , [ID], [Name]
	from
	(
		select t.__$start_lsn as __$start_lsn, __$operation,
		case __$count_62276C4E 
		when 1 then __$operation 
		else
		(	select top 1 c.__$operation
			from [cdc].[dbo_MyTable_CT] c with (nolock)
			where  ( (c.[ID] = t.[ID]) )  
			and ((c.__$operation = 2) or (c.__$operation = 4) or (c.__$operation = 1))
			and (c.__$start_lsn <= @to_lsn)
			and (c.__$start_lsn >= @from_lsn)
			order by c.__$seqval) end __$min_op_62276C4E, __$count_62276C4E, 
		m.__$update_mask , t.[ID], t.[Name]
		from [cdc].[dbo_MyTable_CT] t with (nolock) inner join 
		(	select  r.[ID], max(r.__$seqval) as __$max_seqval_62276C4E,
		    count(*) as __$count_62276C4E, 
		    [sys].[ORMask](r.__$update_mask) as __$update_mask
			from [cdc].[dbo_MyTable_CT] r with (nolock)
			where  (r.__$start_lsn <= @to_lsn)
			and (r.__$start_lsn >= @from_lsn)
			group by   r.[ID]) m
		on t.__$seqval = m.__$max_seqval_62276C4E and
		    ( (t.[ID] = m.[ID]) ) 	
		where lower(rtrim(ltrim(@row_filter_option))) = N'all with mask'
			and ( [sys].[fn_cdc_check_parameters]( N'dbo_MyTable', @from_lsn, @to_lsn, lower(rtrim(ltrim(@row_filter_option))), 1) = 1)
			and (t.__$start_lsn <= @to_lsn)
			and (t.__$start_lsn >= @from_lsn)
			and ((t.__$operation = 2) or (t.__$operation = 4) or 
				 ((t.__$operation = 1) and
				  (2 not in 
				 		(	select top 1 c.__$operation
							from [cdc].[dbo_MyTable_CT] c with (nolock)
							where  ( (c.[ID] = t.[ID]) )  
							and ((c.__$operation = 2) or (c.__$operation = 4) or (c.__$operation = 1))
							and (c.__$start_lsn <= @to_lsn)
							and (c.__$start_lsn >= @from_lsn)
							order by c.__$seqval
						 ) 
	 			   )
	 			 )
	 			) 	
	) Q
	
	union all
	
		select t.__$start_lsn as __$start_lsn,
		case t.__$operation
			when 1 then 1
			else 5
		end as __$operation,
		null as __$update_mask , t.[ID], t.[Name]
		from [cdc].[dbo_MyTable_CT] t  with (nolock) inner join 
		(	select  r.[ID], max(r.__$seqval) as __$max_seqval_62276C4E
			from [cdc].[dbo_MyTable_CT] r with (nolock)
			where  (r.__$start_lsn <= @to_lsn)
			and (r.__$start_lsn >= @from_lsn)
			group by   r.[ID]) m
		on t.__$seqval = m.__$max_seqval_62276C4E and
		    ( (t.[ID] = m.[ID]) ) 	
		where lower(rtrim(ltrim(@row_filter_option))) = N'all with merge'
			and ( [sys].[fn_cdc_check_parameters]( N'dbo_MyTable', @from_lsn, @to_lsn, lower(rtrim(ltrim(@row_filter_option))), 1) = 1)
			and (t.__$start_lsn <= @to_lsn)
			and (t.__$start_lsn >= @from_lsn)
			and ((t.__$operation = 2) or (t.__$operation = 4) or 
				 ((t.__$operation = 1) and 
				   (2 not in 
				 		(	select top 1 c.__$operation
							from [cdc].[dbo_MyTable_CT] c with (nolock)
							where  ( (c.[ID] = t.[ID]) )  
							and ((c.__$operation = 2) or (c.__$operation = 4) or (c.__$operation = 1))
							and (c.__$start_lsn <= @to_lsn)
							and (c.__$start_lsn >= @from_lsn)
							order by c.__$seqval
						 ) 
	 				)
	 			 )
	 			)
	 
GO

SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_PC_Laptop]  AS 
SELECT     TOP (100) PERCENT dbo.AssetDataAbrasives.ADAID AS [Asset Data ID], dbo.ModelCategory.Name AS [Model Category], dbo.Location.LCity AS Location, 
                      dbo.DepartmentNames.DepName AS [Department name], dbo.AssetDataAbrasives.SGID_FK AS SGID, dbo.SGID.LastName AS [Last name], 
                      dbo.SGID.FirstName AS [First name]
FROM         dbo.AssetDataAbrasives INNER JOIN
                      dbo.Location ON dbo.AssetDataAbrasives.LID_FK = dbo.Location.LID INNER JOIN
                      dbo.ModelCategory ON dbo.AssetDataAbrasives.Model_ID_fk = dbo.ModelCategory.Model_ID INNER JOIN
                      dbo.[Vendor ] ON dbo.AssetDataAbrasives.Vendor_ID_FK = dbo.[Vendor ].VendID INNER JOIN
                      dbo.DepartmentNames ON dbo.AssetDataAbrasives.DepName_ID_FK = dbo.DepartmentNames.DepID INNER JOIN
                      dbo.SGID ON dbo.AssetDataAbrasives.SGID_FK = dbo.SGID.SGID
ORDER BY Location


GO

SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Software]  AS 
SELECT     dbo.ModelCategory.Name AS [Model category], dbo.ProductNames.Name AS [Product name], dbo.Software.Version AS [Version Number], dbo.Software.[Major Version], 
                      dbo.Software.[Product Edition], dbo.Software.Count, dbo.Software.LicenceNeeded AS [Licence needed], dbo.Software.LicenceExisting AS [Licence exist]
FROM         dbo.Software INNER JOIN
                      dbo.ProductNames ON dbo.Software.ProdNameID_FK = dbo.ProductNames.Prod_ID INNER JOIN
                      dbo.ModelCategory ON dbo.Software.ModelID_FK = dbo.ModelCategory.Model_ID


GO

SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Viow_Of_Printers]  AS 
SELECT     TOP (100) PERCENT dbo.Printer_Computers.InfoID AS ID, dbo.ProductNames.Name AS [Product name], dbo.ModelCategory.Name AS [Model category], 
                      dbo.[Vendor ].VendorName AS [Vendor name], dbo.Location.LCity AS Location, dbo.DepartmentNames.DepName AS [Department name], 
                      dbo.Printer_Computers.SerialNumber AS [Serial number], dbo.Printer_Computers.ManagedBy, dbo.Printer_Computers.IPAddress, 
                      dbo.Status.StatusName AS [Status name]
FROM         dbo.Printer_Computers INNER JOIN
                      dbo.ModelCategory ON dbo.Printer_Computers.Model_ID_FK = dbo.ModelCategory.Model_ID INNER JOIN
                      dbo.Location ON dbo.Printer_Computers.LocationID_FK = dbo.Location.LID INNER JOIN
                      dbo.DepartmentNames ON dbo.Printer_Computers.DepartmenNamesID_FK = dbo.DepartmentNames.DepID INNER JOIN
                      dbo.ProductNames ON dbo.Printer_Computers.Prod_ID_FK = dbo.ProductNames.Prod_ID INNER JOIN
                      dbo.Status ON dbo.Printer_Computers.StatusID_FK = dbo.Status.StID INNER JOIN
                      dbo.[Vendor ] ON dbo.[Vendor ].VendID = dbo.ProductNames.VendID
WHERE     (dbo.ModelCategory.Name = N'Printer')
ORDER BY Location


GO

CREATE USER [BachelorArbeit.BaharYoussefi] FOR LOGIN [ZA\B8347886] WITH DEFAULT_SCHEMA=[dbo]
GO

CREATE ROLE [cdc_MyTable] AUTHORIZATION [cdc]
GO

ALTER TABLE [dbo].[Asset]  WITH CHECK ADD  CONSTRAINT [Model_Category_Model_ID] FOREIGN KEY([Model_ID_FK])
REFERENCES [dbo].[ModelCategory] ([Model_ID])
GO
ALTER TABLE [dbo].[Asset] CHECK CONSTRAINT [Model_Category_Model_ID]
GO

ALTER TABLE [dbo].[ProductNames]  WITH CHECK ADD  CONSTRAINT [FK_ProductNames_ModelCategory] FOREIGN KEY([Model_ID_FK])
REFERENCES [dbo].[ModelCategory] ([Model_ID])
GO
ALTER TABLE [dbo].[ProductNames] CHECK CONSTRAINT [FK_ProductNames_ModelCategory]
GO

ALTER TABLE [dbo].[ProductNames]  WITH CHECK ADD  CONSTRAINT [FK_ProductNames_Vendor ] FOREIGN KEY([Vendor_ID_FK])
REFERENCES [dbo].[Vendor ] ([Vendor_ID])
GO
ALTER TABLE [dbo].[ProductNames] CHECK CONSTRAINT [FK_ProductNames_Vendor ]
GO

ALTER TABLE [dbo].[AssetDataAbrasives]  WITH CHECK ADD  CONSTRAINT [FK_AssetDataAbrasives_DepartmentNames] FOREIGN KEY([DepName_ID_FK])
REFERENCES [dbo].[DepartmentNames] ([Department_ID])
GO
ALTER TABLE [dbo].[AssetDataAbrasives] CHECK CONSTRAINT [FK_AssetDataAbrasives_DepartmentNames]
GO

ALTER TABLE [dbo].[AssetDataAbrasives]  WITH CHECK ADD  CONSTRAINT [FK_AssetDataAbrasives_Location] FOREIGN KEY([Location_ID_FK])
REFERENCES [dbo].[Location] ([Location_ID])
GO
ALTER TABLE [dbo].[AssetDataAbrasives] CHECK CONSTRAINT [FK_AssetDataAbrasives_Location]
GO

ALTER TABLE [dbo].[AssetDataAbrasives]  WITH CHECK ADD  CONSTRAINT [FK_AssetDataAbrasives_ModelCategory] FOREIGN KEY([Model_ID_FK])
REFERENCES [dbo].[ModelCategory] ([Model_ID])
GO
ALTER TABLE [dbo].[AssetDataAbrasives] CHECK CONSTRAINT [FK_AssetDataAbrasives_ModelCategory]
GO

ALTER TABLE [dbo].[AssetDataAbrasives]  WITH CHECK ADD  CONSTRAINT [FK_AssetDataAbrasives_OfficeOrIndustry] FOREIGN KEY([OfficeOrInd_ID_FK])
REFERENCES [dbo].[OfficeOrIndustry] ([ID])
GO
ALTER TABLE [dbo].[AssetDataAbrasives] CHECK CONSTRAINT [FK_AssetDataAbrasives_OfficeOrIndustry]
GO

ALTER TABLE [dbo].[AssetDataAbrasives]  WITH CHECK ADD  CONSTRAINT [FK_AssetDataAbrasives_ProductNames] FOREIGN KEY([Prod_ID_FK], [Model_ID_FK])
REFERENCES [dbo].[ProductNames] ([Product_ID], [Model_ID_FK])
GO
ALTER TABLE [dbo].[AssetDataAbrasives] CHECK CONSTRAINT [FK_AssetDataAbrasives_ProductNames]
GO

ALTER TABLE [dbo].[AssetDataAbrasives]  WITH CHECK ADD  CONSTRAINT [FK_AssetDataAbrasives_SGID] FOREIGN KEY([SGID_FK])
REFERENCES [dbo].[SGID] ([SGID])
GO
ALTER TABLE [dbo].[AssetDataAbrasives] CHECK CONSTRAINT [FK_AssetDataAbrasives_SGID]
GO

ALTER TABLE [dbo].[AssetDataAbrasives]  WITH CHECK ADD  CONSTRAINT [FK_AssetDataAbrasives_Vendor ] FOREIGN KEY([Vendor_ID_FK])
REFERENCES [dbo].[Vendor ] ([Vendor_ID])
GO
ALTER TABLE [dbo].[AssetDataAbrasives] CHECK CONSTRAINT [FK_AssetDataAbrasives_Vendor ]
GO

ALTER TABLE [dbo].[Price]  WITH CHECK ADD  CONSTRAINT [Currency_Currency_ID] FOREIGN KEY([Currency_ID])
REFERENCES [dbo].[Currency] ([CurrencyID])
GO
ALTER TABLE [dbo].[Price] CHECK CONSTRAINT [Currency_Currency_ID]
GO

ALTER TABLE [dbo].[Price]  WITH CHECK ADD  CONSTRAINT [Model_Category_ModelIDOfCategory] FOREIGN KEY([Model_ID])
REFERENCES [dbo].[ModelCategory] ([Model_ID])
GO
ALTER TABLE [dbo].[Price] CHECK CONSTRAINT [Model_Category_ModelIDOfCategory]
GO

ALTER TABLE [dbo].[Printer_Computers]  WITH CHECK ADD  CONSTRAINT [FK_Printer_Computers_DepartmentNames] FOREIGN KEY([DepartmenNames_ID_FK])
REFERENCES [dbo].[DepartmentNames] ([Department_ID])
GO
ALTER TABLE [dbo].[Printer_Computers] CHECK CONSTRAINT [FK_Printer_Computers_DepartmentNames]
GO

ALTER TABLE [dbo].[Printer_Computers]  WITH CHECK ADD  CONSTRAINT [FK_Printer_Computers_Location] FOREIGN KEY([Location_ID_FK])
REFERENCES [dbo].[Location] ([Location_ID])
GO
ALTER TABLE [dbo].[Printer_Computers] CHECK CONSTRAINT [FK_Printer_Computers_Location]
GO

ALTER TABLE [dbo].[Printer_Computers]  WITH CHECK ADD  CONSTRAINT [FK_Printer_Computers_ModelCategory] FOREIGN KEY([Model_ID_FK])
REFERENCES [dbo].[ModelCategory] ([Model_ID])
GO
ALTER TABLE [dbo].[Printer_Computers] CHECK CONSTRAINT [FK_Printer_Computers_ModelCategory]
GO

ALTER TABLE [dbo].[Printer_Computers]  WITH CHECK ADD  CONSTRAINT [FK_Printer_Computers_ProductNames1] FOREIGN KEY([Prod_ID_FK], [Model_ID_FK])
REFERENCES [dbo].[ProductNames] ([Product_ID], [Model_ID_FK])
GO
ALTER TABLE [dbo].[Printer_Computers] CHECK CONSTRAINT [FK_Printer_Computers_ProductNames1]
GO

ALTER TABLE [dbo].[Printer_Computers]  WITH CHECK ADD  CONSTRAINT [FK_Printer_Computers_Status] FOREIGN KEY([Status_ID_FK])
REFERENCES [dbo].[Status] ([Status_ID])
GO
ALTER TABLE [dbo].[Printer_Computers] CHECK CONSTRAINT [FK_Printer_Computers_Status]
GO

ALTER TABLE [dbo].[Software]  WITH CHECK ADD  CONSTRAINT [FK_Software_ProductNames1] FOREIGN KEY([ProdName_ID_FK], [Model_ID_FK])
REFERENCES [dbo].[ProductNames] ([Product_ID], [Model_ID_FK])
GO
ALTER TABLE [dbo].[Software] CHECK CONSTRAINT [FK_Software_ProductNames1]
GO

ALTER TABLE [dbo].[Software]  WITH CHECK ADD  CONSTRAINT [FK_Software_Vendor ] FOREIGN KEY([Vendor_ID_FK])
REFERENCES [dbo].[Vendor ] ([Vendor_ID])
GO
ALTER TABLE [dbo].[Software] CHECK CONSTRAINT [FK_Software_Vendor ]
GO

