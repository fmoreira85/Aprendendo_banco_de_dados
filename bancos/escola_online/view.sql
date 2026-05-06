-- Listar todos os alunos

SELECT * FROM alunos; 

-- Listar cursos com preço acima de 250
SELECT nome_curso,categoria,preco
FROM cursos
WHERE PRECO > 250;