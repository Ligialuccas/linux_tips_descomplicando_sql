-- Databricks notebook source
SELECT*,
      CASE WHEN descUF = 'SP' THEN 'Paulista' 
      WHEN descUF = 'RJ' THEN 'fluminense'
      WHEN descUF = 'PR' THEN 'paranaense'
      ELSE 'outros'
      END AS descNacionalidade
      
FROM silver_olist.cliente

-- COMMAND ----------

SELECT*,
      --isso aqui é uma coluna nova!!
      CASE
        WHEN descUF = 'SP' THEN 'Paulista'
        WHEN descUF = 'RJ' THEN 'fluminense'
        WHEN descUF = 'PR' THEN 'paranaense'
        ELSE 'outros'
       END AS descNacionalidade

        
      
FROM silver_olist.cliente

-- COMMAND ----------

SELECT *,
      CASE WHEN descUF in ('SP','MG', 'RJ','ES') Then 'sudeste'
    end as descRegiao
    
  From silver_olist.vendedor
