USE DB_Biblioteca;

DELIMITER $$

CREATE FUNCTION aumenta_preco(preco DECIMAL(10,2), taxa DECIMAL(10,2)) 
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN 
    RETURN preco + preco * taxa / 100;
END $$

DELIMITER ;

-- Invocando a Função para aumentar o preço em 10%:
SELECT aumenta_preco(50.00, 10.00) AS Resultado;


DELIMITER //

CREATE PROCEDURE verPreco2 (IN varLivro SMALLINT)
DETERMINISTIC
BEGIN
	SELECT CONCAT('O preço é ', Preco_livro) AS Preco
	FROM tbl_livro
	WHERE Id_Livro = varLivro;
END //

DELIMITER ;



call verPreco(23);
