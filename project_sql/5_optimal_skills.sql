-- Optimal jobs to learn are high demand and high paying

WITH top_paying_skills AS (
SELECT
skills_dim.skill_id,
skills_dim.skills,
ROUND(AVG(salary_year_avg),0) AS average_yearly_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_title_short = 'Data Analyst' AND
job_work_from_home = TRUE AND
salary_year_avg IS NOT NULL
GROUP BY(skills_dim.skill_id)
)
,
top_demand_skills AS (
SELECT 
skills_dim.skill_id,
skills_dim.skills,
COUNT(skills_job_dim.job_id) as skills_count
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_title_short = 'Data Analyst' AND
job_work_from_home = TRUE AND
salary_year_avg IS NOT NULL
GROUP BY (skills_dim.skill_id)
)

SELECT
    top_demand_skills.skill_id,
    top_demand_skills.skills,
    skills_count,
    average_yearly_salary
FROM top_demand_skills
INNER JOIN top_paying_skills ON top_paying_skills.skill_id = top_demand_skills.skill_id
ORDER BY
    skills_count DESC,
    average_yearly_salary DESC
LIMIT 25
