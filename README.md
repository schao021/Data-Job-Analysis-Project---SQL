
# Introduction
A deep dive into the data job market in 2023. Focusing on data analyst roles, this project explores the high demand skills and top-paying jobs!
SQL queries> Check them out here: [project_sql folder](/project_sql/)
# Background
This project follows along with a SQL tutorial by Luke Barousse. I used it as a hands-on way to strengthen my understanding of SQL fundamentals, including data querying, filtering, aggregation, and joins. The goal was to build a strong foundation by applying what I learned directly to practical examples.
All data hails from [SQL Course](https://lukebarousse.com/sql).

### The questions I wanted to answer through my SQL queries were:
1. What are the top paying data analyst jobs?
2. What skills are required for these top paying jobs?
3. What skills are most in demand for data analysts?
4. Which skills are associated with higher salaries?
5. What are the most optimal skills to learn?
   
# Tools I Used
For my deep dive into data analyst job market, I used the power of several tools:
-**SQL**: The backbone of my analysis, allowing me to query the database for critical insights.
-PostgresSQL: The chosen database management system
- Visual Studio Code: My main editor for database managements and executing SQL queries.
# The Analysis

### 1. Top Paying Data Analyst Jobs
To identify the highest paying roles, I filtered data analyst positions by average yearly salary and location, mainly remote jobs. This query highlights the high paying opportunities in the field.
``` sql
SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name AS company_name
FROM job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE job_title_short = 'Data Analyst' AND 
salary_year_avg IS NOT NULL AND
job_location = 'Anywhere'
ORDER BY salary_year_avg DESC
LIMIT 10
```

# What I learned
Through this tutorial, I learned how to write and structure SQL queries using SELECT, FROM, and WHERE statements. I practiced filtering data, applying aggregate functions like COUNT, SUM, and AVG, and using GROUP BY and HAVING to summarize results. I also got hands-on experience with joining tables using INNER JOIN and LEFT JOIN, sorting results with ORDER BY, and writing subqueries to make my code more efficient and readable.
