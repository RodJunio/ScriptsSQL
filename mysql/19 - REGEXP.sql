USE _db_Biblioteca;

SELECT Nome_Livro
FROM tbl_Livro
WHERE Nome_Livro REGEXP '^[FS]';

SELECT Nome_Livro
FROM tbl_Livro
WHERE Nome_Livro REGEXP '^[^FS]';

SELECT Nome_Livro
FROM tbl_Livro
WHERE Nome_Livro REGEXP '[ng]$';

SELECT Nome_Livro
FROM tbl_Livro
WHERE Nome_Livro REGEXP '^[FS]|Mi';