
INSERT INTO activity_type (activity_id, activity_type, factor) VALUES
  ('ACT0000001', 'Lecture',  2),
  ('ACT0000002', 'Lab',      1),
  ('ACT0000003', 'Tutorial', 2),
  ('ACT0000004', 'Seminar',  1);

INSERT INTO skill (skill_id, skill_type) VALUES
  ('SKILL00001', 'Matematik'),
  ('SKILL00002', 'Analys'),
  ('SKILL00003', 'Programmer'),
  ('SKILL00004', 'Algoritmer'),
  ('SKILL00005', 'DigDesign'),
  ('SKILL00006', 'Elektronik'),
  ('SKILL00007', 'Databaser'),
  ('SKILL00008', 'IndEko');

INSERT INTO person (person_id, first_name, last_name) VALUES
  ('PERS000001', 'Anna',  'Berg'),
  ('PERS000002', 'Erik',  'Lind'),
  ('PERS000003', 'Sara',  'Nilsson'),
  ('PERS000004', 'Jonas', 'Ek'),
  ('PERS000005', 'Karin', 'Sjoberg'),
  ('PERS000006', 'Lars',  'Holm'),
  ('PERS000007', 'Maria', 'Akesson'),
  ('PERS000008', 'Oskar', 'Dahl');

INSERT INTO adress (adress_id, zip_code, street, city) VALUES
  ('ADR000001', '11111', 'Main Street 12',    'Stockholm'),
  ('ADR000002', '22222', 'Lindvagen 4',       'Uppsala'),
  ('ADR000003', '33333', 'Nilsson Road 7',    'Solna'),
  ('ADR000004', '44444', 'Ekgrand 3',         'Lund'),
  ('ADR000005', '55555', 'Sjobergsvagen 22',  'Malmo'),
  ('ADR000006', '66666', 'Holmsgatan 19',     'Vasteras'),
  ('ADR000007', '77777', 'Akessonvagen 5',    'Orebro'),
  ('ADR000008', '88888', 'Dahlvagen 9',       'Gavle');

INSERT INTO email (email_id, email_type, email) VALUES
  ('EML000001', 'Work', 'anna.berg@university.se'),
  ('EML000002', 'Work', 'erik.lind@university.se'),
  ('EML000003', 'Work', 'sara.nilsson@university.se'),
  ('EML000004', 'Work', 'jonas.ek@university.se'),
  ('EML000005', 'Work', 'karin.sjoberg@university.se'),
  ('EML000006', 'Work', 'lars.holm@university.se'),
  ('EML000007', 'Work', 'maria.akesson@university.se'),
  ('EML000008', 'Work', 'oskar.dahl@university.se');

INSERT INTO phone (phone_id, phone_num, num_type) VALUES
  ('PHN000001', '0701001001', 'Mobile'),
  ('PHN000002', '0702002002', 'Mobile'),
  ('PHN000003', '0703003003', 'Mobile'),
  ('PHN000004', '0704004004', 'Mobile'),
  ('PHN000005', '0705005005', 'Mobile'),
  ('PHN000006', '0706006006', 'Mobile'),
  ('PHN000007', '0707007007', 'Mobile'),
  ('PHN000008', '0708008008', 'Mobile');

INSERT INTO department (dept_id, dept_name, manager_id) VALUES
  ('DEPT000001', 'Matematik',  NULL),
  ('DEPT000002', 'Datateknik', NULL),
  ('DEPT000003', 'Elektrotek', NULL),
  ('DEPT000004', 'IndEko',     NULL);

INSERT INTO employee
  (teacher_id,  is_teacher, job_title,   dept_id,     person_id,   supervisor_id)
VALUES
  ('EMP0000001', 'true',     'Professor', 'DEPT000001','PERS000001', NULL),
  ('EMP0000002', 'true',     'Lektor',    'DEPT000001','PERS000002', 'EMP0000001'),
  ('EMP0000003', 'true',     'Lektor',    'DEPT000002','PERS000003', 'EMP0000007'),
  ('EMP0000004', 'true',     'Adjunkt',   'DEPT000002','PERS000004', 'EMP0000003'),
  ('EMP0000005', 'true',     'Lektor',    'DEPT000003','PERS000005', NULL),
  ('EMP0000006', 'true',     'Lektor',    'DEPT000004','PERS000006', NULL),
  ('EMP0000007', 'true',     'Professor', 'DEPT000002','PERS000007', NULL),
  ('EMP0000008', 'true',     'Adjunkt',   'DEPT000001','PERS000008', 'EMP0000001');

