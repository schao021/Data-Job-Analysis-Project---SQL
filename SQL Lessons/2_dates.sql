-- SELECT 
--     '2023-2-21'::DATE,
--     '123'::INTEGER,
--     'true'::BOOLEAN,
--     '3.14'::REAL;
-- -- Use :: to convert datatypes
-- SELECT
--     job_title_short AS title,
--     job_location AS location,
--     job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST' AS date, -- We need to know the time zones and what to convert it to
--     EXTRACT(MONTH FROM job_posted_date) AS date_month,
--     -- job_posted_date::DATE AS date
-- FROM
--     job_postings_fact
-- LIMIT 10;

SELECT
    EXTRACT(MONTH FROM job_posted_date) AS date_month,
    COUNT(job_id) AS id
FROM
    job_postings_fact
WHERE job_title_short = 'Data Analyst'
GROUP BY date_month
ORDER BY id DESC;

