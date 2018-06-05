
-- D-Participacao(IdColaborador, IdECli)---------------------

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
Values(7,3);

INSERT INTO Participacao(IdColaborador,IdECli)
Values(1,9);

INSERT INTO Participacao(IdColaborador,IdECli)
Values(2,9);
-- D-Detem(IdColaborador, IdEspecializacao) .......................................

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

INSERT INTOEspecializacao(IdEspecializacao,Descricao)
Values(7,'Radiologia');

INSERT INTO Especializacao(IdEspecializacao,Descricao)
Values(8,'Medicina Geral');

INSERT INTO Especializacao(IdEspecializacao,Descricao)
Values(9,'Obstretecia');

INSERT INTO Especializacao(IdEspecializacao,Descricao)
Values(10,'Psicologia');


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
