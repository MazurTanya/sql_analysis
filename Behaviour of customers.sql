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

-- age_group of exited customers
WITH by_age AS (
    SELECT Exited, 
    COUNT(CustomerId) AS number_customers,
    CASE
      WHEN Age<= 30 THEN "age of 30"
      WHEN Age > 30 AND Age <= 40 THEN "age 31-40"
      WHEN Age > 40 AND Age <= 50 THEN "age 41-50"
      WHEN Age > 50 AND Age <= 60 THEN "age 51-60"
      WHEN Age > 60 AND Age <= 70 THEN "age 61-70"
      WHEN Age > 70 AND Age <= 80 THEN "age 71-80"
      ELSE "after 80"
  END
    AS age_group
  FROM `bank-churn-441509.bank_churn.churn`
  GROUP BY Exited,
    age_group)
SELECT
  age_group,
  ROUND(MAX(CASE WHEN Exited = 1 THEN number_customers END), 2)*100/ 
    (SELECT SUM(number_customers) FROM by_age) AS excited,
  ROUND(MAX(CASE WHEN Exited = 0 THEN number_customers END), 2)*100/
    (SELECT SUM(number_customers) FROM by_age) AS non_excited
  FROM by_age
  GROUP BY age_group;
 
