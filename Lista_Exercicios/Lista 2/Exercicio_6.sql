CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria (
	id INT AUTO_INCREMENT,
    area VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE tb_curso (
	id INT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    valor DECIMAL(8,2),
    duracao INT,
    avaliacao INT,
    categoria_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria (area) VALUES ("Exatas");
INSERT INTO tb_categoria (area) VALUES ("Humanas");
INSERT INTO tb_categoria (area) VALUES ("Biológicas");

INSERT INTO tb_curso (nome, valor, duracao, avaliacao, categoria_id) VALUES ("Curso de JAVA", 300, 80, 5, 1);
INSERT INTO tb_curso (nome, valor, duracao, avaliacao, categoria_id) VALUES ("Curso de Desenho", 500, 150, 4, 3);
INSERT INTO tb_curso (nome, valor, duracao, avaliacao, categoria_id) VALUES ("Curso de Matematica", 400, 60, 5, 3);
INSERT INTO tb_curso (nome, valor, duracao, avaliacao, categoria_id) VALUES ("Curso de Python", 450, 100, 3, 2);
INSERT INTO tb_curso (nome, valor, duracao, avaliacao, categoria_id) VALUES ("Curso de GIT & GITHUB", 600, 20, 3, 1);

SELECT * FROM tb_curso WHERE valor > 40;
SELECT * FROM tb_curso WHERE valor > 30 AND valor < 80;
SELECT * FROM tb_curso WHERE nome LIKE "%a";
SELECT * FROM tb_curso INNER JOIN tb_categoria ON tb_curso.categoria_id = tb_categoria.id;
SELECT * FROM tb_curso WHERE categoria_id = 1;