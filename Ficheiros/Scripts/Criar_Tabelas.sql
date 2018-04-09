-------------------------------------------------------------------------------
-- USE DBProject: Changes the database context to the DBProject database.
--
USE DBProject
--
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Criar as tabelas
-- (create the database tables)
-------------------------------------------------------------------------------

if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[Departamento]') )
begin
  CREATE TABLE Departamento (
	  DepNum int NOT NULL 
	     CHECK (DepNum >= 1),                    -- constraint type: check
    Nome nvarchar(30) NOT NULL, 
    Local nvarchar(30) NOT NULL 
       DEFAULT 'Covilha',                      -- Default definition
    
    CONSTRAINT PK_DepNum PRIMARY KEY (DepNum), -- constraint type: primary key
    CONSTRAINT U_Nome UNIQUE (Nome)            -- constraint type: unique        
  ); 
    
end

-- ............................................................................

if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[Empregado]') )
begin
  CREATE TABLE Empregado (
	  EmpNum int NOT NULL 
	     CONSTRAINT PK_EmpNum PRIMARY KEY (EmpNum)
	     CHECK (EmpNum >= 1),
	  Nome nvarchar (50) NOT NULL ,
	  Categoria nvarchar (30)  NULL ,            -- NULL Column
	  Salario decimal(10,2) NOT NULL 
	     DEFAULT 0.0 
	     CHECK (Salario >= 0.0),
	  DepNum int NOT NULL,
	  
	  CONSTRAINT FK_DepNum FOREIGN KEY (DepNum) 
	     REFERENCES Departamento(DepNum)
	     ON UPDATE CASCADE 
	     ON DELETE NO ACTION
  ); 
end

-- ............................................................................
if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[Projecto]') )
begin
  CREATE TABLE Projecto (
	  ProjNum int 
      CONSTRAINT nn_ProjNum NOT NULL 
	 	  CONSTRAINT C_ProjNum CHECK (ProjNum >= 10),
	  Designacao nvarchar (30)
	    CONSTRAINT nn_Designacao NOT NULL,
	  Fundos decimal(10,2) NOT NULL 
	     DEFAULT 10.0 
	     CHECK (Fundos >= 0.0)
  );
  
  ALTER TABLE Projecto DROP CONSTRAINT C_ProjNum;
  ALTER TABLE Projecto ADD  CONSTRAINT C_ProjNum CHECK (ProjNum >= 0);
  
  ALTER TABLE Projecto Add  CONSTRAINT PK_ProjNum  PRIMARY KEY (ProjNum);
  ALTER TABLE Projecto Add  CONSTRAINT U_Designacao  UNIQUE (Designacao);
end

-- ............................................................................
if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[Atribuicao]') )
begin
  CREATE TABLE Atribuicao (
	  EmpNum int  
	    CONSTRAINT nn_EmpNum NOT NULL,
	  ProjNum int 
	    CONSTRAINT nn_ProjNum NOT NULL,
	  Funcao nvarchar(30) 
	    CONSTRAINT nn_Funcao NOT NULL,	         -- nn -> NOT NULL
	  
	  CONSTRAINT PK_Atribuicao 
	    PRIMARY KEY (EmpNum, ProjNum),           -- constraint type: primary key
	  
	  CONSTRAINT FK_EmpNum FOREIGN KEY (EmpNum) 
	    REFERENCES Empregado(EmpNum)
	    ON UPDATE CASCADE, 
		    
	  CONSTRAINT FK_ProjNum FOREIGN KEY (ProjNum) 
	    REFERENCES Projecto(ProjNum)
	    ON UPDATE CASCADE 
	  
  );    
end