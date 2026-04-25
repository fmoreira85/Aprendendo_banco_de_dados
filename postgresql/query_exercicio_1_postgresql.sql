-- Exercicio 1: listar todos os pedidos pagos
-- SELECT * retorna todas as colunas da tabela pedidos
SELECT * 
-- FROM define a tabela usada na consulta
FROM pedidos 
-- WHERE filtra apenas os pedidos com status pago
WHERE status = 'pago';
