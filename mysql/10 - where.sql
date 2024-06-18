USE DB_Biblioteca;

SELECT
	Nome_Livro,
    Data_Pub
FROM tbl_Livro
WHERE Id_Autor = 1;

SELECT
	Id_Autor,
    Nome_Autor
FROM tbl_autor
WHERE Sobrenome_Autor = 'Rodrigues';
