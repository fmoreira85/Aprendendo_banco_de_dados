-- Exercicio 4: ranking de clientes
-- Mostra o nome do usuario e o total gasto, do maior para o menor
-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT
    u.nome AS nome_usuario,
    SUM(pr.preco * ip.quantidade) AS total_gasto
-- FROM define a tabela principal da consulta
FROM pedidos p
-- JOIN conecta pedidos com usuarios para trazer o nome do usuario
JOIN usuarios u ON p.usuario_id = u.id
-- JOIN conecta pedidos com itens_pedido para acessar os itens comprados
JOIN itens_pedido ip ON ip.pedido_id = p.id
-- JOIN conecta itens_pedido com produtos para trazer o preco de cada produto
JOIN produtos pr ON pr.id = ip.produto_id
-- GROUP BY agrupa os registros por usuario para somar os gastos
GROUP BY u.nome
-- ORDER BY ordena o resultado do maior total gasto para o menor
ORDER BY total_gasto DESC;

-- Exercicio 4.1: nome do usuario, total gasto e quantidade total de itens comprados
-- Mostra apenas usuarios que gastaram mais de 1000
-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT
    u.nome AS nome_usuario,
    SUM(ip.quantidade * pr.preco) AS total_gasto,
    SUM(ip.quantidade) AS quantidade_total_itens
-- FROM define a tabela principal da consulta
FROM pedidos p
-- JOIN conecta pedidos com usuarios para trazer o nome do usuario
JOIN usuarios u ON p.usuario_id = u.id
-- JOIN conecta pedidos com itens_pedido para acessar os itens do pedido
JOIN itens_pedido ip ON ip.pedido_id = p.id
-- JOIN conecta itens_pedido com produtos para trazer o preco dos itens
JOIN produtos pr ON pr.id = ip.produto_id
-- GROUP BY agrupa os registros por usuario para consolidar os valores
GROUP BY u.nome
-- HAVING filtra os grupos depois da soma, mantendo apenas quem gastou mais de 1000
HAVING SUM(ip.quantidade * pr.preco) > 1000;
