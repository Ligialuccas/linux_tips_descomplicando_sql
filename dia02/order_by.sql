-- Databricks notebook source
select 
     descUF,
     count(distinct idClienteUnico) as qtdCLienteEstado

from silver_olist.cliente

group by descUF
ORDER BY descUF

-- COMMAND ----------

--primeira forma
select 
     descUF,
     count(distinct idClienteUnico) as qtdCLienteEstado

from silver_olist.cliente

group by descUF
ORDER BY 2

-- COMMAND ----------

--segunda forma
select 
     descUF,
     count(distinct idClienteUnico) as qtdCLienteEstado

from silver_olist.cliente

group by  descUF
ORDER BY  qtdCLienteEstado

-- COMMAND ----------

--terceira forma
select 
     descUF,
     count(distinct idClienteUnico) as qtdCLienteEstado

from silver_olist.cliente

group by  descUF
ORDER BY  count(distinct idClienteUnico)

-- COMMAND ----------


select 
     descUF,
     count(distinct idClienteUnico) as qtdCLienteEstado

from silver_olist.cliente

group by  descUF
ORDER BY  count(distinct idClienteUnico) Desc

-- COMMAND ----------


select 
     descUF,
     count(distinct idClienteUnico) as qtdCLienteEstado

from silver_olist.cliente

group by  descUF
ORDER BY  count(distinct idClienteUnico) Desc

limit 1
