use ravin;
-- 1 Qual o produto com o maior preço de custo;
select * from produto where precoCusto = (select max(precoCusto) from produto);

-- 2 Qual o produto com o maior preço de venda;
select * from produto where precoVenda = (select max(precoVenda) from produto);

-- 3 Qual produto com o menor preço de custo;
select * from produto where precoCusto = (select min(precoCusto) from produto);

-- 4 Qual produto com o menor preço de venda;
select * from produto where precoVenda = (select min(precoVenda) from produto);

-- 5 A comanda mais recente;
select * from comanda where criadoEm = (select max(criadoEm) from comanda);

-- 6 A comanda mais velha;
select * from comanda where criadoEm = (select min(criadoEm) from comanda);

-- 7 A comanda com maior valor (baseado no valor da comanda);
select * from comanda where valor = (select max(valor) from comanda);

-- 8 As 3 comandas com maior valor ordenadas em ordem crescente;
select * from comanda order by valor asc limit 3;

-- 9 Busque os clientes que são aniversariantes do mês;
select nome, criadoem from pessoa where month(criadoEm) = month(curdate()) and tipoPessoa = 'c' order by criadoem;

-- 10 Mesas sem atendente;
select * from mesa where atendenteId is NULL;

-- 11 Quantos atendentes;
select tipoPessoa, count(*) from pessoa where tipoPessoa = 'f';

-- 12 Quantidade de comandas dos dois últimos anos;
select year(criadoem), count(*) from comanda where year(criadoem) = year(curdate()) or year(criadoem) = year(curdate()- interval 1 year) or year(criadoem) = year(curdate()- interval 2 year) group by year(criadoEm);

-- 13 O maior valor de comanda (considerando apenas o valor da comanda) dia a dia do mês atual;
select id, criadoem, max(valor) from comanda where year(criadoem) = year(curdate()) and month(criadoem) = month(curdate()) group by day(criadoem);

-- 14 O valor de cada comanda (baseado nos itens) juntamente com o item mais caro da comanda;

select comanda.id, sum(comandaproduto.valorTotal), max(comandaproduto.valorTotal) from comanda inner join comandaproduto on comandaproduto.comandaId = comanda.id 
group by comanda.id;

-- 15 O valor que cada cliente já gastou no restaurante;
select pessoa.id, pessoa.nome, sum(comanda.valor) from pessoa inner join comanda on comanda.clienteid = pessoa.id group by pessoa.id;

-- 16 Listar o código das mesas juntamente com o nome dos atendentes responsáveis por cada mesa (apenas as mesas que contém atendente);
select mesa.id, mesa.codigo, pessoa.nome from mesa inner join pessoa on mesa.atendenteid = pessoa.id;

-- 17 Listar as comandas com seus produtos mostrando o código da comanda e o nome do produto;
select comandaproduto.id as 'comanda produto id', comanda.codigo as 'Código Comanda', produto.nome 'Nome do Produto' from comandaproduto 
inner join comanda on comanda.id = comandaproduto.comandaId
inner join produto on comandaproduto.produtoId = produto.id
order by comanda.id;

-- 18 Listar as comandas mostrando o valor total de cada comanda;
select comanda.codigo as 'Código Comanda', sum(comandaproduto.valortotal) as 'Valor Total Comanda' from comandaproduto
inner join comanda on comanda.id = comandaproduto.comandaId
inner join produto on comandaproduto.produtoId = produto.id
group by comanda.id;

-- 19 Buscar a comanda que teve a maior valor, mostrando o código da comanda, o valor da comanda e o nome do atendente responsável por aquela comanda;
select codigo as 'Código Comanda', valor as 'Maior Valor', criadopor as 'Atendente Responsável' from comanda where comanda.valor = (select max(comanda.valor) from comanda);

-- 20 Quantidade de clientes em cada dia;
select criadoem as 'Data', count(*) as 'Número de clientes' from comanda group by day(criadoem);

-- 21 O funcionário mais velho que já fez algum atendimento
select nome, criadoem from pessoa where tipopessoa = 'f' and criadoem = (select max(criadoem) from pessoa where tipopessoa = 'f');

-- 22 A comanda com maior valor (valor da Comanda) e que não está paga
select comanda.id, comanda.codigo, comanda.valor, statuscomanda.nome from comanda 
inner join statuscomanda on comanda.statuscomandaid = statuscomanda.id 
where comanda.valor = (select max(comanda.valor) from comanda where comanda.statuscomandaid = 1 or comanda.statuscomandaid = 2) and (comanda.statuscomandaid = 1 or comanda.statuscomandaid = 2);

-- 23 A comanda com menor valor (valor da Comanda) e que já está paga
select comanda.id, comanda.codigo, comanda.valor, statuscomanda.nome from comanda 
inner join statuscomanda on comanda.statuscomandaid = statuscomanda.id 
where comanda.valor = (select min(comanda.valor) from comanda where comanda.statuscomandaid = 3) and (comanda.statuscomandaid = 3);

-- 24 Quantos clientes tem comandas em aberto
select count(distinct comanda.clienteid) from comanda inner join pessoa on comanda.clienteid = pessoa.id
where comanda.statuscomandaid = 1 and pessoa.tipopessoa = 'c';

-- 25 Quanto cada mesa já arrecadou
select mesa.codigo, sum(comanda.valor) from comanda inner join mesa on mesa.id = comanda.mesaid group by mesa.id;

-- 26 Quantidade de clientes que nunca consumiram no restaurante
SELECT count(*) FROM pessoa WHERE pessoa.id NOT IN (
    SELECT comanda.clienteid FROM comanda
);

-- 27 Os cliente que nunca consumiram no restaurante
SELECT id, nome FROM pessoa WHERE pessoa.id NOT IN (
    SELECT comanda.clienteid FROM comanda
);

-- 28 As comandas que estão em mesas ocupadas (juntamente com seu valor);
select mesa.id as 'Mesa', statusMesa.Nome as 'Situação', comanda.codigo as 'Código Comanda', comanda.valor as 'Valor Comanda' from comanda 
inner join mesa on mesa.id = comanda.mesaid
inner join statusMesa on mesa.statusMesaId = statusMesa.id
where mesa.statusMesaid = 3;

-- 29 Os 10 produtos mais vendidos (ultimo mês)
select produto.nome, produto.id, comanda.codigo, count(comandaproduto.valortotal) from comandaproduto
inner join comanda on comandaproduto.comandaid = comanda.id
inner join produto on comandaproduto.produtoid = produto.id
where month(comanda.criadoem) and year(curdate())
group by produto.id order by count(comandaproduto.valortotal) desc limit 10;

-- 


