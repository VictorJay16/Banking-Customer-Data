SELECT *
FROM Customer_Banking_Data;


-- 1. Select all customers from France who have exited.

SELECT *
FROM Customer_Banking_Data
WHERE Geography = 'France' AND Exited = 0;

-- 2. Find the average CreditScore of active members.

SELECT ROUND(AVG(CreditScore),2) AS Avg_CredScore_Ac_members
FROM Customer_Banking_Data
WHERE IsActiveMember = 1;

-- 3. List customers with a balance greater than $100,000 and fewer than two products.

SELECT CustomerId, Surname, Balance, NumOfProducts
FROM Customer_Banking_Data
WHERE Balance > 100000 AND NumOfProducts < 2;

-- 4. Count the number of male and female customers.

SELECT Gender,COUNT(*) AS Gender_Count
FROM Customer_Banking_Data
GROUP BY Gender;

-- 5. Get the top 5 customers with the highest estimated salary.

SELECT CustomerId, Surname, EstimatedSalary
FROM Customer_Banking_Data
ORDER BY EstimatedSalary DESC
LIMIT 5;

-- 6. Find the percentage of customers who have exited.

SELECT ROUND((COUNT(*) * 100 / 
(SELECT COUNT(*)
FROM Customer_Banking_Data)),2) AS ExitPercentage 
FROM Customer_Banking_Data 
WHERE Exited = 1;

-- 7. List customers who are over 50 years old and have a credit score below 600.

SELECT CustomerId, Surname, Age, CreditScore
FROM Customer_Banking_Data
WHERE Age > 50 AND CreditScore < 600;

-- 8. Calculate the average balance of customers in each country.

SELECT Geography, ROUND(AVG(Balance),2) AS Avg_Balance
FROM Customer_Banking_Data
GROUP BY Geography;

-- 9. Retrieve customers with both a credit card and more than $50,000 in balance.

SELECT CustomerId, Surname, HasCrCard, Balance
from Customer_Banking_Data
WHERE HasCrCard = 1 AND Balance > 50000;

-- 10. Identify customers who have been with the bank for over 5 years but are inactive.

SELECT CustomerId, Surname, Tenure
FROM Customer_Banking_Data
WHERE Tenure > 5 AND IsActiveMember = 0;

-- 11. Identify the top 3 countries with the highest average balance among customers who have exited.

SELECT Geography, ROUND(AVG(Balance),2) AS Highest_Avg_Balance
FROM Customer_Banking_Data
GROUP BY Geography
ORDER BY Highest_Avg_Balance DESC
LIMIT 3;

-- 12. Find the average CreditScore for each age group (grouped in 10-year intervals).

SELECT 
    FLOOR(Age / 10) * 10 AS AgeGroup,
    AVG(CreditScore) AS AvgCreditScore
FROM Customer_Banking_Data
GROUP BY AgeGroup
ORDER BY AgeGroup;

-- 13. List customers who have the highest balance in each country.

SELECT CustomerId, Surname, Balance, Geography
FROM Customer_Banking_Data
WHERE Balance > (SELECT AVG(Balance)
					FROM Customer_Banking_Data)
ORDER BY Balance DESC;
                   
-- 14. Calculate the retention rate (percentage of non-exited customers) by country and gender.

SELECT Geography, Gender,
    ROUND((COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (PARTITION BY Geography)),2) AS RetentionRate
FROM Customer_Banking_Data
WHERE Exited = 0
GROUP BY Geography, Gender;

-- 15. List customers with the highest credit score within each gender and country who are also active members.

SELECT CustomerId, Surname, Geography, Gender, CreditScore, IsActiveMember
FROM Customer_Banking_Data
WHERE IsActiveMember = 1 
	AND CreditScore > (SELECT AVG(CreditScore)
						FROM Customer_Banking_Data);


SELECT *
FROM Customer_Banking_Data;









