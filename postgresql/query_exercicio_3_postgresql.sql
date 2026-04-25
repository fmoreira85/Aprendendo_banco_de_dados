-- Exercicio 3: mostrar apenas clientes que gastaram mais de 300
-- SELECT retorna o cliente e a soma dos valores dos pedidos
SELECT cliente_id, SUM(valor)
-- FROM define a tabela usada na consulta
FROM pedidos
-- GROUP BY agrupa os pedidos por cliente
GROUP BY cliente_id
-- HAVING filtra os grupos apos a soma
HAVING SUM(valor) > 300;

-- Exercicio 3: criar indice composto em nome e email
-- CREATE INDEX cria um indice composto para buscas usando nome e email
CREATE INDEX idx_nome_email
ON usuarios_perf(nome, email);
