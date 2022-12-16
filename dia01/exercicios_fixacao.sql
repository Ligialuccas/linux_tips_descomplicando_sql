-- Databricks notebook source
-- Lista de pedidos feitos em dezembro de 2017 e entregues com atraso --

SELECT *,
    date(dtEntregue),
    date(dtEstimativaEntrega)
FROM silver_olist.pedido
where Year(dtPedido) = 2017
AND MONTH (dtPedido) = 12
AND descSituacao = 'delivered'
and date(dtEntregue) > date(dtEstimativaEntrega)

-- COMMAND ----------

-- lista de pedidos com 2 ou mais parcelas menores que R$20,00--
select *,
   ROUND( vlPagamento / nrPacelas) as vlParcela
from silver_olist.pagamento_pedido

where nrPacelas >= 2
and vlPagamento / nrPacelas < 20

-- COMMAND ----------

-- case 02 Selecione os pedidos e defina os grupos em uma nova coluna:
-- para frete inferior a 10%: '10%'
-- para frete entre 10% e 25%: '10% a 25%'
-- para frete entre 25% e 50%: '25% a 50%'
--para frete maior que 50%: '50%'

select *,
    vlPreco + vlPreco as vlTotal,
    vlPreco / (vlPreco + vlFrete) as pctFrete,
    
    case
      When vlFrete / ( vlPreco + vlPreco) <=0.1 then '10%'
      When vlFrete / ( vlPreco + vlPreco) <=0.25 then '10% A 25%'
      When vlFrete / ( vlPreco + vlPreco) <=0.50 then '25% A 50%'
      end as desFretePct
    
from silver_olist.item_pedido


