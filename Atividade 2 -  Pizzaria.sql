CREATE DATABASE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
descricao varchar(255) NOT NULL,

PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
sabor varchar(255) NOT NULL,
pedacos int, 
vegetariana varchar(255) NOT NULL,
preco decimal(6, 2),
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(descricao)
VALUES ("Salgada");

INSERT INTO tb_categorias(descricao)
VALUES ("Doce");

INSERT INTO tb_categorias(descricao)
VALUES ("Contém lactose");

INSERT INTO tb_categorias(descricao)
VALUES ("Vegana");

INSERT INTO tb_categorias(descricao)
VALUES ("Contém Glutén");

INSERT INTO tb_produtos (sabor, pedacos, vegetariana, preco, categoria_id)
VALUES ("Mussarela", 8, "Sim", 45, 1);

INSERT INTO tb_produtos (sabor, pedacos, vegetariana, preco, categoria_id)
VALUES ("Calabresa com cebola", 8, "Não", 45, 1);

INSERT INTO tb_produtos (sabor, pedacos, vegetariana, preco, categoria_id)
VALUES ("Frango com Catupiry", 8, "Não", 50, 3);

INSERT INTO tb_produtos (sabor, pedacos, vegetariana, preco, categoria_id)
VALUES ("Mussarela com rúcula", 8, "Sim", 47, 3);

INSERT INTO tb_produtos (sabor, pedacos, vegetariana, preco, categoria_id)
VALUES ("Brocolis com Alho", 8, "Sim", 42, 4);

INSERT INTO tb_produtos (sabor, pedacos, vegetariana, preco, categoria_id)
VALUES ("4 Queijos", 8, "Sim", 58, 3);

INSERT INTO tb_produtos (sabor, pedacos, vegetariana, preco, categoria_id)
VALUES ("Banana com Queijo e Leite Condensando", 8, "Sim", 62, 2);

INSERT INTO tb_produtos (sabor, pedacos, vegetariana, preco, categoria_id)
VALUES ("Chocolate com uva verde", 8, "Sim", 63, 2);

SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE sabor LIKE "%m%";
SELECT * FROM tb_produtos WHERE preco > 45.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.id = 2;