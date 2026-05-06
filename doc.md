# O que e um banco de dados?

Pensa assim:

- Banco de dados = uma pasta organizada para guardar informacoes
- Tabelas = planilhas dentro dessa pasta
- Dados = informacoes salvas nas linhas e colunas dessas tabelas

## Exemplo pratico

No SQL, primeiro podemos criar um banco:

```sql
CREATE DATABASE empresa;
```

Depois escolhemos qual banco vamos usar:

```sql
USE empresa;
```

Em seguida, criamos uma tabela:

```sql
CREATE TABLE usuarios (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(150)
);
```

Agora podemos inserir dados:

```sql
INSERT INTO usuarios (id, nome, email)
VALUES (1, 'Fabio', 'fabio@email.com');
```

E consultar o que foi salvo:

```sql
SELECT * FROM usuarios;
```

## Resumo

- `CREATE DATABASE` cria um banco de dados
- `USE` seleciona o banco que sera usado
- `CREATE TABLE` cria uma tabela
- `INSERT INTO` insere dados
- `SELECT` consulta os dados
