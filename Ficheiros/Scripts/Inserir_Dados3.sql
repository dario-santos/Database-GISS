use Giss
-- Utente(IdUtente, Nome) ............................

INSERT INTO Utente(IdUtente, Nome)
Values (1 , 'Joao Fernandes' );

INSERT INTO Utente(IdUtente, Nome)
Values (2 , 'Dario Santos' );

INSERT INTO Utente(IdUtente, Nome)
Values (3 , 'Pedro Torres' );

INSERT INTO Utente(IdUtente, Nome)
Values (4 , 'Alberta Maria' );

INSERT INTO Utente(IdUtente, Nome)
Values (5 , 'Ana Mafalda Martins' );

INSERT INTO Utente(IdUtente, Nome)
Values (6 , 'Manuela Guedes' );

INSERT INTO Utente(IdUtente, Nome)
Values (7 , 'Francisco Monteiro' );

INSERT INTO Utente(IdUtente, Nome)
Values (8 , 'Marta Maria' );

INSERT INTO Utente(IdUtente, Nome)
Values (9 , 'Antonio Soares' );

INSERT INTO Utente(IdUtente, Nome)
Values (10 , 'Bruna Mendes' );


-- TipoOcorrencia(IdTO, Descricao) ........................................

INSERT INTO TipoOcorrencia(IdTO,Descricao)
VALUES(1,'Acidentes de Trabalho');

INSERT INTO TipoOcorrencia(IdTO,Descricao)
VALUES(2,'Acidentes de Viacao');

INSERT INTO TipoOcorrencia(IdTO,Descricao)
VALUES(3,'Intoxicacao Alimentar');

INSERT INTO TipoOcorrencia(IdTO,Descricao)
VALUES(4,'Acidente Escolar');

INSERT INTO TipoOcorrencia(IdTO,Descricao)
VALUES(5,'Infeccoes');

INSERT INTO TipoOcorrencia(IdTO,Descricao)
VALUES(6,'Hemorragias');

INSERT INTO TipoOcorrencia(IdTO,Descricao)
VALUES(7,'Idosos');

INSERT INTO TipoOcorrencia(IdTO,Descricao)
VALUES(8,'Lesoes de caracter desportivo');

INSERT INTO TipoOcorrencia(IdTO,Descricao)
VALUES(9,'Lesoes leves');

INSERT INTO TipoOcorrencia(IdTO,Descricao)
VALUES(10,'Doencas graves');

-- Regiao(IdRegiao, Nome) .............................................

INSERT INTO Regiao(IdRegiao, Nome)
Values(1, 'Beira Interior');

INSERT INTO Regiao(IdRegiao, Nome)
Values(2, 'Centro');

INSERT INTO Regiao(IdRegiao, Nome)
Values(3, 'Litoral Centro');

INSERT INTO Regiao(IdRegiao, Nome)
Values(4, 'Centro');

INSERT INTO Regiao(IdRegiao, Nome)
Values(5, 'Centro');

INSERT INTO Regiao(IdRegiao, Nome)
Values(6, 'Litoral Centro');

INSERT INTO Regiao(IdRegiao, Nome)
Values(7, 'Litoral Norte');

INSERT INTO Regiao(IdRegiao, Nome)
Values(8, 'Algarve');

INSERT INTO Regiao(IdRegiao, Nome)
Values(9, 'Litoral Norte');

INSERT INTO Regiao(IdRegiao, Nome)
Values(10, 'Norte');

-- CentroHospitalar(IdCentroHospitalar, Nome, IdRegiao) .......................................

INSERT INTO CentroHospitalar(IdCentroHospitalar, Nome, IdRegiao)
Values(1, 'Centro Hospitalar da Cova da Beira', 1);

INSERT INTO CentroHospitalar(IdCentroHospitalar, Nome, IdRegiao)
Values(2, 'Centro Hospitalar de Coimbra', 2);

INSERT INTO CentroHospitalar(IdCentroHospitalar, Nome, IdRegiao)
Values(3, 'Centro Hospitalar de Leiria', 3);

INSERT INTO CentroHospitalar(IdCentroHospitalar, Nome, IdRegiao)
Values(4, 'Centro Hospitalar da Guarda', 4);

INSERT INTO CentroHospitalar(IdCentroHospitalar, Nome, IdRegiao)
Values(5, 'Centro Hospitalar de Viseu', 5);

INSERT INTO CentroHospitalar(IdCentroHospitalar, Nome, IdRegiao)
Values(6, 'Centro Hospitalar de Lisboa', 6);

INSERT INTO CentroHospitalar(IdCentroHospitalar, Nome, IdRegiao)
Values(7, 'Centro Hospitalar do Porto', 7);

INSERT INTO CentroHospitalar(IdCentroHospitalar, Nome, IdRegiao)
Values(8, 'Centro Hospitalar do Algarve', 8);

INSERT INTO CentroHospitalar(IdCentroHospitalar, Nome, IdRegiao)
Values(9, 'Centro Hospitalar da Beira Litoral Norte', 9);

INSERT INTO CentroHospitalar(IdCentroHospitalar, Nome, IdRegiao)
Values(10, 'Centro Hospitalar de Braga', 10);

-- Hospital(IdHospital, Nome, IdCentroHospitalar) ..........................................................

INSERT INTO Hospital(IdHospital, Nome, IdCentroHospitalar)
Values(1 , 'Hospital Pero da Covilha' , 1);

INSERT INTO Hospital(IdHospital, Nome, IdCentroHospitalar)
Values(2 , 'Hospital do Fundao' , 1);

INSERT INTO Hospital(IdHospital, Nome, IdCentroHospitalar)
Values(3 , 'Centro de saude da Covilha' , 1);

INSERT INTO Hospital(IdHospital, Nome, IdCentroHospitalar)
Values(4 , 'Hospital de Viseu' , 5);

INSERT INTO Hospital(IdHospital, Nome, IdCentroHospitalar)
Values(5 , 'Hospital de Lisboa' , 6);

INSERT INTO Hospital(IdHospital, Nome, IdCentroHospitalar)
Values(6 , 'Hospital do Porto' , 7);

INSERT INTO Hospital(IdHospital, Nome, IdCentroHospitalar)
Values(7 , 'Hospital de Faro' , 8);

INSERT INTO Hospital(IdHospital, Nome, IdCentroHospitalar)
Values(8 , 'Hospital de Portimao' , 8);

INSERT INTO Hospital(IdHospital, Nome, IdCentroHospitalar)
Values(9 , 'Hospital de Viana do Castelo' , 9);

INSERT INTO Hospital(IdHospital, Nome, IdCentroHospitalar)
Values(10 , 'Hospital de Braga' , 10);

-- AreaClinica(IdAreaClinica, Nome) .................................................

INSERT INTO AreaClinica(IdAreaClinica, Nome)
Values(1, 'Cardiologia');

