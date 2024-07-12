/*PROBLEM 2
write a query to count number of job postings
for each month in 2023, adjusting the 
job_posted_date to be in 'America/New_York'
time zone before extracting the month.
Assume the job_posted_date is stored in UTC
Group BY and Order by the month
*/
SELECT
    EXTRACT(MONTH FROM job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EDT') AS months,
    COUNT(job_id) AS job_posting_each_month
FROM 
    job_postings_fact
GROUP BY
    months
ORDER BY
    months