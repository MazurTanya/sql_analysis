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