INSERT INTO AreaClinica(IdAreaClinica, Nome)
Values(2, 'Oftalmologia');

INSERT INTO AreaClinica(IdAreaClinica, Nome)
Values(3, 'Operação');

INSERT INTO AreaClinica(IdAreaClinica, Nome)
Values(4, 'Pediatria');

INSERT INTO AreaClinica(IdAreaClinica, Nome)
Values(5, 'Analises clinicas');

INSERT INTO AreaClinica(IdAreaClinica, Nome)
Values(6, 'Farmacia');

INSERT INTO AreaClinica(IdAreaClinica, Nome)
Values(7, 'Radiologia');

INSERT INTO AreaClinica(IdAreaClinica, Nome)
Values(8, 'Medicina geral');

INSERT INTO AreaClinica(IdAreaClinica, Nome)
Values(9, 'Medicina Interna');

INSERT INTO AreaClinica(IdAreaClinica, Nome)
Values(10, 'Maternidade');

INSERT INTO AreaClinica(IdAreaClinica, Nome)
Values(11, 'Ginecologia-Obstetricia');

INSERT INTO AreaClinica(IdAreaClinica, Nome)
Values(12, 'Psicologia');

INSERT INTO AreaClinica(IdAreaClinica, Nome)
Values(13, 'Fisiorerapia');

-- Servico(IdServico, Nome)

INSERT INTO Servico(IdServico, Nome)
Values(1, 'Centro de Cardiologia');

INSERT INTO Servico(IdServico, Nome)
Values(2, 'Centro de Oftalmologia');

INSERT INTO Servico(IdServico, Nome)
Values(3, 'Centro Operatorio');

INSERT INTO Servico(IdServico, Nome)
Values(4, 'Centro de Pediatria');

INSERT INTO Servico(IdServico, Nome)
Values(5, 'Centro de Analises clinicas');

INSERT INTO Servico(IdServico, Nome)
Values(6, 'Centro Farmaceutico');

INSERT INTO Servico(IdServico, Nome)
Values(7, 'Centro de Radiologia');

INSERT INTO Servico(IdServico, Nome)
Values(8, 'Centro de saude');

INSERT INTO Servico(IdServico, Nome)
Values(9, 'Centro de Maternidade ');

INSERT INTO Servico(IdServico, Nome)
Values(10, 'Centro de Psicologia');

INSERT INTO Servico(IdServico, Nome)
Values(11, 'Centro de Fisiorerapia');

-- Engloba(IdServico, IdAreaClinica) ....................................

INSERT INTO Engloba(IdServico, IdAreaClinica)
Values(1, 1);

INSERT INTO Engloba(IdServico, IdAreaClinica)
Values(2, 2);

INSERT INTO Engloba(IdServico, IdAreaClinica)
Values(3, 3);

INSERT INTO Engloba(IdServico, IdAreaClinica)
Values(4, 4);

INSERT INTO Engloba(IdServico, IdAreaClinica)
Values(5, 5);

INSERT INTO Engloba(IdServico, IdAreaClinica)
Values(6, 6);

INSERT INTO Engloba(IdServico, IdAreaClinica)
Values(7, 7);

INSERT INTO Engloba(IdServico, IdAreaClinica)
Values(8, 8);

INSERT INTO Engloba(IdServico, IdAreaClinica)
Values(8, 9);

INSERT INTO Engloba(IdServico, IdAreaClinica)
Values(9, 10);

INSERT INTO Engloba(IdServico, IdAreaClinica)
Values(9, 11);

INSERT INTO Engloba(IdServico, IdAreaClinica)
Values(10, 12);

INSERT INTO Engloba(IdServico, IdAreaClinica)
Values(11, 13);

-- Constituido(IdHospital, IdServico) .............................................

INSERT INTO Constituido(IdHospital, IdServico)
Values(1, 1);

INSERT INTO Constituido(IdHospital, IdServico)
Values(1, 2);

INSERT INTO Constituido(IdHospital, IdServico)
Values(1, 3);

INSERT INTO Constituido(IdHospital, IdServico)
Values(1, 4);

INSERT INTO Constituido(IdHospital, IdServico)
Values(1, 5);

INSERT INTO Constituido(IdHospital, IdServico)
Values(1, 6);

INSERT INTO Constituido(IdHospital, IdServico)
Values(1, 7);

INSERT INTO Constituido(IdHospital, IdServico)
Values(1, 9);

INSERT INTO Constituido(IdHospital, IdServico)
Values(1, 10);
--
INSERT INTO Constituido(IdHospital, IdServico)
Values(3, 8);
--
INSERT INTO Constituido(IdHospital, IdServico)  
Values(2, 1);

INSERT INTO Constituido(IdHospital, IdServico)
Values(2, 2);

INSERT INTO Constituido(IdHospital, IdServico)
Values(2, 4);

INSERT INTO Constituido(IdHospital, IdServico)
Values(2, 5);

INSERT INTO Constituido(IdHospital, IdServico)
Values(2, 6);

INSERT INTO Constituido(IdHospital, IdServico)
Values(2, 7);

INSERT INTO Constituido(IdHospital, IdServico)
Values(2, 9);

-- Local(IdLocal, Nome, IdAreaClinica) ...........................................

INSERT INTO Local(IdLocal, Nome, IdAreaClinica)
Values(1 , 'Sala de maternidade' , 10 );

INSERT INTO Local(IdLocal, Nome, IdAreaClinica)
Values(2 , 'Internamento/incubadoras' , 10 );

INSERT INTO Local(IdLocal, Nome, IdAreaClinica)
Values(3 , 'Sala de Cardiologia' , 1 );

INSERT INTO Local(IdLocal, Nome, IdAreaClinica)
Values(4 , 'Consultas de Oftalmologia' , 2 );

INSERT INTO Local(IdLocal, Nome, IdAreaClinica)
Values(5 , 'Sala de Operaçao' , 3 );

INSERT INTO Local(IdLocal, Nome, IdAreaClinica)
Values(6 , 'Sala de Fisiorerapia' , 13 );

INSERT INTO Local(IdLocal, Nome, IdAreaClinica)
Values(7 , 'Sala de Pediatria' , 4 );

INSERT INTO Local(IdLocal, Nome, IdAreaClinica)
Values(8 , 'Sala de Analises' , 5 );

INSERT INTO Local(IdLocal, Nome, IdAreaClinica)
Values(9 , 'Farmacia' , 6 );

INSERT INTO Local(IdLocal, Nome, IdAreaClinica)
Values(10 , 'Sala de Radiologia' , 7 );

INSERT INTO Local(IdLocal, Nome, IdAreaClinica)
Values(11 , 'Sala de diagnostico' , 8 );

INSERT INTO Local(IdLocal, Nome, IdAreaClinica)
Values(12 , 'Sala de Internamento' , 9 );

INSERT INTO Local(IdLocal, Nome, IdAreaClinica)
Values(13 , 'Sala de Observacao' , 11 );

