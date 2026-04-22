-- Exercicio 6: faturamento total do sistema
-- Mostra o faturamento total somando tudo o que foi vendido
SELECT
    SUM(pr.preco * p.quantidade) AS faturamento_total
FROM pedidos p
JOIN produtos pr ON p.produto_id = pr.id;
