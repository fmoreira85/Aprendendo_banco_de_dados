-- Exercicio 3: faturamento por usuario
-- Mostra o nome do usuario e o total gasto somando todos os pedidos dele
SELECT
    u.nome AS nome_usuario,
    SUM(pr.preco * p.quantidade) AS total_gasto
-- Define pedidos como tabela principal
FROM pedidos p
-- Junta pedidos com usuarios pelo id do usuario
JOIN usuarios u ON p.usuario_id = u.id
-- Junta pedidos com produtos pelo id do produto
JOIN produtos pr ON p.produto_id = pr.id
-- Agrupa por usuario para somar todos os itens comprados
GROUP BY u.nome;
