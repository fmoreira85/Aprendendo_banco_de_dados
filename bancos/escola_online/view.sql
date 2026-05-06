-- Listar todos os alunos

SELECT * FROM alunos; 

-- Listar cursos com preço acima de 250
SELECT nome_curso,categoria,preco
FROM cursos
WHERE PRECO > 250;

-- Buscar alunos de São Paulo
SELECT nome,cidade
FROM alunos
WHERE cidade = 'são paulo'

-- 4.Listar matrículas com nome do aluno e curso

SELECT 
    alunos.nome,
    cursos.nome_curso,
    matriculas.status_matricula
FROM matriculas
INNER JOIN alunos ON matriculas.id_aluno = alunos.id_aluno
INNER JOIN cursos ON matriculas.id_curso = cursos.id_curso;