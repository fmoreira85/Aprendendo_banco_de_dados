-- Exercicio 7: produto que mais faturou
-- Mostra o nome do produto e o total faturado, do maior para o menor, exibindo apenas o top 1
-- Inicia a consulta
SELECT
    -- Mostra o nome do produto
    pr.nome AS nome_produto,
    -- Soma o faturamento de cada produto
    SUM(pr.preco * p.quantidade) AS total_faturado
-- Define pedidos como tabela principal
FROM pedidos p
-- Junta com produtos para pegar o nome e o preco de cada produto
JOIN produtos pr ON p.produto_id = pr.id
-- Agrupa por produto para somar o faturamento individual
GROUP BY pr.nome
-- Ordena do maior faturamento para o menor
ORDER BY total_faturado DESC
-- Mostra somente o primeiro resultado
LIMIT 1;
