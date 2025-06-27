import duckdb

con = duckdb.connect('vendas.duckdb')
# print(con.execute("SELECT * FROM main.vendas_limpas").fetchdf())

print(con.execute("SELECT * FROM main.total_vendas_por_cliente").fetchdf())
