-- Кількість та частка втрачених/поточних кліентів
SELECT
  COUNT(CASE WHEN Exited = 1 THEN CustomerId END) AS churnedClient,
  COUNT(CASE WHEN Exited = 0 THEN CustomerId END) AS non_churnedClient,
  ROUND(COUNT(CASE WHEN Exited = 1 THEN CustomerId END)/ COUNT(*)*100, 2) AS percent_churnedClient
  FROM
  `bank-churn-441509.bank_churn.churn`;

/* Чи впливає середня зарплатня та середній строк перебування в банку
   на поведінку клієнта */
SELECT
  Exited,
  ROUND(AVG(Tenure), 1) AS avg_tenure,
  ROUND(AVG(EstimatedSalary)) AS avg_salary
FROM
  `bank-churn-441509.bank_churn.churn`
GROUP BY Exited;

/* Чи впливає стаж перебування в банку на рішення клієнта піти
SELECT
  COUNT(CustomerId) AS quantity_churnedClients,
  Tenure
FROM
  `bank-churn-441509.bank_churn.churn`
WHERE
  Exited = 1
GROUP BY Tenure
ORDER BY Tenure DESC;
 

/*Співвідношення втрачених клієнтів до загальної кількості в залежності від того
  скільки продуктів банку вони використовували      
SELECT NumOfProducts,
  COUNT(CASE WHEN Exited = 1 THEN CustomerId END) AS churnedClient,
  COUNT(CASE WHEN Exited = 0 THEN CustomerId END) AS non_churnedClient,
  ROUND(COUNT(CASE WHEN Exited = 1 THEN CustomerId END)/ COUNT(CustomerId) * 100, 1)AS percent_churnedClient
FROM
  `bank-churn-441509.bank_churn.churn`
GROUP BY NumOfProducts;


  
