/*
Question:What are the highest paying skills for data engineers
- Calculate the median salary for each skill  required in data engineering
- Focus on remote positions with specified  salaries
- Include frequency to identify both  salary and demand
- Why? Show skilss with  highest compensation  for prioritizing
*/

SELECT
sd.skills,
ROUND (MEDIAN (jpf.salary_year_avg), 0) AS median_salary,
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
HAVING 
COUNT (jpf.*) > 100
ORDER BY 
median_salary DESC
LIMIT 25;

/*
key takeaways
- Rust has the highest median salary
Rust leads at $210K, although its demand is relatively low at 232 postings. This suggests high salary potential but a smaller job market in this dataset.
- Terraform and Golang combine strong salary with meaningful demand
Both have a $184K median salary, while Terraform appears in 3,248 postings and Golang in 912. Terraform therefore stands out as particularly relevant from a demand perspective.
- Kubernetes and Airflow are especially important for your data engineering path
Kubernetes has 4,202 postings with a $150.5K median, while Airflow has the highest demand among these top-salary skills at 9,996 postings, with a $150K median. These are directly aligned with orchestration/infrastructure skills.
- High salary does not necessarily mean high demand
- Rust ranks #1 by salary but has only 232 postings, while Airflow ranks much lower by salary but has nearly 10,000 postings. So when choosing skills to develop, you should look at both salary and demand, rather than salary alone.

┌────────────┬───────────────┬──────────────┐
│   skills   │ median_salary │ demand_count │
│  varchar   │    double     │    int64     │
├────────────┼───────────────┼──────────────┤
│ rust       │      210000.0 │          232 │
│ terraform  │      184000.0 │         3248 │
│ golang     │      184000.0 │          912 │
│ spring     │      175500.0 │          364 │
│ neo4j      │      170000.0 │          277 │
│ gdpr       │      169616.0 │          582 │
│ zoom       │      168438.0 │          127 │
│ graphql    │      167500.0 │          445 │
│ mongo      │      162250.0 │          265 │
│ fastapi    │      157500.0 │          204 │
│ django     │      155000.0 │          265 │
│ bitbucket  │      155000.0 │          478 │
│ crystal    │      154224.0 │          129 │
│ atlassian  │      151500.0 │          249 │
│ c          │      151500.0 │          444 │
│ typescript │      151000.0 │          388 │
│ kubernetes │      150500.0 │         4202 │
│ ruby       │      150000.0 │          736 │
│ css        │      150000.0 │          262 │
│ node       │      150000.0 │          179 │
│ airflow    │      150000.0 │         9996 │
│ redis      │      149000.0 │          605 │
│ vmware     │      148798.0 │          136 │
│ ansible    │      148798.0 │          475 │
│ jupyter    │      147500.0 │          400 │
└────────────┴───────────────┴──────────────┘
  25 rows                         3 columns
*/

