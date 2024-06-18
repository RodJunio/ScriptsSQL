USE db_Biblioteca;

SELECT 
	*
FROM tbl_livro
WHERE Data_Pub between '20040517' AND '20110517';

SELECT
	Nome_livro AS Livro,
    Preco_Livro AS Preco
FROM tbl_livro
WHERE Preco_Livro between 40.00 AND 60.00;	