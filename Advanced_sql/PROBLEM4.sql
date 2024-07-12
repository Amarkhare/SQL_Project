-- Problem 4 
/*
Create tables from other tables
create 3 tables :
    -jan 2023 jobs
    -feb 2023 jobs
    -mar 2023 jobs
foreshadowing : this will be used in another 
pracitse provlem below
hints : 
    -use create table table_name as syntax
    -look at a way to filter out only 
    specific months (extract)

CREATE TABLE january_jobs AS:

This part of the statement creates a new table named january_jobs.
The AS keyword indicates that the new table will be created based on the results of the following SELECT statement.
SELECT * FROM job_postings_fact:

This selects all columns (*) from the job_postings_fact table.
This means all the data and structure (columns) of the job_postings_fact table will be copied to the january_jobs table for the rows that meet the condition.
*/
CREATE TABLE january_jobs AS
    SELECT * FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 1;
CREATE TABLE february_jobs AS
    SELECT * FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 2;
CREATE TABLE march_jobs AS
    SELECT * FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 3;

SELECT * FROM january_jobs;
SELECT * FROM february_jobs;
SELECT * FROM march_jobs;
