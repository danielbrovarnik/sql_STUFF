SELECT 
skills,
Round(avg(salary_year_avg), 0) as Avg_salary
from job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_location = 'New York' 
and salary_year_avg is not null
GROUP BY skills
order by Avg_salary DESC
Limit 25


/* 
DevOps and Big Data skills are highly valued: Jenkins, Scala, Spark, Java, Kafka, and Snowflake command the highest average salaries, indicating strong demand in the New York tech market.
Cloud is king, but niche skills pay well: While AWS is prevalent, specialized skills like DynamoDB and cloud-adjacent skills like Jenkins are also lucrative.
Fundamentals are still important, but specialization pays off: Python and SQL are essential, but focusing on less common, higher-demand skills can significantly boost earning potential.

[
  {
    "skills": "jenkins",
    "avg_salary": "244500"
  },
  {
    "skills": "scala",
    "avg_salary": "201334"
  },
  {
    "skills": "spark",
    "avg_salary": "201334"
  },
  {
    "skills": "java",
    "avg_salary": "201334"
  },
  {
    "skills": "kafka",
    "avg_salary": "201334"
  },
  {
    "skills": "snowflake",
    "avg_salary": "201334"
  },
  {
    "skills": "aws",
    "avg_salary": "201334"
  },
  {
    "skills": "dynamodb",
    "avg_salary": "173500"
  },
  {
    "skills": "shell",
    "avg_salary": "172557"
  },
  {
    "skills": "azure",
    "avg_salary": "172557"
  },
  {
    "skills": "redshift",
    "avg_salary": "172557"
  },
  {
    "skills": "mongo",
    "avg_salary": "172086"
  },
  {
    "skills": "cassandra",
    "avg_salary": "172086"
  },
  {
    "skills": "mysql",
    "avg_salary": "138534"
  },
  {
    "skills": "hadoop",
    "avg_salary": "135500"
  },
  {
    "skills": "nosql",
    "avg_salary": "133534"
  },
  {
    "skills": "python",
    "avg_salary": "123381"
  },
  {
    "skills": "cognos",
    "avg_salary": "120000"
  },
  {
    "skills": "sql",
    "avg_salary": "110651"
  },
  {
    "skills": "visual basic",
    "avg_salary": "109943"
  },
  {
    "skills": "oracle",
    "avg_salary": "109943"
  },
  {
    "skills": "alteryx",
    "avg_salary": "104167"
  },
  {
    "skills": "unify",
    "avg_salary": "100000"
  },
  {
    "skills": "excel",
    "avg_salary": "91229"
  },
  {
    "skills": "sql server",
    "avg_salary": "89830"
  }
]