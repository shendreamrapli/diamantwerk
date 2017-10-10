CREATE TABLE [dbo].[Asset] (
    [AssetID]           INT            IDENTITY (1, 1) NOT NULL,
    [Model_ID_FK]       INT            NOT NULL,
    [AssetTag]          NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Liste]             NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [ConfigurationItem] NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL
);


GO
CREATE TABLE [dbo].[AssetDataAbrasives] (
    [ADAID]                             INT            NOT NULL,
    [Model_ID_FK]                       INT            NOT NULL,
    [DepName_ID_FK]                     INT            NOT NULL,
    [Prod_ID_FK]                        INT            NOT NULL,
    [SGID_FK]                           NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Location_ID_FK]                    INT            NULL,
    [OfficeOrInd_ID_FK]                 INT            NULL,
    [Vendor_ID_FK]                      INT            NULL,
    [assetTag]                          NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Location]                          NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Department]                        NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Substate]                          NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Stockroom]                         NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Usage]                             NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [BusinessEntity]                    NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Company]                           NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [LastLogon]                         NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Beschreibung]                      NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [OfficeCommunicationsServerAddress] NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Assigned]                          NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Due]                               NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [DueIn]                             NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Installed]                         NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Retireddate]                       NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Ordered]                           NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [PONumber]                          NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Purchased]                         NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [WarrantyExpiration]                NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [LeaseContract]                     NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [ManagedBy]                         NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [OwnedBy]                           NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Parent]                            NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Comments]                          NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Owner]                             NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [HistoricalEZV]                     NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [DepreciationEffectiveEate]         NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [OutsideTheNetwork]                 NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Prüfkommentar]                     NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [GLAccount]                         NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Office_IND]                        NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL
);


GO
CREATE TABLE [dbo].[Currency] (
    [CurrencyID] INT            NOT NULL,
    [Currency]   NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL
);


GO
CREATE TABLE [dbo].[DepartmentNames] (
    [Department_ID]   INT            NOT NULL,
    [Department_Name] NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL
);


GO
CREATE TABLE [dbo].[Location] (
    [Location_ID]      INT            NOT NULL,
    [Location_City]    NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Location_Code]    NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Location_Place]   NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Location_country] NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [StandOrd_ID]      INT            NULL
);


GO
CREATE TABLE [dbo].[ModelCategory] (
    [Model_ID] INT            IDENTITY (1, 1) NOT NULL,
    [Name]     NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL
);


GO
CREATE TABLE [dbo].[OfficeOrIndustry] (
    [ID]   INT            IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL
);


GO
CREATE TABLE [dbo].[OriginalAssetDataAbrasivesMatch] (
    [AssetTag]                          NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [ModelCategory]                     NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Model]                             NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Office/Industry]                   NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [State]                             NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Substate]                          NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Stockroom]                         NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Usage]                             NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Cost]                              NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Currency]                          NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [ConfigurationItem]                 NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [BusinessEntity]                    NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Company]                           NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Manufacturer]                      NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [CostCenter]                        NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [GLAccount]                         NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Department]                        NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Location]                          NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [SGID]                              NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [LastLogon]                         NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Beschreibung]                      NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [OfficeCommunicationsServerAddress] NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Assigned]                          NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Due]                               NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [DueIn]                             NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Installed]                         NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Retireddate]                       NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Ordered]                           NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [PONumber]                          NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Purchased]                         NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [WarrantyExpiration]                NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [LeaseContract]                     NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [ManagedBy]                         NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [OwnedBy]                           NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [SerialNumber]                      NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Parent]                            NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Comments]                          NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Owner]                             NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [HistoricalEZV]                     NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [DepreciationEffectiveEate]         NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [OutsideTheNetwork]                 NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Prüfkommentar]                     NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL
);


GO
CREATE TABLE [dbo].[OriginalAssetDataAbrasivesPrinter] (
    [AssetTag]                  NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [ModelCategory]             NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Model]                     NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Office/Industry]           NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [State]                     NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Substate]                  NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Stockroom]                 NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Usage]                     NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Cost]                      NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Currency]                  NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [ConfigurationItem]         NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [BusinessEntity]            NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Company]                   NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Manufacturer]              NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [CostCenter]                NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [GLAccount]                 NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Department]                NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Location]                  NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [AssignedTo]                NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Assigned]                  NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Due]                       NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [DueIn]                     NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Installed]                 NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [RetiredDate]               NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Ordered]                   NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [PONumber]                  NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Purchased]                 NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [WarrantyExpiration]        NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [LeaseContract]             NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [ManagedBy]                 NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [OwnedBy]                   NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [SerialNumber]              NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Liste]                     NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Parent]                    NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Comments]                  NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Owner]                     NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [HistoricalEZV]             NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [DepreciationEffectiveDate] NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [OutsideTheNetwork]         NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Prüfkommentar]             NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL
);


