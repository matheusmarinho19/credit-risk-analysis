-- ============================================
-- CRIAÇÃO DAS TABELAS
-- Projeto: Credit Risk Analysis
-- Banco: MySQL
-- ============================================

CREATE TABLE IF NOT EXISTS clientes (
    id INT PRIMARY KEY,
    limit_bal INT,
    sex INT,
    education INT,
    marriage INT,
    age INT
);

CREATE TABLE IF NOT EXISTS pagamentos (
    id INT,
    pay_0 INT,
    pay_2 INT,
    pay_3 INT,
    pay_4 INT,
    pay_5 INT,
    pay_6 INT,
    FOREIGN KEY (id) REFERENCES clientes(id)
);

CREATE TABLE IF NOT EXISTS resultado_default (
    id INT,
    default_next_month INT,
    FOREIGN KEY (id) REFERENCES clientes(id)
);

