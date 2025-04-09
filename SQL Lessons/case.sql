-- -- CASE is very close to If
-- SELECT
--     CASE
--         WHEN column_name = 'Value1' THEN 'Description for Value 1'
--         WHEN column_name = 'Value2' THEN 'Something 2'
--         ELSE 'Other'
--     END as column_description
-- FROM
--     table_name;

SELECT
    CASE
        WHEN job_location = 'Anywhere' THEN 'Remote'
        WHEN job_location = 'New York' Then 'Local'
        ELSE 'Onsite'
    END as location_category,
    COUNT(job_id) as number_of_jobs
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
GROUP BY location_category;

-- PP1
00