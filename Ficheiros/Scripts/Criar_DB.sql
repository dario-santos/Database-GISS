--You can use one CREATE DATABASE statement to create a database and the 
-- files that store the database. 
--SQL Server implements the CREATE DATABASE statement in two steps: 
--   1. SQL Server uses a copy of the model database to initialize the 
--       database and its meta data.
--   2. SQL Server then fills the rest of the database with empty pages, 
--       except for pages that have internal data recording how the space is 
--       used in the database. 

-- SQL Server creates two operating system files to house the new 
--  database:.MDF && .LDG. Data resides in the first file; transaction log
--  information lives in the second.  A database's transaction log is the 
--  area where the server first carries out changes made to the data.
-- Once those changes succeed, they're applied atomically�in one piece�to 
--   the actual data.  
-- It's advantageous for both recoverability and performance to separate 
--   user data from transaction log data.


-- If you don't specifically indicate a transaction log location,  SQL Server
--  selects one for you (the default location is the data directory that was 
--  selected during installation).

-------------------------------------------------------------------------------
-- USE database: Changes the database context to the specified database.
--
USE master
-------------------------------------------------------------------------------
--
--  DANGER! DANGER! DANGER
--  DROP DATABASE! DROP DATABASE! DROP DATABASE! Are you sure? ...............
--

IF ( EXISTS( SELECT * FROM [dbo].[sysdatabases] Where name = 'DBProject') )
Begin
  DROP DATABASE DBProject
end

-------------------------------------------------------------------------------
--
-- Se nao existir a BD entao vamos cria-la...
-- (if not exists the Projecto database then create them)
--
IF (NOT EXISTS( SELECT * FROM [dbo].[sysdatabases] Where name = 'DBProject') )
Begin

-------------------------------------------------------------------------------
--  Criar a DBProject com um datafile e um logfile
--  (create the DBProject database with datafile 'Projdat.mdf' 
--                                              and log file 'Projlog.ldf')
-------------------------------------------------------------------------------
  CREATE DATABASE DBProject
  ON 
   ( NAME = 'Projecto_dat',
      FILENAME = 'C:\BD1718\Projectodat.mdf',
--      FILENAME = N'e:\Microsoft SQL Server\MSSQL\data\Projdat.mdf',
      
      SIZE = 10,
      MAXSIZE = 50,
      FILEGROWTH = 5 )
   LOG ON
   ( NAME = 'Projecto_log',
     FILENAME = 'C:\BD1718\Projectolog.ldf',
--    FILENAME = N'e:\Microsoft SQL Server\MSSQL\data\Projlog.ldf',

     SIZE = 5MB,
     MAXSIZE = 25MB,
     FILEGROWTH = 5MB )
end
