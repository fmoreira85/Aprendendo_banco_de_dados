-- Seleciona todos os usuarios
-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT *
-- FROM define a tabela principal da consulta
FROM usuarios;

-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT *
-- FROM define a tabela principal da consulta
FROM usuarios;

-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT *
-- FROM define a tabela principal da consulta
FROM usuarios;

-- Seleciona usuario por id
-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT *
-- FROM define a tabela principal da consulta
FROM usuarios
-- WHERE filtra apenas o registro com o id informado
WHERE id = 2;

-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT *
-- FROM define a tabela principal da consulta
FROM usuarios
-- WHERE filtra apenas o registro com o id informado
WHERE id = 1;

-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT *
-- FROM define a tabela principal da consulta
FROM usuarios
-- WHERE filtra apenas o registro com o id informado
WHERE id = 2;

-- Atualizar dados
-- UPDATE define a tabela que sera alterada
UPDATE usuarios
-- SET informa quais colunas receberao novos valores
SET nome = 'pedro'
-- WHERE filtra qual registro sera atualizado
WHERE id = 2;

-- UPDATE define a tabela que sera alterada
UPDATE usuarios
-- SET informa quais colunas receberao novos valores
SET nome = 'fABIO'
-- WHERE filtra qual registro sera atualizado
WHERE id = 1;

-- UPDATE define a tabela que sera alterada
UPDATE usuarios
-- SET informa quais colunas receberao novos valores
SET senha = 123456
-- WHERE filtra qual registro sera atualizado
WHERE id = 3;

-- UPDATE define a tabela que sera alterada
UPDATE usuarios
-- SET informa quais colunas receberao novos valores
SET nome = 'Ana Clara', email = 'ana.clara@email.com'
-- WHERE filtra qual registro sera atualizado
WHERE id = 3;

-- Mostra usuarios cujo nome comeca com A
-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT *
-- FROM define a tabela principal da consulta
FROM usuarios
-- WHERE filtra os nomes que comecam com A usando LIKE
WHERE nome LIKE 'A%';

-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT *
-- FROM define a tabela principal da consulta
FROM usuarios
-- WHERE aplica mais de uma condicao de filtro
WHERE nome LIKE 'A%' AND id > 1;

-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT *
-- FROM define a tabela principal da consulta
FROM usuarios
-- ORDER BY ordena o resultado pelo nome em ordem crescente
ORDER BY nome ASC
-- LIMIT limita a quantidade de linhas retornadas
LIMIT 2;

-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT *
-- FROM define a tabela principal da consulta
FROM usuarios
-- WHERE filtra os nomes que comecam com A
WHERE nome LIKE 'A%'
-- ORDER BY ordena o resultado pelo nome em ordem decrescente
ORDER BY nome DESC
-- LIMIT limita a quantidade de linhas retornadas
LIMIT 1;

-- Mostra o nome do usuario e o produto
-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT usuarios.nome, pedidos.produto
-- FROM define a tabela principal da consulta
FROM usuarios
-- JOIN conecta usuarios com pedidos pela chave relacionada
JOIN pedidos ON usuarios.id = pedidos.usuario_id;

-- Mostra nome do usuario e produto apenas do usuario com id 3
-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT usuarios.nome, pedidos.produto
-- FROM define a tabela principal da consulta
FROM usuarios
-- JOIN conecta usuarios com pedidos pela chave relacionada
JOIN pedidos ON usuarios.id = pedidos.usuario_id
-- WHERE filtra apenas o usuario desejado
WHERE usuarios.id = 3;

-- Reescreve a consulta usando alias
-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT u.nome, p.produto
-- FROM define a tabela principal da consulta usando alias
FROM usuarios u
-- JOIN conecta usuarios com pedidos pela chave relacionada
JOIN pedidos p ON u.id = p.usuario_id;

-- Exemplo com alias
-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT u.nome, p.produto
-- FROM define a tabela principal da consulta usando alias
FROM usuarios u
-- JOIN conecta usuarios com pedidos pela chave relacionada
JOIN pedidos p ON u.id = p.ususarios_id;

