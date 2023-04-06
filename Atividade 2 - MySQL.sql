CREATE DATABASE db_ecommerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    valor DECIMAL(7,2),
    quantidade int (10),
	cor VARCHAR(255),
    
    PRIMARY KEY(id)
);

INSERT INTO tb_produtos(nome, valor, quantidade,cor)
VALUES("Conjunto de Lápis de Cor", 156, 63,"24 cores");

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor > 500;

SELECT * FROM tb_produtos WHERE valor < 500;

UPDATE tb_produtos
SET nome = "Televisão"
WHERE id = 1;