-- Projeto: Análise de Dados Eleitorais 2024 (Módulo 5 - prograMaria)
-- Objetivo: Criar a estrutura de banco de dados para municípios e gerência regional

CREATE TABLE Municipios_Brasileiros (
    Municipio_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Cidade VARCHAR(100) NOT NULL,
    Estado VARCHAR(2) NOT NULL,
    Regiao VARCHAR(20) NOT NULL
);

CREATE TABLE Gerencia_Regiao (
    gerencia_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Regiao TEXT(20) NOT NULL,
    pessoas_brancas INTEGER NOT NULL,
    pessoas_pretas_pardas INTEGER NOT NULL,
    CONSTRAINT fk_regiao FOREIGN KEY (Regiao) REFERENCES Municipios_Brasileiros (Regiao)
);