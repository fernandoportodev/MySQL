CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria (
	id BIGINT AUTO_INCREMENT,
    alimento VARCHAR(255) NOT NULL,
    primary key (id)
);

create table tb_pizza (
	id INT AUTO_INCREMENT,
    sabor VARCHAR(255) NOT NULL,
    tamanho VARCHAR(255) NOT NULL,
    bordaRecheada BOOLEAN,
    valor DECIMAL(8,2),
    categoria_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_categoria (alimento) values ("Pizza Doce");
insert into tb_categoria (alimento) values ("Pizza Napolitana");
insert into tb_categoria (alimento) values ("Pizza Frita");

INSERT INTO tb_pizza (sabor, tamanho, bordaRecheada, valor, categoria_id) VALUES ("Mussarela", "grande", true, 46, 3);
INSERT INTO tb_pizza (sabor, tamanho, bordaRecheada, valor, categoria_id) VALUES ("Romeu e Julieta", "grande", false, 70, 1);
INSERT INTO tb_pizza (sabor, tamanho, bordaRecheada, valor, categoria_id) VALUES ("Quatro Queijos", "grande", true, 90, 2);
INSERT INTO tb_pizza (sabor, tamanho, bordaRecheada, valor, categoria_id) VALUES ("Palmito", "media", false, 60, 3);
INSERT INTO tb_pizza (sabor, tamanho, bordaRecheada, valor, categoria_id) VALUES ("Frango com Catupiry", "grande", true, 80, 2);
INSERT INTO tb_pizza (sabor, tamanho, bordaRecheada, valor, categoria_id) VALUES ("Portuguesa", "grande", true, 70, 3);
INSERT INTO tb_pizza (sabor, tamanho, bordaRecheada, valor, categoria_id) VALUES ("Brigadeiro com morango", "grande", true, 70, 1);
INSERT INTO tb_pizza (sabor, tamanho, bordaRecheada, valor, categoria_id) VALUES ("Marguerita", "grande", true, 75, 3);

SELECT * FROM tb_pizza WHERE valor > 70;
SELECT * FROM tb_pizza WHERE valor > 60 AND valor < 90;
SELECT * FROM tb_pizza WHERE sabor LIKE "M%";
SELECT * FROM tb_pizza INNER JOIN tb_categoria ON tb_pizza.categoria_id = tb_categoria.id;
SELECT * FROM tb_pizza WHERE categoria_id = 3;