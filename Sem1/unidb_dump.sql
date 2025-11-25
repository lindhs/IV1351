--
-- PostgreSQL database dump
--

\restrict GsA4yaalXfUmYRkGrwMdtMmtInzMrOVYaAiQXrUb2FCqMfN5g83aPVJfhOg8bIt

-- Dumped from database version 18.0 (Postgres.app)
-- Dumped by pg_dump version 18.0 (Postgres.app)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: activity_type; Type: TABLE DATA; Schema: public; Owner: simonwagstrom
--

INSERT INTO public.activity_type VALUES ('ACT0000001', 'Lecture             ', 2);
INSERT INTO public.activity_type VALUES ('ACT0000002', 'Lab                 ', 1);
INSERT INTO public.activity_type VALUES ('ACT0000004', 'Seminar             ', 1);
INSERT INTO public.activity_type VALUES ('ACT0000003', 'Tutorial            ', 2);


--
-- Data for Name: course_layout; Type: TABLE DATA; Schema: public; Owner: simonwagstrom
--

INSERT INTO public.course_layout VALUES ('SF1689    ', 'Baskurs i matematik                               ', 6, 10, 120, '2024-10-21');
INSERT INTO public.course_layout VALUES ('II1308    ', 'Introduktion till programmering                   ', 2, 20, 150, '2024-10-22');
INSERT INTO public.course_layout VALUES ('IE1204    ', 'Digital design                                    ', 8, 10, 120, '2024-10-24');
INSERT INTO public.course_layout VALUES ('SF1624    ', 'Algebra och geometri                              ', 8, 10, 150, '2025-01-09');
INSERT INTO public.course_layout VALUES ('ID1018    ', 'Programmering I                                   ', 8, 20, 200, '2025-01-11');
INSERT INTO public.course_layout VALUES ('ID1021    ', 'Algoritmer och datastrukturer                     ', 8, 20, 200, '2025-03-14');
INSERT INTO public.course_layout VALUES ('SF1610    ', 'Diskret matematik                                 ', 8, 10, 150, '2025-05-27');
INSERT INTO public.course_layout VALUES ('SF1625    ', 'Envariabelanalys                                  ', 8, 10, 150, '2025-06-04');
INSERT INTO public.course_layout VALUES ('IE1206    ', 'Inbyggd elektronik                                ', 8, 10, 120, '2025-06-12');
INSERT INTO public.course_layout VALUES ('SF1686    ', 'Flervariabelanalys                                ', 8, 10, 150, '2025-10-23');
INSERT INTO public.course_layout VALUES ('IS1200    ', 'Datorteknik, grundkurs                            ', 8, 20, 200, '2025-09-01');
INSERT INTO public.course_layout VALUES ('IV1351    ', 'Datalagring                                       ', 8, 20, 200, '2025-09-01');
INSERT INTO public.course_layout VALUES ('ME1003    ', 'Industriell ekonomi, grundkurs                    ', 6, 20, 200, '2025-09-01');
INSERT INTO public.course_layout VALUES ('SF0003    ', 'Introduktion i matematik                          ', 3, 10, 100, '2024-08-23');


--
-- Data for Name: course_instance; Type: TABLE DATA; Schema: public; Owner: simonwagstrom
--

INSERT INTO public.course_instance VALUES ('CINST00001', 95, 3, 2025, 'ID1018    ');
INSERT INTO public.course_instance VALUES ('CINST00002', 80, 4, 2025, 'ID1021    ');
INSERT INTO public.course_instance VALUES ('CINST00003', 60, 2, 2024, 'SF1689    ');
INSERT INTO public.course_instance VALUES ('CINST00004', 130, 2, 2024, 'II1308    ');
INSERT INTO public.course_instance VALUES ('CINST00005', 70, 2, 2024, 'IE1204    ');
INSERT INTO public.course_instance VALUES ('CINST00006', 85, 3, 2025, 'SF1624    ');
INSERT INTO public.course_instance VALUES ('CINST00007', 90, 4, 2025, 'SF1610    ');
INSERT INTO public.course_instance VALUES ('CINST00008', 100, 4, 2025, 'SF1625    ');
INSERT INTO public.course_instance VALUES ('CINST00009', 65, 4, 2025, 'IE1206    ');
INSERT INTO public.course_instance VALUES ('CINST00010', 75, 2, 2025, 'SF1686    ');
INSERT INTO public.course_instance VALUES ('CINST00011', 110, 1, 2025, 'IS1200    ');
INSERT INTO public.course_instance VALUES ('CINST00012', 70, 1, 2025, 'IV1351    ');
INSERT INTO public.course_instance VALUES ('CINST00013', 95, 1, 2025, 'ME1003    ');
INSERT INTO public.course_instance VALUES ('CINST00014', 55, 1, 2024, 'SF0003    ');


