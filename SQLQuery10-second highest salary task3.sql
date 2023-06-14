Use [Employee-details]
-- To create an employee table and how to achieve or get the second highest salary from the table. 
Select * From Employees;
--Find the highest salary from the table
Select Max(salary) As [Highest Salary] from Employees;
Select Max(salary) As [Second Highest Salary] from Employees
where salary < (Select Max(salary) from Employees)