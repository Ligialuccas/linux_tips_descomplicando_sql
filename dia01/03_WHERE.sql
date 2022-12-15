-- Databricks notebook source
SELECT *
FROM silver_olist.pedido
WHERE descSituacao = 'canceled'
--limit 100
--Leia-se: selecione todas as colunas da tabela silver_olist.pedido onde a situacao do pedido seja 'canceled'

-- COMMAND ----------

SELECT *
FROM silver_olist.pedido
WHERE descSituacao = 'shipped' 
AND year(dtPedido) = '2018'
--leia-se: selecione todas as colunas da tabela silver_olist.pedido filtrando pedidos enviados de 2018

-- COMMAND ----------

SELECT *
FROM silver_olist.pedido
WHERE (descSituacao = 'shipped' or descSituacao = 'canceled')
AND year(dtPedido) = '2018'
--leia-se: selecione todas as colunas da tabela silver_olist.pedido filtrando pedidos enviados ou cancelados  de 2018

-- COMMAND ----------

--select 1 + 10 * 2
select (1 + 10) * 2

-- COMMAND ----------

SELECT *
FROM silver_olist.pedido
WHERE descSituacao in ('shipped', 'canceled')
AND year(dtPedido) = '2018'
--leia-se: selecione todas as colunas da tabela silver_olist.pedido filtrando pedidos enviados ou cancelados  de 2018

-- COMMAND ----------

SELECT *,
     DATEDIFF(dtEstimativaEntrega,dtAprovado)
FROM silver_olist.pedido
WHERE descSituacao in ('shipped', 'canceled')
AND year(dtPedido) = '2018'
and DATEDIFF(dtEstimativaEntrega,dtAprovado) > 30

--leia-se: selecione todas as colunas da tabela silver_olist.pedido filtrando pedidos enviados ou cancelados  de 2018
