-- Databricks notebook source
select descUF,
      count(idVendedor) AS qtdVendedorUF
      
from silver_olist.vendedor

where descUF in ('SP', 'MG', 'RJ', 'ES')

group by descUF

having qtdVendedorUF > 100

order by qtdVendedorUF desc
