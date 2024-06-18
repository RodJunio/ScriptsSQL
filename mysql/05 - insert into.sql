USE db_Biblioteca;

INSERT INTO tbl_autor (Id_autor, Nome_autor, Sobrenome_Autor) values (1, 'Junio', 'Rodrigues');
INSERT INTO tbl_autor (Id_autor, Nome_autor, Sobrenome_Autor) values (2, 'Maria', 'Silva');
INSERT INTO tbl_autor (Id_autor, Nome_autor, Sobrenome_Autor) values (3, 'Joana', 'Velard');
INSERT INTO tbl_autor (Id_autor, Nome_autor, Sobrenome_Autor) values (4, 'Richard', 'Golçalves');
INSERT INTO tbl_autor (Id_autor, Nome_autor, Sobrenome_Autor) values (5, 'Milena', 'Reis');

select * from tbl_autor;

#===========================================================================================================

INSERT INTO tbl_editora (Nome_editora) values ('Prentice hall');
INSERT INTO tbl_editora (Nome_editora) values ('O´Reilly');
INSERT INTO tbl_editora (Nome_editora) values ('microsoft press');
INSERT INTO tbl_editora (Nome_editora) values ('wiley');

select * from tbl_editora;

#===========================================================================================================

INSERT INTO tbl_categoria
VALUES
(1, 'Tecnologia'),
(2, 'História'),
(3, 'Literatura'),
(4, 'Astronomia'),
(5, 'Botânica');

select * from tbl_categoria;


#===========================================================================================================

INSERT INTO tbl_Livro (Nome_Livro, ISBN, Data_Pub, Preco_Livro, Id_Categoria, Id_Autor, Id_Editora)
VALUES
('Linux Command Line and Shell Scripting','9781118983843', '20150109', 68.35, 1, 5, 4),
('SSH, the Secure Shell','9780596008956', '20050517', 58.30, 1, 1, 2),
('Using Samba','9780596002565', '20031221', 61.45, 1, 2, 2),
('Fedora and Red Hat Linux', '9780133477436', '20140110', 62.24, 1, 3, 1),
('Windows Server 2012 Inside Out','9780735666313', '20130125', 66.80, 1, 4, 3),
('Microsoft Exchange Server 2010','9780735640610', '20101201', 45.30, 1, 4, 3),
('Practical Electronics for Inventors', '9781259587542', '20160324', 67.80, 1, 1, 5);

SELECT * FROM tbl_livro;