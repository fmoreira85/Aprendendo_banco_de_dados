-- Exercicio 6: faturamento total do sistema
-- Mostra o faturamento total somando tudo o que foi vendido
-- SELECT escolhe o valor agregado que vai aparecer no resultado
SELECT
    SUM(pr.preco * p.quantidade) AS faturamento_total
-- FROM define a tabela principal da consulta
FROM pedidos p
-- JOIN conecta pedidos com produtos para trazer o preco usado no calculo
JOIN produtos pr ON p.produto_id = pr.id;
