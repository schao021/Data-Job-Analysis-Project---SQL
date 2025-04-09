-- Find job postings from first quarter than have salary greater than 70k
SELECT
    quarter1_job_postings.job_title_short,
    quarter1_job_postings.job_location,
    quarter1_job_postings.job_via,
    quarter1_job_postings.job_posted_date
FROM (
    SELECT *
    FROM jan_2023
    UNION ALL
    SELECT *
    FROM feb_2023
    UNION ALL
    SELECT *
    FROM march_2023
) AS quarter1_job_postings
WHERE quarter1_job_postings.salary_year_avg > 70000