--
-- Data for Name: department; Type: TABLE DATA; Schema: public; Owner: simonwagstrom
--

INSERT INTO public.department VALUES ('DEPT000001', 'Matematik           ', 'EMP0000001          ');
INSERT INTO public.department VALUES ('DEPT000002', 'Datateknik          ', 'EMP0000003          ');
INSERT INTO public.department VALUES ('DEPT000003', 'Elektroteknik       ', 'EMP0000005          ');
INSERT INTO public.department VALUES ('DEPT000004', 'Industriell eko     ', 'EMP0000006          ');


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: simonwagstrom
--

INSERT INTO public.person VALUES ('PERS000001', 'Anna                          ', 'Berg                          ', 'anna.berg@university.se                           ');
INSERT INTO public.person VALUES ('PERS000002', 'Erik                          ', 'Lind                          ', 'erik.lind@university.se                           ');
INSERT INTO public.person VALUES ('PERS000003', 'Sara                          ', 'Nilsson                       ', 'sara.nilsson@university.se                        ');
INSERT INTO public.person VALUES ('PERS000004', 'Jonas                         ', 'Ek                            ', 'jonas.ek@university.se                            ');
INSERT INTO public.person VALUES ('PERS000005', 'Karin                         ', 'Sjoberg                       ', 'karin.sjoberg@university.se                       ');
INSERT INTO public.person VALUES ('PERS000006', 'Lars                          ', 'Holm                          ', 'lars.holm@university.se                           ');
INSERT INTO public.person VALUES ('PERS000007', 'Maria                         ', 'Akesson                       ', 'maria.akesson@university.se                       ');
INSERT INTO public.person VALUES ('PERS000008', 'Oskar                         ', 'Dahl                          ', 'oskar.dahl@university.se                          ');


--
-- Data for Name: skill_set; Type: TABLE DATA; Schema: public; Owner: simonwagstrom
--

INSERT INTO public.skill_set VALUES ('SS00000001');
INSERT INTO public.skill_set VALUES ('SS00000002');
INSERT INTO public.skill_set VALUES ('SS00000003');
INSERT INTO public.skill_set VALUES ('SS00000004');
INSERT INTO public.skill_set VALUES ('SS00000005');
INSERT INTO public.skill_set VALUES ('SS00000006');
INSERT INTO public.skill_set VALUES ('SS00000007');
INSERT INTO public.skill_set VALUES ('SS00000008');


--
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: simonwagstrom
--

INSERT INTO public.employee VALUES ('EMP0000001', 'DEPT000001', 'true', 'Professor                     ', 'PERS000001', 'SS00000001');
INSERT INTO public.employee VALUES ('EMP0000002', 'DEPT000001', 'true', 'Lektor                        ', 'PERS000002', 'SS00000002');
INSERT INTO public.employee VALUES ('EMP0000003', 'DEPT000002', 'true', 'Lektor                        ', 'PERS000003', 'SS00000003');
INSERT INTO public.employee VALUES ('EMP0000004', 'DEPT000002', 'true', 'Adjunkt                       ', 'PERS000004', 'SS00000004');
INSERT INTO public.employee VALUES ('EMP0000005', 'DEPT000003', 'true', 'Lektor                        ', 'PERS000005', 'SS00000005');
INSERT INTO public.employee VALUES ('EMP0000006', 'DEPT000004', 'true', 'Lektor                        ', 'PERS000006', 'SS00000006');
INSERT INTO public.employee VALUES ('EMP0000007', 'DEPT000002', 'true', 'Professor                     ', 'PERS000007', 'SS00000007');
INSERT INTO public.employee VALUES ('EMP0000008', 'DEPT000001', 'true', 'Adjunkt                       ', 'PERS000008', 'SS00000008');


