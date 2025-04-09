-- CREATE TABLE job_applied (
--   job_id INT,
--   application_sent_data DATE,
--   custome_resume BOOLEAN,
--   resume_file_name VARCHAR(255),
--   cover_letter_sent BOOLEAN,
--   cover_letter_file_name VARCHAR(255),
--   status VARCHAR(50)  
-- );

-- INSERT INTO job_applied (
--     job_id,
--     application_sent_data,
--     custome_resume,
--     resume_file_name,
--     cover_letter_sent,
--     cover_letter_file_name,
--     status
-- )
-- VALUES (
--     4,
--     '2025-2-1',
--     true,
--     'resume_02.pdf',
--     true,
--     'cover_letter_02.pdf,',
--     'submitted'
-- ),
-- (
--     5,
--     '2025-2-3',
--     true,
--     'resume_03.pdf',
--     true,
--     'cover_letter_03.pdf,',
--     'submitted'
-- )

-- ALTER TABLE job_applied
-- ALTER COLUMN contact TYPE TEXT;
-- ADD coloumn datatype
-- ADD contact VARCHAR(50);
-- REMAME COLUMN column_name to new_name
-- RENAME COLUMN contact to contact_name;
-- ALTER COLUMN column_name TYPE datatype
-- DROP column_name

-- UPDATE job_applied
-- set contact = 'Erlich Bachman'
-- WHERE job_id = 2;


-- SELECT *
-- from job_applied

-- ALTER TABLE job_applied
-- DROP COLUMN contact_name;

-- DROP TABLE job_applied;