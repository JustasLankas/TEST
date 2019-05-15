create table Employment_History
(
EmpID int identity(1,1) not null,
UserID int not null, 
Date_from datetime null,
Date_until datetime NULL,
Company_name varchar(50) null,
Salary float(15) null,
insert_dtm datetime not null default(getdate()),
constraint PK_ID primary key (empid),
constraint FK_UID foreign key (userid) references Employees(userid),
CONSTRAINT UC_History UNIQUE (UserID,Date_from,Date_until),
constraint CHECK_DATES CHECK(date_from < Date_until)
)
go
