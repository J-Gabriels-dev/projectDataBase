-- 1 Povoamento da Tabela Autor 
INSERT INTO autor (nome_autor, nacionalidade) VALUES
('Machado de Assis', 'Brasileira'),
('Clarice Lispector', 'Brasileira'),
('George Orwell', 'Britânica'),
('J.K. Rowling', 'Britânica'),
('Gabriel García Márquez', 'Colombiana'),
('Agatha Christie', 'Britânica'),
('Isaac Asimov', 'Russa'),
('Stephen King', 'Americana'),
('Virginia Woolf', 'Britânica'),
('Jorge Amado', 'Brasileira');

-- 2 Povoamento da Tabela Livro 
INSERT INTO livro (nome_livro, edicao, isbn, editora) VALUES
('Dom Casmurro', '2ª Ed.', '978850101', 'Editora A'),
('A Hora da Estrela', '1ª Ed.', '978850102', 'Editora B'),
('1984', '5ª Ed.', '978850103', 'Editora C'),
('Harry Potter e a Pedra Filosofal', '10ª Ed.', '978850104', 'Editora D'),
('Cem Anos de Solidão', '3ª Ed.', '978850105', 'Editora E'),
('O Assassinato no Expresso Oriente', '2ª Ed.', '978850106', 'Editora F'),
('Fundação', '4ª Ed.', '978850107', 'Editora G'),
('O Iluminado', '1ª Ed.', '978850108', 'Editora H'),
('Mrs Dalloway', '2ª Ed.', '978850109', 'Editora I'),
('Capitães da Areia', '8ª Ed.', '978850110', 'Editora J');

--  3 Aqui ligamos os IDs dos livros aos IDs dos autores
INSERT INTO livro_autor (id_livro, id_autor) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), 
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10);

-- 4 Povoamento da Tabela Aluno 
INSERT INTO aluno (nome_aluno, telefone, endereco, data_nasci) VALUES
('João Silva', '86999990001', 'Rua A, Angical', '2000-05-15'),
('Maria Santos', '86999990002', 'Av. Central, Angical', '1998-10-20'),
('Pedro Oliveira', '86999990003', 'Rua B, Teresina', '2001-02-10'),
('Ana Costa', '86999990004', 'Rua C, Floriano', '1999-12-30'),
('Lucas Souza', '86999990005', 'Rua D, Angical', '2002-07-22'),
('Carla Mendes', '86999990006', 'Av. Sul, Angical', '2000-01-05'),
('Marcos Rocha', '86999990007', 'Rua E, Amarante', '1997-03-18'),
('Fernanda Lima', '86999990008', 'Rua F, Angical', '2003-09-12'),
('Ricardo Alves', '86999990009', 'Rua G, Teresina', '1995-11-25'),
('Juliana Paiva', '86999990010', 'Av. Norte, Angical', '2001-06-08');

-- 5 Povoamento da Tabela Emprestimo 
INSERT INTO emprestimo (data_emp, data_devo, id_livro, id_aluno) VALUES
('2026-02-01', '2026-02-08', 1, 1),
('2026-02-02', '2026-02-09', 2, 2),
('2026-02-03', NULL, 3, 3), 
('2026-02-04', '2026-02-11', 4, 4),
('2026-02-05', '2026-02-12', 5, 5),
('2026-02-06', NULL, 6, 6), 
('2026-02-07', '2026-02-14', 7, 7),
('2026-02-08', '2026-02-15', 8, 8),
('2026-02-09', NULL, 9, 9), 
('2026-02-10', '2026-02-17', 10, 10);

-- 6 Povoamento da Tabela Multa 
INSERT INTO multa (valor, motivo, status_pagamento, id_emprestimo) VALUES
(5.00, 'Atraso na devolução', 'Pago', 1),
(7.50, 'Atraso na devolução', 'Pendente', 2),
(10.00, 'Dano na capa', 'Pago', 4),
(2.00, 'Atraso na devolução', 'Pendente', 5),
(15.00, 'Página rasgada', 'Pago', 7),
(5.00, 'Atraso na devolução', 'Pendente', 8),
(4.00, 'Atraso na devolução', 'Pago', 10),
(12.00, 'Extravio temporário', 'Pendente', 1),
(3.00, 'Atraso na devolução', 'Pago', 2),
(6.50, 'Atraso na devolução', 'Pendente', 4);