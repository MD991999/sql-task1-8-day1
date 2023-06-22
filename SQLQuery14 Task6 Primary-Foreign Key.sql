Use [Employee-details]

--To combine necessary fields from two different tables by using primary key and foreign key constraints.
Create Table TblEmployeeInformation
(
ID int NOT NULL Primary Key,
FirstName nvarchar(50) NOT NULL,
Gender nvarchar(50) NOT NULL,
Salary int NOT NULL,
DepartmentId int 
)

Create Table TblDepartmentDetails
(
ID int NOT NULL Primary Key,
DepartmentName nvarchar(50) NOT NULL,
Place nvarchar(50) NOT NULL,
DepartmentHead nvarchar(50) NOT NULL,

)

Insert Into TblEmployeeInformation
Values 
(1,'Michelle','Female',10000,1),
(2,'Midhun','Male',2000,4),
(3,'Carmel','Male',20000,2),
(4,'Nithya','Female',60000,NULL)


Insert Into TblDepartmentDetails
Values 
(1,'IT','Ernakulam','Shanthi'),
(2,'Finance','Kozhikode','Nixon'),
(3,'HR','Thiruvanthapuram','Prashanth'),
(4,'Other Department','Kollam','Suganya')

Select * From TblDepartmentDetails 

Select * From TblEmployeeInformation

--To establish a relationship between foreign key and primary key
--To make department id as the foreign column and here primary key is the column:ID in Department Details
Alter Table TblEmployeeInformation add constraint TblEmployeeInformation_DepartmentId_FK
FOREIGN KEY (DepartmentId) references
TblDepartmentDetails(ID)


Select * From TblDepartmentDetails

Select * From TblEmployeeInformation

--To combine necessary fields from two different tables by using primary key and foreign key constraints.

--using inner join
Select FirstName,Gender,Salary,DepartmentName
From TblEmployeeInformation
INNER JOIN TblDepartmentDetails
ON TblEmployeeInformation.DepartmentId=TblDepartmentDetails.ID
Order By FirstName asc


