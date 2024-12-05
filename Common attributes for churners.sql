-- Кількість та частка задоволених/задоволених кліентів
SELECT
  COUNT(CASE WHEN Exited = 1 THEN CustomerId END) AS exited,
  COUNT(CASE WHEN Exited = 0 THEN CustomerId END) AS non_exited,
  ROUND(COUNT(CASE WHEN Exited = 1 THEN CustomerId END)/ COUNT(*)*100, 2) AS density_exited,
  ROUND(COUNT(CASE WHEN Exited = 0 THEN CustomerId END  )/ COUNT(*)*100, 2) AS density_non_exited
FROM
  `bank-churn-441509.bank_churn.churn`;

/* Вплив середньої зарплатні та середнього строку перебування в банку
   на клієнта */
SELECT
  Exited,
  ROUND(AVG(Tenure), 1) AS avg_tenure,
  ROUND(AVG(EstimatedSalary)) AS avg_salary
FROM
  `bank-churn-441509.bank_churn.churn`
GROUP BY Exited;

/* Задоволеність клієнтів в залежності від стажу перебування в банку
SELECT
  COUNT(CustomerId) AS quantity_ExitedCustomers,
  Tenure
FROM
  `bank-churn-441509.bank_churn.churn`
WHERE
  Exited = 1
GROUP BY Tenure
ORDER BY COUNT(CustomerId) DESC;


/*Співвідношення незадоволених клієнтів к задоволеним в залежності від того
  скільки продуктів банку вони використовували      
SELECT NumOfProducts,
  COUNT(CASE WHEN Exited = 1 THEN CustomerId END) AS exited,
  COUNT(CASE WHEN Exited = 0 THEN CustomerId END) AS non_exited,
  ROUND(COUNT(CASE WHEN Exited = 0 THEN CustomerId END)
      / COUNT(CASE WHEN Exited = 1 THEN CustomerId END), 1) AS ratio_non_exitedPerexited
FROM
  `bank-churn-441509.bank_churn.churn`
GROUP BY NumOfProducts;


  
