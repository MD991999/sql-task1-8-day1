Use [Employee-details]
--stored procedure for inserting data
Create Procedure sp_dummydatainseert(@Id int,@FirstName varchar(50),@LastName varchar(50),@Age varchar(50))
As
BEGIN
Insert Into Dummydata(FirstName,LastName,Age)
Values (@FirstName,@LastName,@Age)
END
EXEC sp_dummydatainseert 0,'Ganesh','Jose',21

--stored procedure for updating data
Create Procedure sp_dummydataupdate(@Id int,@FirstName varchar(50),@LastName varchar(50),@Age varchar(50))
As
BEGIN
Update Dummydata
Set FirstName=@FirstName,LastName=@LastName,Age=@Age
where Id=@Id
END
EXEC sp_dummydataupdate 21,'Marisa','Jose',10

--stored procedure for delete data
Create Procedure sp_dummydatadelete(@Id int)
As
BEGIN
Delete Dummydata
where Id=@Id
END
EXEC sp_dummydatadelete 23

--stored procedure for view all the  data
Create Procedure sp_dummydataselect
As
BEGIN
Select * From Dummydata
END
EXEC sp_dummydataselect

