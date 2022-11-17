use ravin;

-- inner join simples
select mesa.*, pessoa.* from mesa inner join pessoa on mesa.atendenteId = pessoa.id;

-- inner join várias condições
select mesa.*, pessoa.* from mesa inner join pessoa on mesa.atendenteId = pessoa.id and mesa.quantidadeMaximaPessoas = 1;

-- left join simples
select mesa.*, pessoa.* from mesa left join pessoa on mesa.atendenteId = pessoa.id;

-- right join simples
select mesa.*, pessoa.* from mesa right join pessoa on mesa.atendenteId = pessoa.id;

-- full outer join simples
select mesa from mesa left outer join pessoa on mesa.atendenteId = pessoa.id
union
select mesa from mesa right outer join pessoa on mesa.atendenteId = pessoa.id;

-- cross join simples
select mesa.*, pessoa.* from mesa cross join pessoa on mesa.atendenteId = pessoa.id;