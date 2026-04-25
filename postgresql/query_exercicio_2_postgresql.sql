-- Exercicio 2: mostrar o total gasto por cliente
-- SELECT retorna o cliente e a soma dos valores dos pedidos
SELECT cliente_id, SUM(valor)
-- FROM define a tabela usada na consulta
FROM pedidos
-- GROUP BY agrupa os pedidos por cliente
GROUP BY cliente_id;

-- Exercicio 2: testar busca por nome com EXPLAIN ANALYZE
-- EXPLAIN ANALYZE mostra o plano de execucao e o tempo gasto na consulta
EXPLAIN ANALYZE
SELECT *
-- FROM define a tabela usada na consulta
FROM usuarios_perf
-- WHERE filtra o usuario pelo nome informado
WHERE nome = 'Usuario 90000';

-- Exercicio 2: inserir configuracao JSONB
-- INSERT INTO adiciona um novo registro na tabela
INSERT INTO usuarios_config (nome, config)
-- VALUES define os valores que serao inseridos
VALUES ('João', '{"tema": "dark", "notificacoes": true}');
