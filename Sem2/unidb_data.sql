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

INSERT INTO adress (adress_id, adress_type, adress) VALUES
  ('ADR000001', 'Home', 'Main Street 12'),
  ('ADR000002', 'Home', 'Lindvägen 4'),
  ('ADR000003', 'Home', 'Nilsson Road 7'),
  ('ADR000004', 'Home', 'Ekgränd 3'),
  ('ADR000005', 'Home', 'Sjöbergsvägen 22'),
  ('ADR000006', 'Home', 'Holmsgatan 19'),
  ('ADR000007', 'Home', 'Akessonvägen 5'),
  ('ADR000008', 'Home', 'Dahlvägen 9');

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

INSERT INTO department (dept_id, dept_name, manager_id) VALUES
  ('DEPT000001', 'Matematik',  NULL),
  ('DEPT000002', 'Datateknik', NULL),
  ('DEPT000003', 'Elektrotek', NULL),
  ('DEPT000004', 'IndEko',     NULL);

INSERT INTO employee
  (teacher_id,  is_teacher, job_title,  dept_id,     person_id,   supervisor_id)
VALUES
  ('EMP0000001', 'true', 'Professor', 'DEPT000001', 'PERS000001', NULL),
  ('EMP0000002', 'true', 'Lektor',    'DEPT000001', 'PERS000002', NULL),
  ('EMP0000003', 'true', 'Lektor',    'DEPT000002', 'PERS000003', NULL),
  ('EMP0000004', 'true', 'Adjunkt',   'DEPT000002', 'PERS000004', NULL),
  ('EMP0000005', 'true', 'Lektor',    'DEPT000003', 'PERS000005', NULL),
  ('EMP0000006', 'true', 'Lektor',    'DEPT000004', 'PERS000006', NULL),
  ('EMP0000007', 'true', 'Professor', 'DEPT000002', 'PERS000007', NULL),
  ('EMP0000008', 'true', 'Adjunkt',   'DEPT000001', 'PERS000008', NULL);

INSERT INTO salary (valid_from,  teacher_id,  salary, valid_to) VALUES
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
  (course_code, valid_from,  course_name,                           hp, min_students, max_students, valid_to)
VALUES
  ('SF1689', '2024-10-21', 'Baskurs i matematik',                    6, 10, 120, NULL),
  ('II1308', '2024-10-22', 'Introduktion till programmering',        2, 20, 150, NULL),
  ('IE1204', '2024-10-24', 'Digital design',                         8, 10, 120, NULL),
  ('SF1624', '2025-01-09', 'Algebra och geometri',                   8, 10, 150, NULL),
  ('ID1018', '2025-01-11', 'Programmering I',                        8, 20, 200, NULL),
  ('ID1021', '2025-03-14', 'Algoritmer och datastrukturer',          8, 20, 200, NULL),
  ('SF1610', '2025-05-27', 'Diskret matematik',                      8, 10, 150, NULL),
  ('SF1625', '2025-06-04', 'Envariabelanalys',                       8, 10, 150, NULL),
  ('IE1206', '2025-06-12', 'Inbyggd elektronik',                     8, 10, 120, NULL),
  ('SF1686', '2025-10-23', 'Flervariabelanalys',                     8, 10, 150, NULL),
  ('IS1200', '2025-09-01', 'Datorteknik, grundkurs',                 8, 20, 200, NULL),
  ('IV1351', '2025-09-01', 'Datalagring',                            8, 20, 200, NULL),
  ('ME1003', '2025-09-01', 'Industriell ekonomi, grundkurs',         6, 20, 200, NULL),
  ('SF0003', '2024-08-23', 'Introduktion i matematik',               3, 10, 100, NULL);

INSERT INTO course_instance
  (instance_id, num_students, period, year, course_code, course_valid_from)
VALUES
  ('CINST00001', 95, 3, 2025, 'ID1018', '2025-01-11'),
  ('CINST00002', 80, 4, 2025, 'ID1021', '2025-03-14'),
  ('CINST00003', 60, 2, 2024, 'SF1689', '2024-10-21'),
  ('CINST00004', 130,2, 2024, 'II1308', '2024-10-22'),
  ('CINST00005', 70, 2, 2024, 'IE1204', '2024-10-24'),
  ('CINST00006', 85, 3, 2025, 'SF1624', '2025-01-09'),
  ('CINST00007', 90, 4, 2025, 'SF1610', '2025-05-27'),
  ('CINST00008', 100,4, 2025, 'SF1625', '2025-06-04'),
  ('CINST00009', 65, 4, 2025, 'IE1206', '2025-06-12'),
  ('CINST00010', 75, 2, 2025, 'SF1686', '2025-10-23'),
  ('CINST00011', 110,1, 2025, 'IS1200', '2025-09-01'),
  ('CINST00012', 70, 1, 2025, 'IV1351', '2025-09-01'),
  ('CINST00013', 95, 1, 2025, 'ME1003', '2025-09-01'),
  ('CINST00014', 55, 1, 2024, 'SF0003', '2024-08-23');


