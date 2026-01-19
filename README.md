# 📊 Credit Risk Analysis — Fintech Scenario

## 📌 Visão Geral
Este projeto simula um cenário real de análise de risco de crédito em uma fintech, com o objetivo de transformar dados brutos em informações estratégicas para apoio à tomada de decisão.

A solução integra **Python para análise exploratória**, **MySQL para modelagem relacional** e **Power BI para visualização interativa**, refletindo um fluxo de trabalho utilizado em ambientes corporativos de dados.

---

## 🎯 Objetivos do Projeto
- Analisar o perfil de clientes adimplentes e inadimplentes  
- Identificar padrões e fatores associados à inadimplência  
- Desenvolver indicadores e dashboards gerenciais  
- Demonstrar a integração entre análise, banco de dados e BI  

---

## 🧠 Problema de Negócio
Instituições financeiras precisam avaliar o risco de novos clientes para reduzir inadimplência e perdas financeiras.

Este projeto busca responder perguntas como:
- Qual é a taxa geral de inadimplência?
- Como a inadimplência varia por faixa etária?
- O histórico de atrasos influencia o risco?
- Existe relação entre limite de crédito e inadimplência?

---

## 🛠️ Tecnologias Utilizadas
- **Python** (Pandas, NumPy, Matplotlib)
- **SQL (MySQL)**
- **Power BI**
- **Jupyter Notebook**
- **Git & GitHub**

---

## 📂 Estrutura do Projeto
credit-risk-analysis/
│
├── data/
│ ├── raw/
│ │ └── credit_data.csv
│ └── processed/
│
├── notebooks/
│ ├── 01_exploratory_analysis.ipynb
│ └── 02_sql_modeling_mysql.ipynb
│
├── powerbi/
│ └── credit_risk_dashboard.pbix
│
├── images/
│ └── dashboard_credit_risk.png
│
├── README.md
└── requirements.txt

---

## 📊 Análise Exploratória de Dados
No notebook de análise exploratória foram realizadas:
- Limpeza e validação dos dados
- Análise estatística descritiva
- Avaliação da variável alvo (inadimplência)
- Criação de gráficos para identificação de padrões iniciais

---

## 🗄️ Modelagem de Dados (MySQL)
Os dados foram estruturados em um banco de dados relacional MySQL, seguindo boas práticas de modelagem:

- **clientes**: dados demográficos e limite de crédito  
- **pagamentos**: histórico de atrasos nos pagamentos  
- **resultado_default**: status de inadimplência  

O processo incluiu:
- Criação das tabelas
- Inserção controlada dos dados
- Validação por meio de consultas SQL

---

## 📈 Dashboard no Power BI
Foi desenvolvido um dashboard interativo com indicadores-chave, como:
- Total de clientes
- Total de inadimplentes
- Taxa de inadimplência (%)
- Limite médio de crédito
- Análises por faixa etária e histórico de pagamento

O painel permite segmentações dinâmicas para análise exploratória e simulação de cenários de risco.

![Dashboard](images/dashboard_credit_risk.png)

---

## 🔍 Principais Insights
- Clientes com histórico recente de atraso apresentam maior taxa de inadimplência  
- Algumas faixas etárias concentram maior risco de crédito  
- O comportamento de pagamento impacta mais o risco do que o limite de crédito isoladamente  

---

## 🚀 Próximos Passos
- Evoluir para um modelo preditivo de risco de crédito  
- Automatizar processos de ingestão e atualização dos dados  
- Expandir a análise com novas variáveis  

---

## 👤 Autor
**Matheus Marinho**  
Projeto desenvolvido para fins educacionais e demonstração prática de habilidades em análise de dados.


