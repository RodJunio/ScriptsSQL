Use db_Biblioteca;

ALTER TABLE tbl_autor
modify column Sobrenome_Autor varchar(60)
default 'da Silva';

INSERT INTO tbl_Autor (Id_Autor, Nome_Autor) VALUES (8, 'Jhon');

SELECT 
	*
FROM tbl_autor