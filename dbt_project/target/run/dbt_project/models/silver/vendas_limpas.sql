
  
  create view "vendas"."main"."vendas_limpas__dbt_tmp" as (
    -- Camada silver: limpeza e padronização
SELECT
    LOWER(TRIM(cliente)) AS cliente,
    upper(left(produto, 1)) || lower(substr(produto, 2)) AS produto,
    CAST(valor AS INTEGER) AS valor
FROM "vendas"."main"."vendas_raw"
  );