-- Exemplo com alias e filtro
-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT u.nome, p.produto
-- FROM define a tabela principal da consulta usando alias
FROM usuarios u
-- JOIN conecta usuarios com pedidos pela chave relacionada
JOIN pedidos p ON u.id = p.usuario_id
-- WHERE filtra apenas o usuario desejado
WHERE u.id = 3;

-- Mostra todos os usuarios, mesmo os que nao tem pedidos
-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT u.nome, p.produto
-- FROM define a tabela principal da consulta
FROM usuarios u
-- LEFT JOIN traz todos os usuarios, mesmo sem correspondencia em pedidos
LEFT JOIN pedidos p ON u.id = p.usuario_id;

-- Mostra usuarios sem pedidos
-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT u.nome, p.produto
-- FROM define a tabela principal da consulta
FROM usuarios u
-- LEFT JOIN traz todos os usuarios, mesmo sem correspondencia em pedidos
LEFT JOIN pedidos p ON u.id = p.usuario_id
-- WHERE filtra apenas os casos em que nao houve pedido
WHERE p.produto IS NULL;

-- Mostra usuario_id e quantidade de pedidos
-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT usuario_id, COUNT(*)
-- FROM define a tabela principal da consulta
FROM pedidos
-- GROUP BY agrupa os registros por usuario para fazer a contagem
GROUP BY usuario_id;

-- Mostra nome do usuario e quantidade de pedidos
-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT u.nome, COUNT(p.id) AS total_pedidos
-- FROM define a tabela principal da consulta
FROM usuarios u
-- JOIN conecta usuarios com pedidos pela chave relacionada
JOIN pedidos p ON u.id = p.usuario_id
-- GROUP BY agrupa os registros por usuario para fazer a contagem
GROUP BY u.nome;

-- Mostra usuarios que tem mais de 1 pedido
-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT u.nome, COUNT(p.id) AS total_pedidos
-- FROM define a tabela principal da consulta
FROM usuarios u
-- JOIN conecta usuarios com pedidos pela chave relacionada
JOIN pedidos p ON u.id = p.usuario_id
-- GROUP BY agrupa os registros por usuario para fazer a contagem
GROUP BY u.nome
-- HAVING filtra os grupos depois da contagem
HAVING COUNT(p.id) > 1;

-- Filtra usuarios com nome iniciando em A e ordena
-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT u.nome, p.produto
-- FROM define a tabela principal da consulta
FROM usuarios u
-- JOIN conecta usuarios com pedidos pela chave relacionada
JOIN pedidos p ON u.id = p.usuario_id
-- WHERE filtra os nomes que comecam com A
WHERE u.nome LIKE 'A%'
-- ORDER BY ordena o resultado em ordem crescente
ORDER BY u.nome ASC;

-- Exercicio 3 - SUM
-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT u.nome, SUM(p.preco) AS total_gasto
-- FROM define a tabela principal da consulta
FROM usuarios u
-- JOIN conecta usuarios com pedidos pela chave relacionada
JOIN pedidos p ON u.id = p.usuario_id
-- GROUP BY agrupa os registros por usuario para somar os valores
GROUP BY u.nome;

-- Exercicio 1 (JOIN + GROUP BY + ORDER BY)
-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT u.nome, COUNT(p.id) AS quantidade_pedidos
-- FROM define a tabela principal da consulta
FROM usuarios u
-- JOIN conecta usuarios com pedidos pela chave relacionada
JOIN pedidos p ON u.id = p.usuario_id
-- GROUP BY agrupa os registros por usuario para fazer a contagem
GROUP BY u.nome
-- ORDER BY ordena o resultado do maior para o menor
ORDER BY quantidade_pedidos DESC;

-- Mostra nome do usuario e total gasto
-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT u.nome, SUM(p.preco) AS total_gasto
-- FROM define a tabela principal da consulta
FROM usuarios u
-- JOIN conecta usuarios com pedidos pela chave relacionada
JOIN pedidos p ON u.id = p.usuario_id
-- GROUP BY agrupa os registros por usuario para somar os valores
GROUP BY u.nome;

