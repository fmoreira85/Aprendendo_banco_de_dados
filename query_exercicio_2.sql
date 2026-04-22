-- Exercicio 2: nome do usuario, nome do produto, quantidade e valor total do item
SELECT
    u.nome AS nome_usuario,
    pr.nome AS nome_produto,
    p.quantidade,
    pr.preco * p.quantidade AS valor_total_item
FROM pedidos p
JOIN usuarios u ON p.usuario_id = u.id
JOIN produtos pr ON p.produto_id = pr.id;
