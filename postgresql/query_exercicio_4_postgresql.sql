-- Exercicio 4: listar nome do cliente e valor do pedido usando JOIN
-- SELECT retorna o nome do cliente e o valor do pedido
SELECT clientes.nome, pedidos.valor
-- FROM define a tabela principal da consulta
FROM pedidos
-- JOIN conecta pedidos com clientes pela chave cliente_id
JOIN clientes ON pedidos.cliente_id = clientes.id;
