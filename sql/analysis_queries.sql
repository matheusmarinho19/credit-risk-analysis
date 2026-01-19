-- ============================================
-- CONSULTAS ANALÍTICAS
-- Projeto: Credit Risk Analysis
-- ============================================

-- 1️⃣ Distribuição de inadimplência
SELECT 
    default_next_month,
    COUNT(*) AS total_clientes,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM resultado_default), 2) AS percentual
FROM resultado_default
GROUP BY default_next_month;


-- 2️⃣ Limite médio de crédito por status
SELECT 
    r.default_next_month,
    ROUND(AVG(c.limit_bal), 2) AS limite_medio
FROM clientes c
JOIN resultado_default r ON c.id = r.id
GROUP BY r.default_next_month;


-- 3️⃣ Taxa de inadimplência por atraso no último pagamento (PAY_0)
SELECT
    p.pay_0 AS atraso_pagamento,
    ROUND(SUM(CASE WHEN r.default_next_month = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) 
        AS taxa_inadimplencia
FROM pagamentos p
JOIN resultado_default r ON p.id = r.id
GROUP BY p.pay_0
ORDER BY p.pay_0;


-- 4️⃣ Perfil etário dos clientes inadimplentes
SELECT
    CASE
        WHEN c.age < 30 THEN 'Até 29'
        WHEN c.age < 40 THEN '30–39'
        WHEN c.age < 50 THEN '40–49'
        ELSE '50+'
    END AS faixa_etaria,
    ROUND(SUM(CASE WHEN r.default_next_month = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2)
        AS taxa_inadimplencia
FROM clientes c
JOIN resultado_default r ON c.id = r.id
GROUP BY faixa_etaria
ORDER BY faixa_etaria;

