CREATE DATABASE db_alunos;

-- DROP DATABASE db_alunos;

USE db_alunos;

CREATE TABLE alunos(
	Nome VARCHAR(100),
    Matricula VARCHAR(7),
    Email VARCHAR(100)
);

-- DROP TABLE alunos;

CREATE TABLE telefones(
	telefone VARCHAR(11)
);

ALTER TABLE telefones
add ddd VARCHAR(2);

ALTER TABLE telefones
MODIFY ddd CHAR(2);