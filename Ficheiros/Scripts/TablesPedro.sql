
-- Progride(IdECliInicial, IdECliDerivado) ------------------------------

if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[Progride]') )

BEGIN
CREATE TABLE Progride(
		IdECliInicial int NOT NULL
			CHECK(IdECliInicial > 0),
		IdECliDerivado int NOT NULL,
			CHECK(IdECliDerivado > 0),


		CONSTRAINT PK_IdECliDerivado PRIMARY KEY (IdECliDerivado),
		CONSTRAINT FK_IdECliInicial FOREIGN KEY (FK_IdECliInicial)
		REFERENCES EpisodioClinico(IdECli)
		ON UPDATE CASCADE
		ON DELETE NO ACTION

);

END

-- TipoOcorrencia(IdTO, Descricao)--------------------------------------------------

if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[TipoOcorrencia]') )

BEGIN 
CREATE TABLE TipoOcorrencia(
	IdTO int NOT NULL
		CHECK(IdTO > 0),
	Descricao nvarchar(30) NOT NULL,

	CONSTRAINT PK_IdTO PRIMARY KEY (IdTO)

);
END


-- HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)-------------


if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[HorarioLocal]') )

BEGIN
CREATE TABLE HorarioLocal(
	IdHorarioLocal int NOT NULL
		CONSTRAINT PK_IdHorarioLocal PRIMARY KEY (IdHorarioLocal)
		CHECK(IdHorarioLocal > 0),
	Data date NOT NULL,
	HoraInicio time NOT NULL,
	HoraFim time NOT NULL,
	IdLocal int NOT NULL,
	Disponibilidade char(1) NOT NULL
		CHECK (Disponibilidade IN ('T', 'F')),

	CONSTRAINT FK_IdLocal CONSTRAINT(IdLocal)
	REFERENCES Local(IdLocal)

	ON UPDATE CASCADE 
    ON DELETE NO ACTION


);
END


-- HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso,Disponibilidade)


if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[HorarioRecurso]') )


BEGIN
CREATE TABLE HorarioRecurso(
	IdHorarioRecurso int NOT NULL
		CONSTRAINT PK_IdHorarioRecurso PRIMARY KEY (IdHorarioRecurso)
		CHECK(IdHorarioRecurso > 0),
	Data date NOT NULL,
	HoraInicio time NOT NULL,
	HoraFim time NOT NULL,
	IdRecurso int NOT NULL,
	Disponibilidade char(1) NOT NULL
		CHECK (Disponibilidade IN ('T', 'F')),

	CONSTRAINT FK_IdRecurso FOREIGN KEY(IdRecurso)
	REFERENCES Recurso(IdRecurso)

	ON UPDATE CASCADE 
    ON DELETE NO ACTION


);
END




-- Utente(IdUtente, Nome) ---------------------------------------------


if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[Utente]') )

BEGIN
CREATE TABLE Utente(
	IdUtente int NOT NULL
		CONSTRAINT PK_IdUtente PRIMARY KEY(IdUtente)
		CHECK(IdUtente >0),
	Nome nvarchar(50) NOT NULL

);
END


-- Marcacao(IdMarcacao, Motivo, IdHorarioLocal, IdHorarioTrabalho, IdUtente) ---------------

if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[Marcacao]') )

BEGIN
CREATE TABLE Marcacao(
	IdMarcacao int NOT NULL
		CONSTRAINT PK_IdMarcacao PRIMARY KEY(IdMarcacao)
		CHECK(IdMarcacao >0),
	Motivo nvarchar(300) NOT NULL,
	IdHorarioLocal int NOT NULL,
	IdHorarioTrabalho int NOT NULL,
	IdUtente int NOT NULL,

	CONSTRAINT FK_IdHorarioLocal FOREIGN KEY(IdHorarioLocal)
		REFERENCES HorarioLocal(IdHorarioLocal)
		ON UPDATE CASCADE 
       	ON DELETE NO ACTION,
    CONSTRAINT FK_IdHorarioTrabalho FOREIGN KEY(IdHorarioTrabalho)
    	REFERENCES IdHorarioTrabalho(IdHorarioTrabalho)
    	ON UPDATE CASCADE 
       	ON DELETE NO ACTION,
    CONSTRAINT FK_IdUtente FOREIGN KEY(IdUtente)
    	REFERENCES Utente(IdUtente)
    	ON UPDATE CASCADE 
       	ON DELETE NO ACTION


);
END


-- Colaborador(IdColaborador, Nome,IdDesignacao, IdCentroHospitalar)---------------------------

if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[Colaborador]') )

BEGIN
CREATE TABLE Colaborador(
	IdColaborador int NOT NULL
		CONSTRAINT PK_IdColaborador PRIMARY KEY(IdColaborador)
		CHECK(IdColaborador > 0),
	Nome nvarchar(50) NOT NULL,
	IdDesignacao int NOT NULL,
	IdCentroHospitalar int NOT NULL,

	CONSTRAINT FK_IdDesignacao FOREIGN KEY(IdDesignacao)
		REFERENCES Designacao(IdDesignacao)
		ON UPDATE CASCADE 
       	ON DELETE NO ACTION,
    CONSTRAINT FK_IdCentroHospitalar FOREIGN KEY(IdCentroHospitalar)
    	REFERENCES CentroHospitalar(IdCentroHospitalar)
    	ON UPDATE CASCADE 
       	ON DELETE NO ACTION

);
END