INSERT INTO Local(IdLocal, Nome, IdAreaClinica)
Values(14 , 'Sala de Psicologia' , 12 );

-- Especializacao(IdEspecializacao, Descricao) .......................................

INSERT INTO Especializacao(IdEspecializacao,Descricao)
Values(1,'Cardiologia');

INSERT INTO Especializacao(IdEspecializacao,Descricao)
Values(2,'Oftomologia');

INSERT INTO Especializacao(IdEspecializacao,Descricao)
Values(3,'Cirurgia');

INSERT INTO Especializacao(IdEspecializacao,Descricao)
Values(4,'Pediatria');

INSERT INTO Especializacao(IdEspecializacao,Descricao)
Values(5,'Especialista de Analises');

INSERT INTO Especializacao(IdEspecializacao,Descricao)
Values(6,'Farmacologia');

INSERT INTO Especializacao(IdEspecializacao,Descricao)
Values(7,'Radiologia');

INSERT INTO Especializacao(IdEspecializacao,Descricao)
Values(8,'Medicina Geral');

INSERT INTO Especializacao(IdEspecializacao,Descricao)
Values(9,'Obstretecia');

INSERT INTO Especializacao(IdEspecializacao,Descricao)
Values(10,'Psicologia');

-- Designacao(IdDesignacao, Descricao) ........................

INSERT INTO Designacao(IdDesignacao, Descricao)
Values (1, 'Medico/a');

INSERT INTO Designacao(IdDesignacao, Descricao)
Values (2, 'Enfermeiro/a');

INSERT INTO Designacao(IdDesignacao, Descricao)
Values (3, 'Auxiliar');

INSERT INTO Designacao(IdDesignacao, Descricao)
Values (4, 'Seguranca');

INSERT INTO Designacao(IdDesignacao, Descricao)
Values (5, 'Profissional de análises');

INSERT INTO Designacao(IdDesignacao, Descricao)
Values (6, 'Dentista');

INSERT INTO Designacao(IdDesignacao, Descricao)
Values (7, 'Tecnico de Radiografia');

INSERT INTO Designacao(IdDesignacao, Descricao)
Values (8, 'Cirurgião');

INSERT INTO Designacao(IdDesignacao, Descricao)
Values (9, 'Cardiologista');

INSERT INTO Designacao(IdDesignacao, Descricao)
Values (10, 'Pediatra');

-- Colaborador(IdColaborador, Nome, IdDesignacao, IdCentroHospitalar)  ................

INSERT INTO Colaborador(IdColaborador, Nome, IdDesignacao, IdCentroHospitalar)
Values (1 , 'Maria Goncalves', 1 , 1 );

INSERT INTO Colaborador(IdColaborador, Nome, IdDesignacao, IdCentroHospitalar)
Values (2 , 'Manuel Soares', 1 , 1 );

INSERT INTO Colaborador(IdColaborador, Nome, IdDesignacao, IdCentroHospitalar)
Values (3 , 'Sofia Santos', 2 , 1 );

INSERT INTO Colaborador(IdColaborador, Nome, IdDesignacao, IdCentroHospitalar)
Values (4 , 'Eduardo Gomes', 2 , 1 );

INSERT INTO Colaborador(IdColaborador, Nome, IdDesignacao, IdCentroHospitalar)
Values (5 , 'Francisca Lima', 3 , 1 );

INSERT INTO Colaborador(IdColaborador, Nome, IdDesignacao, IdCentroHospitalar)
Values (6 , 'Marta Pereira', 4 , 1 );

INSERT INTO Colaborador(IdColaborador, Nome, IdDesignacao, IdCentroHospitalar)
Values (7 , 'Alexandre Borges', 1 , 1 );

INSERT INTO Colaborador(IdColaborador, Nome, IdDesignacao, IdCentroHospitalar)
Values (8 , 'Anita Santos', 1 , 1 );
--
INSERT INTO Colaborador(IdColaborador, Nome, IdDesignacao, IdCentroHospitalar)
Values (9 , 'Mariana Pereirinha', 1 , 1 );

INSERT INTO Colaborador(IdColaborador, Nome, IdDesignacao, IdCentroHospitalar)
Values (10 , 'Pedro Santos', 2 , 1 );

INSERT INTO Colaborador(IdColaborador, Nome, IdDesignacao, IdCentroHospitalar)
Values (11 , 'Lina Maria', 3 , 1 );

INSERT INTO Colaborador(IdColaborador, Nome, IdDesignacao, IdCentroHospitalar)
Values (12 , 'Davide Soares', 4 , 1 );

INSERT INTO Colaborador(IdColaborador, Nome, IdDesignacao, IdCentroHospitalar)
Values (13 , 'Benjamim Augusto', 1 , 1 );
--
INSERT INTO Colaborador(IdColaborador, Nome, IdDesignacao, IdCentroHospitalar)
Values (14 , 'Martim Rocha', 1 , 1 );

INSERT INTO Colaborador(IdColaborador, Nome, IdDesignacao, IdCentroHospitalar)
Values (15 , 'Alexandre Soares', 2 , 1 );

INSERT INTO Colaborador(IdColaborador, Nome, IdDesignacao, IdCentroHospitalar)
Values (16 , 'Bernardo Ferreira', 4 , 1 );

INSERT INTO Colaborador(IdColaborador, Nome, IdDesignacao, IdCentroHospitalar)
Values (17 , 'Diana Neto', 1 , 1 );

INSERT INTO Colaborador(IdColaborador, Nome, IdDesignacao, IdCentroHospitalar)
Values (18 , 'Claudia Souza', 3 , 1 );

INSERT INTO Colaborador(IdColaborador, Nome, IdDesignacao, IdCentroHospitalar)
Values (19 , 'Margarida Brito', 5 , 1 );

INSERT INTO Colaborador(IdColaborador, Nome, IdDesignacao, IdCentroHospitalar)
Values (20 , 'Manuel Indireita', 6 , 1 );

--HistoricoClinico(IdHistoricoClinico, IdUtente)

INSERT INTO HistoricoClinico(IdHistoricoClinico, IdUtente)
Values(1,1);

INSERT INTO HistoricoClinico(IdHistoricoClinico, IdUtente)
Values(2,2);

INSERT INTO HistoricoClinico(IdHistoricoClinico, IdUtente)
Values(3,3);

INSERT INTO HistoricoClinico(IdHistoricoClinico, IdUtente)
Values(4,4);

INSERT INTO HistoricoClinico(IdHistoricoClinico, IdUtente)
Values(5,5);

INSERT INTO HistoricoClinico(IdHistoricoClinico, IdUtente)
Values(6,6);

INSERT INTO HistoricoClinico(IdHistoricoClinico, IdUtente)
Values(7,7);

INSERT INTO HistoricoClinico(IdHistoricoClinico, IdUtente)
Values(8,8);

