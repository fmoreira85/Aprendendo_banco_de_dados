select * FROM usuarios;

select * FROM usuarios where id=2;

UPDATE usuarios
SET nome = 'pedro'
where id = 2;

UPDATE usuarios
SET nome = 'Ana Clara', email = 'ana.clara@email.com'
where id = 3;

-- Mostre todos os usuários cujo nome começa com:
select * FROM usuarios where nome LIKE 'A%';

SELECT * FROM usuarios
WHERE nome LIKE 'A%' AND id > 1;

select * FROM usuarios
order by nome ASC
LIMIT 2;

select * FROM usuarios
WHERE nome LIKE 'A%'
ORDER BY  nome DESC
LIMIT 1;
-- Mostra o nome do usuário Mostra o produto Faz JOIN entre:usuarios pedidos
SELECT usuarios.nome, pedidos.produto
FROM usuarios
JOIN pedidos ON usuarios.id = pedidos.usuario_id;

-- Mostre:nome do usuário produto  apenas do usuário com id = 3
SELECT usuarios.nome, pedidos.produto
FROM usuarios
JOIN pedidos ON usuarios.id = pedidos.usuario_id
WHERE usuarios.id = 3;

-- Reescreva essa query usando alias:
SELECT u.nome, p.produto
FROM usuarios u
JOIN pedidos p ON u.id = p.usuario_id;

-- Mostra TODOS os usuários, mesmo os que NÃO têm pedidos
-- Escreva uma query que:

-- Mostra nome do usuário
-- Mostra produto
-- Usa LEFT JOIN
SELECT u.nome, p.produto
FROM usuarios u
LEFT JOIN pedidos p ON u.id = p.usuario_id;

-- Escreva a query que:

-- Usa LEFT JOIN
-- Mostra nome
--  Filtra usuários sem pedidos

SELECT u.nome, p.produto
FROM usuarios u
LEFT JOIN pedidos p ON u.id = p.usuario_id
WHERE p.produto IS NULL;

-- Mostre:

-- usuario_id
-- quantidade de pedidos
SELECT usuario_id, COUNT(*)
FROM pedidos
GROUP BY usuario_id;

-- Mostre:
-- nome do usuário
-- quantidade de pedidos
SELECT u.nome, COUNT(p.id) AS total_pedidos
FROM usuarios u
JOIN pedidos p ON u.id = p.usuario_id
GROUP BY u.nome;