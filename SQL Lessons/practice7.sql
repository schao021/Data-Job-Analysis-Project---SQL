-- Build a CTE that collects the number of job_postings per skill
WITH skills_job_count AS (
    SELECT
    skills_job_dim.skill_id,
    COUNT(skills_job_dim.skill_id) AS job_count_temp
    FROM skills_job_dim
    INNER JOIN job_postings_fact ON skills_job_dim.job_id = job_postings_fact.job_id
    WHERE job_postings_fact.job_work_from_home = TRUE
    AND job_title_short = 'Data Analyst'
    GROUP BY(skills_job_dim.skill_id)
)
SELECT
skills_dim.skills,
skills_job_count.job_count_temp
FROM skills_job_count
INNER JOIN skills_dim ON skills_dim.skill_id = skills_job_count.skill_id
ORDER BY job_count_temp DESC
LIMIT 5