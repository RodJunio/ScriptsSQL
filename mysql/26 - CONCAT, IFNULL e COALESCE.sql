Use db_Biblioteca;

SELECT
	CONCAT(Nome_Autor, ' ', Sobrenome_Autor) AS 'Nome completo'
FROM tbl_autor;

SELECT
	concat('Eu gosto do livro ', Nome_Livro) AS 'texto'
FROM tbl_livro
WHERE Id_Autor = 2;

CREATE TABLE teste_nulos (
id smallint PRIMARY KEY auto_increment,
item varchar(20),
quantidade smallint NULL);

INSERT INTO teste_nulos (id, item, quantidade)
VALUES (1, 'Pendrive', 5);
INSERT INTO teste_nulos (id, item, quantidade)
VALUES (2, 'Monitor', 7);
INSERT INTO teste_nulos (id, item, quantidade)
VALUES (3, 'Teclado', NULL);

SELECT * FROM teste_nulos;

SELECT CONCAT('Fábio ', 'dos Reis') AS 'Meu Nome';
SELECT CONCAT(Nome_autor, ' ', Sobrenome_autor) AS 'Nome Completo'
FROM tbl_autores;
SELECT CONCAT('Eu gosto do livro ', Nome_Livro)
FROM tbl_Livro WHERE ID_autor = 2;

SELECT CONCAT('A quantidade adquirida é ', ' ', quantidade)
FROM teste_nulos
WHERE  item = 'Monitor'; #este é um item cuja quantidade é nula

SELECT CONCAT('A quantidade adquirida é ', ' ', IFNULL(quantidade, 0))
FROM teste_nulos
WHERE  item = 'Teclado';

SELECT CONCAT('A quantidade adquirida é ', ' ', COALESCE(NULL, quantidade, NULL, 0))
FROM teste_nulos
WHERE  item = 'Teclado';