GO
CREATE TABLE [dbo].[OriginalPrinterAbrasives] (
    [Location - this is just for ur info] NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [City]                                NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [LocationCode]                        NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Manufacturer]                        NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Model]                               NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [SerialNumber]                        NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [IPAddress]                           FLOAT          NULL,
    [DisplayName]                         NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Address]                             NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [MACAddress]                          NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Department]                          NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [SystemName]                          NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Status]                              NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [CommunicationTime]                   DATETIME       NULL,
    [PageCounter]                         FLOAT          NULL,
    [RicohApp]                            NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [RemoteConnector]                     NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL
);


GO
CREATE TABLE [dbo].[OriginalSWListAbrasives] (
    [Country]                      NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Place]                        NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [city]                         NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [LocationCode]                 NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [ProductName]                  NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Vendor - Manufacturer]        NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [ProductEdition]               NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [MajorVersion]                 NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [VersionNumber]                NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Count]                        FLOAT          NULL,
    [StandardInstallationorMaster] NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Kommentar]                    NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL
);


GO
CREATE TABLE [dbo].[Price] (
    [Price_ID]    INT            NOT NULL,
    [Model_ID]    INT            NOT NULL,
    [Currency_ID] INT            NULL,
    [Cost]        NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [CostCenter]  NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL
);


GO
CREATE TABLE [dbo].[Printer_Computers] (
    [InfoID]               INT            NOT NULL,
    [Model_ID_FK]          INT            NOT NULL,
    [Prod_ID_FK]           INT            NOT NULL,
    [DepartmenNames_ID_FK] INT            NULL,
    [Location_ID_FK]       INT            NULL,
    [Status_ID_FK]         INT            NULL,
    [SerialNumber]         NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [RemoteConnector]      NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [IPAddress]            NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [MACAddress]           NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Address]              NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [SystemName]           NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Location]             NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Department]           NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [RicohApp]             NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [ManagedBy]            NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL
);


GO
CREATE TABLE [dbo].[ProductNames] (
    [Product_ID]   INT            NOT NULL,
    [Model_ID_FK]  INT            NOT NULL,
    [Vendor_ID_FK] INT            NULL,
    [Name]         NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL
);


GO
CREATE TABLE [dbo].[SGID] (
    [SGID]        NVARCHAR (255) COLLATE Latin1_General_CI_AS NOT NULL,
    [ID]          INT            NULL,
    [Mitarbeiter] FLOAT          NULL,
    [LastName]    NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [FirstName]   NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL
);


GO
CREATE TABLE [dbo].[Software] (
    [ID]              INT            NOT NULL,
    [ProdName_ID_FK]  INT            NOT NULL,
    [Model_ID_FK]     INT            NOT NULL,
    [Vendor_ID_FK]    INT            NULL,
    [Major Version]   NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Version]         NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [Count]           INT            NULL,
    [Product Edition] NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [LicenceNeeded]   NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL,
    [LicenceExisting] NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL
);


GO
CREATE TABLE [dbo].[Status] (
    [Status_ID]  INT            NOT NULL,
    [StatusName] NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL
);


GO
CREATE TABLE [dbo].[Vendor ] (
    [Vendor_ID]  INT            NOT NULL,
    [VendorName] NVARCHAR (255) COLLATE Latin1_General_CI_AS NULL
);


GO
CREATE VIEW [dbo].[View_PC_Laptop]
AS
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
;


GO
CREATE VIEW [dbo].[View_Software]
AS
SELECT     dbo.ModelCategory.Name AS [Model category], dbo.ProductNames.Name AS [Product name], dbo.Software.Version AS [Version Number], dbo.Software.[Major Version], 
                      dbo.Software.[Product Edition], dbo.Software.Count, dbo.Software.LicenceNeeded AS [Licence needed], dbo.Software.LicenceExisting AS [Licence exist]
FROM         dbo.Software INNER JOIN
                      dbo.ProductNames ON dbo.Software.ProdNameID_FK = dbo.ProductNames.Prod_ID INNER JOIN
                      dbo.ModelCategory ON dbo.Software.ModelID_FK = dbo.ModelCategory.Model_ID
;


GO
CREATE VIEW [dbo].[Viow_Of_Printers]
AS
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
;


GO
CREATE PROCEDURE [dbo].[ProcedureName]
@Youssefi NVARCHAR (50)=NULL, @Bahar NVARCHAR (50)=NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT @Youssefi, @Bahar
END



