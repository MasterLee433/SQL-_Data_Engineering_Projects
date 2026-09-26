/*
Question : What are the most in demand skills for data engineer?
- Identify top 10  in-demand skills for data engineers
-Focus on  remote job postings
-Why? Provide insights to the objestive
*/
SELECT
sd.skills,
COUNT (jpf.*) AS demand_count
FROM
job_postings_fact AS jpf
INNER JOIN skills_job_dim AS sjd 
on jpf.job_id = sjd.job_id
INNER JOIN skills_dim  AS sd 
on sjd.skill_id = sd.skill_id
WHERE  jpf.job_title_short = 'Data Engineer'
AND jpf.job_work_from_home = True
GROUP BY sd.skills
ORDER BY 
demand_count DESC
LIMIT 10;

/*
Below is the breakdown of the most demanded skills for data engineers

Key Takeways:
- SQL and Python dominate demand — SQL appears in 29,221 postings and Python in 28,776, making them the two most in-demand skills in this dataset.
- Cloud and data-engineering tools are highly relevant — AWS (17,823), Azure (14,143), Spark (12,799), and Airflow (9,996) show strong demand for cloud, big-data, and pipeline orchestration skills.
- Modern data platforms are well represented — Snowflake (8,639) and Databricks (8,183) show continued demand for modern cloud data warehousing and lakehouse technologies.
- GCP is relevant but less dominant in this dataset — GCP appears in 6,446 postings, suggesting that building your BigQuery/GCP skills alongside SQL and Python is a useful direction.

┌────────────┬──────────────┐
│   skills   │ demand_count │
│  varchar   │    int64     │
├────────────┼──────────────┤
│ sql        │        29221 │
│ python     │        28776 │
│ aws        │        17823 │
│ azure      │        14143 │
│ spark      │        12799 │
│ airflow    │         9996 │
│ snowflake  │         8639 │
│ databricks │         8183 │
│ java       │         7267 │
│ gcp        │         6446 │
└────────────┴──────────────┘
  10 rows         2 columns
*/