-- Exercicio 3: faturamento por usuario
-- Mostra o nome do usuario e o total gasto somando todos os pedidos dele
-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT
    u.nome AS nome_usuario,
    SUM(pr.preco * p.quantidade) AS total_gasto
-- Define pedidos como tabela principal
FROM pedidos p
-- JOIN conecta pedidos com usuarios para trazer o nome do usuario
JOIN usuarios u ON p.usuario_id = u.id
-- JOIN conecta pedidos com produtos para trazer o preco de cada produto
JOIN produtos pr ON p.produto_id = pr.id
-- GROUP BY agrupa os registros por usuario para somar os gastos
GROUP BY u.nome;
