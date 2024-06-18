USE db_Biblioteca;

SELECT COUNT(*) AS TotalAutores FROM tbl_autor;
SELECT COUNT(DISTINCT id_autor) FROM tbl_Livro;
SELECT MAX(Preco_Livro) FROM tbl_Livro;
SELECT MIN(Data_Pub) FROM tbl_Livro;
SELECT AVG(Preco_Livro) FROM tbl_Livro;
SELECT SUM(Preco_Livro) FROM tbl_Livro;