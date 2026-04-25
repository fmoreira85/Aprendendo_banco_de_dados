-- Exercicio 4: listar nome do cliente e valor do pedido usando JOIN
-- SELECT retorna o nome do cliente e o valor do pedido
SELECT clientes.nome, pedidos.valor
-- FROM define a tabela principal da consulta
FROM pedidos
-- JOIN conecta pedidos com clientes pela chave cliente_id
JOIN clientes ON pedidos.cliente_id = clientes.id;

-- Exercicio 4: testar query com duas condicoes
-- EXPLAIN ANALYZE mostra o plano de execucao e o tempo gasto na consulta
EXPLAIN ANALYZE
SELECT *
-- FROM define a tabela usada na consulta
FROM usuarios_perf
-- WHERE filtra pelos campos nome e email ao mesmo tempo
WHERE nome = 'Usuario 50000'
AND email = 'user50000@email.com';