GO
CREATE FUNCTION [cdc].[fn_cdc_get_all_changes_dbo_MyTable]
(@from_lsn BINARY (10), @to_lsn BINARY (10), @row_filter_option NVARCHAR (30))
RETURNS TABLE 
AS
RETURN 
    
	
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
CREATE FUNCTION [cdc].[fn_cdc_get_net_changes_dbo_MyTable]
(@from_lsn BINARY (10), @to_lsn BINARY (10), @row_filter_option NVARCHAR (30))
RETURNS TABLE 
AS
RETURN 
    

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
ALTER TABLE [dbo].[Asset]
    ADD CONSTRAINT [PK_Asset] PRIMARY KEY CLUSTERED ([AssetID] ASC, [Model_ID_FK] ASC);


GO
ALTER TABLE [dbo].[AssetDataAbrasives]
    ADD CONSTRAINT [PK_deleteAssetDataAbrasives] PRIMARY KEY CLUSTERED ([ADAID] ASC, [Model_ID_FK] ASC, [DepName_ID_FK] ASC, [Prod_ID_FK] ASC);


GO
ALTER TABLE [dbo].[Currency]
    ADD CONSTRAINT [PK_Currency] PRIMARY KEY CLUSTERED ([CurrencyID] ASC);


GO
ALTER TABLE [dbo].[DepartmentNames]
    ADD CONSTRAINT [PK__Departme__DB9CAA7F28B808A7] PRIMARY KEY CLUSTERED ([Department_ID] ASC);


GO
ALTER TABLE [dbo].[Location]
    ADD CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED ([Location_ID] ASC);


GO
ALTER TABLE [dbo].[ModelCategory]
    ADD CONSTRAINT [PK_Model_Category] PRIMARY KEY CLUSTERED ([Model_ID] ASC);


GO
ALTER TABLE [dbo].[OfficeOrIndustry]
    ADD CONSTRAINT [PK_OfficeOrIndustry] PRIMARY KEY CLUSTERED ([ID] ASC);


GO
ALTER TABLE [dbo].[Price]
    ADD CONSTRAINT [PK_Price_1] PRIMARY KEY CLUSTERED ([Price_ID] ASC, [Model_ID] ASC);


GO
ALTER TABLE [dbo].[Printer_Computers]
    ADD CONSTRAINT [PK_DeletePrinter_Computers] PRIMARY KEY CLUSTERED ([InfoID] ASC, [Model_ID_FK] ASC, [Prod_ID_FK] ASC);


GO
ALTER TABLE [dbo].[ProductNames]
    ADD CONSTRAINT [PK_ProductNames] PRIMARY KEY CLUSTERED ([Product_ID] ASC, [Model_ID_FK] ASC);


GO
ALTER TABLE [dbo].[SGID]
    ADD CONSTRAINT [PK_SGID_1] PRIMARY KEY CLUSTERED ([SGID] ASC);


GO
ALTER TABLE [dbo].[Software]
    ADD CONSTRAINT [PK_Software] PRIMARY KEY CLUSTERED ([ID] ASC, [ProdName_ID_FK] ASC, [Model_ID_FK] ASC);


GO
ALTER TABLE [dbo].[Status]
    ADD CONSTRAINT [PK__Status__C33CEFE207220AB2] PRIMARY KEY CLUSTERED ([Status_ID] ASC);


GO
ALTER TABLE [dbo].[Vendor ]
    ADD CONSTRAINT [PK_Vendor] PRIMARY KEY CLUSTERED ([Vendor_ID] ASC);


GO
ALTER TABLE [dbo].[Asset]
    ADD CONSTRAINT [Model_Category_Model_ID] FOREIGN KEY ([Model_ID_FK]) REFERENCES [dbo].[ModelCategory] ([Model_ID]);


GO
ALTER TABLE [dbo].[AssetDataAbrasives]
    ADD CONSTRAINT [FK_AssetDataAbrasives_DepartmentNames] FOREIGN KEY ([DepName_ID_FK]) REFERENCES [dbo].[DepartmentNames] ([Department_ID]);


GO
ALTER TABLE [dbo].[AssetDataAbrasives]
    ADD CONSTRAINT [FK_AssetDataAbrasives_Location] FOREIGN KEY ([Location_ID_FK]) REFERENCES [dbo].[Location] ([Location_ID]);


GO
ALTER TABLE [dbo].[AssetDataAbrasives]
    ADD CONSTRAINT [FK_AssetDataAbrasives_ModelCategory] FOREIGN KEY ([Model_ID_FK]) REFERENCES [dbo].[ModelCategory] ([Model_ID]);


GO
ALTER TABLE [dbo].[AssetDataAbrasives]
    ADD CONSTRAINT [FK_AssetDataAbrasives_OfficeOrIndustry] FOREIGN KEY ([OfficeOrInd_ID_FK]) REFERENCES [dbo].[OfficeOrIndustry] ([ID]);


