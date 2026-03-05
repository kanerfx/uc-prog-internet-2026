Create database HelloWord;

Show databases

Use HelloWord;

Create Table aluno(
    matricula INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    like_food VARCHAR(100) NOT NULL,
    nascimento DATE
);

Desc aluno;

Alter Table aluno add column turma VARCHAR(10);

Alter Table aluno drop column nascimento;


Create Table professor(
    cpf INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    ferias BOOLEAN
);

Create Table pessoa(
    rg INT,
    CPF INT,

    Constraint
    fk_cpf FOREIGN KEY (cpf)
    REFERENCES professor(cpf)
);

Drop Table aluno;

Show tables;

Delete database 

Insert Into aluno Values (1, "Gustavo de Merda", "Bosta", "2007/05/24");
Insert Into aluno Values (2, "Bressan", "Siri", "2010/04/16");

Select name, matricula from aluno;

Update aluno set name = "Algo" Where matricula = 1;

Delete From aluno Where nome_aluno = "Gustavo de Merda";


Select From aluno Where matricula > 1;

Select From aluno Limit 1;

Select From aluno ORDER BY nome_aluno;

-- Filmes - 02/03

Insert Into filmes (titulo_original, titulo, duracao, ano_lancamento, cod_diretor, cod_genero) Values ("Oppenheimer", "Oppenheimer", "180", "2023", "73", "9");

Update filmes set duracao = duracao + 2 where titulo_original = "Oppenheimer";

Update filmes set cod_genero = 20 Where titulo_original = "Oppenheimer";

Delete From elenco Where cod_ator = "138";

Delete From atores Where cod_ator = "138";


Select titulo, nome_diretor From filmes, diretores Where filmes.cod_diretor = diretores.cod_diretor;


