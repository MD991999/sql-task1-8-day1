Use [Employee-details]

========================================
--stored procedure for inserting data
Create Procedure sp_dummydatainseert(@Id int,@FirstName varchar(50),@LastName varchar(50),@Age varchar(50))
As
BEGIN
Insert Into Dummydata(FirstName,LastName,Age)
Values (@FirstName,@LastName,@Age)
END
--to change the name of a procedure,sp_rename is the system stored procedure
EXEC sp_rename 'sp_dummydatainseert','SPI_insertDummydata'


EXEC SPI_insertDummydata @Id=0,@Firstname='Ganesh',@Lastname='Jose',@Age=21
=================================================

===================================================
--stored procedure for updating data
Create Procedure sp_dummydataupdate(@Id int,@FirstName varchar(50),@LastName varchar(50),@Age varchar(50))
As
BEGIN
Update Dummydata
Set FirstName=@FirstName,LastName=@LastName,Age=@Age
where Id=@Id
END
EXEC sp_rename 'sp_dummydataupdate','SPU_updateDummydata'
EXEC SPU_updateDummydata @Id=28,@FirstName='Marisa',@LastName='Jose',@Age=10
===============================================

==========================================================
--stored procedure for delete data
Create Procedure sp_dummydatadelete(@Id int)
As
BEGIN
Delete Dummydata
where Id=@Id
END
EXEC sp_rename 'sp_dummydatadelete','SPD_deleteDummydata'
EXEC SPD_deleteDummydata @Id=21
=================================================

========================================================
--stored procedure for view all the  data
Alter Procedure SPS_selectDummydata
As
BEGIN
Select * From Dummydata Order by Id asc
END
EXEC sp_rename 'sp_dummydataselect','SPS_selectDummydata'

EXEC SPS_selectDummydata 


======================================================
===========================================================