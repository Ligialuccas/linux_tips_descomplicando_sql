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

SELECT
      ROUND(AVG (vlPreco),2) AS avgPreco,-- media da coluna vlPreco 
      INT(PERCENTILE(vlPreco, 0.5)) AS medianPreco, --preco mediano dos produtos
      MAX (vlPreco) AS maxPreco,  --maximo da coluna vlPreco
      AVG (vlFrete) AS avgFrete, -- media da coluna vlFrete
      MAX (vlFrete) AS maxFrete,
      MIN (vlFrete) AS minFrete

FROM silver_olist.item_pedido

-- COMMAND ----------

SELECT COUNT(*)
FROM silver_olist.cliente
WHERE descUF = 'SP'
