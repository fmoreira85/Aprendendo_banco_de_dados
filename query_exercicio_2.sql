-- Exercicio 2: id do pedido, nome do usuario, nome do produto e quantidade
-- Inicia a consulta
SELECT
    -- Mostra o id do pedido
    p.id AS id_pedido,
    -- Mostra o nome do usuario dono do pedido
    u.nome AS nome_usuario,
    -- Mostra o nome do produto do item do pedido
    pr.nome AS nome_produto,
    -- Mostra a quantidade comprada daquele item
    ip.quantidade
-- Define pedidos como tabela principal
FROM pedidos p
-- Junta com usuarios para descobrir quem fez o pedido
JOIN usuarios u ON p.usuario_id = u.id
-- Junta com itens_pedido para acessar os itens de cada pedido
JOIN itens_pedido ip ON ip.pedido_id = p.id
-- Junta com produtos para pegar o nome de cada produto
JOIN produtos pr ON pr.id = ip.produto_id;