INSERT INTO HistoricoClinico(IdHistoricoClinico, IdUtente)
Values(9,9);

INSERT INTO HistoricoClinico(IdHistoricoClinico, IdUtente)
Values(10,10);

-- Recurso(IdRecurso, Descricao, NumUtilizacao, Validade) ..................................

INSERT INTO Recurso(IdRecurso, Descricao, NumUtilizacao, Validade)
Values (1, 'seringa', 0, '2020-03-05');

INSERT INTO Recurso(IdRecurso, Descricao, NumUtilizacao, Validade)
Values (2, 'cama', 5, '2033-09-10');

INSERT INTO Recurso(IdRecurso, Descricao, NumUtilizacao, Validade)
Values (3, 'cama', 2, '2027-11-05');

INSERT INTO Recurso(IdRecurso, Descricao, NumUtilizacao, Validade)
Values (4, 'seringa', 0, '2019-07-09');

INSERT INTO Recurso(IdRecurso, Descricao, NumUtilizacao, Validade)
Values (5, 'maca', 10, '2019-02-11');

INSERT INTO Recurso(IdRecurso, Descricao, NumUtilizacao, Validade)
Values (6, 'bisturi', 7, '2020-01-05');

INSERT INTO Recurso(IdRecurso, Descricao, NumUtilizacao, Validade)
Values (7, 'otoscopio', 30, '2022-06-12');

INSERT INTO Recurso(IdRecurso, Descricao, NumUtilizacao, Validade)
Values (8, 'cama', 175,'2018-07-10');

INSERT INTO Recurso(IdRecurso, Descricao, NumUtilizacao, Validade)
Values (9, 'maca', 10, '2018-08-08');

INSERT INTO Recurso(IdRecurso, Descricao, NumUtilizacao, Validade)
Values (10, 'seringa', 1,'2022-02-02');

INSERT INTO Recurso(IdRecurso, Descricao, NumUtilizacao, Validade)
Values (11, 'seringa', 1,'2022-02-02');

INSERT INTO Recurso(IdRecurso, Descricao, NumUtilizacao, Validade)
Values (12, 'seringa', 1,'2022-02-02');

INSERT INTO Recurso(IdRecurso, Descricao, NumUtilizacao, Validade)
Values (13, 'medicamentos', 1,'2019-02-02');

INSERT INTO Recurso(IdRecurso, Descricao, NumUtilizacao, Validade)
Values (14, 'cama', 15,'2018-07-10');

INSERT INTO Recurso(IdRecurso, Descricao, NumUtilizacao, Validade)
Values (15, 'cama', 20,'2018-07-10');

INSERT INTO Recurso(IdRecurso, Descricao, NumUtilizacao, Validade)
Values (16, 'cama', 25,'2018-07-10');

INSERT INTO Recurso(IdRecurso, Descricao, NumUtilizacao, Validade)
Values (17, 'cama', 50,'2018-07-10');

INSERT INTO Recurso(IdRecurso, Descricao, NumUtilizacao, Validade)
Values (18, 'cama', 10,'2018-07-10');

INSERT INTO Recurso(IdRecurso, Descricao, NumUtilizacao, Validade)
Values (19, 'cama', 15,'2018-07-10');

INSERT INTO Recurso(IdRecurso, Descricao, NumUtilizacao, Validade)
Values (20, 'cama', 15,'2018-07-10');

-- HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade) .............


INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (1, '2018-05-21', '07:00:00', '07:30:00', 1 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (2, '2018-05-21', '07:30:00', '08:00:00', 1 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (3, '2018-05-21', '08:00:00', '08:30:00', 1 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (4, '2018-05-21', '08:30:00', '09:00:00', 1 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (5, '2018-05-21', '07:00:00', '07:30:00', 2 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (6, '2018-05-21', '07:30:00', '08:00:00', 2 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (7, '2018-05-21', '08:00:00', '08:30:00', 2 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (8, '2018-05-21', '08:30:00', '09:00:00', 2 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (9, '2018-05-22', '14:00:00', '14:30:00', 3 , 'F');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (10, '2018-05-22', '14:30:00', '15:00:00', 3 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (11, '2018-05-22', '15:00:00', '15:30:00', 3 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (12, '2018-05-22', '15:30:00', '16:00:00', 3 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (13, '2018-05-22', '14:00:00', '14:30:00', 4 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (14, '2018-05-22', '14:30:00', '15:00:00', 4 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (15, '2018-05-22', '15:00:00', '15:30:00', 4 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (16, '2018-05-22', '15:30:00', '16:00:00', 4 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (17, '2018-05-23', '07:00:00', '07:30:00', 5 , 'F');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (18, '2018-05-23', '07:30:00', '08:00:00', 5 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (19, '2018-05-23', '08:00:00', '08:30:00', 8 , 'F');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (20, '2018-05-23', '08:30:00', '09:00:00', 5 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (21, '2018-05-23', '07:00:00', '07:30:00', 6 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (22, '2018-05-23', '07:30:00', '08:00:00', 6 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (23, '2018-05-23', '08:00:00', '08:30:00', 6 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (24, '2018-05-23', '08:30:00', '09:00:00', 3 , 'F');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (25, '2018-05-24', '14:00:00', '14:30:00', 7 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (26, '2018-05-24', '14:30:00', '15:00:00', 7 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (27, '2018-05-24', '15:00:00', '15:30:00', 7 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (28, '2018-05-24', '15:30:00', '16:00:00', 7 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (29, '2018-05-24', '14:00:00', '14:30:00', 8 , 'F');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (30, '2018-05-24', '14:30:00', '15:00:00', 8 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (31, '2018-05-24', '15:00:00', '15:30:00', 8 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (32, '2018-05-24', '15:30:00', '16:00:00', 8 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (33, '2018-05-25', '07:00:00', '07:30:00', 13 , 'F');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (34, '2018-05-25', '07:30:00', '08:00:00', 9 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (35, '2018-05-25', '08:00:00', '08:30:00', 9 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (36, '2018-05-25', '08:30:00', '09:00:00', 9 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (37, '2018-05-26', '14:00:00', '14:30:00', 10 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (38, '2018-05-26', '14:30:00', '15:00:00', 10 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (39, '2018-05-26', '15:00:00', '15:30:00', 14 , 'F');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (40, '2018-05-26', '15:30:00', '16:00:00', 10 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (41, '2018-05-26', '14:00:00', '14:30:00', 13 , 'F');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (42, '2018-05-26', '14:30:00', '15:00:00', 11 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (43, '2018-05-26', '15:00:00', '15:30:00', 14 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (44, '2018-05-26', '15:30:00', '16:00:00', 11 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (45, '2018-05-26', '14:00:00', '14:30:00', 12 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (46, '2018-05-26', '14:30:00', '15:00:00', 12 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (47, '2018-05-26', '15:00:00', '15:30:00', 12 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (48, '2018-05-26', '15:30:00', '16:00:00', 12 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (49, '2018-05-27', '07:00:00', '07:30:00', 13 , 'F');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (50, '2018-05-27', '07:30:00', '08:00:00', 13 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (51, '2018-05-27', '08:00:00', '08:30:00', 13 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (52, '2018-05-27', '08:30:00', '09:00:00', 13 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (53, '2018-05-27', '14:00:00', '14:30:00', 14 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (54, '2018-05-27', '14:30:00', '15:00:00', 14 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (55, '2018-05-27', '15:00:00', '15:30:00', 14 , 'T');

INSERT INTO HorarioRecurso(IdHorarioRecurso, Data, HoraInicio, HoraFim, IdRecurso, Disponibilidade)
Values (56, '2018-05-27', '15:30:00', '16:00:00', 14 , 'T');


-- HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade) .............

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (1, '2018-05-21', '07:00:00', '07:30:00', 1 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (2, '2018-05-21', '07:30:00', '08:00:00', 1 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (3, '2018-05-21', '08:00:00', '08:30:00', 1 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (4, '2018-05-21', '08:30:00', '09:00:00', 1 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (5, '2018-05-21', '07:00:00', '07:30:00', 2 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (6, '2018-05-21', '07:30:00', '08:00:00', 2 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (7, '2018-05-21', '08:00:00', '08:30:00', 2 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (8, '2018-05-21', '08:30:00', '09:00:00', 2 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (9, '2018-05-22', '14:00:00', '14:30:00', 3 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (10, '2018-05-22', '14:30:00', '15:00:00', 3 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (11, '2018-05-22', '15:00:00', '15:30:00', 3 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (12, '2018-05-22', '15:30:00', '16:00:00', 3 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (13, '2018-05-22', '14:00:00', '14:30:00', 4 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (14, '2018-05-22', '14:30:00', '15:00:00', 4 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (15, '2018-05-22', '15:00:00', '15:30:00', 4 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (16, '2018-05-22', '15:30:00', '16:00:00', 4 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (17, '2018-05-23', '07:00:00', '07:30:00', 5 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (18, '2018-05-23', '07:30:00', '08:00:00', 5 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (19, '2018-05-23', '08:00:00', '08:30:00', 5 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (20, '2018-05-23', '08:30:00', '09:00:00', 5 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (21, '2018-05-23', '07:00:00', '07:30:00', 6 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (22, '2018-05-23', '07:30:00', '08:00:00', 6 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (23, '2018-05-23', '08:00:00', '08:30:00', 6 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (24, '2018-05-23', '08:30:00', '09:00:00', 6 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (25, '2018-05-24', '14:00:00', '14:30:00', 7 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (26, '2018-05-24', '14:30:00', '15:00:00', 7 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (27, '2018-05-24', '15:00:00', '15:30:00', 7 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (28, '2018-05-24', '15:30:00', '16:00:00', 7 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (29, '2018-05-24', '14:00:00', '14:30:00', 8 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (30, '2018-05-24', '14:30:00', '15:00:00', 8 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (31, '2018-05-24', '15:00:00', '15:30:00', 8 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (32, '2018-05-24', '15:30:00', '16:00:00', 8 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (33, '2018-05-25', '07:00:00', '07:30:00', 9 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (34, '2018-05-25', '07:30:00', '08:00:00', 9 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (35, '2018-05-25', '08:00:00', '08:30:00', 9 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (36, '2018-05-25', '08:30:00', '09:00:00', 9 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (37, '2018-05-26', '14:00:00', '14:30:00', 10 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (38, '2018-05-26', '14:30:00', '15:00:00', 10 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (39, '2018-05-26', '15:00:00', '15:30:00', 10 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (40, '2018-05-26', '15:30:00', '16:00:00', 10 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (41, '2018-05-26', '14:00:00', '14:30:00', 1 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (42, '2018-05-26', '14:30:00', '15:00:00', 1 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (43, '2018-05-26', '15:00:00', '15:30:00', 1 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (44, '2018-05-26', '15:30:00', '16:00:00', 1 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (45, '2018-05-26', '14:00:00', '14:30:00', 2 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (46, '2018-05-26', '14:30:00', '15:00:00', 2 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (47, '2018-05-26', '15:00:00', '15:30:00', 2 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (48, '2018-05-26', '15:30:00', '16:00:00', 2 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (49, '2018-05-27', '07:00:00', '07:30:00', 3 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (50, '2018-05-27', '07:30:00', '08:00:00', 3 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (51, '2018-05-27', '08:00:00', '08:30:00', 3 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (52, '2018-05-27', '08:30:00', '09:00:00', 3 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (53, '2018-05-27', '14:00:00', '14:30:00', 4 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (54, '2018-05-27', '14:30:00', '15:00:00', 4 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (55, '2018-05-27', '15:00:00', '15:30:00', 4 , 'T');

INSERT INTO HorarioTrabalho(IdHorarioTrabalho, Data, HoraInicio, HoraFim, IdColaborador, Disponibilidade)
Values (56, '2018-05-27', '15:30:00', '16:00:00', 4 , 'T');


-- Distribuicao(IdHorarioTrabalho, IdServico)
INSERT INTO Distribuicao(IdHorarioTrabalho, IdServico)
Values (1, 1);

INSERT INTO Distribuicao(IdHorarioTrabalho, IdServico)
Values (2, 2);

INSERT INTO Distribuicao(IdHorarioTrabalho, IdServico)
Values (3, 3);

INSERT INTO Distribuicao(IdHorarioTrabalho, IdServico)
Values (4, 2);

INSERT INTO Distribuicao(IdHorarioTrabalho, IdServico)
Values (5,3);

INSERT INTO Distribuicao(IdHorarioTrabalho, IdServico)
Values (6, 4);

INSERT INTO Distribuicao(IdHorarioTrabalho, IdServico)
Values (7, 5);

INSERT INTO Distribuicao(IdHorarioTrabalho, IdServico)
Values (8, 6);

INSERT INTO Distribuicao(IdHorarioTrabalho, IdServico)
Values (9, 2);

INSERT INTO Distribuicao(IdHorarioTrabalho, IdServico)
Values (10, 3);


-- Armazena(IdLocal, IdRecurso) ....................................................

INSERT INTO Armazena(IdLocal, IdRecurso)
Values(1, 2);

INSERT INTO Armazena(IdLocal, IdRecurso)
Values(2, 3);

INSERT INTO Armazena(IdLocal, IdRecurso)
Values(3, 5);

INSERT INTO Armazena(IdLocal, IdRecurso)
Values(4, 8);

INSERT INTO Armazena(IdLocal, IdRecurso)
Values(5, 9);

INSERT INTO Armazena(IdLocal, IdRecurso)
Values(6, 14);

INSERT INTO Armazena(IdLocal, IdRecurso)
Values(7, 15);

INSERT INTO Armazena(IdLocal, IdRecurso)
Values(8, 10);

INSERT INTO Armazena(IdLocal, IdRecurso)
Values(9, 13);

INSERT INTO Armazena(IdLocal, IdRecurso)
Values(10, 16);

INSERT INTO Armazena(IdLocal, IdRecurso)
Values(11, 17);

INSERT INTO Armazena(IdLocal, IdRecurso)
Values(12, 18);

INSERT INTO Armazena(IdLocal, IdRecurso)
Values(13, 19);

INSERT INTO Armazena(IdLocal, IdRecurso)
Values(14, 20);


-- Detem(IdColaborador, IdEspecializacao) .......................................

INSERT INTO Detem(IdColaborador,IdEspecializacao)
Values(1,5);

INSERT INTO Detem(IdColaborador,IdEspecializacao)
Values(2,3);

INSERT INTO Detem(IdColaborador,IdEspecializacao)
Values(3,8);

INSERT INTO Detem(IdColaborador,IdEspecializacao)
Values(4,1);

INSERT INTO Detem(IdColaborador,IdEspecializacao)
Values(5,8);

INSERT INTO Detem(IdColaborador,IdEspecializacao)
Values(6,8);

INSERT INTO Detem(IdColaborador,IdEspecializacao)
Values(7,7);

INSERT INTO Detem(IdColaborador,IdEspecializacao)
Values(8,8);

INSERT INTO Detem(IdColaborador,IdEspecializacao)
Values(9,3);

INSERT INTO Detem(IdColaborador,IdEspecializacao)
Values(10,8);

INSERT INTO Detem(IdColaborador,IdEspecializacao)
Values(4,8);

INSERT INTO Detem(IdColaborador,IdEspecializacao)
Values(7,3);

INSERT INTO Detem(IdColaborador,IdEspecializacao)
Values(1,3);


-- Acede(IdColaborador, IdHistoricoClinico)

INSERT INTO Acede(IdColaborador, IdHistoricoClinico)
Values(1, 1);

INSERT INTO Acede(IdColaborador, IdHistoricoClinico)
Values(2, 2);

INSERT INTO Acede(IdColaborador, IdHistoricoClinico)
Values(1, 3);

INSERT INTO Acede(IdColaborador, IdHistoricoClinico)
Values(14, 4);

INSERT INTO Acede(IdColaborador, IdHistoricoClinico)
Values(17, 5);

INSERT INTO Acede(IdColaborador, IdHistoricoClinico)
Values(2, 6);

INSERT INTO Acede(IdColaborador, IdHistoricoClinico)
Values(1, 2);

INSERT INTO Acede(IdColaborador, IdHistoricoClinico)
Values(7, 7);

INSERT INTO Acede(IdColaborador, IdHistoricoClinico)
Values(8, 8);

INSERT INTO Acede(IdColaborador, IdHistoricoClinico)
Values(9, 9);

-- HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade) .............

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (1, '2018-05-21', '07:00:00', '07:30:00', 1 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (2, '2018-05-21', '07:30:00', '08:00:00', 1 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (3, '2018-05-21', '08:00:00', '08:30:00', 1 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (4, '2018-05-21', '08:30:00', '09:00:00', 1 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (5, '2018-05-21', '07:00:00', '07:30:00', 2 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (6, '2018-05-21', '07:30:00', '08:00:00', 2 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (7, '2018-05-21', '08:00:00', '08:30:00', 2 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (8, '2018-05-21', '08:30:00', '09:00:00', 2 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (9, '2018-05-22', '14:00:00', '14:30:00', 3 , 'F');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (10, '2018-05-22', '14:30:00', '15:00:00', 3 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (11, '2018-05-22', '15:00:00', '15:30:00', 3 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (12, '2018-05-22', '15:30:00', '16:00:00', 3 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (13, '2018-05-22', '14:00:00', '14:30:00', 4 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (14, '2018-05-22', '14:30:00', '15:00:00', 4 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (15, '2018-05-22', '15:00:00', '15:30:00', 4 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (16, '2018-05-22', '15:30:00', '16:00:00', 4 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (17, '2018-05-23', '07:00:00', '07:30:00', 5 , 'F');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (18, '2018-05-23', '07:30:00', '08:00:00', 5 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (19, '2018-05-23', '08:00:00', '08:30:00', 5 , 'F');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (20, '2018-05-23', '08:30:00', '09:00:00', 5 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (21, '2018-05-23', '07:00:00', '07:30:00', 6 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (22, '2018-05-23', '07:30:00', '08:00:00', 6 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (23, '2018-05-23', '08:00:00', '08:30:00', 6 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (24, '2018-05-23', '08:30:00', '09:00:00', 6 , 'F');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (25, '2018-05-24', '14:00:00', '14:30:00', 7 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (26, '2018-05-24', '14:30:00', '15:00:00', 7 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (27, '2018-05-24', '15:00:00', '15:30:00', 7 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (28, '2018-05-24', '15:30:00', '16:00:00', 7 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (29, '2018-05-24', '14:00:00', '14:30:00', 8 , 'F');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (30, '2018-05-24', '14:30:00', '15:00:00', 8 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (31, '2018-05-24', '15:00:00', '15:30:00', 8 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (32, '2018-05-24', '15:30:00', '16:00:00', 8 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (33, '2018-05-25', '07:00:00', '07:30:00', 9 , 'F');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (34, '2018-05-25', '07:30:00', '08:00:00', 9 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (35, '2018-05-25', '08:00:00', '08:30:00', 9 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (36, '2018-05-25', '08:30:00', '09:00:00', 9 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (37, '2018-05-26', '14:00:00', '14:30:00', 10 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (38, '2018-05-26', '14:30:00', '15:00:00', 10 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (39, '2018-05-26', '15:00:00', '15:30:00', 10 , 'F');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (40, '2018-05-26', '15:30:00', '16:00:00', 10 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (41, '2018-05-26', '14:00:00', '14:30:00', 11 , 'F');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (42, '2018-05-26', '14:30:00', '15:00:00', 11 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (43, '2018-05-26', '15:00:00', '15:30:00', 11 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (44, '2018-05-26', '15:30:00', '16:00:00', 11 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (45, '2018-05-26', '14:00:00', '14:30:00', 12 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (46, '2018-05-26', '14:30:00', '15:00:00', 12 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (47, '2018-05-26', '15:00:00', '15:30:00', 12 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (48, '2018-05-26', '15:30:00', '16:00:00', 12 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (49, '2018-05-27', '07:00:00', '07:30:00', 13 , 'F');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (50, '2018-05-27', '07:30:00', '08:00:00', 13 , 'F');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (51, '2018-05-27', '08:00:00', '08:30:00', 13 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (52, '2018-05-27', '08:30:00', '09:00:00', 13 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (53, '2018-05-27', '14:00:00', '14:30:00', 14 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (54, '2018-05-27', '14:30:00', '15:00:00', 14 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (55, '2018-05-27', '15:00:00', '15:30:00', 14 , 'T');

INSERT INTO HorarioLocal(IdHorarioLocal, Data , HoraInicio, HoraFim , IdLocal, Disponibilidade)
Values (56, '2018-05-27', '15:30:00', '16:00:00', 14 , 'T');


--	Marcacao(IdMarcacao, Motivo,IdUtente) --

INSERT INTO Marcacao(IdMarcacao, Motivo,IdUtente)
Values (1 , 'Dor de barriga',1 );

INSERT INTO Marcacao(IdMarcacao, Motivo,IdUtente)
Values (2 , 'Dor de cabeca',2 );

INSERT INTO Marcacao(IdMarcacao, Motivo,IdUtente)
Values (3 , 'Ma disposicao',3 );

INSERT INTO Marcacao(IdMarcacao, Motivo,IdUtente)
Values (4 , 'Dor no peito',4 );

INSERT INTO Marcacao(IdMarcacao, Motivo,IdUtente)
Values (5 , 'Dor na perna',5 );

INSERT INTO Marcacao(IdMarcacao, Motivo,IdUtente)
Values (6 , 'Tosse forte',6 );

INSERT INTO Marcacao(IdMarcacao, Motivo,IdUtente)
Values (7 , 'Dor de costas',7 );

INSERT INTO Marcacao(IdMarcacao, Motivo,IdUtente)
Values (8 , 'Desmaios constantes',8 );

INSERT INTO Marcacao(IdMarcacao, Motivo,IdUtente)
Values (9 , 'Dificuldade a respirar',9 );

INSERT INTO Marcacao(IdMarcacao, Motivo,IdUtente)
Values (10 , 'Falta de força',10 );

-- EpisodioClinico(IdECli, Observacao, IdTO, IdUtente, IdHistoricoClinico) ..................

INSERT INTO EpisodioClinico(IdECli, Observacao, IdTO,IdUtente, IdHistoricoClinico)
VALUES(1,'Paciente Direcionado para Analise',1,1,1);

INSERT INTO EpisodioClinico(IdECli, Observacao, IdTO, IdUtente, IdHistoricoClinico)
VALUES(2,'Paciente Direccionado com emergencia para a sala de operações ',2,1,2);

INSERT INTO EpisodioClinico(IdECli, Observacao, IdTO,IdUtente, IdHistoricoClinico)
VALUES(3,'Doente Direcionado para Medicina Geral',3,10,3);

INSERT INTO EpisodioClinico(IdECli, Observacao, IdTO,IdUtente, IdHistoricoClinico)
VALUES(4,'Paciente Direcionado Cardiologia',4,4,4);

INSERT INTO EpisodioClinico(IdECli, Observacao, IdTO, IdUtente, IdHistoricoClinico)
VALUES(5,'Foi Marcado para o paciente 2 sessoes de Fisioterapia ',7,7,5);

INSERT INTO EpisodioClinico(IdECli, Observacao, IdTO,IdUtente, IdHistoricoClinico)
VALUES(6,'Foram receitados dois rebuçados Dr.Bayard ',3,6,6);

INSERT INTO EpisodioClinico(IdECli, Observacao, IdTO,IdUtente, IdHistoricoClinico)
VALUES(7,'Paciente direccionado para Radiologia',7,7,7);

INSERT INTO EpisodioClinico(IdECli, Observacao, IdTO, IdUtente, IdHistoricoClinico)
VALUES(8,'Paciente direccionado para casa',9,8,8);

INSERT INTO EpisodioClinico(IdECli, Observacao, IdTO,IdUtente, IdHistoricoClinico)
VALUES(9,'Doente Direcionado para a sala de operações',6,9,9);

INSERT INTO EpisodioClinico(IdECli, Observacao, IdTO,IdUtente, IdHistoricoClinico)
VALUES(10,'Receitado dois suplementos vitaminicos',3,10,10);

-- Reserva(IdECli, IdHorarioRecurso) .......................................

INSERT INTO Reserva(IdECli,IdHorarioRecurso)
VALUES(1,29);

INSERT INTO Reserva(IdECli,IdHorarioRecurso)
VALUES(3,41);

INSERT INTO Reserva(IdECli,IdHorarioRecurso)
VALUES(6,49);

INSERT INTO Reserva(IdECli,IdHorarioRecurso)
VALUES(7,39);

INSERT INTO Reserva(IdECli,IdHorarioRecurso)
VALUES(9,19);

INSERT INTO Reserva(IdECli,IdHorarioRecurso)
VALUES(4,9);

INSERT INTO Reserva(IdECli,IdHorarioRecurso)
VALUES(2,17);

INSERT INTO Reserva(IdECli,IdHorarioRecurso)
VALUES(5,24);

INSERT INTO Reserva(IdECli,IdHorarioRecurso)
VALUES(10,33);


--Agenda(IdECli, IdHorarioLocal)

INSERT INTO Agenda(IdECli, IdHorarioLocal)
Values(1, 29);

INSERT INTO Agenda(IdECli, IdHorarioLocal)
Values(2, 17);

INSERT INTO Agenda(IdECli, IdHorarioLocal)
Values(3, 41);

INSERT INTO Agenda(IdECli, IdHorarioLocal)
Values(4, 9);

INSERT INTO Agenda(IdECli, IdHorarioLocal)
Values(5, 24);

INSERT INTO Agenda(IdECli, IdHorarioLocal)
Values(6, 49);

INSERT INTO Agenda(IdECli, IdHorarioLocal)
Values(7, 39);

INSERT INTO Agenda(IdECli, IdHorarioLocal)
Values(8, 50);

INSERT INTO Agenda(IdECli, IdHorarioLocal)
Values(9, 19);

INSERT INTO Agenda(IdECli, IdHorarioLocal)
Values(10, 33);

-- Gera(IdMarcacao, IdECli)

INSERT INTO Gera(IdMarcacao, IdECli)
Values(1, 1);

INSERT INTO Gera(IdMarcacao, IdECli)
Values(2, 2);

INSERT INTO Gera(IdMarcacao, IdECli)
Values(3, 1);

INSERT INTO Gera(IdMarcacao, IdECli)
Values(4, 3);

INSERT INTO Gera(IdMarcacao, IdECli)
Values(5, 5);

INSERT INTO Gera(IdMarcacao, IdECli)
Values(6, 6);

INSERT INTO Gera(IdMarcacao, IdECli)
Values(7, 7);

INSERT INTO Gera(IdMarcacao, IdECli)
Values(8, 4);

INSERT INTO Gera(IdMarcacao, IdECli)
Values(9, 9);

INSERT INTO Gera(IdMarcacao, IdECli)
Values(10, 10);


-- Participacao(IdColaborador, IdECli) ........................

INSERT INTO Participacao(IdColaborador,IdECli)
Values(1,1);

INSERT INTO Participacao(IdColaborador,IdECli)
Values(2,2);

INSERT INTO Participacao(IdColaborador,IdECli)
Values(3,3);

INSERT INTO Participacao(IdColaborador,IdECli)
Values(4,4);

INSERT INTO Participacao(IdColaborador,IdECli)
Values(5,5);

INSERT INTO Participacao(IdColaborador,IdECli)
Values(6,6);

INSERT INTO Participacao(IdColaborador,IdECli)
Values(7,7);

INSERT INTO Participacao(IdColaborador,IdECli)
Values(8,8);

INSERT INTO Participacao(IdColaborador,IdECli)
Values(9,9);

INSERT INTO Participacao(IdColaborador,IdECli)
Values(10,10);

INSERT INTO Participacao(IdColaborador,IdECli)
Values(11,3);

INSERT INTO Participacao(IdColaborador,IdECli)
Values(1,9);

INSERT INTO Participacao(IdColaborador,IdECli)
Values(2,9);


--	Progride(IdECliInicial, IdECliDerivado) .................

INSERT INTO Progride(IdECliInicial, IdECliDerivado)
Values (1, 2);

INSERT INTO Progride(IdECliInicial, IdECliDerivado)
Values (2, 3);

INSERT INTO Progride(IdECliInicial, IdECliDerivado)
Values (4, 5);

INSERT INTO Progride(IdECliInicial, IdECliDerivado)
Values (6, 7);

INSERT INTO Progride(IdECliInicial, IdECliDerivado)
Values (8, 9);


-- Marcar(IdMarcacao,IdHorarioTrabalho) ------------

INSERT INTO Marcar(IdMarcacao,IdHorarioTrabalho)
Values (1,1 );

INSERT INTO Marcar(IdMarcacao,IdHorarioTrabalho)
Values (2,2 );

INSERT INTO Marcar(IdMarcacao,IdHorarioTrabalho)
Values (3,3 );

INSERT INTO Marcar(IdMarcacao,IdHorarioTrabalho)
Values (3,3 );

INSERT INTO Marcar(IdMarcacao,IdHorarioTrabalho)
Values (4,4 );

INSERT INTO Marcar(IdMarcacao,IdHorarioTrabalho)
Values (5,5 );

INSERT INTO Marcar(IdMarcacao,IdHorarioTrabalho)
Values (6,6 );

INSERT INTO Marcar(IdMarcacao,IdHorarioTrabalho)
Values (7,7 );

INSERT INTO Marcar(IdMarcacao,IdHorarioTrabalho)
Values (8,8 );

INSERT INTO Marcar(IdMarcacao,IdHorarioTrabalho)
Values (9,9 );

INSERT INTO Marcar(IdMarcacao,IdHorarioTrabalho)
Values (10,10);

-- Programa(IdMarcacao,IdHorarioRecurso)

INSERT INTO Programa(IdMarcacao,IdHorarioRecurso)
Values (1,1);

INSERT INTO Programa(IdMarcacao,IdHorarioRecurso)
Values (2,2);

INSERT INTO Programa(IdMarcacao,IdHorarioRecurso)
Values (3,3);

INSERT INTO Programa(IdMarcacao,IdHorarioRecurso)
Values (4,4);

INSERT INTO Programa(IdMarcacao,IdHorarioRecurso)
Values (5,5);

INSERT INTO Programa(IdMarcacao,IdHorarioRecurso)
Values (6,6);

INSERT INTO Programa(IdMarcacao,IdHorarioRecurso)
Values (7,7);

INSERT INTO Programa(IdMarcacao,IdHorarioRecurso)
Values (8,8);

INSERT INTO Programa(IdMarcacao,IdHorarioRecurso)
Values (9,9);

INSERT INTO Programa(IdMarcacao,IdHorarioRecurso)
Values (10,10);

-- Escolhe(IdMarcacao,IdHorarioLocal)

INSERT INTO Escolhe(IdMarcacao,IdHorarioLocal)
Values (1,1);

INSERT INTO Escolhe(IdMarcacao,IdHorarioLocal)
Values (2,2);

INSERT INTO Escolhe(IdMarcacao,IdHorarioLocal)
Values (3,3);

INSERT INTO Escolhe(IdMarcacao,IdHorarioLocal)
Values (4,4);

INSERT INTO Escolhe(IdMarcacao,IdHorarioLocal)
Values (5,5);

INSERT INTO Escolhe(IdMarcacao,IdHorarioLocal)
Values (6,6);

INSERT INTO Escolhe(IdMarcacao,IdHorarioLocal)
Values (7,7);

INSERT INTO Escolhe(IdMarcacao,IdHorarioLocal)
Values (8,8);

INSERT INTO Escolhe(IdMarcacao,IdHorarioLocal)
Values (9,9);

INSERT INTO Escolhe(IdMarcacao,IdHorarioLocal)
Values (10,10);

-- Anexar(IdAnexo,IdECli)-----------------------

INSERT INTO Anexar(IdAnexo, IdECli)
VALUES(2, 1);

INSERT INTO Anexar(IdAnexo, IdECli)
VALUES(1, 2);

INSERT INTO Anexar(IdAnexo, IdECli)
VALUES(1, 3);

INSERT INTO Anexar(IdAnexo, IdECli)
VALUES(4, 4);

INSERT INTO Anexar(IdAnexo, IdECli)
VALUES(1, 5);

INSERT INTO Anexar(IdAnexo, IdECli)
VALUES(5, 6);

INSERT INTO Anexar(IdAnexo, IdECli)
VALUES(1, 7);

INSERT INTO Anexar(IdAnexo, IdECli)
VALUES(2, 9);

INSERT INTO Anexar(IdAnexo, IdECli)
VALUES(3, 10);

-- Anexo(IdAnexo,Descricao,IdTipoAnexo)------------

INSERT INTO Anexo(IdAnexo, Descricao, IdTipoAnexo)
VALUES(1, "Raio-x", 2);

INSERT INTO Anexo(IdAnexo, Descricao, IdTipoAnexo)
VALUES(2, "Analise ao sangue", 1);

INSERT INTO Anexo(IdAnexo, Descricao, IdTipoAnexo)
VALUES(3, "Dois Brufen 500mg", 3);

INSERT INTO Anexo(IdAnexo, Descricao, IdTipoAnexo)
VALUES(4, "Xanax 10mg", 3);

INSERT INTO Anexo(IdAnexo, Descricao, IdTipoAnexo)
VALUES(5, "Rebucados Dr. Bayard", 3);

-- TipoAnexo(IdTipoAnexo,Descricao)------------------

INSERT INTO TipoAnexo(IdTipoAnexo, Descricao)
VALUES(1, "Analise Clinica");

INSERT INTO TipoAnexo(IdAnexo, Descricao)
VALUES(2, "Exame");

INSERT INTO TipoAnexo(IdAnexo, Descricao)
VALUES(3, "Pescricoes");





