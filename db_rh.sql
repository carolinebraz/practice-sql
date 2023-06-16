#Cria banco de dados
CREATE DATABASE db_rh;
USE db_rh;

#Cria tabela de colaboradores
CREATE TABLE tb_colaboradores (
	id INT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cpf VARCHAR(50) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    salario DECIMAL(8,2) NOT NULL,
    admissao DATE NOT NULL,
    PRIMARY KEY (id)
);

#Insere valores na tabela colaboradores
INSERT INTO tb_colaboradores(nome, cpf, cargo, salario, admissao)
VALUES ('Mari Compass', '123.456.789-01', 'Diretora', 7000, '2018-07-01');
INSERT INTO tb_colaboradores(nome, cpf, cargo, salario, admissao)
VALUES ('Melanie Manager', '123.456.789-02', 'Gerente', 4500, '2018-08-03');
INSERT INTO tb_colaboradores(nome, cpf, cargo, salario, admissao)
VALUES ('Clara Printer', '123.456.789-03', 'Analista', 2000, '2021-12-01');
INSERT INTO tb_colaboradores(nome, cpf, cargo, salario, admissao)
VALUES ('Bruna Worker', '123.456.789-04', 'Assistente', 1800, '2023-03-19');
INSERT INTO tb_colaboradores(nome, cpf, cargo, salario, admissao)
VALUES ('Joseph Lost', '123.456.789-05', 'Estagiário', 1500, '2023-05-09');

#Seleciona todos os registros da tabela colaboradores onde o campo "salario" é maior e menor que 2000
SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;

#Atualiza o campo "salario" para o valor de 8000 onde o id = 1 
UPDATE tb_colaboradores SET salario = 8000 WHERE id = 1;