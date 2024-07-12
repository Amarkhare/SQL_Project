/*PROBLEM 3
Write a query to find companies (include company name)
that have posted jobs offering health insurance,
where these postings were made in the second 
quarter of 2023.Use date extraction to filter by quarter

*/
SELECT
    cd.name as company_name,
    EXTRACT(MONTH FROM jp.job_posted_date) AS month,
    jp.job_health_insurance
FROM
    job_postings_fact AS jp
LEFT JOIN
    company_dim AS cd ON jp.company_id = cd.company_id
WHERE
    job_health_insurance = TRUE AND
    (EXTRACT(MONTH FROM jp.job_posted_date)  BETWEEN 4 AND 6 )
ORDER BY
    month
