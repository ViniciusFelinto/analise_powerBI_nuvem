# Projeto BI: Análise de Vendas com Arquitetura em Nuvem

![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black) ![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white) ![SQL](https://img.shields.io/badge/SQL-025E8C?style=for-the-badge&logo=sql&logoColor=white) ![Supabase](https://img.shields.io/badge/Supabase-3ECF8E?style=for-the-badge&logo=supabase&logoColor=white)



---

### 🎯 Conceito do Projeto

Este projeto demonstra uma arquitetura de Business Intelligence tradicional e robusta, simulando um ambiente corporativo completo. O objetivo foi estruturar um fluxo de dados desde sua origem em arquivos brutos, passando por um banco de dados relacional na nuvem, até a criação de um dashboard interativo e analítico no Power BI.

O foco desta abordagem foi garantir a performance e a governança dos dados, realizando as transformações mais pesadas diretamente no banco de dados com SQL.

---

### 🛠️ Arquitetura e Ferramentas Utilizadas

O fluxo de trabalho foi estruturado da seguinte forma:

1.  **Fonte de Dados:** Foi utilizado o dataset público de e-commerce da Olist, disponível no Kaggle, contendo múltiplos arquivos CSV.

2.  **Banco de Dados (Cloud):** Os dados foram carregados em um banco **PostgreSQL** hospedado na plataforma **Supabase**, que funciona como um *Backend-as-a-Service* e provisiona uma infraestrutura de banco de dados de forma rápida e segura.

3.  **Transformação de Dados (ETL):** A etapa de transformação e limpeza dos dados foi realizada diretamente no banco de dados através da criação de uma **`VIEW` em SQL**. Esta abordagem centraliza as regras de negócio, otimiza a consulta para o Power BI e melhora a performance geral ao processar os dados na origem. O script SQL para a criação da `VIEW` pode ser encontrado na pasta `/sql` deste repositório.

4.  **Conexão de Dados:** Para garantir a estabilidade e compatibilidade da conexão entre o Power BI e o banco na nuvem, foi configurada uma fonte de dados **ODBC** no Windows, apontando para o driver oficial do PostgreSQL.

5.  **Inteligência de Negócio (BI) e Visualização:**
    * **DAX:** As métricas e KPIs principais (Receita Total, Total de Pedidos, Ticket Médio, etc.) foram calculados utilizando a linguagem DAX dentro do Power BI, através da criação de medidas explícitas.
    * **Dashboard:** O dashboard final foi desenvolvido no Power BI Desktop para apresentar os insights de forma clara e interativa, sendo posteriormente publicado no Power BI Service.

---

### 🚀 Como Reproduzir

1.  Baixar o dataset da Olist do Kaggle.
2.  Configurar um banco de dados PostgreSQL (ex: em uma conta gratuita do Supabase) e carregar os arquivos CSV.
3.  Executar o script da pasta `/sql` neste repositório para criar a `VIEW` de análise.
4.  Configurar uma fonte de dados ODBC no Windows apontando para o banco de dados.
5.  Abrir o arquivo `.pbix` e atualizar a conexão para utilizar o DSN (Data Source Name) criado.
