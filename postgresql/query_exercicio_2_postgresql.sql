-- Exercicio 2: mostrar o total gasto por cliente
-- SELECT retorna o cliente e a soma dos valores dos pedidos
SELECT cliente_id, SUM(valor)
-- FROM define a tabela usada na consulta
FROM pedidos
-- GROUP BY agrupa os pedidos por cliente
GROUP BY cliente_id;
