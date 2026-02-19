-- create  DATABASE biblioteca;

use biblioteca;

-- 1 Criação da Tabela Autor
CREATE TABLE autor (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome_autor VARCHAR(100) NOT NULL,
    nacionalidade VARCHAR(50)
);

-- 2 Criação da Tabela Livro
CREATE TABLE livro (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome_livro VARCHAR(150) NOT NULL,
    edicao VARCHAR(20) NOT NULL,
    isbn VARCHAR(20) UNIQUE NOT NULL,
    editora VARCHAR(100) NOT NULL
);


CREATE TABLE livro_autor (
    id_livro INT,
    id_autor INT,
    PRIMARY KEY (id_livro, id_autor),
    CONSTRAINT fk_livro_autor_livro FOREIGN KEY (id_livro) REFERENCES livro(id),
    CONSTRAINT fk_livro_autor_autor FOREIGN KEY (id_autor) REFERENCES autor(id)
);

-- 4 Criação da Tabela Aluno
CREATE TABLE aluno (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome_aluno VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    endereco VARCHAR(200) NOT NULL,
    data_nasci DATE NOT NULL
);

-- 5 Criação da Tabela Emprestimo
CREATE TABLE emprestimo (
    id INT PRIMARY KEY AUTO_INCREMENT,
    data_emp DATE NOT NULL,
    data_devo DATE ,
    id_livro INT,
    id_aluno INT,
    CONSTRAINT fk_emp_livro FOREIGN KEY (id_livro) REFERENCES livro(id),
    CONSTRAINT fk_emp_aluno FOREIGN KEY (id_aluno) REFERENCES aluno(id)
);

-- 6 Criação da Tabela Multa
CREATE TABLE multa (
    id INT PRIMARY KEY AUTO_INCREMENT,
    valor DECIMAL(10,2) NOT NULL,
    motivo VARCHAR(255) NOT NULL,
    status_pagamento VARCHAR(20) NOT NULL,
    id_emprestimo INT,
    CONSTRAINT fk_multa_emprestimo FOREIGN KEY (id_emprestimo) REFERENCES emprestimo(id)
);