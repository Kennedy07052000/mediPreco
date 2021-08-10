-- Database: mediPreco

-- DROP DATABASE "mediPreco";

CREATE DATABASE "mediPreco"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
	
CREATE TABLE tbl_categoria
(
	idCategoria INT GENERATED ALWAYS AS IDENTITY,
	categoria VARCHAR(100),
	PRIMARY KEY(idCategoria)						 					 
);

CREATE TABLE tbl_produtos
(
	idProduto INT GENERATED ALWAYS AS IDENTITY,
	idCategoria INT,
	produto VARCHAR(100),
	preco NUMERIC(7,2),
	codbarra VARCHAR(13),
	PRIMARY KEY(idProduto),
	CONSTRAINT fk_idCategoria FOREIGN KEY(idCategoria) REFERENCES tbl_categoria(idCategoria)
);


COPY tbl_categoria
(
	categoria
)
FROM 'C:/Users/Kennedy/Music/mediPreco/Artefatos/arquivo_tbl_categoria.csv'
DELIMITER ','
CSV HEADER;


COPY tbl_produtos
(
	codbarra,
	produto, 
	preco
)
FROM 'C:/Users/Kennedy/Music/mediPreco/Artefatos/arquivo_tbl_produto.csv'
DELIMITER ','
CSV HEADER;

SELECT COUNT(idCategoria) FROM tbl_categoria;
SELECT COUNT(idProduto) FROM tbl_produtos;











