-- Exercicio 2: id do pedido, nome do usuario, nome do produto e quantidade
-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT
    p.id AS id_pedido,
    u.nome AS nome_usuario,
    pr.nome AS nome_produto,
    ip.quantidade
-- FROM define a tabela principal da consulta
FROM pedidos p
-- JOIN conecta pedidos com usuarios para identificar o dono do pedido
JOIN usuarios u ON p.usuario_id = u.id
-- JOIN conecta pedidos com itens_pedido para acessar os itens de cada pedido
JOIN itens_pedido ip ON ip.pedido_id = p.id
-- JOIN conecta itens_pedido com produtos para trazer o nome do produto
JOIN produtos pr ON pr.id = ip.produto_id;
