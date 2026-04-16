CREATE TABLE produtos (
    id INT,
    nome VARCHAR(100),
    preco INT
);

CREATE TABLE usuarios (
    id INT primary key,
    nome VARCHAR(100),
    email VARCHAR(150)

);


INSERT INTO usuarios (id,nome,email)
VALUES (2,'joão','joao@email.com'),(3,'Ana','ana@email.com');