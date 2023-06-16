#Cria banco de dados
CREATE DATABASE db_ecommerce;
USE db_ecommerce;

#Cria tabela de produtos
CREATE TABLE tb_produtos (
	id INT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    descricao VARCHAR(300) NOT NULL,
    preco DECIMAL(8,2) NOT NULL,
    quantidade INT NOT NULL,
    PRIMARY KEY (id)
);

#Insere valores na tabela produtos
INSERT INTO tb_produtos(nome, marca, descricao, preco, quantidade)
VALUES ('Notebook', 'AlfaX', 'Processador 4.7 GHz, 16 GB de RAM, 512 GB SSD, tela 16", prata', 5000, 1);
INSERT INTO tb_produtos(nome, marca, descricao, preco, quantidade)
VALUES ('Screen', 'BetaY', 'Monitor 29" Full HD, HDMI, HDR, branco', 1199.89, 2);
INSERT INTO tb_produtos(nome, marca, descricao, preco, quantidade)
VALUES ('Printer', 'GamaZ', 'Impressora Multifuncional, Tanque de Tinta, Colorida, Wi-Fi, USB, Bivolt', 989.10, 2);
INSERT INTO tb_produtos(nome, marca, descricao, preco, quantidade)
VALUES ('Keyboard', 'DeltaK', 'Teclado sem fio, USB, Retroiluminado, rainbow', 500, 3);
INSERT INTO tb_produtos(nome, marca, descricao, preco, quantidade)
VALUES ('Mouse', 'ZetaJ', 'Mouse sem fio, USB, Pilha inclusa, preto', 180.36, 5);
INSERT INTO tb_produtos(nome, marca, descricao, preco, quantidade)
VALUES ('Headset', 'SigmaI', 'Fone com fio, USB, Microfone com redução de ruído, rosa', 269, 8);
INSERT INTO tb_produtos(nome, marca, descricao, preco, quantidade)
VALUES ('Tablet', 'Ômega', '8 GB de Memória, Câmera de 5 MP, Wi-Fi e Bluetooth, Tela 8"', 762.90, 3);
INSERT INTO tb_produtos(nome, marca, descricao, preco, quantidade)
VALUES ('Pendrive', 'Power Up', '128 GB de armazenamento, USB 3.0, azul', 89.50, 8);

#Seleciona todos os registros da tabela produtos onde o campo "preco" é maior e menor que 500
SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

#Atualiza o campo "quantidade" para o valor de 1 onde o id = 2
UPDATE tb_produtos SET quantidade = 1 WHERE id = 2;