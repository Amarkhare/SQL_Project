SELECT
    job_title_short AS title,
    job_location AS location,
    job_posted_date::DATE As date_withouth_timestamp,
    -- :: is used to chamge the data type
    job_posted_date AS date_with_timestamp,
    job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST' AS date_with_timezone, 
    -- est is 5 hr prior to utc 
    EXTRACT(MONTH FROM job_posted_date) AS month 
FROM job_postings_fact
LIMIT 100;

