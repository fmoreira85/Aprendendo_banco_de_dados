-- Exercicio 5: top produtos vendidos
-- Mostra o nome do produto e o total vendido, do mais vendido para o menos vendido
SELECT
    pr.nome AS nome_produto,
    SUM(p.quantidade) AS total_vendido
FROM pedidos p
JOIN produtos pr ON p.produto_id = pr.id
GROUP BY pr.nome
ORDER BY total_vendido DESC;
