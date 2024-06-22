SELECT 3 * 9;

SELECT Nome_Livro, Preco_Livro * 5  AS 'Preço de 5 Unidades'
FROM tbl_Livro;

SELECT 2 * 9 / 3;

SELECT Nome_Livro, Preco_Livro / 2 AS 'Preço com 50% de desconto'
FROM tbl_Livro;

SELECT 10 MOD 3;

Use db_Biblioteca;

UPDATE tbl_livro
SET Preco_livro = Preco_livro * 1.1;

SELECT Nome_Livro, CEILING(Preco_Livro * 5)  AS  'Preço Arredondado'
FROM tbl_livro;
SELECT PI();
SELECT POW(2,4);
SELECT SQRT(81);
SELECT SIN(PI());
SELECT HEX(1200);