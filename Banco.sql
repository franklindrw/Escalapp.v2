--
-- File generated with SQLiteStudio v3.3.2 on sáb abr 3 18:05:43 2021
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: ADM
CREATE TABLE ADM (cpf INTEGER PRIMARY KEY AUTOINCREMENT, nome STRING, funcao STRING, data_nasc DATE, data_adimissao DATE, telefone INTEGER);

-- Table: Atividades
CREATE TABLE Atividades (IDATIVIDADES INTEGER PRIMARY KEY, ID_FUNC INTEGER REFERENCES Funcionario (ID), atividades STRING, responsavel STRING);

-- Table: Funcionario
CREATE TABLE Funcionario (ID INTEGER PRIMARY KEY AUTOINCREMENT, cpf INTEGER, nome STRING, funcao STRING, telefone INTEGER, data_nasc DATE, data_adimissao DATE);

-- Table: Gerente
CREATE TABLE Gerente (cpf INTEGER PRIMARY KEY AUTOINCREMENT, nome STRING, telefone INTEGER, data_nasc DATE, data_adimissao DATE);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
