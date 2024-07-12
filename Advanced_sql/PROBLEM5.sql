/*PROBLEM5
i want to categorize the salaries from each job posting.
to see if it fits in my desires salary range.
-put salary into diff bukets
-define what's a high, standard or low salary with your own conditons
-why? it is easy to determine which job postings
are worth looking at based on salary.Bucketing
 is a common practise in data analysis when 
 viewing categories.
 -i only want to look at data analyst roles
 -order from higest to lowest

*/
SELECT
    COUNT(job_id), 
    CASE
        WHEN salary_year_avg <= 40000 OR NULL THEN 'low'
        WHEN salary_year_avg BETWEEN 40000 AND 60000 THEN 'standard'
        ELSE 'high'
    END AS salary_bucket
FROM 
    job_postings_fact
WHERE
     job_title_short = 'Data Analyst'
GROUP BY
    salary_bucket