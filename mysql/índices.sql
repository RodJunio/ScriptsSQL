USE DB_Biblioteca;

SHOW INDEX FROM tbl_editora;

explain select * FROM tbl_editora
WHERE Nome_Editora = 'Springer';

CREATE index idx_editora ON tbl_editora(Nome_Editora);

DROP INDEX idx_editora ON tbl_editora;