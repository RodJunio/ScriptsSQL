USE db_Biblioteca;

SELECT
	*
FROM tbl_livro
WHERE Nome_Livro LIKE 'F%';

SELECT
	*
FROM tbl_livro
where Nome_Livro NOT LIKE 'S%';

SELECT
	Nome_livro
FROM tbl_livro
WHERE Nome_Livro LIKE '_i%';