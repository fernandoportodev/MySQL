CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria (
	id INT AUTO_INCREMENT,
    departamento VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE tb_produto (
	id INT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    valor DECIMAL(8,2),
    quantidade BIGINT,
    avaliacao INT,
    categoria_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria (departamento) VALUES ("Ferramenta");
INSERT INTO tb_categoria (departamento) VALUES ("Iluminação");
INSERT INTO tb_categoria (departamento) VALUES ("Pintura");

INSERT INTO tb_produto (nome, valor, quantidade, avaliacao, categoria_id) VALUES ("Martelo", 50, 100, 4, 3);
INSERT INTO tb_produto (nome, valor, quantidade, avaliacao, categoria_id) VALUES ("Cabo de cobre 2,5mm", 20, 100, 5, 2);
INSERT INTO tb_produto (nome, valor, quantidade, avaliacao, categoria_id) VALUES ("Tinta Preta", 30, 100, 5, 1);
INSERT INTO tb_produto (nome, valor, quantidade, avaliacao, categoria_id) VALUES ("Pincel", 30, 100, 2, 3);
INSERT INTO tb_produto (nome, valor, quantidade, avaliacao, categoria_id) VALUES ("Chave de Fenda", 100, 100, 2, 1);


SELECT * FROM tb_produto WHERE valor > 40;
SELECT * FROM tb_produto WHERE valor > 30 AND valor < 80;
SELECT * FROM tb_produto WHERE nome LIKE "P%";
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id;
SELECT * FROM tb_produto WHERE categoria_id = 1;