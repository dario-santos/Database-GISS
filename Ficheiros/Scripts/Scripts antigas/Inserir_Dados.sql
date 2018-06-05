-------------------------------------------------------------------------------
-- USE DBProject: Changes the database context to the DBProject database.
--
USE DBProject
--
-------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------
------------  INSERT SOME DATA INTO TABLES  -----------------------------------
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
------------- Transaction mode: autocommit
-------------------------------------------------------------------------------

INSERT INTO Departamento(DepNum, Nome, Local) 
Values (1, 'Camarote', 'Camarate');

INSERT INTO Departamento(DepNum, Nome, Local)
Values (2, 'Informatica', 'Covilha');

INSERT INTO Departamento(DepNum, Nome, Local)
Values (3, 'Producao', 'Guarda');

INSERT INTO Departamento(DepNum, Nome, Local)
Values (4, 'Comercial', 'Lisboa');

-------------------------------------------------------------------------------
------------- Transaction mode: Implicit transactions
-------------------------------------------------------------------------------

SET IMPLICIT_TRANSACTIONS ON

INSERT INTO EMPREGADO
VALUES (1, 'Jose', 'Artista', 230000,1);

INSERT INTO EMPREGADO
VALUES (2, 'Artur', 'Programador', 250000,2);

INSERT INTO EMPREGADO
VALUES (3, 'Carlos', 'Analista', 300000,2);

INSERT INTO EMPREGADO
VALUES (4, 'Zezinho', 'Artes graficas', 150000,1);                                         

INSERT INTO EMPREGADO
VALUES (5, 'Ab�lio', 'Chefe seccao', 100000,3);

INSERT INTO EMPREGADO
VALUES (6, 'Antonio', 'Design', 100000,3);

INSERT INTO EMPREGADO
VALUES (7, 'Daniela', 'Modelo', 80000,3);

INSERT INTO EMPREGADO
VALUES (8, 'Margarida', 'Director', 350000,4);

INSERT INTO EMPREGADO
VALUES (9, 'Fazenda', 'Patrao', 6000000,4);

INSERT INTO EMPREGADO
VALUES (10, 'Marilia', 'Secretaria', 85000,4);

-- In this transaction mode we need explicit end the transaction!


COMMIT;


SET IMPLICIT_TRANSACTIONS OFF

-------------------------------------------------------------------------------
------------- Transaction mode: explicit transactions
-------------------------------------------------------------------------------

BEGIN TRAN

INSERT INTO Projecto (ProjNum, Designacao, Fundos)
Values (1, 'Rir a gargalhada', 60000);

INSERT INTO Projecto (ProjNum, Designacao, Fundos)
Values (2, 'BD do IPG', 5000000);

INSERT INTO Projecto (ProjNum, Designacao, Fundos)
Values (3, 'Sapataria da Beira', 3000000);

INSERT INTO Projecto (ProjNum, Designacao, Fundos)
Values (4, 'Lotaria', 5060000);

COMMIT;

-------------------------------------------------------------------------------
------------- Transaction mode: explicit transactions
--            with error control!
-------------------------------------------------------------------------------

BEGIN TRAN

INSERT INTO Atribuicao(EmpNum, ProjNum, Funcao)
VALUES (1,1, 'Animador');

INSERT INTO Atribuicao(EmpNum, ProjNum, Funcao)
VALUES (2,2, 'Colaborador');

INSERT INTO Atribuicao(EmpNum, ProjNum, Funcao)
VALUES (3,2, 'Coordenador');

INSERT INTO Atribuicao(EmpNum, ProjNum, Funcao)
VALUES (3,2, 'Colaborador');                        -- Key violation!!!

-- Test the error value.
IF @@ERROR <> 0 
  Begin
    select 'An error occurred in the insert operation'
    
    INSERT INTO Atribuicao(EmpNum, ProjNum, Funcao)
    VALUES (3,3, 'Colaborador');
  End
  
INSERT INTO Atribuicao(EmpNum, ProjNum, Funcao)
VALUES (5,3, 'Coordenador');

INSERT INTO Atribuicao(EmpNum, ProjNum, Funcao)
VALUES (6,3, 'Colaborador');

INSERT INTO Atribuicao(EmpNum, ProjNum, Funcao)
VALUES (7,3, 'Colaborador');

COMMIT;