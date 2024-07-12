/*UNION ANS UNION ALL
UNION - COMBINES THE TABLE HAVING SAME FIELD WITH DATATYPE EXCLUDING NULL VALUES
UNION ALL - SAMAE AS UNION INCLUDING NULL VALUES
*/

SELECT
    job_title_short,
    company_id,
    job_location
FROM
    january_jobs

UNION

SELECT
    job_title_short,
    company_id,
    job_location
FROM
    february_jobs

UNION ALL

SELECT
    job_title_short,
    company_id,
    job_location
FROM
    march_jobs