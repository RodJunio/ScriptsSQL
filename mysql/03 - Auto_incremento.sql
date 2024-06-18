CREATE TABLE tbl_teste_incremento (
Codigo SMALLINT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(20) NOT NULL
) AUTO_INCREMENT = 15;

INSERT INTO tbl_teste_incremento (Nome) VALUES('Ana');
INSERT INTO tbl_teste_incremento (Nome) VALUES('Julia');
INSERT INTO tbl_teste_incremento (Nome) VALUES('Maria');
INSERT INTO tbl_teste_incremento (Nome) VALUES('Joana');

SELECT * FROM tbl_teste_incremento;

SHOW tables;

SELECT MAX(Codigo)
FROM tbl_teste_incremento;

ALTER TABLE tbl_teste_incremento
AUTO_INCREMENT = 90;

INSERT INTO tbl_teste_incremento (Nome) VALUES('João');
INSERT INTO tbl_teste_incremento (Nome) VALUES('Laryssa');
INSERT INTO tbl_teste_incremento (Nome) VALUES('Jorge');
INSERT INTO tbl_teste_incremento (Nome) VALUES('Sandra');

SELECT * FROM tbl_teste_incremento;