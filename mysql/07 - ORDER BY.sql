 USE db_Biblioteca;

SELECT * FROM tbl_livro
order by Nome_Livro ASC;

SELECT Nome_Livro, Id_Editora
FROM tbl_livro
ORDER BY Id_editora;

SELECT Nome_livro, Preco_Livro
FROM tbl_livro
order by Preco_Livro DESC;