USE db_Biblioteca;

CREATE PROCEDURE verPreco (varLivro smallint)
SELECT CONCAT('O preço é ', Preco_Livro) AS 'Preço'
FROM tbl_livro
WHERE Id_Livro = varLivro;

CALL verPreco(22);

DROP PROCEDURE verPreco;