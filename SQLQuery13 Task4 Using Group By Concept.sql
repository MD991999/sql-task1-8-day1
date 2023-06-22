Use [Employee-details]
Select * From Tbllabours;
Select Department,Count(Id) As [No of Employees] From Tbllabours
Group By Department;
Exec sp_rename 'Labours','Tbllabours'