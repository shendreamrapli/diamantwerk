--Creat Table Department **** Author: Bahar Youssefi **** Date 02.12.2016

USE BachlerArbeit
go
-- Creat the table
create table Department(
	ID int NOT NULL PRIMARY KEY,
	--DepName nvarchar (255) NULL,
	DepID int NOT NULL, --Create the FK like other indexes
	LID int NOT NULL,	--	Create the FK like other indexes
	CONSTRAINT Location_LID_fk	-- 'Location': this is the name of table which the FK comes from, 
	--'LID_FK': what we named the key 'LID_FK', and that it's a foreign key(FK)
	FOREIGN KEY (LID)	-- what ever we write in (), will become the name of FK
	REFERENCES Location (LID),	-- 'Location' Specifies where the FK comes from, (LID) is what it is called in other table
	
	CONSTRAINT Department_Names_DepID_fk
	FOREIGN KEY(DepID)
	REFERENCES Department_Names (DepID)
	
);
select * from Department