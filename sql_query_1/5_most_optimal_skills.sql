SELECT
skills_dim.skills,
round(avg(job_postings_fact.salary_year_avg),0) as Avg_salary,
count(skills_dim.skills) as skill_demand_count
from job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
where  job_postings_fact.salary_year_avg is not null
GROUP BY skills_dim.skill_id, skills_dim.skills
having count(skills_dim.skills) > 20
ORDER BY avg_salary DESC


/* Big Data & Cloud reign supreme: Scala, Kafka, Spark, Hadoop, AWS, and Azure offer high demand and excellent salaries.
Deep Learning is lucrative: TensorFlow, PyTorch, and scikit-learn are highly valued for their specialized applications.
Niche skills = higher pay: Consider graph databases (Neo4j) or NLP (Hugging Face, NLTK) for a competitive edge.

[
  {
    "skills": "mongo",
    "avg_salary": "170715",
    "skill_demand_count": "262"
  },
  {
    "skills": "node",
    "avg_salary": "154408",
    "skill_demand_count": "65"
  },
  {
    "skills": "cassandra",
    "avg_salary": "154124",
    "skill_demand_count": "530"
  },
  {
    "skills": "watson",
    "avg_salary": "152844",
    "skill_demand_count": "31"
  },
  {
    "skills": "rshiny",
    "avg_salary": "151611",
    "skill_demand_count": "29"
  },
  {
    "skills": "hugging face",
    "avg_salary": "148648",
    "skill_demand_count": "37"
  },
  {
    "skills": "neo4j",
    "avg_salary": "147708",
    "skill_demand_count": "123"
  },
  {
    "skills": "scala",
    "avg_salary": "145120",
    "skill_demand_count": "1912"
  },
  {
    "skills": "kafka",
    "avg_salary": "144754",
    "skill_demand_count": "1642"
  },
  {
    "skills": "pytorch",
    "avg_salary": "144470",
    "skill_demand_count": "1081"
  },
  {
    "skills": "mxnet",
    "avg_salary": "143695",
    "skill_demand_count": "50"
  },
  {
    "skills": "theano",
    "avg_salary": "143404",
    "skill_demand_count": "37"
  },
  {
    "skills": "shell",
    "avg_salary": "143370",
    "skill_demand_count": "731"
  },
  {
    "skills": "golang",
    "avg_salary": "143139",
    "skill_demand_count": "109"
  },
  {
    "skills": "airflow",
    "avg_salary": "142386",
    "skill_demand_count": "1506"
  },
  {
    "skills": "tensorflow",
    "avg_salary": "142370",
    "skill_demand_count": "1225"
  },
  {
    "skills": "spark",
    "avg_salary": "141734",
    "skill_demand_count": "4025"
  },
  {
    "skills": "redshift",
    "avg_salary": "140792",
    "skill_demand_count": "1520"
  },
  {
    "skills": "airtable",
    "avg_salary": "140615",
    "skill_demand_count": "22"
  },
  {
    "skills": "scikit-learn",
    "avg_salary": "139603",
    "skill_demand_count": "688"
  },
  {
    "skills": "dynamodb",
    "avg_salary": "139548",
    "skill_demand_count": "220"
  },
  {
    "skills": "rust",
    "avg_salary": "139349",
    "skill_demand_count": "71"
  },
  {
    "skills": "redis",
    "avg_salary": "139213",
    "skill_demand_count": "118"
  },
  {
    "skills": "atlassian",
    "avg_salary": "138651",
    "skill_demand_count": "101"
  },
  {
    "skills": "hadoop",
    "avg_salary": "138574",
    "skill_demand_count": "2272"
  },
  {
    "skills": "snowflake",
    "avg_salary": "137960",
    "skill_demand_count": "2458"
  },
  {
    "skills": "kubernetes",
    "avg_salary": "137949",
    "skill_demand_count": "923"
  },
  {
    "skills": "pandas",
    "avg_salary": "137518",
    "skill_demand_count": "1049"
  },
  {
    "skills": "nosql",
    "avg_salary": "137039",
    "skill_demand_count": "1686"
  },
  {
    "skills": "numpy",
    "avg_salary": "136809",
    "skill_demand_count": "664"
  },
  {
    "skills": "fastapi",
    "avg_salary": "136574",
    "skill_demand_count": "48"
  },
  {
    "skills": "aws",
    "avg_salary": "136481",
    "skill_demand_count": "4952"
  },
  {
    "skills": "java",
    "avg_salary": "136210",
    "skill_demand_count": "2760"
  },
  {
    "skills": "keras",
    "avg_salary": "136026",
    "skill_demand_count": "409"
  },
  {
    "skills": "c",
    "avg_salary": "135987",
    "skill_demand_count": "599"
  },
  {
    "skills": "splunk",
    "avg_salary": "135746",
    "skill_demand_count": "160"
  },
  {
    "skills": "kotlin",
    "avg_salary": "135639",
    "skill_demand_count": "49"
  },
  {
    "skills": "seaborn",
    "avg_salary": "135501",
    "skill_demand_count": "151"
  },
  {
    "skills": "mysql",
    "avg_salary": "135432",
    "skill_demand_count": "912"
  },
  {
    "skills": "pyspark",
    "avg_salary": "135011",
    "skill_demand_count": "880"
  },
  {
    "skills": "perl",
    "avg_salary": "134374",
    "skill_demand_count": "153"
  },
  {
    "skills": "jupyter",
    "avg_salary": "133829",
    "skill_demand_count": "354"
  },
  {
    "skills": "c++",
    "avg_salary": "133733",
    "skill_demand_count": "750"
  },
  {
    "skills": "bigquery",
    "avg_salary": "133649",
    "skill_demand_count": "782"
  },
  {
    "skills": "no-sql",
    "avg_salary": "133556",
    "skill_demand_count": "92"
  },
  {
    "skills": "terraform",
    "avg_salary": "133161",
    "skill_demand_count": "467"
  },
  {
    "skills": "elasticsearch",
    "avg_salary": "132742",
    "skill_demand_count": "298"
  },
  {
    "skills": "asana",
    "avg_salary": "132697",
    "skill_demand_count": "31"
  },
  {
    "skills": "matplotlib",
    "avg_salary": "132508",
    "skill_demand_count": "372"
  },
  {
    "skills": "python",
    "avg_salary": "132440",
    "skill_demand_count": "12883"
  },
  {
    "skills": "datarobot",
    "avg_salary": "132211",
    "skill_demand_count": "38"
  },
  {
    "skills": "typescript",
    "avg_salary": "132149",
    "skill_demand_count": "118"
  },
  {
    "skills": "docker",
    "avg_salary": "132040",
    "skill_demand_count": "1112"
  },
  {
    "skills": "flask",
    "avg_salary": "131959",
    "skill_demand_count": "131"
  },
  {
    "skills": "couchbase",
    "avg_salary": "131959",
    "skill_demand_count": "27"
  },
  {
    "skills": "gcp",
    "avg_salary": "131738",
    "skill_demand_count": "1252"
  },
  {
    "skills": "go",
    "avg_salary": "131689",
    "skill_demand_count": "1394"
  },
  {
    "skills": "plotly",
    "avg_salary": "131610",
    "skill_demand_count": "167"
  },
  {
    "skills": "databricks",
    "avg_salary": "131525",
    "skill_demand_count": "1521"
  },
  {
    "skills": "aurora",
    "avg_salary": "131308",
    "skill_demand_count": "128"
  },
  {
    "skills": "mongodb",
    "avg_salary": "131207",
    "skill_demand_count": "487"
  },
  {
    "skills": "mongodb",
    "avg_salary": "131207",
    "skill_demand_count": "487"
  },
  {
    "skills": "express",
    "avg_salary": "131088",
    "skill_demand_count": "334"
  },
  {
    "skills": "ruby",
    "avg_salary": "130712",
    "skill_demand_count": "135"
  },
  {
    "skills": "ruby",
    "avg_salary": "130712",
    "skill_demand_count": "135"
  },
  {
    "skills": "azure",
    "avg_salary": "130433",
    "skill_demand_count": "3480"
  },
  {
    "skills": "gitlab",
    "avg_salary": "130257",
    "skill_demand_count": "194"
  },
  {
    "skills": "gdpr",
    "avg_salary": "130194",
    "skill_demand_count": "152"
  },
  {
    "skills": "vue",
    "avg_salary": "129863",
    "skill_demand_count": "23"
  },
  {
    "skills": "nltk",
    "avg_salary": "129738",
    "skill_demand_count": "88"
  },
  {
    "skills": "svn",
    "avg_salary": "129287",
    "skill_demand_count": "27"
  },
  {
    "skills": "tidyverse",
    "avg_salary": "129103",
    "skill_demand_count": "55"
  },
  {
    "skills": "looker",
    "avg_salary": "129006",
    "skill_demand_count": "918"
  },
  {
    "skills": "jenkins",
    "avg_salary": "128872",
    "skill_demand_count": "521"
  },
  {
    "skills": "graphql",
    "avg_salary": "128659",
    "skill_demand_count": "66"
  },
  {
    "skills": "linux",
    "avg_salary": "128614",
    "skill_demand_count": "691"
  },
  {
    "skills": "django",
    "avg_salary": "128528",
    "skill_demand_count": "103"
  },
  {
    "skills": "zoom",
    "avg_salary": "128427",
    "skill_demand_count": "78"
  },
  {
    "skills": "julia",
    "avg_salary": "128319",
    "skill_demand_count": "104"
  },
  {
    "skills": "git",
    "avg_salary": "128316",
    "skill_demand_count": "1358"
  },
  {
    "skills": "ibm cloud",
    "avg_salary": "127753",
    "skill_demand_count": "70"
  },
  {
    "skills": "r",
    "avg_salary": "127115",
    "skill_demand_count": "5088"
  },
  {
    "skills": "opencv",
    "avg_salary": "127034",
    "skill_demand_count": "81"
  },
  {
    "skills": "notion",
    "avg_salary": "127007",
    "skill_demand_count": "31"
  },
  {
    "skills": "ggplot2",
    "avg_salary": "126630",
    "skill_demand_count": "104"
  },
  {
    "skills": "unity",
    "avg_salary": "126608",
    "skill_demand_count": "45"
  },
  {
    "skills": "postgresql",
    "avg_salary": "126401",
    "skill_demand_count": "560"
  },
  {
    "skills": "bitbucket",
    "avg_salary": "126316",
    "skill_demand_count": "110"
  },
  {
    "skills": "chef",
    "avg_salary": "126314",
    "skill_demand_count": "56"
  },
  {
    "skills": "node.js",
    "avg_salary": "126156",
    "skill_demand_count": "85"
  },
  {
    "skills": "centos",
    "avg_salary": "125953",
    "skill_demand_count": "24"
  },
  {
    "skills": "angular",
    "avg_salary": "125600",
    "skill_demand_count": "112"
  },
  {
    "skills": "ansible",
    "avg_salary": "124991",
    "skill_demand_count": "129"
  },
  {
    "skills": "sqlite",
    "avg_salary": "124976",
    "skill_demand_count": "21"
  },
  {
    "skills": "sql",
    "avg_salary": "124935",
    "skill_demand_count": "12974"
  },
  {
    "skills": "github",
    "avg_salary": "124816",
    "skill_demand_count": "658"
  },
  {
    "skills": "vmware",
    "avg_salary": "124486",
    "skill_demand_count": "22"
  },
  {
    "skills": "jira",
    "avg_salary": "124154",
    "skill_demand_count": "646"
  },
  {
    "skills": "php",
    "avg_salary": "123898",
    "skill_demand_count": "113"
  },
  {
    "skills": "bash",
    "avg_salary": "123893",
    "skill_demand_count": "230"
  },
  {
    "skills": "react",
    "avg_salary": "123799",
    "skill_demand_count": "197"
  },
  {
    "skills": "confluence",
    "avg_salary": "123223",
    "skill_demand_count": "260"
  },
  {
    "skills": "phoenix",
    "avg_salary": "122996",
    "skill_demand_count": "138"
  },
  {
    "skills": "puppet",
    "avg_salary": "122649",
    "skill_demand_count": "34"
  },
  {
    "skills": "c#",
    "avg_salary": "122307",
    "skill_demand_count": "496"
  },
  {
    "skills": "unix",
    "avg_salary": "122118",
    "skill_demand_count": "347"
  },
  {
    "skills": "matlab",
    "avg_salary": "122048",
    "skill_demand_count": "469"
  },
  {
    "skills": "unify",
    "avg_salary": "120251",
    "skill_demand_count": "81"
  },
  {
    "skills": "flow",
    "avg_salary": "120211",
    "skill_demand_count": "1037"
  },
  {
    "skills": "slack",
    "avg_salary": "120118",
    "skill_demand_count": "89"
  },
  {
    "skills": "swift",
    "avg_salary": "119972",
    "skill_demand_count": "41"
  },
  {
    "skills": "selenium",
    "avg_salary": "119914",
    "skill_demand_count": "34"
  },
  {
    "skills": "db2",
    "avg_salary": "119824",
    "skill_demand_count": "166"
  },
  {
    "skills": "microstrategy",
    "avg_salary": "119563",
    "skill_demand_count": "153"
  },
  {
    "skills": "spring",
    "avg_salary": "119397",
    "skill_demand_count": "220"
  },
  {
    "skills": "mariadb",
    "avg_salary": "119354",
    "skill_demand_count": "28"
  },
  {
    "skills": "powershell",
    "avg_salary": "116803",
    "skill_demand_count": "172"
  },
  {
    "skills": "tableau",
    "avg_salary": "116796",
    "skill_demand_count": "4830"
  },
  {
    "skills": "oracle",
    "avg_salary": "115125",
    "skill_demand_count": "1357"
  },
  {
    "skills": "qlik",
    "avg_salary": "115040",
    "skill_demand_count": "366"
  },
  {
    "skills": "javascript",
    "avg_salary": "114837",
    "skill_demand_count": "752"
  },
  {
    "skills": "jquery",
    "avg_salary": "114645",
    "skill_demand_count": "50"
  },
  {
    "skills": "css",
    "avg_salary": "113897",
    "skill_demand_count": "144"
  },
  {
    "skills": "assembly",
    "avg_salary": "113119",
    "skill_demand_count": "72"
  },
  {
    "skills": "alteryx",
    "avg_salary": "112907",
    "skill_demand_count": "386"
  },
  {
    "skills": "sas",
    "avg_salary": "112788",
    "skill_demand_count": "1563"
  },
  {
    "skills": "sas",
    "avg_salary": "112788",
    "skill_demand_count": "1563"
  },
  {
    "skills": "unreal",
    "avg_salary": "112667",
    "skill_demand_count": "27"
  },
  {
    "skills": "sql server",
    "avg_salary": "112487",
    "skill_demand_count": "1321"
  },
  {
    "skills": "t-sql",
    "avg_salary": "112403",
    "skill_demand_count": "247"
  },
  {
    "skills": "ssis",
    "avg_salary": "112265",
    "skill_demand_count": "569"
  },
  {
    "skills": "yarn",
    "avg_salary": "111963",
    "skill_demand_count": "58"
  },
  {
    "skills": "terminal",
    "avg_salary": "111582",
    "skill_demand_count": "101"
  },
  {
    "skills": "asp.net",
    "avg_salary": "110963",
    "skill_demand_count": "30"
  },
  {
    "skills": "windows",
    "avg_salary": "109718",
    "skill_demand_count": "321"
  },
  {
    "skills": "html",
    "avg_salary": "109678",
    "skill_demand_count": "236"
  },
  {
    "skills": "dax",
    "avg_salary": "109408",
    "skill_demand_count": "186"
  },
  {
    "skills": "sap",
    "avg_salary": "108103",
    "skill_demand_count": "503"
  },
  {
    "skills": "power bi",
    "avg_salary": "106738",
    "skill_demand_count": "2589"
  },
  {
    "skills": "visio",
    "avg_salary": "103749",
    "skill_demand_count": "169"
  },
  {
    "skills": "ssrs",
    "avg_salary": "103189",
    "skill_demand_count": "330"
  },
  {
    "skills": "spss",
    "avg_salary": "102627",
    "skill_demand_count": "476"
  },
  {
    "skills": "vba",
    "avg_salary": "101846",
    "skill_demand_count": "347"
  },
  {
    "skills": "cognos",
    "avg_salary": "101469",
    "skill_demand_count": "146"
  },
  {
    "skills": "crystal",
    "avg_salary": "99942",
    "skill_demand_count": "132"
  },
  {
    "skills": "excel",
    "avg_salary": "99751",
    "skill_demand_count": "3835"
  },
  {
    "skills": "powerpoint",
    "avg_salary": "99160",
    "skill_demand_count": "956"
  },
  {
    "skills": "word",
    "avg_salary": "99012",
    "skill_demand_count": "1012"
  },
  {
    "skills": "sharepoint",
    "avg_salary": "98611",
    "skill_demand_count": "301"
  },
  {
    "skills": "visual basic",
    "avg_salary": "98511",
    "skill_demand_count": "71"
  },
  {
    "skills": "sheets",
    "avg_salary": "94455",
    "skill_demand_count": "215"
  },
  {
    "skills": "spreadsheet",
    "avg_salary": "93746",
    "skill_demand_count": "167"
  },
  {
    "skills": "outlook",
    "avg_salary": "93220",
    "skill_demand_count": "305"
  },
  {
    "skills": "ms access",
    "avg_salary": "92341",
    "skill_demand_count": "99"
  },
  {
    "skills": "planner",
    "avg_salary": "83420",
    "skill_demand_count": "31"
  },
  {
    "skills": "smartsheet",
    "avg_salary": "81049",
    "skill_demand_count": "35"
  }
]