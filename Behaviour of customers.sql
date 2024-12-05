-- 5 valuable customers
SELECT
  CustomerID,
  ROUND(Balance) AS balance
FROM
  `bank-churn-441509.bank_churn.churn`
WHERE
  NumOfProducts = 4 AND IsActiveMember= 1
 GROUP BY
  CustomerID, Balance
ORDER BY Balance DESC
LIMIT 5;

-- the influence of the balance on Exited customers 
SELECT Exited,
  COUNT(CustomerId) AS quantity_customers,
  ROUND(MIN(Balance)) AS min_balance,
  ROUND(MAX(Balance)) AS max_balance,
  ROUND(AVG(Balance)) AS avg_balance
FROM
  `bank-churn-441509.bank_churn.churn`
WHERE
  Balance > 0
GROUP BY
  Exited;

-- the tenure of exited customers
SELECT
  COUNT(CustomerId) AS quantity_ExitedCustomers,
  Tenure
FROM
  `bank-churn-441509.bank_churn.churn`
WHERE
  Exited = 1
GROUP BY Tenure
ORDER BY COUNT(CustomerId) DESC;
 
