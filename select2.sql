-- Mostra o nome dos usuarios que fizeram pedidos
-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT u.nome
-- FROM define a tabela principal da consulta
FROM usuarios u
-- WHERE EXISTS filtra apenas usuarios para os quais a subconsulta encontra pedido
WHERE EXISTS (
    -- SELECT 1 e usado apenas para testar a existencia de registros
    SELECT 1
    -- FROM define a tabela usada dentro da subconsulta
    FROM pedidos p
    -- WHERE relaciona o pedido com o usuario da consulta principal
    WHERE p.usuario_id = u.id
);

-- Mostra o nome dos usuarios que nao fizeram pedidos
-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT u.nome
-- FROM define a tabela principal da consulta
FROM usuarios u
-- WHERE NOT EXISTS filtra apenas usuarios para os quais a subconsulta nao encontra pedido
WHERE NOT EXISTS (
    -- SELECT 1 e usado apenas para testar a existencia de registros
    SELECT 1
    -- FROM define a tabela usada dentro da subconsulta
    FROM pedidos p
    -- WHERE relaciona o pedido com o usuario da consulta principal
    WHERE p.usuario_id = u.id
);

-- Mostra o nome do usuario, o nome do produto e a quantidade
-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT u.nome AS nome_usuario, pr.nome AS nome_produto, p.quantidade
-- FROM define a tabela principal da consulta
FROM pedidos p
-- JOIN conecta pedidos com usuarios para trazer o nome do usuario
JOIN usuarios u ON p.usuario_id = u.id
-- JOIN conecta pedidos com produtos para trazer o nome do produto
JOIN produtos pr ON p.produto_id = pr.id;

-- Mostra o nome do usuario, o nome do produto, a quantidade e o valor total do item
-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT u.nome AS nome_usuario, pr.nome AS nome_produto, p.quantidade, pr.preco * p.quantidade AS valor_total_item
-- FROM define a tabela principal da consulta
FROM pedidos p
-- JOIN conecta pedidos com usuarios para trazer o nome do usuario
JOIN usuarios u ON p.usuario_id = u.id
-- JOIN conecta pedidos com produtos para trazer os dados do produto
JOIN produtos pr ON p.produto_id = pr.id;

-- Mostra o nome do usuario e o total gasto somando todos os pedidos dele
-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT u.nome AS nome_usuario, SUM(pr.preco * p.quantidade) AS total_gasto
-- FROM define a tabela principal da consulta
FROM pedidos p
-- JOIN conecta pedidos com usuarios para trazer o nome do usuario
JOIN usuarios u ON p.usuario_id = u.id
-- JOIN conecta pedidos com produtos para trazer o preco do produto
JOIN produtos pr ON p.produto_id = pr.id
-- GROUP BY agrupa os registros por usuario para somar os gastos
GROUP BY u.nome;
