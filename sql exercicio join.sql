use ravin;

-- exericio 1
select mesa.codigo, pessoa.nome from mesa inner join pessoa on mesa.atendenteId = pessoa.id;

-- exercio 2
select comanda.codigo, produto.nome from 
comandaproduto 
inner join comanda on comandaproduto.comandaId = comanda.id
inner join produto on comandaproduto.produtoId = produto.id;
-- comandaproduto join produto on ;

-- exercicio 3
select comanda.id, sum(comandaproduto.valorTotal) from comanda inner join comandaproduto on comandaproduto.comandaId = comanda.id 
group by comanda.id;

-- exercicio 4
select comanda.codigo, max(comanda.valor), mesa.nome, pessoa.nome from
mesa
join pessoa on mesa.atendenteId = pessoa.id
join comanda on comanda.mesaId = mesa.id
join comandaproduto on comandaproduto.comandaid = comanda.id;