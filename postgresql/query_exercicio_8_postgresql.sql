-- Exercicio 8: consultas PostgreSQL
-- Escreva suas queries abaixo

-- Exemplo:
-- SELECT * FROM sua_tabela;
CREATE DATABASE escola;

CREATE TABLE alunos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE cursos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE matriculas (
    id SERIAL PRIMARY KEY,
    aluno_id INTEGER REFERENCES alunos(id),
    curso_id INTEGER REFERENCES cursos(id)
);