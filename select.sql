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
order by nome asc
LIMIT 2;