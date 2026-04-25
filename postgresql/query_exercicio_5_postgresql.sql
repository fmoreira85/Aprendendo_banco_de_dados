-- Exercicio 5: mostrar o maior valor de pedido
-- MAX retorna o maior valor encontrado na coluna valor
SELECT MAX(valor) 
-- FROM define a tabela usada na consulta
FROM pedidos;

-- Exercicio 5: usar EXPLAIN ANALYZE na busca por tema dark
-- EXPLAIN ANALYZE mostra o plano de execucao e o tempo gasto na consulta
EXPLAIN ANALYZE
SELECT *
-- FROM define a tabela usada na consulta
FROM usuarios_config
-- WHERE filtra os registros que contem tema dark dentro do JSON
WHERE config @> '{"tema": "dark"}';
