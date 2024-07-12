--SUBQUERIES - TEMPORARY RESULT SET
--CTE(COMMON TABLE EXPRESSIONS) -

--SUBQUERIES
--getting list of companies having no requirement for degree

SELECT 
    company_id,
    name AS company_name 
FROM 
    company_dim
WHERE company_id IN
    (
        SELECT
            company_id
        FROM 
            job_postings_fact
        WHERE
            job_no_degree_mention = TRUE
        ORDER BY
            company_id
    );

--  CTE
/*
find the companies that have the most job openings.
-get the total no of job postings per company id (job_posting_fact)
-Return the total no of jobs with the company name(company dim)
*/
WITH company_job_count AS (
    SELECT
        company_id,
        count(*) AS total_jobs
    FROM 
        job_postings_fact
    GROUP BY
        company_id
)
SELECT 
    company_dim.name AS company_name,
    company_job_count.total_jobs
FROM company_dim
    LEFT JOIN company_job_count ON company_job_count.company_id = company_dim.company_id
ORDER BY
    total_jobs DESC