UPDATE department SET manager_id = 'EMP0000001' WHERE dept_id = 'DEPT000001';
UPDATE department SET manager_id = 'EMP0000007' WHERE dept_id = 'DEPT000002';
UPDATE department SET manager_id = 'EMP0000005' WHERE dept_id = 'DEPT000003';
UPDATE department SET manager_id = 'EMP0000006' WHERE dept_id = 'DEPT000004';

INSERT INTO salary (valid_from, teacher_id, salary, valid_to) VALUES
  ('2025-01-01', 'EMP0000001', 60000, NULL),
  ('2025-01-01', 'EMP0000002', 52000, NULL),
  ('2025-01-01', 'EMP0000003', 53000, NULL),
  ('2025-01-01', 'EMP0000004', 48000, NULL),
  ('2025-01-01', 'EMP0000005', 51000, NULL),
  ('2025-01-01', 'EMP0000006', 50000, NULL),
  ('2025-01-01', 'EMP0000007', 62000, NULL),
  ('2025-01-01', 'EMP0000008', 46000, NULL);

INSERT INTO skill_set (teacher_id, skill_id) VALUES
  ('EMP0000001', 'SKILL00001'),
  ('EMP0000001', 'SKILL00002'),
  ('EMP0000003', 'SKILL00003'),
  ('EMP0000003', 'SKILL00004'),
  ('EMP0000005', 'SKILL00005'),
  ('EMP0000005', 'SKILL00006'),
  ('EMP0000006', 'SKILL00008'),
  ('EMP0000007', 'SKILL00007');

INSERT INTO course_layout
  (course_code, valid_from,  course_name,                          hp, min_students, max_students, valid_to)
VALUES
  ('SF1689', '2024-10-21', 'Baskurs i matematik',                    6, 10, 120, NULL),
  ('II1308', '2024-10-22', 'Introduktion till programmering',        2, 20, 150, NULL),
  ('IE1204', '2024-10-24', 'Digital design',                         8, 10, 120, NULL),
  ('SF1624', '2025-01-09', 'Algebra och geometri',                   8, 10, 150, NULL);

INSERT INTO course_instance
  (instance_id, num_students, period, year, course_code, course_valid_from)
VALUES
  ('CINST00001', 95, 3, 2025, 'SF1624', '2025-01-09'),
  ('CINST00002', 80, 4, 2025, 'II1308', '2024-10-22'),
  ('CINST00003', 60, 2, 2024, 'SF1689', '2024-10-21'),
  ('CINST00004', 70, 2, 2024, 'IE1204', '2024-10-24');

INSERT INTO person_adress (adress_id, person_id) VALUES
  ('ADR000001', 'PERS000001'),
  ('ADR000002', 'PERS000002'),
  ('ADR000003', 'PERS000003'),
  ('ADR000004', 'PERS000004'),
  ('ADR000005', 'PERS000005'),
  ('ADR000006', 'PERS000006'),
  ('ADR000007', 'PERS000007'),
  ('ADR000008', 'PERS000008');

INSERT INTO person_email (email_id, person_id) VALUES
  ('EML000001', 'PERS000001'),
  ('EML000002', 'PERS000002'),
  ('EML000003', 'PERS000003'),
  ('EML000004', 'PERS000004'),
  ('EML000005', 'PERS000005'),
  ('EML000006', 'PERS000006'),
  ('EML000007', 'PERS000007'),
  ('EML000008', 'PERS000008');

INSERT INTO person_phone (person_id, phone_id) VALUES
  ('PERS000001', 'PHN000001'),
  ('PERS000002', 'PHN000002'),
  ('PERS000003', 'PHN000003'),
  ('PERS000004', 'PHN000004'),
  ('PERS000005', 'PHN000005'),
  ('PERS000006', 'PHN000006'),
  ('PERS000007', 'PHN000007'),
  ('PERS000008', 'PHN000008');

INSERT INTO planned_activities (activity_id, instance_id, planned_hours) VALUES
  ('ACT0000001', 'CINST00001', 30),
  ('ACT0000002', 'CINST00002', 20),
  ('ACT0000003', 'CINST00003', 12),
  ('ACT0000004', 'CINST00004',  6);

INSERT INTO allocation
  (teacher_id,  activity_id,  instance_id,  allocated_hours)
VALUES
  ('EMP0000001', 'ACT0000001', 'CINST00001', 18),
  ('EMP0000004', 'ACT0000002', 'CINST00002', 12),
  ('EMP0000003', 'ACT0000003', 'CINST00003',  8),
  ('EMP0000005', 'ACT0000004', 'CINST00004',  4);