--
-- Data for Name: allocation; Type: TABLE DATA; Schema: public; Owner: simonwagstrom
--

INSERT INTO public.allocation VALUES ('ALLOC00001', 'CINST00001', 'EMP0000003');
INSERT INTO public.allocation VALUES ('ALLOC00002', 'CINST00001', 'EMP0000004');
INSERT INTO public.allocation VALUES ('ALLOC00003', 'CINST00002', 'EMP0000003');
INSERT INTO public.allocation VALUES ('ALLOC00004', 'CINST00002', 'EMP0000007');
INSERT INTO public.allocation VALUES ('ALLOC00005', 'CINST00003', 'EMP0000001');
INSERT INTO public.allocation VALUES ('ALLOC00006', 'CINST00004', 'EMP0000004');
INSERT INTO public.allocation VALUES ('ALLOC00007', 'CINST00005', 'EMP0000005');
INSERT INTO public.allocation VALUES ('ALLOC00008', 'CINST00006', 'EMP0000001');
INSERT INTO public.allocation VALUES ('ALLOC00009', 'CINST00007', 'EMP0000002');
INSERT INTO public.allocation VALUES ('ALLOC00010', 'CINST00008', 'EMP0000002');
INSERT INTO public.allocation VALUES ('ALLOC00011', 'CINST00009', 'EMP0000005');
INSERT INTO public.allocation VALUES ('ALLOC00012', 'CINST00010', 'EMP0000001');
INSERT INTO public.allocation VALUES ('ALLOC00013', 'CINST00011', 'EMP0000003');
INSERT INTO public.allocation VALUES ('ALLOC00014', 'CINST00012', 'EMP0000007');
INSERT INTO public.allocation VALUES ('ALLOC00015', 'CINST00013', 'EMP0000006');
INSERT INTO public.allocation VALUES ('ALLOC00016', 'CINST00014', 'EMP0000002');


--
-- Data for Name: planned_activities; Type: TABLE DATA; Schema: public; Owner: simonwagstrom
--

