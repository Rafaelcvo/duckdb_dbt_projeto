
  
    
    

    create  table
      "vendas"."main"."total_vendas_por_cliente__dbt_tmp"
  
    as (
      -- Camada gold: agregação final
SELECT
    cliente,
    SUM(valor) AS total_vendas
FROM "vendas"."main"."vendas_limpas"
GROUP BY cliente
ORDER BY total_vendas DESC
    );
  
  