CREATE DATABASE db_petshop_veterinarios;
USE db_petshop_veterinarios;


CREATE TABLE veterinarios(
	id_veterinario INT NOT NULL,
    especializacao VARCHAR(100),
    email VARCHAR(100),
    telefone CHAR(11),
    data_nascimento DATE,
    PRIMARY KEY (id_veterinario)
);

CREATE TABLE pets(
	id_pet INT NOT NULL,
	raca CHAR(45),
    peso FLOAT(2),
    porte ENUM("baixo", "alto", "medio"),
    nome VARCHAR(100),
    idade INTEGER,
    PRIMARY KEY (id_pet)
);

CREATE TABLE atendimentos(
	id_veterinario INT NOT NULL,
    id_pet INT NOT NULL,
    CONSTRAINT id_atendimento PRIMARY KEY (id_veterinario, id_pet),
    FOREIGN KEY (id_veterinario) REFERENCES veterinarios(id_veterinario),
    FOREIGN KEY (id_pet) REFERENCES pets(id_pet)
);

SELECT * FROM atendimentos;