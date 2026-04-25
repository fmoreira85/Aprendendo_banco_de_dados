-- 4
SELECT clientes.nome, pedidos.valor
FROM pedidos
JOIN clientes ON pedidos.cliente_id = clientes.id;
