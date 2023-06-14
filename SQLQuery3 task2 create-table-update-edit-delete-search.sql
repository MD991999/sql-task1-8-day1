Use [Employee-details]

Create Table Employees
(
ID int NOT NULL Primary Key,
FirstName  nvarchar(50) NOT NULL  ,
LastName nvarchar(50) NOT NULL,
Age int,
Email nvarchar(50) NOT NULL,
Gender nvarchar(50),
Department nvarchar(50) NOT NULL,
Position nvarchar(50) NOT NULL,
Salary decimal(10,2) NOT NULL,
HireDate Date NOT NULL,
Experience int NOT NULL
)
Select * From Employees
--insert data
Insert Into Employees
Values( 8,'Leena','Hari',54,'l@gmail.com','Female','Auditing','Manager',12000,'2013-08-16',9)

--update data
Update Employees
Set FirstName='Leena',LastName='Narayanan',Age=30,Email='l@gmail.com',Gender='Female',Department='Auditing',Position='Manager',Salary=12000,HireDate='2013-08-16',Experience=9
where ID=8

--delete data
Delete Employees
where ID=8