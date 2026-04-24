-- Exercicio 7: produto que mais faturou
-- Mostra o nome do produto e o total faturado, do maior para o menor, exibindo apenas o top 1
-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT
    pr.nome AS nome_produto,
    SUM(pr.preco * p.quantidade) AS total_faturado
-- FROM define a tabela principal da consulta
FROM pedidos p
-- JOIN conecta pedidos com produtos para trazer os dados do produto
JOIN produtos pr ON p.produto_id = pr.id
-- GROUP BY agrupa os registros por produto para somar o faturamento
GROUP BY pr.nome
-- ORDER BY ordena o resultado do maior faturamento para o menor
ORDER BY total_faturado DESC
-- LIMIT limita a saida para mostrar apenas o primeiro resultado
LIMIT 1;


__ Escreva uma query que mostre:
-- nome do usuário
-- total gasto
-- Apenas usuários com mais de 1 pedido

SELECT
    u.nome AS nome_usuario,
    SUM(ip.quantidade * ip.preco_unitario) AS total_gasto
FROM pedidos p
JOIN usuarios u ON p.usuario_id = u.id
JOIN itens_pedido ip ON ip.pedido_id = p.id
GROUP BY u.nome
HAVING COUNT(p.id) > 1;