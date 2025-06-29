# Projeto dbt + DuckDB com Modelo Medalhão

## Objetivo

Este projeto demonstra uma pipeline simples de dados usando:

- **DuckDB** como banco de dados analítico local e leve;
- **dbt** para organizar, transformar e versionar os dados;
- **Modelo Medalhão** com 3 camadas: Bronze, Silver e Gold.

---

## Camadas do modelo medalhão

- **Bronze:** ingestão bruta dos dados diretamente do CSV;
- **Silver:** limpeza e padronização dos dados;
- **Gold:** agregação final para análise (total de vendas por cliente).

---

## Arquivos principais

- `vendas.csv`: dados de vendas brutos;
- `dbt_project/models/bronze/vendas_raw.sql`: modelo Bronze (raw);
- `dbt_project/models/silver/vendas_limpas.sql`: modelo Silver (limpeza);
- `dbt_project/models/gold/total_vendas_por_cliente.sql`: modelo Gold (agregação);
- `dbt_project/dbt_project.yml`: configuração dos modelos;
- `profiles.yml`: configuração de conexão DuckDB para dbt.

---

## Como usar

### Pré-requisitos

- Python 3.8+
- pip
- Instalar pacotes:
  ```bash
  pip install dbt-duckdb duckdb
  ```

### Rodando o projeto

1. Clone o repositório e entre na pasta:

   ```bash
   git clone <link-do-repositorio>
   cd meu_projeto_dbt_duckdb
   ```

2. Execute o dbt para criar as tabelas/views:

   ```bash
   DBT_PROFILES_DIR=. dbt run
   ```

3. Abra o DuckDB para consultar:

   ```bash
   duckdb vendas.duckdb
   ```

   Exemplo de consulta:

   ```sql
   SELECT * FROM gold.total_vendas_por_cliente;
   ```

---

## Explicação rápida dos modelos

- **Bronze (vendas_raw):** lê o CSV diretamente;
- **Silver (vendas_limpas):** normaliza texto e tipos;
- **Gold (total_vendas_por_cliente):** soma os valores por cliente.

---

## Sobre DuckDB e dbt

- DuckDB: banco de dados embutido, rápido e analítico;
- dbt: framework para organizar SQL em modelos, testá-los e versioná-los.

---

## Contato

Para dúvidas, abra uma issue ou envie mensagem.
