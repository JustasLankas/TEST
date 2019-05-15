CREATE VIEW [dbo].[Worked_History]
	AS SELECT 
	a.First_name,
	a.Last_name,
	b.company_name
	FROM dbo.EMPLOYEES as a 
	join dbo.Employment_history as b 
	on a.userid = b.userid
go
