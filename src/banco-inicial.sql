-- Alura - PostgreSQL: Views, Sub-Consultas e Funções

-- Excluir o banco de dados alura, se existir
DROP DATABASE IF EXISTS alura;

-- Criar o banco de dados alura
CREATE DATABASE alura;

-- Excluir tabelas, se existirem
DROP TABLE IF EXISTS aluno_curso;
DROP TABLE IF EXISTS curso;
DROP TABLE IF EXISTS aluno;
DROP TABLE IF EXISTS categoria;

-- Criar a tabela aluno
-- Aluno(id, primeiro_nome, ultimo_nome, data_nascimento)
CREATE TABLE aluno (
    id SERIAL PRIMARY KEY,
	primeiro_nome VARCHAR(255) NOT NULL,
	ultimo_nome VARCHAR(255) NOT NULL,
	data_nascimento DATE NOT NULL
);

-- Criar a tabela categoria
-- Categoria(id, nome)
CREATE TABLE categoria (
    id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL UNIQUE
);

-- Criar a tabela curso
-- Curso(id, nome, categoria_id)
CREATE TABLE curso (
    id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	categoria_id INTEGER NOT NULL REFERENCES categoria(id)
);

-- Criar a tabela aluno_curso
-- Aluno_Curso(aluno_id, curso_id)
CREATE TABLE aluno_curso (
	aluno_id INTEGER NOT NULL REFERENCES aluno(id),
	curso_id INTEGER NOT NULL REFERENCES curso(id),
	PRIMARY KEY (aluno_id, curso_id)
);

-- Fim do script
