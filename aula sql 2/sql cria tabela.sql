use revenda;
/*create table testes (
campo1 tinyint(2) unsigned not null auto_increment,
campo2 smallint(5) unsigned default null,
campo3 mediumint(9) unsigned default null,
campo4 int(15) unsigned default null,
campo5 bigint(25) unsigned default null,
campo6 varchar(255) default null,
campo7 char(10) default null,
campo8 text,
campo9 bit(1) not null default 1,
campo10 float(4,2) not null,
primary key (campo1), -- nesta linha o campo1 é definido como primary key
unique key campo7(campo7) -- nesta linha o campo7 é definido como unique
);*/

-- alter table testes add campo1 tinyint(2) unsigned not null;
-- add primary key (campo1);
alter table testes drop primary key;
alter table testes add primary key (campo1);
