Use [Employee-details]
-- insert data
EXEC sp_dummydata 0, 'Ladha', 'Kumar', 25, 'INSERT'
EXEC sp_dummydata 0, 'William', 'Sunil', 25, 'INSERT'
EXEC sp_dummydata 0, 'Soumaya', 'Kumar', 25, 'INSERT'
EXEC sp_dummydata 0, 'Soman', 'Kumar', 50, 'INSERT'

-- view all data
EXEC sp_dummydata 0, '', '', 0, 'SELECT'

-- update data
EXEC sp_dummydata 13,'Praveen','Sunil',30,'UPDATE'

-- delete data
EXEC sp_dummydata 19, '', '', 0, 'DELETE'

Select * FROM  Dummydata;
CREATE PROCEDURE sp_dummydata(@Id Int,@FirstName VARCHAR(50),@LastName VARCHAR(50),@Age INT,@type VARCHAR(50))


AS
BEGIN 
--insert data
IF @type='INSERT'
  BEGIN
      INSERT INTO Dummydata(FirstName,LastName,Age)
      Values(@FirstName,@LastName,@Age)
    --  PRINT 'New data is added'
  END


--view all data
IF @type='SELECT'
   BEGIN
    SELECT * From Dummydata
   END

--update  data
IF @type='UPDATE'
   BEGIN
     UPDATE  Dummydata
     Set FirstName=@FirstName,LastName=@LastName,Age=@Age
     where Id=@Id
--     PRINT 'New data is updated'
   END

 --delete data
 IF @type='DELETE'
   BEGIN
      DELETE from Dummydata
      where Id=@Id
	 -- DBCC CHECKIDENT ('Dummydata', RESEED, 0)

   --   PRINT 'New data is deleted'

   END
END