GO
ALTER TABLE [dbo].[AssetDataAbrasives]
    ADD CONSTRAINT [FK_AssetDataAbrasives_ProductNames] FOREIGN KEY ([Prod_ID_FK], [Model_ID_FK]) REFERENCES [dbo].[ProductNames] ([Product_ID], [Model_ID_FK]);


GO
ALTER TABLE [dbo].[AssetDataAbrasives]
    ADD CONSTRAINT [FK_AssetDataAbrasives_SGID] FOREIGN KEY ([SGID_FK]) REFERENCES [dbo].[SGID] ([SGID]);


GO
ALTER TABLE [dbo].[AssetDataAbrasives]
    ADD CONSTRAINT [FK_AssetDataAbrasives_Vendor ] FOREIGN KEY ([Vendor_ID_FK]) REFERENCES [dbo].[Vendor ] ([Vendor_ID]);


GO
ALTER TABLE [dbo].[Price]
    ADD CONSTRAINT [Currency_Currency_ID] FOREIGN KEY ([Currency_ID]) REFERENCES [dbo].[Currency] ([CurrencyID]);


GO
ALTER TABLE [dbo].[Price]
    ADD CONSTRAINT [Model_Category_ModelIDOfCategory] FOREIGN KEY ([Model_ID]) REFERENCES [dbo].[ModelCategory] ([Model_ID]);


GO
ALTER TABLE [dbo].[Printer_Computers]
    ADD CONSTRAINT [FK_Printer_Computers_DepartmentNames] FOREIGN KEY ([DepartmenNames_ID_FK]) REFERENCES [dbo].[DepartmentNames] ([Department_ID]);


GO
ALTER TABLE [dbo].[Printer_Computers]
    ADD CONSTRAINT [FK_Printer_Computers_Location] FOREIGN KEY ([Location_ID_FK]) REFERENCES [dbo].[Location] ([Location_ID]);


GO
ALTER TABLE [dbo].[Printer_Computers]
    ADD CONSTRAINT [FK_Printer_Computers_ModelCategory] FOREIGN KEY ([Model_ID_FK]) REFERENCES [dbo].[ModelCategory] ([Model_ID]);


GO
ALTER TABLE [dbo].[Printer_Computers]
    ADD CONSTRAINT [FK_Printer_Computers_ProductNames1] FOREIGN KEY ([Prod_ID_FK], [Model_ID_FK]) REFERENCES [dbo].[ProductNames] ([Product_ID], [Model_ID_FK]);


GO
ALTER TABLE [dbo].[Printer_Computers]
    ADD CONSTRAINT [FK_Printer_Computers_Status] FOREIGN KEY ([Status_ID_FK]) REFERENCES [dbo].[Status] ([Status_ID]);


GO
ALTER TABLE [dbo].[ProductNames]
    ADD CONSTRAINT [FK_ProductNames_ModelCategory] FOREIGN KEY ([Model_ID_FK]) REFERENCES [dbo].[ModelCategory] ([Model_ID]);


GO
ALTER TABLE [dbo].[ProductNames]
    ADD CONSTRAINT [FK_ProductNames_Vendor ] FOREIGN KEY ([Vendor_ID_FK]) REFERENCES [dbo].[Vendor ] ([Vendor_ID]);


GO
ALTER TABLE [dbo].[Software]
    ADD CONSTRAINT [FK_Software_ProductNames1] FOREIGN KEY ([ProdName_ID_FK], [Model_ID_FK]) REFERENCES [dbo].[ProductNames] ([Product_ID], [Model_ID_FK]);


GO
ALTER TABLE [dbo].[Software]
    ADD CONSTRAINT [FK_Software_Vendor ] FOREIGN KEY ([Vendor_ID_FK]) REFERENCES [dbo].[Vendor ] ([Vendor_ID]);


GO
CREATE LOGIN [ZA\B8347886]
    FROM WINDOWS WITH DEFAULT_LANGUAGE = [British];


GO
CREATE LOGIN [ZA\Geoit]
    FROM WINDOWS WITH DEFAULT_LANGUAGE = [us_english];


GO
CREATE ROLE [cdc_MyTable]
    AUTHORIZATION [cdc];


GO
CREATE USER [BachelorArbeit.BaharYoussefi] FOR LOGIN [ZA\B8347886]
    WITH DEFAULT_SCHEMA = [dbo];


GO
CREATE USER [cdc] WITHOUT LOGIN
    WITH DEFAULT_SCHEMA = [cdc];


GO
CREATE SCHEMA [cdc]
    AUTHORIZATION [cdc];

