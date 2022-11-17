USE dvs2blu;

/*CREATE TABLE EDITORAS (
	id int unsigned not null auto_increment,
    editora varchar(250) not null,
    primary key (id)
);

CREATE TABLE LIVROS (
	id int unsigned not null auto_increment,
    nome varchar(250) not null,
    id_editora int unsigned,
    primary key(id),
    foreign key(id_editora) references editoras(id)
);*/

select livros.nome, editoras.editora
from livros left join editoras
on livros.id_editora = editoras.id
order by livros.nome;

select livros.nome, editoras.editora
from livros right join editoras
on livros.id_editora = editoras.id
order by livros.nome;

select livros.nome, editoras.editora
from livros inner join editoras
on livros.id_editora = editoras.id
order by livros.nome;

select * from livros;