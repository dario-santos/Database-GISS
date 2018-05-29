USE Giss


-- EpisodioClinico(IdECli, Observacao, IdTO, IdColaborador, IdUtente, IdHistoricoClinico) ............................................................................

if not exists (select * from dbo.sysobjects
			   where id = object_id(N'[dbo].[EpisodioClinico]'))
begin
	CREATE TABLE EpisodioClinico(
		IdECli int NOT NULL
            CONSTRAINT PK_IdECli PRIMARY KEY (IdECli)
			CHECK (IdECli >= 1),
        Observacao nvarchar(300) NOT NULL,
        IdColaborador int NOT NULL,
        IdUtente int NOT NULL,
        IdHistoricoClinico int NOT NULL,

        CONSTRAINT FK_IdTO FOREIGN KEY(IdTO)
            REFERENCES TipoOcorrencia(IdTO)
            ON UPDATE CASCADE,
        
        CONSTRAINT FK_IdColaborador FOREIGN KEY (IdColaborador)
            REFERENCES Colaborador(IdColaborador)
            ON UPDATE CASCADE,

        CONSTRAINT FK_IdUtente FOREIGN KEY (IdUtente)
            REFERENCES Utente(IdUtente)
            ON UPDATE CASCADE,

        CONSTRAINT FK_IdHistoricoClinico FOREIGN KEY (IdHistoricoClinico)
            REFERENCES HistoricoClinico(IdHistoricoClinico)
            ON UPDATE CASCADE,

    );
end;

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

        CONSTRAINT FK_IdECli FOREIGN KEY (IdECli)
            REFERENCES EpisodioClinico(IdECli)
            ON UPDATE CASCADE,

        CONSTRAINT FK_IdHorarioLocal FOREIGN KEY (IdHorarioLocal) 
	        REFERENCES HorarioLocal(IdHorarioLocal)
	        ON UPDATE CASCADE

    );
end


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
            REFERENCES HorarioRecurso(IdHorarioLocal)
            ON UPDATE CASCADE
    );
end


-- Recurso(IdRecurso, Descricao, NumUtilizacao, Validade) ....................


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

-- HistoricoClinico(IdHistoricoClinico, IdUtente) ......................


if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[HistoricoClinico]') )
begin
    CREATE TABLE HistoricoClinico (
        IdHistoricoClinico int
            CONSTRAINT nn_IdHistoricoClinico NOT NULL
            CONSTRAINT C_idHistoricoClinico CHECK (IdHistoricoClinico >= 1),

        IdUtente int 
            CONSTRAINT nn_IdUtente NOT NULL,

        CONSTRAINT FK_IdUtente FOREIGN KEY (IdUtente)
            REFERENCES Utente(IdUtente)
            on update CASCADE
        
    ); 
end


-- Gera(IdMarcacao, IdECli) ...............................................

if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[Gera]') )
begin
    CREATE TABLE Gera(
        IdMarcacao int
            CONSTRAINT nn_IdHistoricoClinico NOT NULL,

        IdECli int 
            CONSTRAINT nn_IdECli NOT NULL,

        CONSTRAINT PK_IdMarcacao PRIMARY KEY (IdMarcacao),

        CONSTRAINT FK_IdMarcacao FOREIGN KEY (IdMarcacao)
            REFERENCES Marcacao(IdMarcacao)
            ON UPDATE CASCADE,
        
        CONSTRAINT FK_IdECli FOREIGN KEY (IdECli)
            REFERENCES EpisodioClinico(IdECli)
            ON UPDATE CASCADE
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

        CONSTRAINT FK_IdColaborador FOREIGN KEY (IdColaborador)
            REFERENCES Colaborador(IdColaborador)
            ON UPDATE CASCADE,

        CONSTRAINT FK_IdECli FOREIGN KEY (IdECli)
            REFERENCES EpisodioClinico(IdECli)
            ON UPDATE CASCADE
    ); 
end

-- Detem(IdColaborador, IdEspecializacao) ..........................


if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[Detem]') )
begin
    CREATE TABLE Detem (
        IdColaborador int
            CONSTRAINT nn_IdColaborador NOT NULL,
        IdEspecializacao int
            CONSTRAINT nn_IdECli NOT NULL,
        
        CONSTRAINT PK_Detem PRIMARY KEY (IdColaborador, IdEspecializacao),

        CONSTRAINT FK_IdColaborador FOREIGN KEY (IdColaborador)
            REFERENCES Colaborador(IdColaborador)
            ON UPDATE CASCADE,

        CONSTRAINT FK_IdEspecializacao FOREIGN KEY (IdEspecializacao)
            REFERENCES Especializacao(IdEspecializacao)
            ON UPDATE CASCADE
    ); 
end


-- HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade) 

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


-- Servico(IdServico, Nome) ...................................................................

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

-- Regiao(IdRegiao, Nome) ......................................


if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[Regiao]') )
begin 
    CREATE TABLE Regiao (
        IdRegiao int
            CONSTRAINT nn_IdRegiao NOT NULL
            CONSTRAINT C_IdRegiao CHECK(IdReagiao >= 1),

        Nome nvarchar(50)
            CONSTRAINT nn_Nome NOT NULL,
        
        CONSTRAINT PK_IdRegiao PRIMARY KEY (IdRegiao)
    );
end


-- Local(IdLocal, Nome, IdAreaClinica)

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