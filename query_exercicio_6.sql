-- Exercicio 6: faturamento total do sistema
-- Mostra o faturamento total somando tudo o que foi vendido
-- Inicia a consulta
SELECT
    -- Soma preco vezes quantidade para obter o faturamento total
    SUM(pr.preco * p.quantidade) AS faturamento_total
-- Define pedidos como tabela principal
FROM pedidos p
-- Junta com produtos para pegar o preco de cada produto
JOIN produtos pr ON p.produto_id = pr.id;
