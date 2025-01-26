SELECT 
skills,
count(skills_job_dim.job_id) skill_demand
from job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_location = 'New York' and 
salary_year_avg > 100000
GROUP BY skills
order by skill_demand DESC
Limit 10

/*
This query gives you the top 10 in-demand skills for high-paying tech jobs (over $100,000 per year) in New York. Here are some insights you can glean from the results:

High Demand Skills:

SQL and Python are highly sought after: These two are at the top, indicating strong demand for data-related roles. This is not surprising given the increasing importance of data in today's economy.
Big Data is key: Kafka, Snowflake, Scala, and Spark all have significant demand. This suggests a strong need for professionals who can handle and analyze large datasets.
Cloud is important: AWS being in the top 10 shows the growing importance of cloud computing skills, particularly with Amazon Web Services.