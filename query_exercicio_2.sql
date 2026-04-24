-- Exercicio 2: id do pedido, nome do usuario, nome do produto e quantidade
SELECT
    p.id AS id_pedido,
    u.nome AS nome_usuario,
    pr.nome AS nome_produto,
    ip.quantidade
FROM pedidos p
JOIN usuarios u ON p.usuario_id = u.id
JOIN itens_pedido ip ON ip.pedido_id = p.id
JOIN produtos pr ON pr.id = ip.produto_id;