INSERT INTO planned_activities (activity_id, instance_id, planned_hours) VALUES
  ('ACT0000001', 'CINST00001', 30),
  ('ACT0000002', 'CINST00001', 20),
  ('ACT0000003', 'CINST00001', 10),

  ('ACT0000001', 'CINST00002', 28),
  ('ACT0000002', 'CINST00002', 18),
  ('ACT0000003', 'CINST00002',  8),

  ('ACT0000001', 'CINST00003', 24),
  ('ACT0000003', 'CINST00003', 12),
  ('ACT0000004', 'CINST00003',  4),

  ('ACT0000001', 'CINST00004', 16),
  ('ACT0000002', 'CINST00004', 12),
  ('ACT0000003', 'CINST00004',  6),

  ('ACT0000001', 'CINST00005', 20),
  ('ACT0000002', 'CINST00005', 14),
  ('ACT0000003', 'CINST00005',  6),

  ('ACT0000001', 'CINST00006', 26),
  ('ACT0000003', 'CINST00006', 14),
  ('ACT0000004', 'CINST00006',  4),

  ('ACT0000001', 'CINST00007', 24),
  ('ACT0000003', 'CINST00007', 12),
  ('ACT0000004', 'CINST00007',  4),

  ('ACT0000001', 'CINST00008', 26),
  ('ACT0000003', 'CINST00008', 10),
  ('ACT0000004', 'CINST00008',  4),

  ('ACT0000001', 'CINST00009', 20),
  ('ACT0000002', 'CINST00009', 16),
  ('ACT0000003', 'CINST00009',  6),

  ('ACT0000001', 'CINST00010', 28),
  ('ACT0000003', 'CINST00010', 12),
  ('ACT0000004', 'CINST00010',  4),

  ('ACT0000001', 'CINST00011', 22),
  ('ACT0000002', 'CINST00011', 18),
  ('ACT0000003', 'CINST00011',  8),

  ('ACT0000001', 'CINST00012', 24),
  ('ACT0000002', 'CINST00012', 16),
  ('ACT0000003', 'CINST00012',  8),
  ('ACT0000004', 'CINST00012',  4),

  ('ACT0000001', 'CINST00013', 18),
  ('ACT0000004', 'CINST00013',  6),

  ('ACT0000001', 'CINST00014', 16),
  ('ACT0000003', 'CINST00014',  8);

INSERT INTO allocation
  (allocation_id, teacher_id,  activity_id,  instance_id)
VALUES
  ('ALLOC00001', 'EMP0000003', 'ACT0000001', 'CINST00001'),
  ('ALLOC00002', 'EMP0000004', 'ACT0000002', 'CINST00001'),

  ('ALLOC00003', 'EMP0000003', 'ACT0000001', 'CINST00002'),
  ('ALLOC00004', 'EMP0000007', 'ACT0000002', 'CINST00002'),

  ('ALLOC00005', 'EMP0000001', 'ACT0000001', 'CINST00003'),
  ('ALLOC00006', 'EMP0000004', 'ACT0000001', 'CINST00004'),
  ('ALLOC00007', 'EMP0000005', 'ACT0000001', 'CINST00005'),
  ('ALLOC00008', 'EMP0000001', 'ACT0000001', 'CINST00006'),
  ('ALLOC00009', 'EMP0000002', 'ACT0000001', 'CINST00007'),
  ('ALLOC00010', 'EMP0000002', 'ACT0000001', 'CINST00008'),
  ('ALLOC00011', 'EMP0000005', 'ACT0000001', 'CINST00009'),
  ('ALLOC00012', 'EMP0000001', 'ACT0000001', 'CINST00010'),
  ('ALLOC00013', 'EMP0000003', 'ACT0000001', 'CINST00011'),
  ('ALLOC00014', 'EMP0000007', 'ACT0000001', 'CINST00012'),
  ('ALLOC00015', 'EMP0000006', 'ACT0000001', 'CINST00013'),
  ('ALLOC00016', 'EMP0000002', 'ACT0000001', 'CINST00014');
