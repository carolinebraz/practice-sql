#Cria banco de dados
CREATE DATABASE db_escola;
USE db_escola;

#Cria tabela de estudantes
CREATE TABLE tb_estudantes (
	id INT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    idade INT NOT NULL,
    serie VARCHAR(10) NOT NULL,
    turma VARCHAR(10) NOT NULL,
    nota DECIMAL(3,1) NOT NULL,
    PRIMARY KEY (id)
);

#Insere valores na tabela estudantes
INSERT INTO tb_estudantes(nome, idade, serie, turma, nota)
VALUES ('Marie Polônio', 16, '3ª série', 'A', 8.4);
INSERT INTO tb_estudantes(nome, idade, serie, turma, nota)
VALUES ('Ida Rênio', 15, '1ª série', 'B', 7.5);
INSERT INTO tb_estudantes(nome, idade, serie, turma, nota)
VALUES ('Clarice Tenesso', 16, '2ª série', 'A', 6.7);
INSERT INTO tb_estudantes(nome, idade, serie, turma, nota)
VALUES ('Brooks Radônio', 17, '3ª série', 'C', 8.6);
INSERT INTO tb_estudantes(nome, idade, serie, turma, nota)
VALUES ('Lise Protactínio', 18, '3ª série', 'B', 9.1);
INSERT INTO tb_estudantes(nome, idade, serie, turma, nota)
VALUES ('Hoffman Seabórgio', 17, '3ª série', 'D', 6.0);
INSERT INTO tb_estudantes(nome, idade, serie, turma, nota)
VALUES ('Ivete Astato', 15, '1ª série', 'A', 8.5);
INSERT INTO tb_estudantes(nome, idade, serie, turma, nota)
VALUES ('Pierre Cúrio', 18, '2ª série', 'B', 6.9);

#Seleciona todos os registros da tabela estudantes onde o campo "nota" é maior e menor que 7
SELECT * FROM tb_estudantes WHERE nota > 7.0;
SELECT * FROM tb_estudantes WHERE nota < 7.0;

#Atualiza o campo "nota" para o valor de 7.7 onde o id = 3
UPDATE tb_estudantes SET nota = 7.7 WHERE id = 3;