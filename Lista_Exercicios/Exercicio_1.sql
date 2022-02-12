-- DDL (LINGUAGEM DE DEFINIÇÃO DE DADOS)
-- CREATE
-- ALTER
-- DROP

CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionarios(
	id_funcionario INT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(80) NOT NULL,
    funcao VARCHAR(50),
    salario DOUBLE NOT NULL,
    PRIMARY KEY (id_funcionario)
);

INSERT INTO tb_funcionarios (nome, email, funcao, salario) VALUES ("Fernando", "fernando@email.com", "Desenvolvedor Júnior", 3100);
INSERT INTO tb_funcionarios (nome, email, funcao, salario) VALUES ("Alexandre", "alexandre@email.com", "Trainee", 1500);
INSERT INTO tb_funcionarios (nome, email, funcao, salario) VALUES ("Renata", "renata@email.com", "Desenvolvedor Sênior", 5600);
INSERT INTO tb_funcionarios (nome, email, funcao, salario) VALUES ("Julio", "julio@email.com", "Estagiário", 2360);
INSERT INTO tb_funcionarios (nome, email, funcao, salario) VALUES ("Jade", "jade@email.com", "Trainee", 1500);

SELECT nome, funcao, salario FROM tb_funcionarios WHERE salario < 2000;

SELECT nome, funcao, salario FROM tb_funcionarios WHERE salario > 2000;

UPDATE tb_funcionarios SET funcao = "Desenvolvedor Pleno", salario = 4200.00 WHERE id_funcionario = 1 ;