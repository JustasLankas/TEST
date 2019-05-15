CREATE  PROCEDURE  INSERT_EMPLOYMENT_HISTORY 
   @first_name varchar(50) = null,
   @last_name varchar(50) = null,
   @DOB datetime= null,
   @Date_from datetime = NULL,    
   @Date_until  DATETIME = NULL,     
   @Company_name VARCHAR(50) = NULL,    
   @Salary real  = NULL
AS  
BEGIN  
 SET NOCOUNT ON  
 INSERT INTO dbo.Employment_History  
      ( 
		UserID,
		Date_from,
		Date_until,
		Company_name,
		Salary                       
      )

 VALUES 
      ( 
		(select userid from dbo.Employees 
		where First_name = @first_name and Last_name = @last_name and DOB = @DOB),
        @Date_from,
        @Date_until,
        @Company_name,
        @Salary                     
      ) 

END 
RETURN 0
