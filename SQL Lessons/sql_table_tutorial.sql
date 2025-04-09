-- CREATE TABLE job_applied (
--     job_id INT,
--     application_sent_date DATE,
--     custome_resume BOOLEAN,
--     resume_file_name VARCHAR(255),
--     cover_letter_sent BOOLEAN,
--     cover_letter_file_name VARCHAR(255),
--     status VARCHAR(50)
-- );

-- INSERT INTO job_applied (job_id, application_sent_date, custome_resume, resume_file_name, cover_letter_sent,cover_letter_file_name, status)
-- VALUES (1,
--         '2024-02-01',
--         true,
--         'resume_01.pdf',
--         true,
--         'cover_letter_01.pdf',
--         'submitted'),
--         (2,
--         '2024-02-02',
--         true,
--         'resume_02.pdf',
--         false,
--         'cover_letter_02.pdf',
--         'submitted');

-- ALTER TABLE job_applied
-- ADD contact VARCHAR(50);

-- -- Update specific columns
-- UPDATE job_applied
-- SET contact = 'Erlich Bachman'
-- WHERE job_id = 1;
-- UPDATE job_applied
-- SET contact = 'Eric Cartman'
-- WHERE job_id = 2;

-- ALTER TABLE job_applied
-- RENAME COLUMN contact to contact_name;

-- ALTER TABLE job_applied
-- ALTER COLUMN contact_name TYPE TEXT;

-- ALTER TABLE job_applied
-- DROP COLUMN contact_name;

-- SELECT *
-- FROM job_applied

-- DROP TABLE job_applied;