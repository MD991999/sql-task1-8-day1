Use [Employee-details]
Create Table AddressDetails_employees(
Id int Primary Key,
Fullname varchar(50),
HouseNo int,
Post varchar(50),
District varchar(50)
)

EXEC sp_AddressDetails_employees 'INSERT',1,'Michelle',127,'Sasimala','Wayanad'
EXEC sp_AddressDetails_employees 'INSERT',2,'Kripa',113,'Pulpally','Wayanad'
EXEC sp_AddressDetails_employees 'INSERT',3,'Bobby',111,'Kappiset','Wayanad'
EXEC sp_AddressDetails_employees 'UPDATE',2,'Abin',145,'Kattapana','Idukki'
EXEC sp_AddressDetails_employees 'DELETE',1,'',0,'',''
EXEC sp_AddressDetails_employees 'SELECT',0,'',0,'',''

Create Procedure sp_AddressDetails_employees
(
@type varchar(50),@Id int ,@Fullname varchar(50),@HouseNo int,@Post varchar(50),@District varchar(50)
)
As
Begin
if @type='INSERT'
	Begin
		INSERT INTO AddressDetails_employees(Id,Fullname,HouseNo,Post,District)
		Values (@Id,@Fullname,@HouseNo,@Post,@District)

	End

if @type='UPDATE'
	Begin
		UPDATE AddressDetails_employees
		Set Fullname=@Fullname,HouseNo=@HouseNo,Post=@Post,District=@District
		where Id=@Id
	End

	if @type='DELETE'
	Begin
		DELETE From AddressDetails_employees
		where Id=@Id
	End

	if @type='SELECT'
	Begin
		SELECT * From AddressDetails_employees
		
	End
End