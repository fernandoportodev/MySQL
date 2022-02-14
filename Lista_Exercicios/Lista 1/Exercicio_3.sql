CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
	id_aluno INT AUTO_INCREMENT,
    nome VARCHAR(50),
    matricula INT,
    nota DOUBLE,
    turma VARCHAR(2),
    PRIMARY KEY (id_aluno)
);

INSERT INTO tb_estudantes (nome, turma, matricula, nota) VALUES ("Fernando", "3A", 1001, 7.8);
INSERT INTO tb_estudantes (nome, turma, matricula, nota) VALUES ("Julio", "2B", 1002, 8.2);
INSERT INTO tb_estudantes (nome, turma, matricula, nota) VALUES ("Taynara", "1C", 1003, 10.0);
INSERT INTO tb_estudantes (nome, turma, matricula, nota) VALUES ("Gustavo", "2B", 1004, 6.6);
INSERT INTO tb_estudantes (nome, turma, matricula, nota) VALUES ("Nicolas", "3A", 1005, 7.8);
INSERT INTO tb_estudantes (nome, turma, matricula, nota) VALUES ("Mateus", "1A", 1006, 3.0);
INSERT INTO tb_estudantes (nome, turma, matricula, nota) VALUES ("Bruna", "3B", 1007, 9.8);
INSERT INTO tb_estudantes (nome, turma, matricula, nota) VALUES ("Julia", "3A", 1008, 2.8);

SELECT nome, turma, matricula, nota FROM tb_estudantes WHERE nota > 7;

SELECT nome, turma, matricula, nota FROM tb_estudantes WHERE nota < 7;

UPDATE tb_estudantes SET nota = 7.1 WHERE id_aluno = 1;