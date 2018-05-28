
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
Values(2,2);

INSERT INTO Participacao(IdColaborador,IdECli)
Values(7,7);

INSERT INTO Participacao(IdColaborador,IdECli)
Values(3,3);

INSERT INTO Participacao(IdColaborador,IdECli)
Values(6,6);


-- D-Detem(IdColaborador, IdEspecializacao)-----------------

INSERT INTO Detem(IdColaborador,IdEspecializacao)
Values(1,1);

INSERT INTO Detem(IdColaborador,IdEspecializacao)
Values(2,2);

INSERT INTO Detem(IdColaborador,IdEspecializacao)
Values(3,3);

INSERT INTO Detem(IdColaborador,IdEspecializacao)
Values(4,4);

INSERT INTO Detem(IdColaborador,IdEspecializacao)
Values(5,5);

INSERT INTO Detem(IdColaborador,IdEspecializacao)
Values(6,6);

INSERT INTO Detem(IdColaborador,IdEspecializacao)
Values(7,7);

INSERT INTO Detem(IdColaborador,IdEspecializacao)
Values(8,8);

INSERT INTO Detem(IdColaborador,IdEspecializacao)
Values(9,9);

INSERT INTO Detem(IdColaborador,IdEspecializacao)
Values(10,10);

INSERT INTO Detem(IdColaborador,IdEspecializacao)
Values(2,2);

INSERT INTO Detem(IdColaborador,IdEspecializacao)
Values(7,7);

INSERT INTO Detem(IdColaborador,IdEspecializacao)
Values(3,3);

INSERT INTO Detem(IdColaborador,IdEspecializacao)
Values(6,6);


-- Especializacao(IdEspecializacao, Descricao)

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


-- EpisodioClinico(IdECli, Observacao, IdTO, IdUtente, IdHistoricoClinico)------------

INSERT INTO EpisodioClinico(IdECli, Observacao, IdTO,IdUtente, IdHistoricoClinico)
VALUES(1,'Paciente Direcionado para Analise',1,1,1);

INSERT INTO EpisodioClinico(IdECli, Observacao, IdTO, IdUtente, IdHistoricoClinico)
VALUES(2,'Paciente Direccionado com emergencia para a sala de operações ',2,1,2);

INSERT INTO EpisodioClinico(IdECli, Observacao, IdTO,IdUtente, IdHistoricoClinico)
VALUES(3,'Doente Direcionado para Medicina Geral',3,10,3);

INSERT INTO EpisodioClinico(IdECli, Observacao, IdTO,IdUtente, IdHistoricoClinico)
VALUES(4,'Paciente Direcionado Cardiologia',4,4,4);

INSERT INTO EpisodioClinico(IdECli, Observacao, IdTO, IdUtente, IdHistoricoClinico)
VALUES(5,'Foi Marcado para o paciente 2 sessoes Fisioterapia ',5,7,5);

INSERT INTO EpisodioClinico(IdECli, Observacao, IdTO,IdUtente, IdHistoricoClinico)
VALUES(6,'Foram receitados dois rebuçados Dr.Bayard ',6,6,6);

INSERT INTO EpisodioClinico(IdECli, Observacao, IdTO,IdUtente, IdHistoricoClinico)
VALUES(7,'Paciente direccionado para Radiologia',7,7,7);

INSERT INTO EpisodioClinico(IdECli, Observacao, IdTO, IdUtente, IdHistoricoClinico)
VALUES(8,'Paciente direccionado para o bar para tomar um cafe cheio e uma nata',8,8,8);

INSERT INTO EpisodioClinico(IdECli, Observacao, IdTO,IdUtente, IdHistoricoClinico)
VALUES(9,'Doente Direcionado para a sala de operações',9,9,9);

INSERT INTO EpisodioClinico(IdECli, Observacao, IdTO,IdUtente, IdHistoricoClinico)
VALUES(10,'Receitado dois suplementos vitaminicos',10,10,10);









