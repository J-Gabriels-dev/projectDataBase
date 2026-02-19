-- COMADOS UPDATES
UPDATE aluno SET telefone = '86988881111' WHERE id = 1;

UPDATE emprestimo SET data_devo = '2026-02-15' WHERE id = 3;

UPDATE multa SET status_pagamento = 'Pago' WHERE id = 2;

UPDATE livro SET edicao = '2ª Ed. Revisada' WHERE id = 10;

UPDATE aluno SET endereco = 'Centro, Angical' WHERE id = 5;

-- COMANDOS REMOÇÂO 
DELETE FROM multa WHERE id = 10;

DELETE FROM autor WHERE id = 10;

DELETE FROM livro_autor WHERE id_livro = 10 AND id_autor = 10;

DELETE FROM aluno WHERE id = 10;

DELETE FROM emprestimo WHERE id = 1;

-- COMANDOS SELECT

-- 1
SELECT aluno.nome_aluno, livro.nome_livro FROM aluno 
JOIN emprestimo ON aluno.id = emprestimo.id_aluno JOIN livro ON livro.id = emprestimo.id_livro;

-- 2 
SELECT livro.nome_livro, autor.nome_autor FROM livro JOIN livro_autor 
ON livro.id = livro_autor.id_livro JOIN autor ON autor.id = livro_autor.id_autor;

-- 3 
SELECT aluno.nome_aluno, multa.valor FROM aluno JOIN emprestimo ON aluno.id = emprestimo.id_aluno 
JOIN multa ON emprestimo.id = multa.id_emprestimo WHERE multa.status_pagamento = 'Pendente';

-- 4 
SELECT emprestimo.data_emp, livro.nome_livro FROM emprestimo JOIN livro ON emprestimo.id_livro = livro.id;

-- 5 
SELECT multa.valor, multa.motivo FROM multa JOIN emprestimo ON multa.id_emprestimo = emprestimo.id 
WHERE emprestimo.id_livro = 1;
