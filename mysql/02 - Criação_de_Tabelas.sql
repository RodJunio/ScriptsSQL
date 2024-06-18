USE DB_Biblioteca;

CREATE TABLE IF NOT EXISTS tbl_Livro(
Id_Livro SMALLINT AUTO_INCREMENT PRIMARY KEY,
Nome_Livro VARCHAR(50) NOT NULL,
ISBN VARCHAR(30) NOT NULL,
Id_Autor SMALLINT NOT NULL,
Data_Pub DATE NOT NULL,
Preco_Livro DECIMAL NOT NULL
);

CREATE TABLE tbl_autor(
Id_Autor SMALLINT PRIMARY KEY,
Nome_Autor VARCHAR(50),
Sobrenome_Autor VARCHAR(60)
);

CREATE TABLE tbl_editora(
Id_Editora SMALLINT PRIMARY KEY AUTO_INCREMENT,
Nome_Editora Varchar(50) NOT NULL
);

CREATE TABLE tbl_categoria(
Id_Categoria smallint primary key auto_increment,
Nome_Categoria varchar(50) Not Null
);

SHOW TABLES;