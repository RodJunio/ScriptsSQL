USE db_Biblioteca;

CREATE VIEW vw_LivrosAutores
AS SELECT tbl_Livro.Nome_Livro AS Livro,
	tbl_Autor.Nome_Autor AS Autor
FROM tbl_livro
INNER JOIN tbl_autor
ON tbl_livro.Id_Autor = tbl_autor.Id_Autor;

SELECT
	Livro,
    Autor,
    Valor
FROM vw_LivrosAutores
ORDER BY Autor;

ALTER VIEW vw_LivrosAutores AS
SELECT 
	tbl_Livro.Nome_Livro AS Livro,
    tbl_Autor.Nome_Autor AS Autor,
    Preco_Livro AS Valor
FROM tbl_Livro
INNER JOIN tbl_Autor
ON tbl_Livro.Id_Autor = tbl_Autor.Id_Autor;

# Excluir uma view
DROP VIEW vw_LivrosAutores;