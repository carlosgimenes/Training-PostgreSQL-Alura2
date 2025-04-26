-- Alura - PostgreSQL: Views, Sub-Consultas e Funções

-- Populando o banco de dados com dados fictícios

-- Aluno    (id, primeiro_nome, ultimo_nome, data_nascimento)
INSERT INTO aluno (primeiro_nome, ultimo_nome, data_nascimento) VALUES
('João', 'Silva', '1990-01-01'),
('Maria', 'Oliveira', '1992-02-02'),
('Pedro', 'Santos', '1993-03-03'),
('Ana', 'Souza', '1994-04-04'),
('Lucas', 'Pereira', '1995-05-05'),
('Fernanda', 'Lima', '1996-06-06'),
('Carlos', 'Almeida', '1997-07-07'),
('Juliana', 'Costa', '1998-08-08'),
('Roberto', 'Ferreira', '1999-09-09'),
('Patrícia', 'Martins', '2000-10-10'),
('Ricardo', 'Ribeiro', '2001-11-11'),
('Tatiane', 'Barbosa', '2002-12-12'),
('Eduardo', 'Melo', '2003-01-13'),
('Mariana', 'Gomes', '2004-02-14'),
('Thiago', 'Nunes', '2005-03-15');

-- Categoria (id, nome)
INSERT INTO categoria (nome) VALUES
('Banco de Dados'),
('Desenvolvimento Web'),
('Desenvolvimento Mobile'),
('Programação'),
('Gestão de Projetos'),
('Marketing Digital'),
('Design Gráfico'),
('Fotografia Digital'),
('Edição de Vídeo'),
('Redes Sociais');

-- Curso    (id, nome, categoria_id)
INSERT INTO curso (nome, categoria_id) VALUES
('Introdução ao PostgreSQL', 1),
('PostgreSQL Avançado', 1),
('Desenvolvimento Web com Django', 2),
('Desenvolvimento Web com Flask', 2),
('Desenvolvimento Mobile com React Native', 3),
('Programação em Python', 4),
('Gestão de Projetos com Scrum', 5),
('Marketing Digital para Iniciantes', 6),
('Design Gráfico com Photoshop', 7),
('Fotografia Digital para Iniciantes', 8),
('Edição de Vídeo com Premiere', 9),
('Redes Sociais para Negócios', 10);

-- Aluno_Curso (aluno_id, curso_id)
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(5, 9),
(5, 10),
(6, 5),
(6, 6),
(7, 1),
(7, 4),
(8, 1),
(9, 2),
(9, 3),
(10, 4),
(10, 5),
(11, 6),
(11, 7),
(12, 8),
(12, 9),
(13, 3),
(13, 4),
(13, 5),
(13, 6),
(13, 7),
(13, 8),
(13, 9),
(13, 10),
(14, 2),
(14, 3),
(14, 4),
(14, 5),
(14, 6),
(14, 7),
(14, 8),
(14, 9),
(14, 10),
(15, 1);

-- Fim do script
