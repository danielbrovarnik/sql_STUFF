# Tech Skills Salary Analysis in New York

## Introduction

This project analyzes tech skill demand and associated salaries in the New York job market. By examining data extracted from job postings, I aim to identify the most valuable and sought-after skills, gaining insights that will be valuable for my future career development and potentially for hiring strategies as I advance.

## Background

The tech industry is constantly evolving, and staying competitive requires a keen understanding of current trends and in-demand skills. This analysis focuses specifically on the New York tech scene, which is known for its diverse opportunities and high salaries. By understanding which skills are most valuable, I can make informed decisions about my career path and future learning goals.

## Tools I Used

* **Data Source:** Job postings data from Luke Barrouse
* **SQL:** For querying and analyzing the data using PostgreSQL.
* **VS Code:** As my code editor for writing and executing SQL queries.

## The Analysis

### Data Collection

Job postings were obtained from Luke Barrouse's dataset, which compiles tech job listings with structured details. The initial dataset included features such as job title, company, location, salary, and required skills.

### Data Cleaning and Preparation

* Removed duplicate job postings.
* Standardized skill names to ensure consistency.
* Filtered data to focus on New York-based job listings.
* Handled missing values by imputing or removing incomplete records.

### Analyzing the Data

* **Top Paying Jobs:** I first identified the highest-paying jobs using the query in `1_top_paying_jobs.sql`.
* **Skills in Top Jobs:** Then, I analyzed the skills associated with those high-paying jobs using `2_top_paying_job_skills.sql`.
* **Overall Skill Demand:** To get a broader view, I determined the most in-demand skills across all jobs using `3_top_demanded_skills.sql`.
* **Top Paying Skills:** I then focused on identifying the skills that commanded the highest salaries with `4_top_paying_skills.sql`.
* **Most Optimal Skills:** Finally, I combined insights from the previous queries to pinpoint the most optimal skills based on both demand and salary using `5_most_optimal_skills.sql` (broad, not location-based).

## What I Learned

* **Top Skills:** The analysis showed that skills like SQL, Python, AWS, and Tableau are in high demand in New York.

* **Emerging Trends:** I was surprised to see the growing importance of cloud computing (AWS, Azure, GCP), machine learning, and data engineering.
* **Skill-Salary Relationship:** It's clear that specializing in areas like big data, cloud infrastructure, and advanced analytics can significantly increase earning potential.

![Optimal Skills](image.png)
Visualized average salary and thier skills for a Data Analyst Role in NY. Created json file from output and asked Chatgpt to provide a quick visualization.

## Personal Growth

This project was a huge step forward in my journey to become a data analyst. Learning SQL and applying it to a real-world dataset has given me a solid foundation and the confidence to tackle more complex analyses in the future. I'm excited to continue developing my skills and exploring new tools and techniques to further my understanding of data analysis.

## Conclusions

### Next Steps for Me

* Learn more advanced SQL techniques, such as window functions and query optimization.
* Explore data visualization tools like Power BI and Tableau for better insights.
* Build a portfolio of projects showcasing my analytical skills.
* Gain experience in predictive modeling and machine learning applications.

### Insights for the Future

* The demand for data-related skills continues to grow, making continuous learning essential.
* Specializing in high-paying skills like data engineering, cloud technologies, and AI/ML will provide a strong career advantage.
* Employers value professionals who can bridge the gap between technical skills and business insights, making communication skills just as critical as technical expertise.

This analysis provides a valuable snapshot of the New York tech job market and has been a significant learning experience for me. I'm eager to continue exploring the world of data and contribute to this exciting field.

