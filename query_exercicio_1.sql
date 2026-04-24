-- Exercicio 1: nome do usuario, nome do produto e quantidade
-- Inicia a consulta
SELECT
    -- Mostra o nome do usuario com um apelido na saida
    u.nome AS nome_usuario,
    -- Mostra o nome do produto com um apelido na saida
    pr.nome AS nome_produto,
    -- Mostra a quantidade registrada no pedido
    p.quantidade
-- Define a tabela pedidos como tabela principal
FROM pedidos p
-- Junta com usuarios para pegar o nome de quem fez o pedido
JOIN usuarios u ON p.usuario_id = u.id
-- Junta com produtos para pegar o nome do produto
JOIN produtos pr ON p.produto_id = pr.id;
