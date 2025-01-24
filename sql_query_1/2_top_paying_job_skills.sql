--This analysis helps to highlight the skills that are most 
--commonly associated with the highest-paying Data Analyst roles. 
--By focusing on these jobs, we gain valuable insights into 
--the skills that are in demand for well-compensated positions, 
--aiding job seekers in aligning their skillset with high-paying opportunities.



WITH top_paying_jobs_NY AS (
    SELECT
        job_id,
        job_title,
        salary_year_avg,
        job_location,

        name AS company_name
    FROM
        job_postings_fact
    LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
    WHERE
        job_title_short = 'Data Analyst' AND
        job_location = 'New York' AND
        salary_year_avg IS NOT NULL
    ORDER BY
        salary_year_avg DESC
    LIMIT 10
)

SELECT
    top_paying_jobs_NY.job_title,
    skills_dim.skills AS skill,
    top_paying_jobs_NY.salary_year_avg,
    top_paying_jobs_NY.job_location
FROM
    top_paying_jobs_NY
INNER JOIN skills_job_dim ON top_paying_jobs_NY.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY
    skill DESC;
