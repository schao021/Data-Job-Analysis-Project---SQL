SELECT
skills_dim.skills,
top_skills.total_count
FROM (
    SELECT
    skill_id, 
    COUNT(skill_id) AS total_count
    FROM skills_job_dim
    GROUP BY(skill_id)
    LIMIT 5
) AS top_skills
JOIN skills_dim ON top_skills.skill_id = skills_dim.skill_id