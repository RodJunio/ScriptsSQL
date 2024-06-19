USE db_Biblioteca;

SELECT
	*
FROM tbl_autor AS a
LEFT JOIN tbl_livro AS l
ON l.Id_Autor = a.Id_Autor
WHERE l.Id_Autor IS NULL;

INSERT INTO tbl_editora(Id_Editora, Nome_Editora) values (9, 'Cia das Letras');


SELECT
	*
FROM tbl_livro AS l
right JOIN tbl_editora AS ed
ON l.Id_Editora = ed.Id_Editora
WHERE l.Id_editora IS NULL;