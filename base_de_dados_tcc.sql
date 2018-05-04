-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE tipuser (
codtipuser int(11) not null PRIMARY KEY,
desc_tipUser varchar(300) not null
);

CREATE TABLE imagens (
cod_imagem int(11) not null PRIMARY KEY,
descimagem varchar(300) not null,
titulo_imagem varchar(100) not null,
caminho_imagem varchar(150) not null,
cod_post int(11) not null
);

CREATE TABLE posts (
cod_post int(11) not null PRIMARY KEY,
titulo varchar(100) not null,
descricao varchar(300) not null ,
texto_post varchar(1000) not null,
id int(11) not null
);

CREATE TABLE tema_post (
id_tema int(11) not null PRIMARY KEY,
desc_tema varchar(300) not null ,
Id int(11) not null
);

CREATE TABLE usuario (
nome varchar(100) not null,
login_usu varchar(100) not null,
senha_usu varchar(100) not null,
idade int(11) not null,
email varchar(250) not null,
id int(11) not null PRIMARY KEY,
codtipuser int(11) not null,
FOREIGN KEY(codtipuser) REFERENCES tipuser (codtipuser)
);


ALTER TABLE Imagens ADD FOREIGN KEY(cod_post) REFERENCES Posts (cod_post)
ALTER TABLE Posts ADD FOREIGN KEY(id) REFERENCES Usuário (id)
ALTER TABLE tema_post ADD FOREIGN KEY(id) REFERENCES Usuário (id)
ALTER TABLE comentario+comentario ADD FOREIGN KEY(id) REFERENCES Usuário (id)
