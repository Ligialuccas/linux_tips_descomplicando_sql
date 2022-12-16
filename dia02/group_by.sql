-- Databricks notebook source
select 
     descUF,
     count(*)

from silver_olist.cliente

group by descUF

-- COMMAND ----------

select 
     descUF,
     count(distinct idClienteUnico)

from silver_olist.cliente

group by descUF
