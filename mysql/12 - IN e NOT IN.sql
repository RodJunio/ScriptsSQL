# Operadores IN e NOT IN
# Filtragem usando listas de valores no MySQL

USE db_Biblioteca;

# Sintaxe:
# SELECT coluna(s)
# FROM tabela(s)
# WHERE expressão ou valor que vai ser procurarado dentro (IN) de uma lista de valores

# Exemplo 01:
SELECT 
	Nome_livro,
    Id_Editora
FROM
	tbl_livro
WHERE
	Id_editora IN (2,4);
    
# Exemplo 02:
SELECT 
	Nome_Livro,
    Id_editora
FROM
	tbl_livro
WHERE Id_editora NOT IN (1,2);

select * from tbl_livro;

# Exemplo 03:
SELECT
	Nome_Livro,
    Id_Editora
FROM tbl_livro
WHERE
	Id_editora IN(
		SELECT 
			Id_editora
		FROM tbl_editora
        WHERE
			Nome_Editora = 'Wiley' OR Nome_Editora = 'Microsoft Press');
