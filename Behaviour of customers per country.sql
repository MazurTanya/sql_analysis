-- Розподіл клієнтів в залежності від країни
SELECT
  Geography,
  COUNT(CustomerID) AS quintity_customer_by_country,
  ROUND(COUNT(CustomerID)/
    (SELECT COUNT(CustomerID)
    FROM
      `bank-churn-441509.bank_churn.churn`)*100,1) AS density_quantity_customer_by_country
FROM
  `bank-churn-441509.bank_churn.churn`
GROUP BY Geography
ORDER BY Geography ASC;

-- Різниця поведінки клієнта в залежності від країни
/* Середньої зарплатні, балансу, стажу перебування та
   кредитного рахунку*/
SELECT Geography, 
      ROUND(AVG(Tenure), 1) AS avg_tenure,
      ROUND(AVG(CreditScore), 1) AS avg_creditScore,
      ROUND(AVG(EstimatedSalary), 1) AS avg_salary,
      ROUND(AVG(Balance), 1) AS avg_balance
FROM`bank-churn-441509.bank_churn.churn`

-- Втрачений/поточний клієнти в залежності від країни
SELECT
  Geography,
   COUNT(CASE WHEN Exited = 1 then CustomerId END) AS churnedClient, 
   COUNT(CASE WHEN Exited = 0 then CustomerId END) AS non_churnedClient,
   ROUND(COUNT(CASE WHEN Exited = 1 then CustomerId END)/ COUNT(CustomerId)*100, 1) AS percent_ofChurnedClient_perCountry
FROM
  `bank-churn-441509.bank_churn.churn`
GROUP BY Geography;

-- Чи має клієнт картку
SELECT
  Geography,
  ROUND(COUNT(CASE WHEN HasCrCard= 1 then CustomerId END) / COUNT(HasCrCard)* 100, 1) AS has_card,
  ROUND(COUNT(CASE WHEN HasCrCard= 0 then CustomerId END) / COUNT(HasCrCard)* 100, 1) AS has_Nocard
  FROM
  `bank-churn-441509.bank_churn.churn`
 GROUP BY Geography;

--Чи є активним клієнтом
SELECT
  Geography,
  ROUND(COUNT(CASE WHEN IsActiveMember= 1 then CustomerId END) / COUNT(IsActiveMember)* 100, 1) AS is_activeMember,
  ROUND(COUNT(CASE WHEN IsActiveMember= 0 then CustomerId END) / COUNT(IsActiveMember)* 100, 1) AS not_activeMember
  FROM
  `bank-churn-441509.bank_churn.churn`
GROUP BY Geography;

-- скільки продуктів використовує в залежності від країни
SELECT
  Geography,
  ROUND(COUNT(CASE WHEN NumOfProducts= 1 then CustomerId END) / COUNT( NumOfProducts)* 100, 1) AS one_product,
  ROUND(COUNT(CASE WHEN NumOfProducts= 2 then CustomerId END) / COUNT( NumOfProducts)* 100, 1) AS two_products,
  ROUND(COUNT(CASE WHEN NumOfProducts= 3 then CustomerId END) / COUNT( NumOfProducts)* 100, 1) AS three_products,
  ROUND(COUNT(CASE WHEN NumOfProducts= 4 then CustomerId END) / COUNT( NumOfProducts)* 100, 1) AS four_products
  FROM
  `bank-churn-441509.bank_churn.churn`
GROUP BY Geography;
