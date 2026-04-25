-- Exercicio 1: listar todos os pedidos pagos
-- SELECT * retorna todas as colunas da tabela pedidos
SELECT * 
-- FROM define a tabela usada na consulta
FROM pedidos 
-- WHERE filtra apenas os pedidos com status pago
WHERE status = 'pago';

-- Exercicio 1: criar indice na coluna nome
-- CREATE INDEX cria um indice para acelerar buscas pela coluna nome
CREATE INDEX idx_nome ON usuarios_perf(nome);

-- Exercicio 1: criar a tabela usuarios_config
-- CREATE TABLE cria uma nova tabela no banco
CREATE TABLE usuarios_config (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    config JSONB
);
