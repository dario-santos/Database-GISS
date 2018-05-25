-- ...........................................................................
-- USE DBProject: Changes the database context to the DBProject database.
--
USE Giss
--
-- ...........................................................................

-- ...........................................................................
-- Criar as tabelas

-- TipoOcorrencia(IdTO, Descricao) ...........................................

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


-- Utente(IdUtente, Nome) ................................................


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


-- HistoricoClinico(IdHistoricoClinico, IdUtente) ......................


if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[HistoricoClinico]') )
begin
    CREATE TABLE HistoricoClinico (
        IdHistoricoClinico int NOT NULL
			CONSTRAINT PK_IdHistoricoClinico PRIMARY KEY(IdHistoricoClinico)
            CHECK (IdHistoricoClinico >= 1),
        IdUtente int 
            CONSTRAINT nn_IdUtente NOT NULL,


        CONSTRAINT FK_IdUtente FOREIGN KEY (IdUtente)
            REFERENCES Utente(IdUtente)
            ON UPDATE CASCADE
        
    ); 
end

-- Designacao(IdDesignacao,Descricao) ...............................


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

-- Especializacao(IdEspecializacao, Descricao) ..........................         


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

-- Servico(IdServico, Nome) ...............................................

if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[Servico]') )
begin 
    CREATE TABLE Servico (
        IdServico int
            CONSTRAINT nn_IdServico NOT NULL
            CONSTRAINT C_IdServico CHECK(IdServico >= 1),

        Nome nvarchar(50)
            CONSTRAINT nn_Nome NOT NULL,
        
        CONSTRAINT PK_IdServico PRIMARY KEY (IdServico)
    ); 
end

-- AreaClinica(IdAreaClinica, Nome) ..................................


if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[AreaClinica]') )
begin 
    CREATE TABLE AreaClinica (
        IdAreaClinica int
            CONSTRAINT nn_IdAreaClinica NOT NULL
            CONSTRAINT C_IdAreaClinica CHECK(IdAreaClinica >= 1),

        Nome nvarchar(50)
            CONSTRAINT nn_Nome NOT NULL,
        
        CONSTRAINT PK_IdAreaClinica PRIMARY KEY (IdAreaClinica)
    );
end


-- Regiao(IdRegiao, Nome) ......................................


if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[Regiao]') )
begin 
    CREATE TABLE Regiao (
        IdRegiao int
            CONSTRAINT nn_IdRegiao NOT NULL
            CONSTRAINT C_IdRegiao CHECK(IdRegiao >= 1),

        Nome nvarchar(50)
            CONSTRAINT nn_Nome NOT NULL,
        
        CONSTRAINT PK_IdRegiao PRIMARY KEY (IdRegiao)
    );
end

-- CentroHospitalar(IdCentroHospitalar, Nome, IdRegiao) ........................

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

-- Hospital(IdHospital, Nome, IdCentroHospitalar) ............................................

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

-- Constituido(IdHospital, IdServico) ............................................

if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[Constituido]') )
begin
    CREATE TABLE Constituido (
        IdHospital int
            CONSTRAINT nn_IdHospital NOT NULL,
        IdServico int
            CONSTRAINT nn_IdServico NOT NULL,
        
        CONSTRAINT PK_Constituido PRIMARY KEY (IdHospital, IdServico),

        CONSTRAINT FK_IdHospital FOREIGN KEY (IdHospital)
            REFERENCES Hospital(IdHospital)
            ON UPDATE CASCADE,

        CONSTRAINT FK_IdServico FOREIGN KEY (IdServico)
            REFERENCES Servico(IdServico)
            ON UPDATE CASCADE
    ); 
end    

-- Engloba(IdServico, IdAreaClinica) ...................................

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

	CONSTRAINT FK_Engloba_IdServico FOREIGN KEY(IdServico)
		REFERENCES Servico(IdServico)
		ON UPDATE CASCADE,

	CONSTRAINT FK_Engloba_IdAreaClinica FOREIGN KEY(IdAreaClinica)
		REFERENCES AreaClinica(IdAreaClinica)
		ON UPDATE CASCADE


);
END

-- Colaborador(IdColaborador, Nome, IdDesignacao, IdCentroHospitalar) ..............................

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

	CONSTRAINT FK_Colaborador_IdDesignacao FOREIGN KEY(IdDesignacao)
		REFERENCES Designacao(IdDesignacao)
		ON UPDATE CASCADE 
       	ON DELETE NO ACTION,
    CONSTRAINT FK_Colaborado_IdCentroHospitalar FOREIGN KEY(IdCentroHospitalar)
    	REFERENCES CentroHospitalar(IdCentroHospitalar)
    	ON UPDATE CASCADE 
       	ON DELETE NO ACTION

);
END


