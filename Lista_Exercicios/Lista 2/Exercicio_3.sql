CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria (
	id INT AUTO_INCREMENT,
    consumo VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tb_produto (
	id INT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    valor DECIMAL(8,2),
    receita BOOLEAN,
    categoria_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria (consumo) VALUES ("Comprimido");
INSERT INTO tb_categoria (consumo) VALUES ("Líquido");
INSERT INTO tb_categoria (consumo) VALUES ("Injeção");

INSERT INTO tb_produto (nome, valor, receita, categoria_id) VALUES ("Dorflex", 12, false, 1);
INSERT INTO tb_produto (nome, valor, receita, categoria_id) VALUES ("Dipirona", 14, false, 1);
INSERT INTO tb_produto (nome, valor, receita, categoria_id) VALUES ("Epocler", 15, false, 2);
INSERT INTO tb_produto (nome, valor, receita, categoria_id) VALUES ("Sertralina", 26, true, 3);
INSERT INTO tb_produto (nome, valor, receita, categoria_id) VALUES ("Espironolactona", 40, true, 1);

SELECT * FROM tb_produto WHERE valor > 20;
SELECT * FROM tb_produto WHERE valor > 10 AND valor < 40;
SELECT * FROM tb_produto WHERE nome LIKE "B%";
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id;
SELECT * FROM tb_produto WHERE categoria_id = 1;