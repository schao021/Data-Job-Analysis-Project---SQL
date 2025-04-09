-- -- Different from join, join whats to combine table
-- -- Union combines 2 or more select statements
-- -- They need to have same amount of columns and data type must match, gets rid off duplicate

-- -- Get jobs and companies from January
-- SELECT
--     job_title_short,
--     company_id,
--     job_location
-- FROM jan_2023

-- UNION

-- SELECT
--     job_title_short,
--     company_id,
--     job_location
-- FROM feb_2023

-- UNION

-- SELECT
--     job_title_short,
--     company_id,
--     job_location
-- FROM march_2023

-- UNION ALL includes duplicates, mostly use UNION ALL because we want all the data back

SELECT
    job_title_short,
    company_id,
    job_location
FROM jan_2023

UNION ALL

SELECT
    job_title_short,
    company_id,
    job_location
FROM feb_2023

UNION ALL

SELECT
    job_title_short,
    company_id,
    job_location
FROM march_2023