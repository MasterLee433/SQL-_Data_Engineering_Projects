SELECT
jpf.*,
cd.*
FROM 
 job_postings_fact as jpf 
 LEFT JOIN company_dim as cd
 on jpf.company_id= cd.company_id
 LIMIT 10;