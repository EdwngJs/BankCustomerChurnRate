-- The following queries are executed on a fictional dataset from Kaggle for practice purposes.

--Looking up dataset
SELECT * FROM Customer_Churn_Records;


-- Churn Rates per country
SELECT Geography, Count(CustomerID) AS TotalCustomers, SUM(Exited) AS CustomersOut, (SUM(Exited)/COUNT(CustomerId))*100 AS '%Churn_rate' FROM Customer_Churn_Records
WHERE Geography IS NOT NULL
GROUP BY Geography;

-- Churn Rates per point earned
SELECT  
	CASE
		WHEN point_earned BETWEEN 0 AND 200 THEN '0-200'
		WHEN point_earned BETWEEN 201 AND 400 THEN '201-400'
		WHEN point_earned BETWEEN 401 AND 600 THEN '401-600'
		WHEN point_earned BETWEEN 601 AND 800 THEN '601-800'
		WHEN point_earned BETWEEN 801 AND 1000 THEN '801-1000'
	END AS Points_range, Count(CustomerID) AS TotalCustomers, SUM(Exited) AS CustomersOut, (SUM(Exited)/COUNT(CustomerId))*100 AS '%Churn_rate'
FROM Customer_Churn_Records
WHERE Geography IS NOT NULL
GROUP BY 	CASE
		WHEN point_earned BETWEEN 0 AND 200 THEN '0-200'
		WHEN point_earned BETWEEN 201 AND 400 THEN '201-400'
		WHEN point_earned BETWEEN 401 AND 600 THEN '401-600'
		WHEN point_earned BETWEEN 601 AND 800 THEN '601-800'
		WHEN point_earned BETWEEN 801 AND 1000 THEN '801-1000'
		END
ORDER BY 4 DESC;


-- Churn rates by age
SELECT  
	CASE
		WHEN Age BETWEEN 18 AND 25 THEN '18-25'
		WHEN Age BETWEEN 26 AND 35 THEN '26-35'
		WHEN Age BETWEEN 36 AND 45 THEN '36-45'
		WHEN Age BETWEEN 46 AND 55 THEN '46-55'
		WHEN Age BETWEEN 56 AND 65 THEN '56-65'
		ELSE 'Above 66'
	END AS Age_range, Count(CustomerID) AS TotalCustomers, SUM(Exited) AS CustomersOut, (SUM(Exited)/COUNT(CustomerId))*100 AS '%Churn_rate'
FROM Customer_Churn_Records
WHERE Geography IS NOT NULL
GROUP BY	CASE
		WHEN Age BETWEEN 18 AND 25 THEN '18-25'
		WHEN Age BETWEEN 26 AND 35 THEN '26-35'
		WHEN Age BETWEEN 36 AND 45 THEN '36-45'
		WHEN Age BETWEEN 46 AND 55 THEN '46-55'
		WHEN Age BETWEEN 56 AND 65 THEN '56-65'
		ELSE 'Above 66'
	END
ORDER BY 4 DESC;

-- Churn Rates per credit score
SELECT  
	CASE
		WHEN CreditScore BETWEEN 0 AND 200 THEN '0-200'
		WHEN CreditScore BETWEEN 201 AND 400 THEN '201-400'
		WHEN CreditScore BETWEEN 401 AND 600 THEN '401-600'
		WHEN CreditScore BETWEEN 601 AND 800 THEN '601-800'
		WHEN CreditScore BETWEEN 801 AND 1000 THEN '801-1000'
	END AS Credit_range, Count(CustomerID) AS TotalCustomers, SUM(Exited) AS CustomersOut, (SUM(Exited)/COUNT(CustomerId))*100 AS '%Churn_rate'
FROM Customer_Churn_Records
WHERE Geography IS NOT NULL
GROUP BY 	CASE
		WHEN CreditScore BETWEEN 0 AND 200 THEN '0-200'
		WHEN CreditScore BETWEEN 201 AND 400 THEN '201-400'
		WHEN CreditScore BETWEEN 401 AND 600 THEN '401-600'
		WHEN CreditScore BETWEEN 601 AND 800 THEN '601-800'
		WHEN CreditScore BETWEEN 801 AND 1000 THEN '801-1000'
		END
ORDER BY 4 DESC;