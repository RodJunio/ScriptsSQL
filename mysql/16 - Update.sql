USE db_Biblioteca;

Select
	Id_Livro,
    Nome_livro
From tbl_livro;

UPDATE tbl_livro
SET Nome_Livro = 'SSH, o Shell Seguro'
WHERE Id_Livro = 23;