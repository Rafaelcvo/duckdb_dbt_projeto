-- Camada silver: limpeza e padronização
SELECT
    LOWER(TRIM(cliente)) AS cliente,
    INITCAP(produto) AS produto,
    CAST(valor AS INTEGER) AS valor
FROM {{ ref('vendas_raw') }}
