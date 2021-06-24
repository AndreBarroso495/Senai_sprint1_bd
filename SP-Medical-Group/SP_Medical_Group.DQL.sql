USE SP_Medical_Group;
GO

INSERT INTO tipoUsuario
VALUES		('Administrador')
			,('Medico')
			,('Paciente');
GO

INSERT INTO especialidade
VALUES		('Acumpuntura')
			,('Anestesiologia')
			,('Angiologia')
			,('Cardiologia')
			,('Cirurgia Cardiovascular')
			,('Cirurgia da Mão')
			,('Cirurgia do Aparelho Digestivo')
			,('Cirurgia Geral')
			,('Cirurgia Pediátrica')
			,('Cirurgia Plástica')
			,('Cirurgia Torácica')
			,('Cirurgia Vascular')
			,('Dermatologia')
			,('Radioterapia')
			,('Urologia')
			,('Pediatria')
			,('Psiquiatria');
GO

INSERT INTO clinica
VALUES		('Clinica Possarle', '89400902000130', 'SP Medical Group', 'Av. Barão de Limeira, 532, São Paulo - SP');
GO

INSERT INTO usuario (idTipoUsuario, nome, email)
VALUES		(2, 'Ricardo Lemos', 'ricardo.lemos@spmedicalgroup.com.br')
			,(2, 'Roberto Possarle', 'roberto.possarle@spmedicalgroup.com.br')
			,(2, 'Helena Strada', 'helena.souza@spmedicalgroup.com.br')
			,(3, 'Ligia', 'ligia@gmail.com')
			,(3, 'Alexandre', 'alexandre@gmail.com')
			,(3, 'Fernando', 'fernando@gmail.com')
			,(3, 'Henrique', 'henrique@gmail.com')
			,(3, 'João', 'joao@hotmail.com')
			,(3, 'Bruno', 'bruno@gmail.com')
			,(3, 'Mariana', 'mariana@outlook.com');
GO

INSERT INTO medico
VALUES		('Ricardo Lemos', 1, 2, 1, '54356-SP')
			,('Roberto Possarle', 2, 17, 1, '53452-SP')
			,('Helena Strada', 3, 16, 1, '65463-SP');
GO

INSERT INTO paciente
VALUES		(4, 'Ligia', '13/10/1983', '1134567654', '435225435', '94839859000', 'Rua Estado de Israel 240, São Paulo - SP, 04022-000')
			,(5, 'Alexandre', '23/07/2001', '11987656543', '326543457', '73556944057', 'Av. Paulista, 1578 - Bela Vista, São Paulo - SP, 01310-200')
			,(6, 'Fernando' ,'10/10/1978', '11972084453', '546365253', '16839338002', 'Av. Ibirapuera, 2927 - Indianópolis, São Paulo - SP, 04029-200')
			,(7, 'Henrique', '13/10/1985', '1134566543', '543663625', '14332654765', 'R. Vitória, 120 - Vila São Jorge, Barueri - SP, 06402-030')
			,(8, 'João', '27/08/1975', '1176566377', '532544441', '91305348010', 'R. Ver. Geraldo de Camargo, 66 - Santa Luzia, Ribeirão Pires - SP, 09405-380')
			,(9, 'Bruno', '21/03/1972', '11954368769', '545662667', '79799299004', 'Alameda dos Arapanés, 945 - Indianópolis, São Paulo - SP, 04524-001')
			,(10, 'Mariana', '05/03/2018', '', '545662668', '13771913039', 'R. São Antônio, 232 - Vila Universal, Barueri - SP, 06407-140');
GO

INSERT INTO consulta
VALUES		(7, 3, 'Realizada')
			,(2, 2, 'Cancelada')
			,(3, 2, 'Realizada')
			,(2, 2, 'Realizada')
			,(4, 1, 'Cancelada')
			,(7, 3, 'Agendada')
			,(4, 1, 'Agendada');
GO