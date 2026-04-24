-- Exercicio 7: produto que mais faturou
-- Mostra o nome do produto e o total faturado, do maior para o menor, exibindo apenas o top 1
SELECT
    pr.nome AS nome_produto,
    SUM(pr.preco * p.quantidade) AS total_faturado
FROM pedidos p
JOIN produtos pr ON p.produto_id = pr.id
GROUP BY pr.nome
ORDER BY total_faturado DESC
LIMIT 1;
