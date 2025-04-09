-- Write a query to find the average salary for both yearly and hourly for job postings posted after June 1, 2023 group results by job_schedule_type
-- SELECT
--     job_schedule_type,
--     AVG(salary_year_avg),
--     AVG(salary_hour_avg)
-- FROM job_postings_fact
-- WHERE job_posted_date::DATE > '6-1-2023'
-- GROUP BY job_schedule_type;

-- Write query to count number of job_postings each month in 2023, adjusting time zone to new york and group by and order by month
-- SELECT
--     EXTRACT(MONTH FROM job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'America/New_York') AS date_month,
--     COUNT(job_id)
-- FROM job_postings_fact
-- GROUP BY date_month
-- ORDER BY date_month;

-- Write query finding companies that have posted jobs offering health insurance in 2nd quarter of 2023
-- SELECT
--     DISTINCT company.name
-- FROM job_postings_fact as job_postings
-- LEFT JOIN company_dim as company
-- ON company.company_id = job_postings.company_id
-- WHERE 
--     (job_health_insurance = TRUE) AND
--     (EXTRACT(QUARTER FROM job_postings.job_posted_date) = 2)
-- ORDER BY company.name;