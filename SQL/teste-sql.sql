
--Criando as tabelas no banco

CREATE TABLE Aluno(
	Id INT PRIMARY KEY NOT NULL,
	Nome Varchar(20) NOT NULL
);

CREATE TABLE Responsavel(
	Id INT PRIMARY KEY NOT NULL,
	Nome Varchar(20) NOT NULL
);

CREATE TABLE Parentesco(
	Id Int PRIMARY KEY NOT NULL,
	IdResponsavel Int NOT NULL,
	IdAluno Int NOT NULL,
	Parentesco Varchar(20) NOT NULL,
	FOREIGN KEY (IdResponsavel) REFERENCES Responsavel(Id),
	FOREIGN KEY (IdAluno) REFERENCES Aluno(Id)
);

--Insert no banco com os valores solicitados

INSERT INTO aluno (id, nome) VALUES (1, 'Lucas');
INSERT INTO responsavel (id, nome) VALUES (1, 'Pablo');
INSERT INTO responsavel (id, nome) VALUES (2, 'Brenda');
INSERT INTO parentesco (id, idResponsavel, IdAluno, Parentesco) VALUES (1, 1, 1, 'Pai');
INSERT INTO parentesco (id, idResponsavel, IdAluno, Parentesco) VALUES (2, 2, 1, 'Mãe');

--Consulta dos alunos com seus parentescos

SELECT 
    Aluno.Nome AS NomeAluno,
    STRING_AGG(Responsavel.Nome, ' - ') AS NomesResponsaveis,
    STRING_AGG(Parentesco.Parentesco, ' - ') AS Parentescos
FROM 
    Aluno
LEFT JOIN 
    Parentesco ON Aluno.Id = Parentesco.IdAluno
LEFT JOIN 
    Responsavel ON Parentesco.IdResponsavel = Responsavel.Id
GROUP BY 
    Aluno.Id;

--Bonus

Select 
	r.nome as RESPONSAVEL,
	'é' as e,
	p.parentesco as PARENTESCO,
	'do aluno' as Do_Aluno,
	a.nome as ALUNO
FROM 
	aluno as a,
	responsavel as r,
	parentesco as p
WHERE
	a.id = p.IdALuno and
	r.id = p.IdResponsavel