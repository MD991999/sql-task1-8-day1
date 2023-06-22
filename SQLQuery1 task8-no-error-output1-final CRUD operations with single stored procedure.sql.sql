Use [Employee-details]
Create Table AddressDetails_employees(
Id int Primary Key,
Fullname varchar(50),
HouseNo int,
Post varchar(50),
District varchar(50)
)

EXEC SP_AddressDetails_employees 'SP_INSERT',1,'Michelle',127,'Sasimala','Wayanad'
EXEC SP_AddressDetails_employees 'SP_INSERT',2,'Kripa',113,'Pulpally','Wayanad'
EXEC SP_AddressDetails_employees 'SP_INSERT',3,'Bobby',111,'Kappiset','Wayanad'
EXEC SP_AddressDetails_employees 'SP_UPDATE',2,'Abin',145,'Kattapana','Idukki'
EXEC SP_AddressDetails_employees 'SP_DELETE',1,'',0,'',''
EXEC SP_AddressDetails_employees 'SP_SELECT',0,'',0,'',''

Alter Procedure SP_AddressDetails_employees
(
@type AS varchar(50),
@Id AS int ,
@Fullname AS varchar(50),
@HouseNo AS int,
@Post AS varchar(50),
@District AS varchar(50)
)
As
Begin
if @type='SP_INSERT'
	Begin
		INSERT INTO AddressDetails_employees(Id,Fullname,HouseNo,Post,District)
		Values (@Id,@Fullname,@HouseNo,@Post,@District)

	End

if @type='SP_UPDATE'
	Begin
		UPDATE AddressDetails_employees
		Set Fullname=@Fullname,HouseNo=@HouseNo,Post=@Post,District=@District
		where Id=@Id
	End

	if @type='SP_DELETE'
	Begin
		DELETE From AddressDetails_employees
		where Id=@Id
	End

	if @type='SP_SELECT'
	Begin
		SELECT * From AddressDetails_employees
		
	End
End