INSERT INTO public.planned_activities VALUES ('CINST00001', 'ACT0000001', 30);
INSERT INTO public.planned_activities VALUES ('CINST00001', 'ACT0000002', 20);
INSERT INTO public.planned_activities VALUES ('CINST00001', 'ACT0000003', 10);
INSERT INTO public.planned_activities VALUES ('CINST00002', 'ACT0000001', 28);
INSERT INTO public.planned_activities VALUES ('CINST00002', 'ACT0000002', 18);
INSERT INTO public.planned_activities VALUES ('CINST00002', 'ACT0000003', 8);
INSERT INTO public.planned_activities VALUES ('CINST00003', 'ACT0000001', 24);
INSERT INTO public.planned_activities VALUES ('CINST00003', 'ACT0000003', 12);
INSERT INTO public.planned_activities VALUES ('CINST00003', 'ACT0000004', 4);
INSERT INTO public.planned_activities VALUES ('CINST00004', 'ACT0000001', 16);
INSERT INTO public.planned_activities VALUES ('CINST00004', 'ACT0000002', 12);
INSERT INTO public.planned_activities VALUES ('CINST00004', 'ACT0000003', 6);
INSERT INTO public.planned_activities VALUES ('CINST00005', 'ACT0000001', 20);
INSERT INTO public.planned_activities VALUES ('CINST00005', 'ACT0000002', 14);
INSERT INTO public.planned_activities VALUES ('CINST00005', 'ACT0000003', 6);
INSERT INTO public.planned_activities VALUES ('CINST00006', 'ACT0000001', 26);
INSERT INTO public.planned_activities VALUES ('CINST00006', 'ACT0000003', 14);
INSERT INTO public.planned_activities VALUES ('CINST00006', 'ACT0000004', 4);
INSERT INTO public.planned_activities VALUES ('CINST00007', 'ACT0000001', 24);
INSERT INTO public.planned_activities VALUES ('CINST00007', 'ACT0000003', 12);
INSERT INTO public.planned_activities VALUES ('CINST00007', 'ACT0000004', 4);
INSERT INTO public.planned_activities VALUES ('CINST00008', 'ACT0000001', 26);
INSERT INTO public.planned_activities VALUES ('CINST00008', 'ACT0000003', 10);
INSERT INTO public.planned_activities VALUES ('CINST00008', 'ACT0000004', 4);
INSERT INTO public.planned_activities VALUES ('CINST00009', 'ACT0000001', 20);
INSERT INTO public.planned_activities VALUES ('CINST00009', 'ACT0000002', 16);
INSERT INTO public.planned_activities VALUES ('CINST00009', 'ACT0000003', 6);
INSERT INTO public.planned_activities VALUES ('CINST00010', 'ACT0000001', 28);
INSERT INTO public.planned_activities VALUES ('CINST00010', 'ACT0000003', 12);
INSERT INTO public.planned_activities VALUES ('CINST00010', 'ACT0000004', 4);
INSERT INTO public.planned_activities VALUES ('CINST00011', 'ACT0000001', 22);
INSERT INTO public.planned_activities VALUES ('CINST00011', 'ACT0000002', 18);
INSERT INTO public.planned_activities VALUES ('CINST00011', 'ACT0000003', 8);
INSERT INTO public.planned_activities VALUES ('CINST00012', 'ACT0000001', 24);
INSERT INTO public.planned_activities VALUES ('CINST00012', 'ACT0000002', 16);
INSERT INTO public.planned_activities VALUES ('CINST00012', 'ACT0000003', 8);
INSERT INTO public.planned_activities VALUES ('CINST00012', 'ACT0000004', 4);
INSERT INTO public.planned_activities VALUES ('CINST00013', 'ACT0000001', 18);
INSERT INTO public.planned_activities VALUES ('CINST00013', 'ACT0000004', 6);
INSERT INTO public.planned_activities VALUES ('CINST00014', 'ACT0000001', 16);
INSERT INTO public.planned_activities VALUES ('CINST00014', 'ACT0000003', 8);


--
-- Data for Name: salary; Type: TABLE DATA; Schema: public; Owner: simonwagstrom
--

INSERT INTO public.salary VALUES ('EMP0000001', 60000, '2025-01-01', NULL);
INSERT INTO public.salary VALUES ('EMP0000002', 52000, '2025-01-01', NULL);
INSERT INTO public.salary VALUES ('EMP0000003', 53000, '2025-01-01', NULL);
INSERT INTO public.salary VALUES ('EMP0000004', 48000, '2025-01-01', NULL);
INSERT INTO public.salary VALUES ('EMP0000005', 51000, '2025-01-01', NULL);
INSERT INTO public.salary VALUES ('EMP0000006', 50000, '2025-01-01', NULL);
INSERT INTO public.salary VALUES ('EMP0000007', 62000, '2025-01-01', NULL);
INSERT INTO public.salary VALUES ('EMP0000008', 46000, '2025-01-01', NULL);


--
-- Data for Name: skill; Type: TABLE DATA; Schema: public; Owner: simonwagstrom
--

INSERT INTO public.skill VALUES ('SKILL00001', 'Matematik                               ', 'SS00000001');
INSERT INTO public.skill VALUES ('SKILL00002', 'Analys                                  ', 'SS00000001');
INSERT INTO public.skill VALUES ('SKILL00003', 'Programmering                           ', 'SS00000003');
INSERT INTO public.skill VALUES ('SKILL00004', 'Algoritmer                              ', 'SS00000003');
INSERT INTO public.skill VALUES ('SKILL00005', 'Digital design                          ', 'SS00000005');
INSERT INTO public.skill VALUES ('SKILL00006', 'Elektronik                              ', 'SS00000005');
INSERT INTO public.skill VALUES ('SKILL00007', 'Databaser                               ', 'SS00000007');
INSERT INTO public.skill VALUES ('SKILL00008', 'Industriell eko                         ', 'SS00000006');


--
-- PostgreSQL database dump complete
--

\unrestrict GsA4yaalXfUmYRkGrwMdtMmtInzMrOVYaAiQXrUb2FCqMfN5g83aPVJfhOg8bIt