-- Acede(IdColaborador, IdHistoricoClinico) ....................................................

if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[Acede]') )

BEGIN
CREATE TABLE Acede(
	IdColaborador int 
		CONSTRAINT nn_IdColaborador NOT NULL,
	IdHistoricoClinico int 
		CONSTRAINT nn_IdHistoricoClinico NOT NULL,

	CONSTRAINT PK_Acede
		PRIMARY KEY (IdColaborador, IdHistoricoClinico),

	CONSTRAINT FK_Acede_IdColaborador FOREIGN KEY(IdColaborador)
		REFERENCES Colaborador(IdColaborador)
		ON UPDATE CASCADE,

	CONSTRAINT FK_Acede_IdHistoricoClinico FOREIGN KEY(IdHistoricoClinico)
		REFERENCES HistoricoClinico(IdHistoricoClinico)
		ON UPDATE CASCADE


);
END 

-- HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)  ......................

if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[HorarioTrabalho]') )
begin
    CREATE TABLE HorarioTrabalho (
        IdHorarioTrabalho int
            CONSTRAINT nn_IdHorarioTrabalho NOT NULL
            CONSTRAINT C_idHistoricoClinico CHECK(IdHorarioTrabalho >= 1),
        Data date
            CONSTRAINT nn_Data NOT NULL,

        HoraInicio time
            CONSTRAINT nn_HoraInicio NOT NULL,

        HoraFim time
            CONSTRAINT nn_HoraFim NOT NULL,

        IdColaborador int
            CONSTRAINT nn_IdColaborador NOT NULL,

        Disponibilidade char(1)
            CONSTRAINT nn_Disponibilidade NOT NULL
            CONSTRAINT C_Disponibilidade CHECK(Disponibilidade IN('T', 'F')),
        
        CONSTRAINT PK_IdHorarioTrabalho PRIMARY KEY (IdHorarioTrabalho),

        CONSTRAINT FK_IdColaborador FOREIGN KEY (IdColaborador)
            REFERENCES Colaborador(IdColaborador)
            ON UPDATE CASCADE
    ); 
end

-- Detem(IdColaborador, IdEspecializacao) ..........................................................


if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[Detem]') )
begin
    CREATE TABLE Detem (
        IdColaborador int
            CONSTRAINT nn_IdColaborador NOT NULL,
        IdEspecializacao int
            CONSTRAINT nn_IdECli NOT NULL,
        
        CONSTRAINT PK_Detem PRIMARY KEY (IdColaborador, IdEspecializacao),

        CONSTRAINT FK_Detem_IdColaborador FOREIGN KEY (IdColaborador)
            REFERENCES Colaborador(IdColaborador)
            ON UPDATE CASCADE,

        CONSTRAINT FK_Detem_IdEspecializacao FOREIGN KEY (IdEspecializacao)
            REFERENCES Especializacao(IdEspecializacao)
            ON UPDATE CASCADE
    ); 
end

-- Recurso(IdRecurso, Descricao, NumUtilizacao, Validade) ...............................................


if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[Recurso]') )
begin 
    CREATE TABLE Recurso (
        IdRecurso int 
            CONSTRAINT nn_IdRecurso NOT NULL
            CONSTRAINT C_IdRecurso CHECK (IdRecurso >= 1),

        Descricao nvarchar(30) 
            CONSTRAINT nn_Descricao NOT NULL,
        
        NumUtilizacao int
            CONSTRAINT C_NumUtilizacao CHECK (NumUtilizacao >=0),
        
        Validade date 
            CONSTRAINT nn_Validade NOT NULL,

        CONSTRAINT PK_Recurso PRIMARY KEY (IdRecurso)

    );
end


-- HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso,Disponibilidade) .............................


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

-- Local(IdLocal, Nome, IdAreaClinica) ..................................................................

if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[Local]') )
begin 
    CREATE TABLE Local (
        IdLocal int
            CONSTRAINT nn_IdLocal NOT NULL
            CONSTRAINT C_IdLocal CHECK(IdLocal >= 1),

        Nome nvarchar(50)
            CONSTRAINT nn_Nome NOT NULL,

        IdAreaClinica int
            CONSTRAINT nn_IdAreaClinica NOT NULL,

        CONSTRAINT PK_IdLocal PRIMARY KEY (IdLocal),

        CONSTRAINT FK_IdAreaClinica FOREIGN KEY (IdAreaClinica)
            REFERENCES AreaClinica(IdAreaClinica)
            ON UPDATE CASCADE

    );
