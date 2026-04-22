-- Mostra o nome dos usuarios que fizeram pedidos
SELECT u.nome
-- Define usuarios como tabela principal
FROM usuarios u
-- EXISTS verifica se existe pelo menos 1 pedido para esse usuario
WHERE EXISTS (
    SELECT 1
    FROM pedidos p
    WHERE p.usuario_id = u.id
);

-- Mostra o nome dos usuarios que nao fizeram pedidos
SELECT u.nome
-- Define usuarios como tabela principal
FROM usuarios u
-- NOT EXISTS verifica se nao existe nenhum pedido para esse usuario
WHERE NOT EXISTS (
    SELECT 1
    FROM pedidos p
    WHERE p.usuario_id = u.id
);

-- Mostra o nome do usuario, o nome do produto e a quantidade
SELECT u.nome AS nome_usuario, pr.nome AS nome_produto, p.quantidade
-- Define pedidos como tabela principal
FROM pedidos p
-- Junta pedidos com usuarios pelo id do usuario
JOIN usuarios u ON p.usuario_id = u.id
-- Junta pedidos com produtos pelo id do produto
JOIN produtos pr ON p.produto_id = pr.id;
  
  SELECT u.nome AS nome_usuario, pr.nome AS nome_produto, p.quantidade, pr.preco * p.quantidade AS valor_total_item
FROM pedidos p
JOIN usuarios u ON p.usuario_id = u.id
JOIN produtos pr ON p.produto_id = pr.id;

-- Mostra o nome do usuario e o total gasto somando todos os pedidos dele
SELECT u.nome AS nome_usuario, SUM(pr.preco * p.quantidade) AS total_gasto
-- Define pedidos como tabela principal
FROM pedidos p
-- Junta pedidos com usuarios pelo id do usuario
JOIN usuarios u ON p.usuario_id = u.id
-- Junta pedidos com produtos pelo id do produto
JOIN produtos pr ON p.produto_id = pr.id
-- Agrupa por usuario para somar todos os itens comprados
GROUP BY u.nome;
