SELECT contract FROM first_project where churn = 'yes' and contract = 'Month-to-month';
select * from first_project;
SELECT COUNT(contract) FROM first_project WHERE LOWER(churn) = 'yes' AND LOWER(contract) = 'month-to-month';
1655

SELECT COUNT(contract) FROM first_project WHERE LOWER(churn) = 'no' AND LOWER(contract) = 'month-to-month';
2220

select DISTINCT contract, COUNT(contract) from first_project where LOWER(churn) = 'no' AND LOWER(contract) in ('month-to-month', 'One year', 'Two year') ;

SELECT contract, churn, COUNT(*) as total_customers
FROM first_project
GROUP BY contract, churn
ORDER BY contract;

SELECT gender, churn, COUNT(*) as total_customers
FROM first_project
GROUP BY gender, churn;

select churn, paymentmethod, contract, count(*) AS total_customer
from first_project
where LOWER(contract) = 'month-to-month' 
GROUP by churn, paymentmethod;

SELECT COUNT(*) FROM first_project WHERE TotalCharges = ' ' OR TotalCharges IS NULL;

SELECT churn, AVG(tenure) as average_months_stayed
FROM first_project
GROUP BY churn;

SELECT dependents, churn, COUNT(*) AS total_customer
FROM first_project
WHERE dependents IN ('No', 'Yes') 
GROUP BY churn, dependents;

select dependents, COUNT (dependents) from first_project
where dependents IN ('Yes', 'No')
GROUP by dependents;

SELECT internetservice, count (*), churn from first_project
GROUP by internetservice, churn;

select paperlessbilling, churn, COUNT(*) from first_project
GROUP by paperlessbilling, churn;

select paperlessbilling, count(*) from first_project
where paperlessbilling in ('Yes','No')
GROUP by paperlessbilling;


select multiplelines,churn, count(*) from first_project
where multiplelines in ('Yes','No','No phone service')
GROUP by multiplelines, churn;

select phoneservice,churn, count(*) from first_project
where phoneservice in ('Yes','No')
GROUP by phoneservice, churn;

select onlinesecurity,churn, count(*) from first_project
where onlinesecurity in ('Yes','No','No phone service')
GROUP by onlinesecurity, churn;

select onlinebackup,churn, count(*) from first_project
where onlinebackup in ('Yes','No','No phone service')
GROUP by onlinebackup, churn;

select deviceprotection,churn, count(*) from first_project
where deviceprotection in ('Yes','No','No phone service')
GROUP by deviceprotection, churn;

select techsupport,churn, count(*) from first_project
where techsupport in ('Yes','No','No phone service')
GROUP by techsupport, churn;

select streamingtv,churn, count(*) from first_project
where streamingtv in ('Yes','No','No phone service')
GROUP by streamingtv, churn;

select streamingmovies,churn, count(*) from first_project
where streamingmovies in ('Yes','No','No phone service')
GROUP by streamingmovies, churn;


SELECT 
    SeniorCitizen,
    Partner,
    Dependents,
    tenure,
    OnlineSecurity,
    OnlineBackup,
    DeviceProtection,
    TechSupport,
    InternetService,
    Contract,
    PaperlessBilling,
    PaymentMethod,
    MonthlyCharges,
    TotalCharges,
    Churn
FROM first_project
WHERE TotalCharges != ' ' AND TotalCharges IS NOT NULL;