end



-- HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade) .............................


if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[HorarioLocal]') )

BEGIN
CREATE TABLE HorarioLocal(
	IdHorarioLocal int NOT NULL
		CHECK(IdHorarioLocal >= 1)
		CONSTRAINT PK_IdHorarioLocal PRIMARY KEY (IdHorarioLocal),
	Data date NOT NULL,
	HoraInicio time NOT NULL,
	HoraFim time NOT NULL,
	IdLocal int NOT NULL,
	Disponibilidade char(1) NOT NULL
		CHECK (Disponibilidade IN ('T', 'F')),

	CONSTRAINT FK_IdLocal FOREIGN KEY(IdLocal)
	REFERENCES Local(IdLocal)

	ON UPDATE CASCADE 
    ON DELETE NO ACTION


);
END


-- EpisodioClinico(IdECli, Observacao, IdTO, IdColaborador, IdUtente, IdHistoricoClinico) ............................................................................

if not exists (select * from dbo.sysobjects
			   where id = object_id(N'[dbo].[EpisodioClinico]'))
begin
	CREATE TABLE EpisodioClinico(
		IdECli int NOT NULL
            CONSTRAINT PK_IdECli PRIMARY KEY (IdECli)
			CHECK (IdECli >= 1),
        Observacao nvarchar(300) NOT NULL,
		IdTO int NOT NULL,
        IdColaborador int NOT NULL,
        IdUtente int NOT NULL,
        IdHistoricoClinico int NOT NULL,

        CONSTRAINT FK_EpisodioClinico_IdTO FOREIGN KEY(IdTO)
            REFERENCES TipoOcorrencia(IdTO)
            ON UPDATE CASCADE
			ON DELETE NO ACTION,
        
        CONSTRAINT FK_EpisodioClinico_IdColaborador FOREIGN KEY (IdColaborador)
            REFERENCES Colaborador(IdColaborador)
            ON UPDATE CASCADE 
			ON DELETE NO ACTION,

        CONSTRAINT FK_EpisodioClinico_IdUtente FOREIGN KEY (IdUtente)
            REFERENCES Utente(IdUtente)
            ON UPDATE NO ACTION
			ON DELETE NO ACTION,

        CONSTRAINT FK_EpisodioClinico_IdHistoricoClinico FOREIGN KEY (IdHistoricoClinico)
            REFERENCES HistoricoClinico(IdHistoricoClinico)
            ON UPDATE CASCADE
			ON DELETE NO ACTION

    );
end;



-- Progride(IdECliInicial, IdECliDerivado) ...........................................................................

if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[Progride]') )

BEGIN
CREATE TABLE Progride(
		IdECliInicial int NOT NULL
			CHECK(IdECliInicial > 0),
		IdECliDerivado int NOT NULL,
			CHECK(IdECliDerivado > 0),


		CONSTRAINT PK_IdECliDerivado PRIMARY KEY (IdECliDerivado),
		CONSTRAINT FK_IdECliInicial FOREIGN KEY (IdECliInicial)
		REFERENCES EpisodioClinico(IdECli)
		ON UPDATE CASCADE
		ON DELETE NO ACTION

);

END


-- Reserva(IdECli, IdHorarioRecurso) ........................................

if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[Reserva]') )
begin 
    CREATE TABLE Reserva (
        IdECli int 
            CONSTRAINT nn_IdECli NOT NULL,

        IdHorarioRecurso int
            CONSTRAINT nn_IdHorarioRecurso NOT NULL,

        CONSTRAINT PK_Reserva PRIMARY KEY (IdHorarioRecurso),

        CONSTRAINT FK_IdECli FOREIGN KEY (IdECli) 
            REFERENCES EpisodioClinico(IdECli)
            ON UPDATE CASCADE,

        CONSTRAINT FK_IdHorarioRecurso FOREIGN KEY (IdHorarioRecurso)
            REFERENCES HorarioRecurso(IdHorarioRecurso)
            ON UPDATE CASCADE
    );
end

-- Agenda(IdECli, IdHorarioLocal) .................................................

if not exists (select * from dbo.sysobjects
			   where id = object_id(N'[dbo].[Agenda]'))
