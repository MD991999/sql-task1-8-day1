Use [Employee-details]

--To combine necessary fields from two different tables by using primary key and foreign key constraints.
Create Table [Employee Information]
(
ID int NOT NULL Primary Key,
FirstName nvarchar(50) NOT NULL,
Gender nvarchar(50) NOT NULL,
Salary int NOT NULL,
DepartmentId int 
)

Create Table [Department Details]
(
ID int NOT NULL Primary Key,
DepartmentName nvarchar(50) NOT NULL,
Place nvarchar(50) NOT NULL,
DepartmentHead nvarchar(50) NOT NULL,

)

Insert Into [Department Details]
Values 
(1,'IT','Ernakulam','Shanthi'),
(2,'Finance','Kozhikode','Nixon'),
(3,'HR','Thiruvanthapuram','Prashanth'),
(4,'Other Department','Kollam','Suganya')

Select * From [Department Details] 

Select * From [Employee Information]

--To establish a relationship between foreign key and primary key
--To make department id as the foreign column and here primary key is the column:ID in Department Details
Alter Table [Employee Information] add constraint EmployeeInformation_DepartmentId_FK
FOREIGN KEY (DepartmentId) references
[Department Details](ID)


Select * From [Department Details] 

Select * From [Employee Information]

--To combine necessary fields from two different tables by using primary key and foreign key constraints.

--using inner join
Select FirstName,Gender,Salary,DepartmentName
From [Employee Information]
INNER JOIN [Department Details]
ON [Employee Information].DepartmentId=[Department Details].ID
Order By FirstName asc


