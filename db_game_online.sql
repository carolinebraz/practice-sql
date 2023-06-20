#Cria banco de dados
CREATE DATABASE db_game_online;
USE db_game_online;

#Cria tabela de classes
CREATE TABLE tb_classes(
	id INT AUTO_INCREMENT NOT NULL,
	classe VARCHAR(50) NOT NULL,
	descricao VARCHAR(255) NOT NULL,
	PRIMARY KEY (id) 
);

#Cria tabela de personagens
CREATE TABLE tb_personagens(
	id INT AUTO_INCREMENT NOT NULL,
	nome VARCHAR(255) NOT NULL,
	exp INT NOT NULL,
	poder_de_fogo INT NOT NULL,
	armadura INT NOT NULL,
    classes_id INT,
	PRIMARY KEY (id),
	CONSTRAINT fk_personagens_classes FOREIGN KEY (classes_id) REFERENCES tb_classes (id)
);

#Insere valores na tabela classes
INSERT INTO tb_classes(classe, descricao)
VALUES ('Arqueiro','Especialista em combates à longa distância');
INSERT INTO tb_classes(classe, descricao)
VALUES ('Guerreiro','Especialista em combates à curta distância');
INSERT INTO tb_classes(classe, descricao)
VALUES ('Mago','Especialista em magia e manipulação de elementos');
INSERT INTO tb_classes(classe, descricao)
VALUES ('Paladino','Especialista em defesa da honra e da justiça');
INSERT INTO tb_classes(classe, descricao)
VALUES ('Clérigo','Especialista em cura e proteção');

#Insere valores na tabela personagens
INSERT INTO tb_personagens(nome, exp, poder_de_fogo, armadura, classes_id)
VALUES ('Arcus Sperans', 10, 5000, 4000, 1);
INSERT INTO tb_personagens(nome, exp, poder_de_fogo, armadura, classes_id)
VALUES ('Sagitta Temporis', 8, 4000, 5000, 1);
INSERT INTO tb_personagens(nome, exp, poder_de_fogo, armadura, classes_id)
VALUES ('Gladium Ignis', 5, 2000, 1000, 2);
INSERT INTO tb_personagens(nome, exp, poder_de_fogo, armadura, classes_id)
VALUES ('Armigera Vox', 7, 3500, 3800, 2);
INSERT INTO tb_personagens(nome, exp, poder_de_fogo, armadura, classes_id)
VALUES ('Magnum Contentus', 3, 1500, 700, 3);
INSERT INTO tb_personagens(nome, exp, poder_de_fogo, armadura, classes_id)
VALUES ('Venefica Hilaris', 4, 1600, 400, 3);
INSERT INTO tb_personagens(nome, exp, poder_de_fogo, armadura, classes_id)
VALUES ('Veritatem Honorare', 10, 3000, 4200, 4);
INSERT INTO tb_personagens(nome, exp, poder_de_fogo, armadura, classes_id)
VALUES ('Episcopus Pacis', 2, 500, 300, 5);

#Seleciona todos os registros da tabela personagens onde poder de fogo é maior que 2000
SELECT * FROM tb_personagens WHERE poder_de_fogo > 2000;

#Seleciona todos os registros da tabela personagens onde armadura está entre 500 e 1000
SELECT * FROM tb_personagens WHERE armadura BETWEEN 500 AND 1000;

#Seleciona todos os registros da tabela personagens onde nome contém a letra "m"
SELECT * FROM tb_personagens WHERE nome LIKE '%m%'; 

#Seleciona todos os registros da tabela produtos e categorias
SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classes_id;

#Seleciona todos os registros da tabela personagens pertencentes a categoria "Arqueiro"
SELECT
	p.id,
    p.nome,
    p.exp,
    p.poder_de_fogo,
    p.armadura,
    c.id AS classes_id
FROM 
	tb_personagens p
INNER JOIN 
	tb_classes c ON c.id = p.classes_id
WHERE 
	c.classe = 'Arqueiro';