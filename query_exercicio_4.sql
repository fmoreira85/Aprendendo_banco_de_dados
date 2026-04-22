-- Exercicio 4: ranking de clientes
-- Mostra o nome do usuario e o total gasto, do maior para o menor
SELECT
    u.nome AS nome_usuario,
    SUM(pr.preco * p.quantidade) AS total_gasto
FROM pedidos p
JOIN usuarios u ON p.usuario_id = u.id
JOIN produtos pr ON p.produto_id = pr.id
GROUP BY u.nome
ORDER BY total_gasto DESC;
