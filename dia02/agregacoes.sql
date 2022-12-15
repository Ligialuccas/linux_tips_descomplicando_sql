-- Databricks notebook source
select COUNT(*) AS LinhasNaoNulas --linhas não nulas--
from silver_olist.cliente

-- COMMAND ----------

select
      count(*) as linhaNaoNulas,
      count(idCliente) as idClientesNaoNulo
      
from silver_olist.cliente

-- COMMAND ----------

select
      count(*) as linhaNaoNulas,
      count(idCliente) as idClientesNaoNulo,
      count(distinct idCliente) as idClientesDistintos
      
from silver_olist.cliente

-- COMMAND ----------

select
      count(*) as linhaNaoNulas,
      count(idCliente) as idClientesNaoNulo,
      count(distinct idCliente) as idClientesDistintos,
      count(distinct idClienteUnico) as idClientesUnicoDistintos
      
from silver_olist.cliente

-- COMMAND ----------

select 
      count(*)  as qtLinhas,
      count(distinct idCliente) as qtCliente,
      count(distinct idClienteUnico) as qtClientesUnico

from silver_olist.cliente

where descCidade in ('presidente prudente', 'curitiba')

-- COMMAND ----------

select 
      round(avg (vlPreco),2) as avgPreco,-- media da coluna vlPreco 
      int(percentile(vlPreco, 0.5)) as medianPreco, --preco mediano dos produtos
      max (vlPreco) as maxPreco,  --maximo da coluna vlPreco
      avg (vlFrete) as avgFrete, -- media da coluna vlFrete
      max (vlFrete) as maxFrete,
      min (vlFrete) as minFrete

from silver_olist.item_pedido

-- COMMAND ----------

select count(*)
from silver_olist.client
where descUF = 'SP'
