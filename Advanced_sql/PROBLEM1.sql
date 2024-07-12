/*progblem 1
write a query to find the avg salary both 
yearly(salary_year_avg) and hourly(salary_hour_avg) 
for job postings that were posted after
 june 1, 2023, group the results
by job schedule type 
*/
SELECT
    -- job_posted_date::DATE as date_,
    job_schedule_type,
    AVG(salary_year_avg) as yearly_avg,
    AVG(salary_hour_avg) as hourly_avg
FROM
    job_postings_fact
WHERE
    (job_posted_date::DATE) > '2023-06-01'
GROUP BY
    job_schedule_type
ORDER BY
    yearly_avg DESC,
    hourly_avg DESC