-- Mostra o nome do usuario e conta quantos pedidos ele fez
-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT u.nome, COUNT(p.id) AS quantidade_pedidos
-- FROM define a tabela principal da consulta
FROM usuarios u
-- JOIN conecta apenas os usuarios que possuem pedidos
JOIN pedidos p ON u.id = p.usuario_id
-- GROUP BY agrupa os registros por usuario para fazer a contagem
GROUP BY u.nome
-- ORDER BY ordena do maior numero de pedidos para o menor
ORDER BY quantidade_pedidos DESC;

-- Mostra o nome do usuario e a quantidade de pedidos
-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT u.nome, COUNT(p.id) AS quantidade_pedidos
-- FROM define a tabela principal da consulta
FROM usuarios u
-- LEFT JOIN traz todos os usuarios, mesmo sem pedidos
LEFT JOIN pedidos p ON u.id = p.usuario_id
-- GROUP BY agrupa os registros por usuario para fazer a contagem
GROUP BY u.nome;

-- Mostra apenas os usuarios sem nenhum pedido
-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT u.nome
-- FROM define a tabela principal da consulta
FROM usuarios u
-- LEFT JOIN traz todos os usuarios, mesmo sem pedidos
LEFT JOIN pedidos p ON u.id = p.usuario_id
-- WHERE filtra os casos em que nenhum pedido foi encontrado
WHERE p.id IS NULL;

-- Mostra o nome do usuario e soma o valor gasto
-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT u.nome, SUM(p.preco) AS total_gasto
-- FROM define a tabela principal da consulta
FROM usuarios u
-- JOIN conecta usuarios com pedidos pela chave relacionada
JOIN pedidos p ON u.id = p.usuario_id
-- GROUP BY agrupa os registros por usuario para somar os gastos
GROUP BY u.nome
-- ORDER BY ordena do maior total gasto para o menor
ORDER BY total_gasto DESC;

-- Mostra usuarios com total gasto maior que 500
-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT u.nome, SUM(p.preco) AS total_gasto
-- FROM define a tabela principal da consulta
FROM usuarios u
-- JOIN conecta usuarios com pedidos pela chave relacionada
JOIN pedidos p ON u.id = p.usuario_id
-- GROUP BY agrupa os registros por usuario para somar os gastos
GROUP BY u.nome
-- HAVING filtra os grupos depois da soma
HAVING SUM(p.preco) > 500;

-- Mostra a media de gasto por usuario
-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT u.nome, AVG(p.preco) AS media_gasto
-- FROM define a tabela principal da consulta
FROM usuarios u
-- JOIN conecta usuarios com pedidos pela chave relacionada
JOIN pedidos p ON u.id = p.usuario_id
-- GROUP BY agrupa os registros por usuario para calcular a media
GROUP BY u.nome;

-- Mostra usuarios com total gasto acima da media geral
-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT u.nome, SUM(p.preco) AS total_gasto
-- FROM define a tabela principal da consulta
FROM usuarios u
-- JOIN conecta usuarios com pedidos pela chave relacionada
JOIN pedidos p ON u.id = p.usuario_id
-- GROUP BY agrupa os registros por usuario para somar os gastos
GROUP BY u.nome
-- HAVING filtra os grupos comparando com o resultado da subconsulta
HAVING SUM(p.preco) > (
    -- SELECT calcula a media geral de preco
    SELECT AVG(preco)
    -- FROM define a tabela usada na subconsulta
    FROM pedidos
);

-- Mostra usuarios que aparecem na lista de usuarios com pedido
-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT u.nome
-- FROM define a tabela principal da consulta
FROM usuarios u
-- WHERE IN filtra usando a lista retornada pela subconsulta
WHERE u.id IN (
    -- SELECT retorna os usuario_id presentes em pedidos
    SELECT p.usuario_id
    -- FROM define a tabela usada na subconsulta
    FROM pedidos p
);