-- Designacao(IdDesignacao,Descricao)-------------------------


if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[Designacao]') )

BEGIN
CREATE TABLE Designacao(
	IdDesignacao int NOT NULL
		CONSTRAINT PK_IdDesignacao PRIMARY KEY(IdDesignacao)
		CHECK (IdDesignacao > 0),
	Descricao nvarchar(30) NOT NULL

);
END


-- Acede(IdColaborador, IdHistoricoClinico)---------------

if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[Acede]') )

BEGIN
CREATE TABLE Acede(
	IdColaborador int 
		CONSTRAINT nn_IdColaborador NOT NULL,
	IdHistoricoClinico int 
		CONSTRAINT nn_IdHistoricoClinico NOT NULL,

	CONSTRAINT PK_Acede 
		PRIMARY KEY (IdColaborador,IdHistoricoClinico),

	CONSTRAINT FK_IdColaborador FOREIGN KEY(IdColaborador)
		REFERENCES Colaborador(IdColaborador)
		ON UPDATE CASCADE,

	CONSTRAINT FK_IdHistoricoClinico FOREIGN KEY(IdHistoricoClinico)
		REFERENCES HistoricoClinico(IdHistoricoClinico)
		ON UPDATE CASCADE

);
END    


-- Especializacao(IdEspecializacao, Descricao) ----------------------           


if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[Especializacao]') )

BEGIN
CREATE TABLE Especializacao(
	IdEspecializacao int NOT NULL
		CONSTRAINT PK_IdEspecializacao PRIMARY KEY(IdEspecializacao)
		CHECK (IdEspecializacao >0),
	Descricao nvarchar(30) NOT NULL


); 
END

-- Distribuicao(IdHorarioTrabalho, IdServico) -----------------------

if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[Distribuicao]') )

BEGIN
CREATE TABLE Distribuicao(
	IdHorarioTrabalho int 
		CONSTRAINT nn_IdHorarioTrabalho NOT NULL,
	IdServico int 
		CONSTRAINT nn_IdServico NOT NULL,

	CONSTRAINT PK_Destribuicao 
		PRIMARY KEY (IdHorarioTrabalho,IdServico),

	CONSTRAINT FK_IdHorarioTrabalho FOREIGN KEY(IdHorarioTrabalho)
		REFERENCES HorarioTrabalho(IdHorarioTrabalho)
		ON UPDATE CASCADE,

	CONSTRAINT FK_IdServico FOREIGN KEY(IdServico)
		REFERENCES Servico(IdServico)
		ON UPDATE CASCADE

);
END

-- Engloba(IdServico, IdAreaClinica)-------------------

if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[Engloba]') )

BEGIN
CREATE TABLE Engloba(
	IdServico int 
		CONSTRAINT nn_IdServico NOT NULL,
	IdAreaClinica int 
		CONSTRAINT nn_IdAreaClinica NOT NULL,

	CONSTRAINT PK_Engloba 
		PRIMARY KEY (IdServico,IdAreaClinica),

	CONSTRAINT FK_IdServico FOREIGN KEY(IdServico)
		REFERENCES Servico(IdServico)
		ON UPDATE CASCADE,

	CONSTRAINT FK_IdAreaClinica FOREIGN KEY(IdAreaClinica)
		REFERENCES AreaClinica(IdAreaClinica)
		ON UPDATE CASCADE


);
END

-- Hospital(IdHospital, Nome, IdCentroHospitalar)

if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[Hospital]') )

BEGIN
CREATE TABLE Hospital(
	IdHospital int NOT NULL
		CONSTRAINT PK_IdHospital PRIMARY KEY(IdHospital)
		CHECK(IdHospital > 0),
	Nome nvarchar(50) NOT NULL,
	IdCentroHospitalar int NOT NULL,

	CONSTRAINT FK_IdCentroHospitalar FOREIGN KEY(IdCentroHospitalar)
		REFERENCES CentroHospitalar(IdCentroHospitalar)
		ON UPDATE CASCADE


);
END

-- CentroHospitalar(IdCentroHospitalar, Nome, IdRegiao) -------

if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[CentroHospitalar]') )

BEGIN
CREATE TABLE CentroHospitalar(
	IdCentroHospitalar int NOT NULL
		CONSTRAINT PK_IdCentroHospitalar PRIMARY KEY(IdCentroHospitalar)
		CHECK(IdCentroHospitalar > 0),
	Nome nvarchar(50) NOT NULL,
	IdRegiao int NOT NULL,

	CONSTRAINT FK_IdRegiao FOREIGN KEY(IdRegiao)
		REFERENCES Regiao(IdRegiao)
		ON UPDATE CASCADE


);
END

-- Armazena(IdLocal, IdRecurso) -----


if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[Armazena]') )

BEGIN
CREATE TABLE Armazena(
	IdLocal int NOT NULL,
	IdRecurso int NOT NULL
		CONSTRAINT PK_Armazena PRIMARY KEY(IdRecurso),

	CONSTRAINT FK_IdLocal FOREIGN KEY(IdLocal)
		REFERENCES Local(IdLocal)
		ON UPDATE CASCADE,

	CONSTRAINT FK_IdRecurso FOREIGN KEY(IdRecurso)
		REFERENCES Recurso(IdRecurso)
		ON UPDATE CASCADE	

);
END






