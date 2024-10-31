# Customer Banking Data


## Table of Contents

- [Project Overview](#project-overview)
- [Data Sources](#data-sources)
- [Tools](#tools)
- [Data Cleaning And Preparation](#data-cleaning-and-preparation)
- [Exploratory Data Analysis](#exploratory-data-analysis)
- [Data Analysis](#data-analysis)
- [Results](#results)
- [Recommendations](#recommendations)
- [References](#references)


### Project Overview

- This data analysis project aims to provide insights into the customer performance of a banking company over the past years.
- By analyzing various aspects of the customer data, we seek to identify trends, make data-driven recommendations, and gain a deeper understanding of customers' performance.



![Screenshot 2024-10-28 154231](https://github.com/user-attachments/assets/a43390b2-7b83-47ff-8d04-3d7df8693199)




### Data Sources

Customer Banking Data: The primary dataset used for this analysis is the "churn_modelling_data.csv" file, containing detailed information about each customer in the banking company.

### Tools

- SQL Server - Data Analysis
- Power BI - Creating reports task



### Data Cleaning And Preparation

In the initial data preparation phase, we performed the following
1. Data loading and inspection.
2. Data cleaning and formatting.


### Exploratory Data Analysis

EDA Involvead exploring the customer banking data to answer Key questions, such as

1. Select all customers from France who have exited.
2. Find the average CreditScore of active members.
3. List customers with a balance greater than $100,000 and fewer than two products.
4. Count the number of male and female customers.
5. Get the top 5 customers with the highest estimated salary.
6. Find the percentage of customers who have exited.
7. List customers who are over 50 years old and have a credit score below 600.
8. Calculate the average balance of customers in each country.
9. Retrieve customers with both a credit card and more than $50,000 in balance.
10. Identify customers who have been with the bank for over 5 years but are inactive.
11. Identify the top 3 countries with the highest average balance among customers who have exited.
12. Find the average CreditScore for each age group (grouped in 10-year intervals).
13. List customers who have the highest balance in each country.
14. Calculate the retention rate (percentage of non-exited customers) by country and gender.
5. List customers with the highest credit score within each gender and country who are also active members.

### Data Analysis

Includes some interesting code/features worked with

```sql
SELECT * FROM table
WHERE cond = 2;
```

### Results

The analysis results are summarized as follows:
1. There are 4,204 exited customers from France, highlighting this as a key area for retention.
2. Active members have an average credit score of 652.93, suggesting room for improvement.
3. A segment of 3,157 customers holds over $100,000 in balance but uses fewer than two banking products, indicating cross-selling opportunities.
4. The gender ratio is fairly balanced, with a slight majority of male customers.
5. The five customers with the highest estimated salaries are led by Lucciano, with an income of $199,992.48, followed closely by Dyer, Gannon, Moss, and Adams.
6. Currently, 20.37% of the customer base has exited, with Germany showing the highest average balance among exited customers at $119,730.12.


### Recommendations
Based on the analysis, we recommend the following actions:

- To reduce churn, prioritize retention efforts in France, where many customers have exited, and tailor loyalty incentives for this group.

- Focus on engaging high-balance customers and inactive members with targeted offers for premium services and additional products, especially for those with long tenure.

- Strengthen gender-based marketing to cater to both male and female customers' financial needs, and promote credit-building resources for active members to boost loyalty.

- Implement targeted strategies by country, particularly in Germany, to address high balances among exited customers.

- Finally, leverage age-based patterns in credit scores to offer personalized financial guidance, especially to older customers with lower scores.



### References

1. SQL for Business by werty.
2. [Stack Overflow](https://stack.com)
