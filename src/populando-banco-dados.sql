-- Alura - PostgreSQL: Views, Sub-Consultas e Funções

-- Populando o banco de dados com dados fictícios

-- Aluno    (id, primeiro_nome, ultimo_nome, data_nascimento)
-- ==========================================================
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

-- Verificando registros incluidos
SELECT
	ID,
	PRIMEIRO_NOME,
	ULTIMO_NOME,
	DATA_NASCIMENTO
FROM
	ALUNO;
-- Retorno
/*
"id"	"primeiro_nome"	"ultimo_nome"	"data_nascimento"
1	    "João"	        "Silva"	        "1990-01-01"
2	    "Maria"	        "Oliveira"	    "1992-02-02"
3	    "Pedro"	        "Santos"	    "1993-03-03"
4	    "Ana"	        "Souza"	        "1994-04-04"
5	    "Lucas"	        "Pereira"	    "1995-05-05"
6	    "Fernanda"	    "Lima"	        "1996-06-06"
7	    "Carlos"	    "Almeida"	    "1997-07-07"
8	    "Juliana"	    "Costa"	        "1998-08-08"
9	    "Roberto"	    "Ferreira"	    "1999-09-09"
10	    "Patrícia"	    "Martins"	    "2000-10-10"
11	    "Ricardo"	    "Ribeiro"	    "2001-11-11"
12	    "Tatiane"	    "Barbosa"	    "2002-12-12"
13	    "Eduardo"	    "Melo"	        "2003-01-13"
14	    "Mariana"	    "Gomes"	        "2004-02-14"
15	    "Thiago"	    "Nunes"	        "2005-03-15"
*/

-- Categoria (id, nome)
-- ====================
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

-- Verificando registros incluidos
SELECT
	ID,
	NOME
FROM
	CATEGORIA;

-- Retorno
/*
"id"	"nome"
1	    "Banco de Dados"
2	    "Desenvolvimento Web"
3	    "Desenvolvimento Mobile"
4	    "Programação"
5	    "Gestão de Projetos"
6	    "Marketing Digital"
7	    "Design Gráfico"
8	    "Fotografia Digital"
9	    "Edição de Vídeo"
10	    "Redes Sociais"
*/

-- Curso    (id, nome, categoria_id)
-- =================================
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

-- Verificando registros incluidos
SELECT
	ID,
	NOME,
	CATEGORIA_ID
FROM
	CURSO;
-- Retorno
/*
"id"	"nome"	                                    "categoria_id"
1	    "Introdução ao PostgreSQL"	                1
2	    "PostgreSQL Avançado"	                    1
3	    "Desenvolvimento Web com Django"	        2
4	    "Desenvolvimento Web com Flask"	        2
5	    "Desenvolvimento Mobile com React Native"	3
6	    "Programação em Python"	                    4
7	    "Gestão de Projetos com Scrum"	            5
8	    "Marketing Digital para Iniciantes"	    6
9	    "Design Gráfico com Photoshop"	            7
10	    "Fotografia Digital para Iniciantes"	    8
11	    "Edição de Vídeo com Premiere"	            9
12	    "Redes Sociais para Negócios"	            10
*/

-- Aluno_Curso (aluno_id, curso_id)
-- ================================
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

-- Verificando registros incluidos
SELECT
	A.ALUNO_ID,
	B.PRIMEIRO_NOME AS "Aluno",
	C.NOME AS "Curso"
FROM
	ALUNO_CURSO A
	LEFT JOIN ALUNO B ON A.ALUNO_ID = B.ID
	LEFT JOIN CURSO C ON A.CURSO_ID = C.ID

-- Retorno
/*
"aluno_id"	"Aluno"	    "Curso"
1	        "João"	    "Introdução ao PostgreSQL"
1	        "João"	    "PostgreSQL Avançado"
2	        "Maria"	    "Desenvolvimento Web com Django"
2	        "Maria"	    "Desenvolvimento Web com Flask"
3	        "Pedro"	    "Desenvolvimento Mobile com React Native"
3	        "Pedro"	    "Programação em Python"
4	        "Ana"	    "Gestão de Projetos com Scrum"
4	        "Ana"	    "Marketing Digital para Iniciantes"
5	        "Lucas"	    "Design Gráfico com Photoshop"
5	        "Lucas"	    "Fotografia Digital para Iniciantes"
6	        "Fernanda"	"Desenvolvimento Mobile com React Native"
6	        "Fernanda"	"Programação em Python"
7	        "Carlos"	"Introdução ao PostgreSQL"
7	        "Carlos"	"Desenvolvimento Web com Flask"
8	        "Juliana"	"Introdução ao PostgreSQL"
9	        "Roberto"	"PostgreSQL Avançado"
9	        "Roberto"	"Desenvolvimento Web com Django"
10	        "Patrícia"	"Desenvolvimento Web com Flask"
10	        "Patrícia"	"Desenvolvimento Mobile com React Native"
11	        "Ricardo"	"Programação em Python"
11	        "Ricardo"	"Gestão de Projetos com Scrum"
12	        "Tatiane"	"Marketing Digital para Iniciantes"
12	        "Tatiane"	"Design Gráfico com Photoshop"
13	        "Eduardo"	"Desenvolvimento Web com Django"
13	        "Eduardo"	"Desenvolvimento Web com Flask"
13	        "Eduardo"	"Desenvolvimento Mobile com React Native"
13	        "Eduardo"	"Programação em Python"
13	        "Eduardo"	"Gestão de Projetos com Scrum"
13	        "Eduardo"	"Marketing Digital para Iniciantes"
13	        "Eduardo"	"Design Gráfico com Photoshop"
13	        "Eduardo"	"Fotografia Digital para Iniciantes"
14	        "Mariana"	"PostgreSQL Avançado"
14	        "Mariana"	"Desenvolvimento Web com Django"
14	        "Mariana"	"Desenvolvimento Web com Flask"
14	        "Mariana"	"Desenvolvimento Mobile com React Native"
14	        "Mariana"	"Programação em Python"
14	        "Mariana"	"Gestão de Projetos com Scrum"
14	        "Mariana"	"Marketing Digital para Iniciantes"
14	        "Mariana"	"Design Gráfico com Photoshop"
14	        "Mariana"	"Fotografia Digital para Iniciantes"
15	        "Thiago"	"Introdução ao PostgreSQL"
*/

-- Fim do script
