-- Exercicio 5: top produtos vendidos
-- Mostra o nome do produto e o total vendido, do mais vendido para o menos vendido
-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT
    pr.nome AS nome_produto,
    SUM(p.quantidade) AS total_vendido
-- FROM define a tabela principal da consulta
FROM pedidos p
-- JOIN conecta pedidos com produtos para trazer os dados do produto
JOIN produtos pr ON p.produto_id = pr.id
-- GROUP BY agrupa os registros por produto para somar as vendas
GROUP BY pr.nome
-- ORDER BY ordena o resultado do maior total vendido para o menor
ORDER BY total_vendido DESC;
