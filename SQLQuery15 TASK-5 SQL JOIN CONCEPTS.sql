Use [Employee-details]

Select * From TblEmployeeInformation;
Select * From TblDepartmentDetails; 
--INNER JOIN
Select FirstName,Gender,Salary,DepartmentName
From TblEmployeeInformation
INNER JOIN TblDepartmentDetails
ON TblEmployeeInformation.DepartmentId=TblDepartmentDetails.ID
--on is used to specify the criterei/condition used for joining two tables
Order By FirstName asc;

--LEFT OUTER JOIN
Select FirstName,Gender,Salary,DepartmentName
From TblEmployeeInformation
LEFT JOIN TblDepartmentDetails
ON TblEmployeeInformation.DepartmentId=TblDepartmentDetails.ID
Order By FirstName asc;

--RIGHT OUTER JOIN
Select FirstName,Gender,Salary,DepartmentName
From TblEmployeeInformation
RIGHT JOIN TblDepartmentDetails
ON TblEmployeeInformation.DepartmentId=TblDepartmentDetails.ID
Order By FirstName asc;

--FULL JOIN
Select FirstName,Gender,Salary,DepartmentName
From TblEmployeeInformation
FULL JOIN TblDepartmentDetails
ON TblEmployeeInformation.DepartmentId=TblDepartmentDetails.ID
Order By FirstName asc;

--CROSS ORIGIN
Select FirstName,Gender,Salary,DepartmentName
From TblEmployeeInformation
CROSS JOIN TblDepartmentDetails
Order By FirstName asc;

