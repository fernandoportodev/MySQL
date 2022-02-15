CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categoria (
	id INT AUTO_INCREMENT,
    origem VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE tb_produto (
	id INT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    valor DECIMAL(8,2),
    quantidade INT,
    validade DATE,
    categoria_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria (origem) VALUES ("Bovino");
INSERT INTO tb_categoria (origem) VALUES ("Suíno");
INSERT INTO tb_categoria (origem) VALUES ("Ave");

INSERT INTO tb_produto (nome, valor, quantidade, validade, categoria_id) VALUES ("Fraldinha", 50, 100, 20220316, 1);
INSERT INTO tb_produto (nome, valor, quantidade, validade, categoria_id) VALUES ("Coxão mole", 20, 100, 20220316, 3);
INSERT INTO tb_produto (nome, valor, quantidade, validade, categoria_id) VALUES ("Contrafilé", 30, 100, 20220316, 2);
INSERT INTO tb_produto (nome, valor, quantidade, validade, categoria_id) VALUES ("Peito de Frango", 30, 100, 20220316, 3);
INSERT INTO tb_produto (nome, valor, quantidade, validade, categoria_id) VALUES ("Picanha", 100, 100, 20220316, 1);


SELECT * FROM tb_produto WHERE valor > 40;
SELECT * FROM tb_produto WHERE valor > 30 AND valor < 80;
SELECT * FROM tb_produto WHERE nome LIKE "P%";
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id;
SELECT * FROM tb_produto WHERE categoria_id = 1;