CREATE DATABASE escola_online;
USE escola_online;

CREATE TABLE alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    cidade VARCHAR(80),
    data_cadastro DATE
);

CREATE TEBLE cursos (
  id_curso INT AUTO_INCREMENT PRIMARY,
  nome_curso VARCHAR(100),
  categoria VARCHAR(80),
  preco DECIMAL(10,2), 
  carga_horaria INT 
)