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
