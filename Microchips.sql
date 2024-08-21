CREATE DATABASE db_petshop_microchips;
USE db_petshop_microchips;


CREATE TABLE microchips(
	id_microchip INT NOT NULL,
    id_pet INT NOT NULL,
    localizacao VARCHAR(100),
    nome_dono VARCHAR(100),
    nome_pet VARCHAR(45),
    endereco VARCHAR(100),
    especie VARCHAR(50),
    PRIMARY KEY (id_microchip),
    FOREIGN KEY (id_pet) REFERENCES pets(id_pet)
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

SELECT * FROM microchips;