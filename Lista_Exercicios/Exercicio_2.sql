CREATE DATABASE db_loja;

USE db_loja;

CREATE TABLE tb_produto (
	id_produto INT AUTO_INCREMENT,
    produto VARCHAR(50) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    ativo BOOLEAN,
    tipo VARCHAR(20),
    PRIMARY KEY (id_produto)    
);

INSERT INTO tb_produto (produto, preco, ativo, tipo) VALUES ("Processador i5", 1540.00, true, "Componente");
INSERT INTO tb_produto (produto, preco, ativo, tipo) VALUES ("Placa de vídeo RTX 3060", 7012.00, true, "Componente");
INSERT INTO tb_produto (produto, preco, ativo, tipo) VALUES ("Console Xbox Series S 526GB", 2749.00, true, "Console");
INSERT INTO tb_produto (produto, preco, ativo, tipo) VALUES ("Teclado Mecânico Razer", 580.00, false, "Periférico");
INSERT INTO tb_produto (produto, preco, ativo, tipo) VALUES ("SSD 500GB Kingston", 420.00, true, "Componente");
INSERT INTO tb_produto (produto, preco, ativo, tipo) VALUES ("Mouse RGB Fallen", 340.00, false, "Periférico");
INSERT INTO tb_produto (produto, preco, ativo, tipo) VALUES ("Chroma Key El Gato", 970.00, true, "Periférico");
INSERT INTO tb_produto (produto, preco, ativo, tipo) VALUES ("Playstation 5 1TB", 6420.00, true, "Console");

SELECT produto, tipo, ativo, preco FROM tb_produto WHERE preco > 500;

SELECT produto, tipo, ativo, preco FROM tb_produto WHERE preco < 500;

UPDATE tb_produto SET ativo = true WHERE id_produto = 4;
UPDATE tb_produto SET ativo = true WHERE id_produto = 6;