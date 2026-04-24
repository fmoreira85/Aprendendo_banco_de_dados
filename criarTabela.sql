-- CREATE TABLE cria a tabela produtos
CREATE TABLE produtos (
    id INT,
    nome VARCHAR(100),
    preco INT
);

-- CREATE TABLE cria a tabela usuarios
CREATE TABLE usuarios (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(150)
);

-- INSERT INTO define em qual tabela e colunas os dados serao inseridos
INSERT INTO usuarios (id, nome, email)
-- VALUES informa os valores que serao gravados na tabela
VALUES (2, 'joao', 'joao@email.com'), (3, 'Ana', 'ana@email.com');
