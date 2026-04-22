-- Exercicio 1: nome do usuario, nome do produto e quantidade
SELECT
    u.nome AS nome_usuario,
    pr.nome AS nome_produto,
    p.quantidade
FROM pedidos p
JOIN usuarios u ON p.usuario_id = u.id
JOIN produtos pr ON p.produto_id = pr.id;
