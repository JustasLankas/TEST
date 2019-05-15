CREATE FUNCTION [dbo].[Emp_History_Search]
(
	@surname varchar(20)
)
RETURNS @returntable TABLE
(
	First_name varchar(50),
	Last_name varchar(50),
	Date_from datetime,
	Date_until datetime,
	Company_name varchar(50),
	Salary float
)
AS
BEGIN
	INSERT into @returntable
	SELECT 
	a.First_name,
	a.Last_name,
	b.Date_from,
	b.Date_until,
	b.company_name,
	b.salary
	from EMPLOYEES a join Employment_History b
	on a.UserID=b.UserID
	where a.Last_name like '%' + @surname + '%'

	RETURN
END
