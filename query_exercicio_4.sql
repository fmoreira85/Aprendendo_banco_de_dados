-- Exercicio 4: ranking de clientes
-- Mostra o nome do usuario e o total gasto, do maior para o menor
-- Inicia a consulta
SELECT
    -- Mostra o nome do usuario
    u.nome AS nome_usuario,
    -- Soma o valor gasto pelo usuario em todos os itens comprados
    SUM(pr.preco * ip.quantidade) AS total_gasto
-- Define pedidos como tabela principal
FROM pedidos p
-- Junta com usuarios para pegar o nome de quem fez o pedido
JOIN usuarios u ON p.usuario_id = u.id
-- Junta com itens_pedido para acessar a quantidade de cada item
JOIN itens_pedido ip ON ip.pedido_id = p.id
-- Junta com produtos para pegar o preco de cada produto
JOIN produtos pr ON pr.id = ip.produto_id
-- Agrupa por usuario para somar todas as compras dele
GROUP BY u.nome
-- Ordena do maior total gasto para o menor
ORDER BY total_gasto DESC;

-- Exercicio 4.1: nome do usuario, total gasto e quantidade total de itens comprados
-- Mostra apenas usuarios que gastaram mais de 1000
-- Inicia a consulta
SELECT
    -- Mostra o nome do usuario
    u.nome AS nome_usuario,
    -- Soma o valor total gasto pelo usuario
    SUM(ip.quantidade * pr.preco) AS total_gasto,
    -- Soma a quantidade total de itens comprados pelo usuario
    SUM(ip.quantidade) AS quantidade_total_itens
-- Define pedidos como tabela principal
FROM pedidos p
-- Junta com usuarios para pegar o nome de quem fez o pedido
JOIN usuarios u ON p.usuario_id = u.id
-- Junta com itens_pedido para acessar os itens de cada pedido
JOIN itens_pedido ip ON ip.pedido_id = p.id
-- Junta com produtos para pegar o preco de cada item
JOIN produtos pr ON pr.id = ip.produto_id
-- Agrupa por usuario para consolidar os valores
GROUP BY u.nome
-- Filtra apenas usuarios com total gasto acima de 1000
HAVING SUM(ip.quantidade * pr.preco) > 1000;
