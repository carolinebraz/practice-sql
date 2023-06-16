#Cria banco de dados
CREATE DATABASE db_quitanda;
USE db_quitanda;

#Cria tabela de produtos
CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    quantidade INT,
    preco DECIMAL NOT NULL,
    PRIMARY KEY (id)
);

#Insere valores na tabela produtos
INSERT INTO tb_produtos(nome, quantidade, preco)
VALUES ('tomate', 100, 8.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
VALUES ('maçã', 20, 5.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
VALUES ('laranja', 50, 10.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
VALUES ('banana', 200, 12.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
VALUES ('uva', 1200, 30.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
VALUES ('pêra', 500, 2.99);

#Seleciona todos os registros da tabela produtos
SELECT * FROM tb_produtos;

#Seleciona o campo "nome" da tabela tb_produtos onde o preço é > 5 e a quantidade é < 100
SELECT nome FROM tb_produtos WHERE preco > 5 AND quantidade < 100;

#Altera a coluna "preco" para que os campos sejam limitados a 6 dígitos e 2 deles sejam de casas decimais
ALTER TABLE tb_produtos MODIFY preco decimal(6,2);

#Atualiza o campo "preco" para o valor de 2.99 onde id = 6
UPDATE tb_produtos SET preco = 2.99 WHERE id = 6;