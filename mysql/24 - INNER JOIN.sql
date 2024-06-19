USE db_Biblioteca;

SELECT
	*
FROM tbl_livro AS l
INNER JOIN tbl_autor AS a
ON l.Id_Autor = a.Id_Autor;

SELECT
	tbl_Livro.Nome_Livro,
    tbl_Livro.ISBN,
    tbl_autor.Nome_Autor
FROM tbl_Livro
INNER JOIN tbl_autor
ON tbl_Livro.ID_Autor = tbl_autor.ID_Autor;

SELECT
	L.Nome_Livro AS Livros,
    E.Nome_editora AS Editoras
FROM tbl_Livro AS L
INNER JOIN tbl_editora AS E
ON L.ID_editora = E.ID_editora
WHERE E.Nome_Editora LIKE 'M%';

SELECT L.Nome_Livro AS Livro,
	A.Nome_autor AS Autor,
	E.Nome_Editora AS Editora,
	L.Preco_Livro AS 'Preço do Livro'
FROM tbl_Livro AS L
INNER JOIN tbl_autor AS A
ON L.ID_autor = A.ID_autor
INNER JOIN tbl_editora AS E
ON L.ID_editora = E.ID_editora
WHERE E.Nome_Editora LIKE 'O%'
ORDER BY L.Preco_Livro DESC;