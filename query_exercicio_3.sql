-- Exercicio 3: id do pedido, nome do usuario e total do pedido
-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT
    p.id AS id_pedido,
    u.nome AS nome_usuario,
    SUM(ip.quantidade * pr.preco) AS total_pedido
-- FROM define a tabela principal da consulta
FROM pedidos p
-- JOIN conecta pedidos com usuarios para trazer o nome do usuario
JOIN usuarios u ON p.usuario_id = u.id
-- JOIN conecta pedidos com itens_pedido para acessar os itens do pedido
JOIN itens_pedido ip ON ip.pedido_id = p.id
-- JOIN conecta itens_pedido com produtos para trazer o preco de cada item
JOIN produtos pr ON pr.id = ip.produto_id
-- GROUP BY agrupa os registros para calcular o total de cada pedido
GROUP BY p.id, u.nome;
