-- Exercicio 1: nome do usuario, nome do produto e quantidade
-- SELECT escolhe quais colunas vao aparecer no resultado
SELECT
    u.nome AS nome_usuario,
    pr.nome AS nome_produto,
    p.quantidade
-- FROM define a tabela principal da consulta
FROM pedidos p
-- JOIN conecta pedidos com usuarios pela chave relacionada
JOIN usuarios u ON p.usuario_id = u.id
-- JOIN conecta pedidos com produtos para trazer os dados do produto
JOIN produtos pr ON p.produto_id = pr.id;
