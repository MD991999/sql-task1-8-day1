Use [Employee-details]
-- To create two tables and implementing all the SQL joins concepts.
Select * From [Employee Information];
Select * From [Department Details]; 

--INNER JOIN
Select FirstName,Gender,Salary,DepartmentName
From [Employee Information]
INNER JOIN [Department Details]
ON [Employee Information].DepartmentId=[Department Details].ID
Order By FirstName asc;

--LEFT OUTER JOIN
Select FirstName,Gender,Salary,DepartmentName
From [Employee Information]
LEFT JOIN [Department Details]
ON [Employee Information].DepartmentId=[Department Details].ID
Order By FirstName asc;

--RIGHT OUTER JOIN
Select FirstName,Gender,Salary,DepartmentName
From [Employee Information]
RIGHT JOIN [Department Details]
ON [Employee Information].DepartmentId=[Department Details].ID
Order By FirstName asc;

--FULL JOIN
Select FirstName,Gender,Salary,DepartmentName
From [Employee Information]
FULL JOIN [Department Details]
ON [Employee Information].DepartmentId=[Department Details].ID
Order By FirstName asc;

--CROSS ORIGIN
Select FirstName,Gender,Salary,DepartmentName
From [Employee Information]
CROSS JOIN [Department Details]
Order By FirstName asc;

