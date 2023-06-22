Use [Employee-details]
-- To create an employee table and how to achieve or get the second highest salary from the table. 
Select * From TblEmployees;
--Find the highest salary from the table
Select Max(salary) As [Highest Salary] from TblEmployees;
Select Max(salary) As [Second Highest Salary] from TblEmployees
where salary < (Select Max(salary) from TblEmployees)