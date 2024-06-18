USE DB_Biblioteca;

SELECT
	*
FROM tbl_livro
WHERE
	Id_Livro > 2 
    AND Id_Autor < 3;
    
SELECT
	*
FROM tbl_livro
WHERE
	Id_Livro > 2 OR Id_Autor < 3;
    
SELECT
	*
FROM tbl_livro
WHERE 
	Id_livro > 2
    AND NOT Id_Autor < 3;