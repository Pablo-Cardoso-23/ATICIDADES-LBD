-- CREATE DATABASE db_petshop;
USE db_petshop;

CREATE TABLE clientes(
	cpf CHAR(11) NOT NULL,
	nome VARCHAR(100),
    telefone CHAR(11),
    endereco VARCHAR(100),
    email VARCHAR(100),
    profissao VARCHAR(100),
    PRIMARY KEY (cpf)
);

CREATE TABLE pets(
	id_cliente CHAR(11) NOT NULL,
	id_pet INT NOT NULL,
	raca CHAR(45),
    peso FLOAT(2),
    porte ENUM("baixo", "alto", "medio"),
    nome VARCHAR(100),
    idade INTEGER,
    tipo_animal ENUM("ave", "passaro", "cachorro", "gato"),
    pelagem VARCHAR(100),
    doencas_cronicas VARCHAR(100),
    PRIMARY KEY (id_pet)
);

ALTER TABLE pets
ADD FOREIGN KEY (id_cliente) REFERENCES clientes(cpf);

SELECT * FROM pets;