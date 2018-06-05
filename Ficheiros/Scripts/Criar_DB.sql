USE master


IF ( EXISTS( SELECT * FROM [dbo].[sysdatabases] Where name = 'Giss') )
Begin
  DROP DATABASE Giss
end

-- ...........................................................................
IF (NOT EXISTS( SELECT * FROM [dbo].[sysdatabases] Where name = 'Giss') )
Begin

-- ...........................................................................
-- Criar a Giss com um datafile ('Projdat.mdf')  e um logfile ('Projlog.ldf')
-- ...........................................................................
CREATE DATABASE Giss
  ON 
   ( NAME = 'Projecto_dat',
    -- Windows:
      FILENAME = 'C:\BDGiss\Projectodat.mdf',
    
    -- Mac:
    -- 
      SIZE = 10,
      MAXSIZE = 50,
      FILEGROWTH = 5 )
   LOG ON
   ( NAME = 'Projecto_log',
    -- Windows:
     FILENAME = 'C:\BDGiss\Projectolog.ldf',
    
    -- Mac :
    -- 
    
     SIZE = 5MB,
     MAXSIZE = 25MB,
     FILEGROWTH = 5MB )
end
