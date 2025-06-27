-- Leitura direta do CSV (raw layer)
SELECT 
    * 
FROM read_csv_auto('vendas.csv')