-- Exercicio 5: top produtos vendidos
-- Mostra o nome do produto e o total vendido, do mais vendido para o menos vendido
-- Inicia a consulta
SELECT
    -- Mostra o nome do produto
    pr.nome AS nome_produto,
    -- Soma a quantidade vendida de cada produto
    SUM(p.quantidade) AS total_vendido
-- Define pedidos como tabela principal
FROM pedidos p
-- Junta com produtos para pegar o nome de cada produto
JOIN produtos pr ON p.produto_id = pr.id
-- Agrupa por produto para somar as vendas de cada um
GROUP BY pr.nome
-- Ordena do mais vendido para o menos vendido
ORDER BY total_vendido DESC;
