import duckdb
con = duckdb.connect('vendas.duckdb')
print(con.execute("SELECT * FROM main.vendas_limpas").fetchdf())