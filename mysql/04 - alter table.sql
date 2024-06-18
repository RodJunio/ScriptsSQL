USE db_Biblioteca;

ALTER TABLE tbl_livro
drop column Id_Autor;

SELECT * FROM tbl_livro;

#=====================================

ALTER TABLE tbl_Livro
ADD Id_Autor SMALLINT NOT NULL;

ALTER TABLE tbl_livro
ADD constraint fk_Id_Autor
foreign key (Id_Autor)
references tbl_autor (Id_Autor);

#=====================================

ALTER TABLE tbl_livro
ADD Id_editora SMALLINT NOT NULL;

ALTER TABLE tbl_livro
ADD CONSTRAINT FK_Id_editora
foreign key ( Id_editora)
references tbl_editora (Id_Editora);

#=====================================

alter table tbl_livro
ADD Id_Categoria smallint Not null;

Alter Table tbl_livro
Add constraint FK_Id_categoria
foreign key (Id_categoria)
references tbl_categoria (Id_Categoria);
