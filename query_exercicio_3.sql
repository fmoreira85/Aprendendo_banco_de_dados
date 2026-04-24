-- Exercicio 3: id do pedido, nome do usuario e total do pedido
-- Inicia a consulta
SELECT
    -- Mostra o id do pedido
    p.id AS id_pedido,
    -- Mostra o nome do usuario que fez o pedido
    u.nome AS nome_usuario,
    -- Soma quantidade vezes preco para calcular o total do pedido
    SUM(ip.quantidade * pr.preco) AS total_pedido
-- Define pedidos como tabela principal
FROM pedidos p
-- Junta com usuarios para pegar o nome do usuario
JOIN usuarios u ON p.usuario_id = u.id
-- Junta com itens_pedido para acessar os itens de cada pedido
JOIN itens_pedido ip ON ip.pedido_id = p.id
-- Junta com produtos para pegar o preco de cada item
JOIN produtos pr ON pr.id = ip.produto_id
-- Agrupa por pedido e usuario para somar corretamente os itens de cada pedido
GROUP BY p.id, u.nome;
