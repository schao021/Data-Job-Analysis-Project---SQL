-- -- 1. Find query to find average yearly salary and hourly average posted after June 1, 2023
-- SELECT
-- job_schedule_type,
-- AVG(salary_year_avg) AS yearly_avg,
-- AVG(salary_hour_avg) AS hourly_avg
-- -- job_posted_date::DATE
-- FROM job_postings_fact
-- WHERE job_posted_date::DATE > '2023-6-1'
-- GROUP BY (job_schedule_type);

-- 2. Count number of job postings each month in 2023
SELECT
EXTRACT(MONTH FROM (job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'America/New_York')) AS month,
COUNT (*)
FROM job_postings_fact
WHERE EXTRACT(YEAR FROM (job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'America/New_York')) = 2023
GROUP BY month
ORDER BY month;