#EXERCICIOS Manipulação de Databases
CREATE DATABASE loja_games;

CREATE DATABASE temp_teste;

DROP DATABASE IF EXISTS temp_teste;

CREATE DATABASE projetos_pessoais;

#EXERCICIOS Criação de Tabelas

CREATE TABLE jogadores(
    id INT NOT NULL AUTO_INCREMENT,
    nickname VARCHAR(100) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE produtos(
    id INT NOT NULL AUTO_INCREMENT,
    nome_item VARCHAR(150) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE fases(
    id INT NOT NULL AUTO_INCREMENT,
    nome_fase VARCHAR(50) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE conquistas(
    id INT NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE configuracoes(
    id INT NOT NULL AUTO_INCREMENT,
    tema VARCHAR(30) NOT NULL,
    PRIMARY KEY(id)
);

#Exercicios Modificação de Tabelas

ALTER TABLE jogadores ADD email VARCHAR(255) ;

ALTER TABLE produtos ADD preco DECIMAL(10,2) NOT NULL;

ALTER TABLE fases ADD dificuldade VARCHAR(20) NOT NULL;

ALTER TABLE conquistas ADD data_obtencao DATE NOT NULL;

ALTER TABLE configuracoes ADD volume_som INT NOT NULL;