begin
    CREATE TABLE Agenda(
        IdECli int 
            CONSTRAINT nn_IdECli NOT NULL,
        IdHorarioLocal int
            CONSTRAINT nn_IdHorarioLocal NOT NULL,

        CONSTRAINT PK_Agenda
            PRIMARY KEY (IdECli, IdHorarioLocal),

        CONSTRAINT FK_Agenda_IdECli FOREIGN KEY (IdECli)
            REFERENCES EpisodioClinico(IdECli)
            ON UPDATE CASCADE,

        CONSTRAINT FK_Agenda_IdHorarioLocal FOREIGN KEY (IdHorarioLocal) 
	        REFERENCES HorarioLocal(IdHorarioLocal)
	        ON UPDATE CASCADE

    );
end

-- Marcacao(IdMarcacao, Motivo, IdHorarioLocal, IdHorarioTrabalho, IdUtente) ..........................

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

	CONSTRAINT FK_Marcacao_IdHorarioLocal FOREIGN KEY(IdHorarioLocal)
		REFERENCES HorarioLocal(IdHorarioLocal)
		ON UPDATE CASCADE 
       	ON DELETE NO ACTION,

    CONSTRAINT FK_Marcacao_IdHorarioTrabalho FOREIGN KEY(IdHorarioTrabalho)
    	REFERENCES HorarioTrabalho(IdHorarioTrabalho)
    	ON UPDATE CASCADE 
       	ON DELETE NO ACTION,

    CONSTRAINT FK_Marcacao_IdUtente FOREIGN KEY(IdUtente)
    	REFERENCES Utente(IdUtente)
    	ON UPDATE CASCADE 
       	ON DELETE NO ACTION


);
END


-- Gera(IdMarcacao, IdECli) ...............................................

if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[Gera]') )
begin
    CREATE TABLE Gera(
        IdMarcacao int
            CONSTRAINT nn_IdHistoricoClinico NOT NULL,

        IdECli int 
            CONSTRAINT nn_IdECli NOT NULL,

        CONSTRAINT PK_Gera_IdMarcacao PRIMARY KEY (IdMarcacao),

        CONSTRAINT FK_Gera_IdMarcacao FOREIGN KEY (IdMarcacao)
            REFERENCES Marcacao(IdMarcacao)
            ON UPDATE CASCADE,
        
        CONSTRAINT FK_Gera_IdECli FOREIGN KEY (IdECli)
            REFERENCES EpisodioClinico(IdECli)
            ON UPDATE NO ACTION
    );
end

-- Participacao(IdColaborador, IdECli) ....................

if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[Participacao]') )
begin
    CREATE TABLE Participacao (
        IdColaborador int
            CONSTRAINT nn_IdColaborador NOT NULL,

        IdECli int
            CONSTRAINT nn_IdECli NOT NULL,
        
        CONSTRAINT PK_Participacao PRIMARY KEY (IdColaborador, IdECli),

        CONSTRAINT FK_Participacao_IdColaborador FOREIGN KEY (IdColaborador)
            REFERENCES Colaborador(IdColaborador)
            ON UPDATE CASCADE,

        CONSTRAINT FK_Participacao_IdECli FOREIGN KEY (IdECli)
            REFERENCES EpisodioClinico(IdECli)
            ON UPDATE NO ACTION
    ); 
end


-- Distribuicao(IdHorarioTrabalho, IdServico) ...........................................................................

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

	CONSTRAINT FK_Distribuicao_IdHorarioTrabalho FOREIGN KEY(IdHorarioTrabalho)
		REFERENCES HorarioTrabalho(IdHorarioTrabalho)
		ON UPDATE CASCADE,

	CONSTRAINT FK_Distribuicao_IdServico FOREIGN KEY(IdServico)
		REFERENCES Servico(IdServico)
		ON UPDATE CASCADE

);
END


-- Armazena(IdLocal, IdRecurso) ...........................................................................


if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[Armazena]') )

BEGIN
CREATE TABLE Armazena(
	IdLocal int NOT NULL,
	IdRecurso int NOT NULL
		CONSTRAINT PK_Armazena PRIMARY KEY(IdRecurso),

	CONSTRAINT FK_Armazena_IdLocal FOREIGN KEY(IdLocal)
		REFERENCES Local(IdLocal)
		ON UPDATE CASCADE,

	CONSTRAINT FK_Armazena_IdRecurso FOREIGN KEY(IdRecurso)
		REFERENCES Recurso(IdRecurso)
		ON UPDATE CASCADE	

);
END


