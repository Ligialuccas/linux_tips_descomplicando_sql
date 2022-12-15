-- Databricks notebook source
-- DBTITLE 1,Exercício 01
-- 01 Selecione todos os clientes paulistanos

select *
from silver_olist.cliente
where descCidade = 'sao paulo'

-- COMMAND ----------

-- DBTITLE 1,Exercício 02
-- 02 Selecione todos os clientes paulistas

select *
from silver_olist.cliente
where descUF = 'SP'

-- COMMAND ----------

-- DBTITLE 1,Exercício 03
-- 03 Selecione todos os vendedores cariocas
select *
from silver_olist.vendedor
where descCidade = 'rio de janeiro'
or descUF = 'SP'

-- COMMAND ----------

-- DBTITLE 1,Exercício 04
-- 04 Selecione todos os produtos de perfumaria e bebes com altura maior que 5cm

select *
from silver_olist.produto
where descCategoria in ('perfumaria','bebes')
and vlALturaCm > 5

