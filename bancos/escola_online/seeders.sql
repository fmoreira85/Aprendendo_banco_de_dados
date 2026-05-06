USE escola_online;

INSERT INTO alunos (nome, email, cidade, data_cadastro) VALUES
('Ana Silva', 'ana@email.com', 'São Paulo', '2024-01-10'),
('Bruno Costa', 'bruno@email.com', 'Rio de Janeiro', '2024-02-15'),
('Carla Mendes', 'carla@email.com', 'Curitiba', '2024-03-20'),
('Diego Souza', 'diego@email.com', 'São Paulo', '2024-04-05'),
('Eduarda Lima', 'eduarda@email.com', 'Belo Horizonte', '2024-05-12'),
('Felipe Rocha', 'felipe@email.com', 'Salvador', '2024-06-01'),
('Gabriela Alves', 'gabriela@email.com', 'Curitiba', '2024-06-18'),
('Henrique Dias', 'henrique@email.com', 'Recife', '2024-07-22');

INSERT INTO cursos (nome_curso, categoria, preco, carga_horaria) VALUES
('MySQL Básico', 'Banco de Dados', 199.90, 30),
('MySQL Avançado', 'Banco de Dados', 349.90, 50),
('HTML e CSS', 'Front-end', 149.90, 25),
('JavaScript', 'Front-end', 299.90, 45),
('Python Básico', 'Programação', 249.90, 40),
('Power BI', 'Dados', 399.90, 35);

INSERT INTO matriculas (id_aluno, id_curso, data_matricula, status_matricula, nota_final) VALUES
(1, 1, '2024-02-01', 'concluido', 8.5),
(1, 2, '2024-03-10', 'cursando', NULL),
(2, 3, '2024-03-15', 'concluido', 7.0),
(2, 4, '2024-04-20', 'concluido', 9.2),
(3, 1, '2024-04-10', 'concluido', 6.8),
(3, 5, '2024-05-05', 'cursando', NULL),
(4, 2, '2024-05-18', 'concluido', 8.9),
(5, 6, '2024-06-01', 'cancelado', NULL),
(6, 4, '2024-06-10', 'concluido', 5.9),
(7, 1, '2024-07-01', 'concluido', 9.5),
(7, 6, '2024-07-15', 'cursando', NULL),
(8, 5, '2024-08-01', 'concluido', 7.8);