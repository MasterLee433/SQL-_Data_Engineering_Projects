
CREATE TABLE staging.job_postings_flat AS 
SELECT
jpf.job_id,
jpf.job_title_short,
jpf.job_location,
jpf.job_schedule_type,
jpf.search_location, 
jpf.job_no_degree_mention,
jpf.job_country,  
jpf.salary_rate,
jpf.job_health_insurance,
jpf.salary_year_avg,
jpf.salary_hour_avg,
jpf.job_via, 
jpf.job_title, 
cd.name AS company_name
FROM
data_jobs.job_postings_fact AS jpf
LEFT JOIN data_jobs.company_dim AS cd
on jpf.company_id = cd.company_id;

SELECT COUNT(*)
FROM job_postings_flat
LIMIT 10;

SELECT
 '2024-01-01 00:00:00+00'::TIMESTAMPTZ;