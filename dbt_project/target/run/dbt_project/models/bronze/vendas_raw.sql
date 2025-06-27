
  
  create view "vendas"."main"."vendas_raw__dbt_tmp" as (
    -- Leitura direta do CSV (raw layer)
SELECT 
    * 
FROM read_csv_auto('vendas.csv')
  );
