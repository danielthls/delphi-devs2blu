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

-- 15 O valor que cada cliente já gastou no restaurante;


