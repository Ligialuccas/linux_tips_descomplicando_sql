-- Databricks notebook source
with tb_vendas_vendedores AS(

Select 
      idVendedor,
      COUNT(*) AS qtVendas

from silver_olist.Item_pedido

group by idVendedor
Order by qtVendas desc

),

tb_row_number AS (

Select T1.*,
       T2.descUF,
       ROW_NUMBER() OVER (PARTITION BY T2.descUF ORDER BY qtVendas DESC) AS RN

from tb_vendas_vendedores AS T1

left join silver_olist.vendedor AS T2
on T1.idVendedor = T2.idVendedor

QUALIFY RN <=10

Order by descUF, qtVendas DESC
)

select * from tb_row_number 

-- COMMAND ----------

SELECT *

FROM A

WHERE -- filtra na fonte

QUALIFY -- filtra window function

having  --FILTRA GROUP BY
