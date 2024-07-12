/*PROBLEM6
Identify the top 5 skills that are most 
frequently mentioned in job postings. 
Use a subquery to find the skills IDs
with the highest counts in the 
skills_job_dim table and then join the result
with the skills_dim table to get the skills name

*/
SELECT 
    skills,
FROM 
    skills_dim
WHERE skill_id IN (
    SELECT 
        skill_id,
        count(*) AS skill_count
    FROM 
        skills_dim
    GROUP BY
        skill_id
    ORDER BY
        skill_count DESC
)
