CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
	id INT AUTO_INCREMENT,
    nome VARCHAR(10),
    raca VARCHAR(20),
    arma VARCHAR(20),
    PRIMARY KEY (id)
);

CREATE TABLE tb_personagem(
	personagem_id INT AUTO_INCREMENT,
    nome VARCHAR(20) NOT NULL,
    sexo VARCHAR(20) NOT NULL,
    atributos VARCHAR(40),
    defesa INT,
    ataque INT,
    classe_id INT NOT NULL,
    FOREIGN KEY (classe_id) REFERENCES tb_classe(id),
    PRIMARY KEY (personagem_id)
);

INSERT INTO tb_classe (nome, raca, arma) VALUES ("Atirador", "Elfo", "Torreta");
INSERT INTO tb_classe (nome, raca, arma) VALUES ("Mago", "Anão", "Cajado");
INSERT INTO tb_classe (nome, raca, arma) VALUES ("Assassino", "Ladino", "Adaga");
INSERT INTO tb_classe (nome, raca, arma) VALUES ("Viking", "Minotauro", "Machado de 2 gumes");
INSERT INTO tb_classe (nome, raca, arma) VALUES ("Escudeiro", "Gnomo", "Martelo");

INSERT INTO tb_personagem (nome, sexo, atributos, ataque, defesa, classe_id) VALUES ("TayBalau", "Feminino" , "INT ++ CONST -- ", 3500, 1340, 2);
INSERT INTO tb_personagem (nome, sexo, atributos, ataque, defesa, classe_id) VALUES ("Cloft", "Masculino", "CONST ++ DEX --", 2100, 4320, 4);
INSERT INTO tb_personagem (nome, sexo, atributos, ataque, defesa, classe_id) VALUES ("Bizinho", "Masculino", "AGI ++ INT --", 2560, 1420, 1);
INSERT INTO tb_personagem (nome, sexo, atributos, ataque, defesa, classe_id) VALUES ("Puyas", "Masculino", "FOR ++ AGI --", 4400, 3500, 3);
INSERT INTO tb_personagem (nome, sexo, atributos, ataque, defesa, classe_id) VALUES ("Blackgalo", "Masculino", "LET ++ AGI ++", 4600, 3164, 3);
INSERT INTO tb_personagem (nome, sexo, atributos, ataque, defesa, classe_id) VALUES ("ODC Grunbs", "Outros", "INT ++ CONST --", 3842, 1260, 2);
INSERT INTO tb_personagem (nome, sexo, atributos, ataque, defesa, classe_id) VALUES ("Trubs", "Feminino", "AGI ++", 3402, 2164, 1); 
INSERT INTO tb_personagem (nome, sexo, atributos, ataque, defesa, classe_id) VALUES ("ForBlink", "Outros", "CONST ++", 1450, 6540, 5);

SELECT nome, atributos, ataque FROM tb_personagem WHERE ataque > 2000;

SELECT nome, atributos, defesa FROM tb_personagem WHERE defesa BETWEEN 1000 and 2000;

SELECT * FROM tb_personagem WHERE nome LIKE "%c%";

SELECT * FROM tb_personagem INNER JOIN tb_classe ON tb_classe.id = tb_personagem.classe_id;

SELECT * FROM tb_personagem INNER JOIN tb_classe ON tb_classe.id = tb_personagem.classe_id WHERE tb_personagem.classe_id = 2;