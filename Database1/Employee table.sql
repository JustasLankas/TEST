CREATE TABLE [dbo].[EMPLOYEES]
(
UserID int not null identity(1,1),
First_name varchar(50)  null,
Last_name varchar(50)  null,
DOB datetime  null,
insert_dtm datetime not null default(getdate()),
CONSTRAINT PK_User PRIMARY KEY CLUSTERED (UserID asc),
CONSTRAINT UC_Person UNIQUE (First_name,Last_name,DOB)
)
go

