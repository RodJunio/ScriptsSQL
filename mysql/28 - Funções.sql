SET GLOBAL log_bin_trust_function_creators = 1;

CREATE FUNCTION fn_teste (a DECIMAL(10,2), b INT)
RETURNS INT
RETURN a * b;

SELECT fn_teste(2.5, 4) AS Resultado;

select	
	Nome_Livro,
    fn_teste(preco_livro, 6) AS 'Preço de 6 unidades'
FROM tbl_livro
WHERE Id_Livro = 22;

DROP FUNCTION fn_teste;