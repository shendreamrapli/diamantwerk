USE BachlerArbeit
go

CREATE TABLE Location(
	LID int identity (1,1) NOT NULL,
	LCity   nvarchar (255) NULL,
	LCode   nvarchar  (255) NULL,
	LPlace   nvarchar  (255) NULL,
	Lcountry   nvarchar  (255) NULL,
 
) 