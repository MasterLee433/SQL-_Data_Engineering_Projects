/*
Question: What are the most optimal skills for data engineer; balancing both salary and demnad
- Create a ranking column  that  combines demand count  and median salary to identify the most valuable skills
- Focus only on remote data engineer  roles with  specified annual salaries
- Why? Highlight skills that balance market demand  and financial reward
*/

SELECT
sd.skills,
ROUND (MEDIAN (jpf.salary_year_avg), 0) AS median_salary,
COUNT (jpf.*) AS demand_count,
ROUND(LN(COUNT (jpf.*)), 1) AS ln_demand_count,
ROUND((MEDIAN (jpf.salary_year_avg) * LN(COUNT (jpf.*)))/1_000_000, 2) AS optimal_score
FROM
job_postings_fact AS jpf
INNER JOIN skills_job_dim AS sjd 
on jpf.job_id = sjd.job_id
INNER JOIN skills_dim  AS sd 
on sjd.skill_id = sd.skill_id
WHERE  jpf.job_title_short = 'Data Engineer'
AND jpf.job_work_from_home = True
AND jpf.salary_year_avg IS NOT NULL
GROUP BY sd.skills
HAVING 
COUNT (jpf.*) > 100
ORDER BY 
optimal_score DESC
LIMIT 25;

/*
Key Highlights
- Terraform ranks #1 overall
Terraform has the highest optimal score at 0.97, combining a very strong $184K median salary with 193 job postings.
This shows why considering both compensation and demand gives a different picture from salary alone.
- Python and SQL offer the strongest combination of scale and compensation
Python: $135K median, 1,133 postings, score 0.95
SQL: $130K median, 1,128 postings, score 0.91
Their huge demand makes them foundational skills for Data Engineers.
- Cloud and orchestration skills are highly valuable
AWS scores 0.91, Airflow 0.89, Spark 0.87, and Snowflake 0.82.
This reinforces the importance of cloud platforms, workflow orchestration, distributed processing, and modern data warehouses.
- The optimal skills align closely with an Analytics Engineering/Data Engineering stack
Git, dbt-adjacent tooling, Airflow, cloud platforms, Spark, Databricks, Docker, BigQuery and Kubernetes all appear.
For your transition, this supports building beyond BI into SQL + Python + cloud + orchestration + data transformation + version control.

The analysis shows that the most attractive Data Engineering skills are not necessarily those with the highest salary alone, but those that balance salary with market demand. Terraform leads the combined score, while Python and SQL provide the strongest demand foundation, with cloud and orchestration technologies such as AWS, Airflow, Spark and Snowflake adding significant value.

│   skills   │ median_salary │ demand_count │ ln_demand_count │ optimal_score │
│  varchar   │    double     │    int64     │     double      │    double     │
├────────────┼───────────────┼──────────────┼─────────────────┼───────────────┤
│ terraform  │      184000.0 │          193 │             5.3 │          0.97 │
│ python     │      135000.0 │         1133 │             7.0 │          0.95 │
│ sql        │      130000.0 │         1128 │             7.0 │          0.91 │
│ aws        │      137320.0 │          783 │             6.7 │          0.91 │
│ airflow    │      150000.0 │          386 │             6.0 │          0.89 │
│ spark      │      140000.0 │          503 │             6.2 │          0.87 │
│ snowflake  │      135500.0 │          438 │             6.1 │          0.82 │
│ kafka      │      145000.0 │          292 │             5.7 │          0.82 │
│ azure      │      128000.0 │          475 │             6.2 │          0.79 │
│ java       │      135000.0 │          303 │             5.7 │          0.77 │
│ scala      │      137290.0 │          247 │             5.5 │          0.76 │
│ kubernetes │      150500.0 │          147 │             5.0 │          0.75 │
│ git        │      140000.0 │          208 │             5.3 │          0.75 │
│ databricks │      132750.0 │          266 │             5.6 │          0.74 │
│ redshift   │      130000.0 │          274 │             5.6 │          0.73 │
│ gcp        │      136000.0 │          196 │             5.3 │          0.72 │
│ hadoop     │      135000.0 │          198 │             5.3 │          0.71 │
│ nosql      │      134415.0 │          193 │             5.3 │          0.71 │
│ pyspark    │      140000.0 │          152 │             5.0 │           0.7 │
│ docker     │      135000.0 │          144 │             5.0 │          0.67 │
│ mongodb    │      135750.0 │          136 │             4.9 │          0.67 │
│ r          │      134775.0 │          133 │             4.9 │          0.66 │
│ go         │      140000.0 │          113 │             4.7 │          0.66 │
│ bigquery   │      135000.0 │          123 │             4.8 │          0.65 │
│ github     │      135000.0 │          127 │             4.8 │          0.65 │
└────────────┴───────────────┴──────────────┴─────────────────┴───────────────┘
  25 rows                                                           5 columns
*/