#Cria banco de dados
CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

#Cria tabela de categorias
CREATE TABLE tb_categorias(
	id INT AUTO_INCREMENT,
	departamento VARCHAR(50) NOT NULL,
	descricao VARCHAR(255) NOT NULL,
	PRIMARY KEY (id) 
);

#Cria tabela de produtos
CREATE TABLE tb_produtos (
	id INT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    quantidade INT,
    preco DECIMAL(10,2) NOT NULL,
    departamento_id INT,
    PRIMARY KEY (id),
    CONSTRAINT fk_produtos_categorias FOREIGN KEY (departamento_id) REFERENCES tb_categorias (id)
);

#Insere valores na tabela categorias
INSERT INTO tb_categorias(departamento, descricao)
VALUES ('Material de Construção','Aço, Madeira, Argamassa, Blocos e Telhas');
INSERT INTO tb_categorias(departamento, descricao)
VALUES ('Pisos e Revestimentos','Cerâmico, Porcenalato, Vinílico e Madeira');
INSERT INTO tb_categorias(departamento, descricao)
VALUES ('Material Hidráulico','Tubos e Conexões Hidráulicas');
INSERT INTO tb_categorias(departamento, descricao)
VALUES ('Material Elétrico','Tubos, Eletrodutos e Fios/Cabos');
INSERT INTO tb_categorias(departamento, descricao)
VALUES ('Esquadrias','Portas, Janelas e Portões');

#Insere valores na tabela produtos
INSERT INTO tb_produtos(nome, quantidade, preco, departamento_id)
VALUES ('Bloco cerâmico 9x19x19cm', 5000, 1.49, 1);
INSERT INTO tb_produtos(nome, quantidade, preco, departamento_id)
VALUES ('Telha Ondulada em Fibrocimento 5mm 2,44x1,10m', 2000, 53.99, 1);
INSERT INTO tb_produtos(nome, quantidade, preco, departamento_id)
VALUES ('Porcelanato Acetinado Retificado 82x82cm', 500, 99.99, 2);
INSERT INTO tb_produtos(nome, quantidade, preco, departamento_id)
VALUES ('Revestimento de Parede Brilhante 45x90cm', 500, 89.99, 2);
INSERT INTO tb_produtos(nome, quantidade, preco, departamento_id)
VALUES ('Tubo PVC Soldável Marrom 25mm 3/4" 3m', 200, 15.97, 3);
INSERT INTO tb_produtos(nome, quantidade, preco, departamento_id)
VALUES ('Cabo Flexível Antichama 10mm 450/750v 15m', 25, 89.99, 4);
INSERT INTO tb_produtos(nome, quantidade, preco, departamento_id)
VALUES ('Janela de Correr Alumínio 1,00x2,00m', 20, 699.90, 5);
INSERT INTO tb_produtos(nome, quantidade, preco, departamento_id)
VALUES ('Porta com Batente Pivotante Madeira Maciça 2,10x1,00m', 10, 2159.30, 5);

#Seleciona todos os registros da tabela produtos onde preço é maior que 100 reais
SELECT * FROM tb_produtos WHERE preco > 100;

#Seleciona todos os registros da tabela produtos onde preço está entre 70 e 150 reais
SELECT * FROM tb_produtos WHERE preco BETWEEN 70 AND 150;

#Seleciona todos os registros da tabela produtos onde nome contém a sílaba "ca"
SELECT * FROM tb_produtos WHERE nome LIKE '%ca%'; 

#Seleciona todos os registros da tabela produtos e categorias
SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.departamento_id;

#Seleciona todos os registros da tabela produtos pertencentes a categoria "esquadrias"
SELECT 
	p.id,
    p.nome,
    p.quantidade,
    p.preco,
    c.id AS departamento_id
FROM 
	tb_produtos p
INNER JOIN 
	tb_categorias c ON c.id = p.departamento_id
WHERE 
	c.departamento = 'Esquadrias';