--
-- PostgreSQL database dump
--

\restrict QZ6vNhaEUcj6nIptSH8FKOGUaNR4mUim3rTvYtKWXNf5osEf1besZXsZze4hdf1

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

INSERT INTO public.activity_type VALUES ('LAB1      ', 'Laboration 1        ', '1.0       ');
INSERT INTO public.activity_type VALUES ('LABA      ', 'Laboration A        ', '1.0       ');
INSERT INTO public.activity_type VALUES ('LABB      ', 'Laboration B        ', '1.0       ');
INSERT INTO public.activity_type VALUES ('INL1      ', 'Inlämningsuppgift   ', '1.0       ');
INSERT INTO public.activity_type VALUES ('TEN1      ', 'Tentamen            ', '1.5       ');
INSERT INTO public.activity_type VALUES ('TENA      ', 'Skriftlig tenta     ', '1.5       ');


--
-- Data for Name: course_layout; Type: TABLE DATA; Schema: public; Owner: simonwagstrom
--

INSERT INTO public.course_layout VALUES ('SF0003    ', 'Introduktion i matematik                          ', 1.5, 10, 100, '2024-08-23');
INSERT INTO public.course_layout VALUES ('SF1689    ', 'Baskurs i matematik                               ', 6.0, 10, 120, '2024-10-21');
INSERT INTO public.course_layout VALUES ('II1308    ', 'Introduktion till programmering                   ', 1.5, 20, 150, '2024-10-22');
INSERT INTO public.course_layout VALUES ('IE1204    ', 'Digital design                                    ', 7.5, 10, 120, '2024-10-24');
INSERT INTO public.course_layout VALUES ('SF1624    ', 'Algebra och geometri                              ', 7.5, 10, 150, '2025-01-09');
INSERT INTO public.course_layout VALUES ('ID1018    ', 'Programmering I                                   ', 7.5, 20, 200, '2025-01-11');
INSERT INTO public.course_layout VALUES ('ID1021    ', 'Algoritmer och datastrukturer                     ', 7.5, 20, 200, '2025-03-14');
INSERT INTO public.course_layout VALUES ('SF1610    ', 'Diskret matematik                                 ', 7.5, 10, 150, '2025-05-27');
INSERT INTO public.course_layout VALUES ('SF1625    ', 'Envariabelanalys                                  ', 7.5, 10, 150, '2025-06-04');
INSERT INTO public.course_layout VALUES ('IE1206    ', 'Inbyggd elektronik                                ', 7.5, 10, 120, '2025-06-12');
INSERT INTO public.course_layout VALUES ('SF1686    ', 'Flervariabelanalys                                ', 7.5, 10, 150, '2025-10-23');
INSERT INTO public.course_layout VALUES ('IS1200    ', 'Datorteknik, grundkurs                            ', 7.5, 20, 200, '2025-09-01');
INSERT INTO public.course_layout VALUES ('IV1351    ', 'Datalagring                                       ', 7.5, 20, 200, '2025-09-01');
INSERT INTO public.course_layout VALUES ('ME1003    ', 'Industriell ekonomi, grundkurs                    ', 6.0, 20, 200, '2025-09-01');


--
-- Data for Name: course_instance; Type: TABLE DATA; Schema: public; Owner: simonwagstrom
--

INSERT INTO public.course_instance VALUES ('CI00000001', 60, 1, 2024, 'SF0003    ');
INSERT INTO public.course_instance VALUES ('CI00000002', 80, 1, 2024, 'II1308    ');
INSERT INTO public.course_instance VALUES ('CI00000003', 45, 2, 2024, 'IE1204    ');
INSERT INTO public.course_instance VALUES ('CI00000004', 75, 2, 2025, 'ID1018    ');
INSERT INTO public.course_instance VALUES ('CI00000005', 70, 3, 2025, 'ID1021    ');
INSERT INTO public.course_instance VALUES ('CI00000006', 65, 2, 2025, 'SF1624    ');
INSERT INTO public.course_instance VALUES ('CI00000007', 60, 4, 2025, 'SF1610    ');
INSERT INTO public.course_instance VALUES ('CI00000008', 55, 4, 2025, 'SF1625    ');
INSERT INTO public.course_instance VALUES ('CI00000009', 50, 1, 2025, 'IS1200    ');
INSERT INTO public.course_instance VALUES ('CI00000010', 40, 3, 2025, 'IV1351    ');


--
-- Data for Name: department; Type: TABLE DATA; Schema: public; Owner: simonwagstrom
--

INSERT INTO public.department VALUES ('D000000001', 'Matematik           ', 'T000000001          ');
INSERT INTO public.department VALUES ('D000000002', 'Datateknik          ', 'T000000002          ');
INSERT INTO public.department VALUES ('D000000003', 'Elektroteknik       ', 'T000000003          ');


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: simonwagstrom
--

INSERT INTO public.person VALUES ('P000000001', 'Anna                          ', 'Andersson                     ', 'anna.andersson@uni.se                             ');
INSERT INTO public.person VALUES ('P000000002', 'Bjorn                         ', 'Berg                          ', 'bjorn.berg@uni.se                                 ');
INSERT INTO public.person VALUES ('P000000003', 'Cecilia                       ', 'Carlsson                      ', 'cecilia.carlsson@uni.se                           ');
INSERT INTO public.person VALUES ('P000000004', 'David                         ', 'Dahl                          ', 'david.dahl@uni.se                                 ');
INSERT INTO public.person VALUES ('P000000005', 'Eva                           ', 'Ek                            ', 'eva.ek@uni.se                                     ');
INSERT INTO public.person VALUES ('P000000006', 'Fredrik                       ', 'Fors                          ', 'fredrik.fors@uni.se                               ');


--
-- Data for Name: skill_set; Type: TABLE DATA; Schema: public; Owner: simonwagstrom
--

INSERT INTO public.skill_set VALUES ('SS00000001');
INSERT INTO public.skill_set VALUES ('SS00000002');
INSERT INTO public.skill_set VALUES ('SS00000003');


--
-- Data for Name: teacher; Type: TABLE DATA; Schema: public; Owner: simonwagstrom
--

INSERT INTO public.teacher VALUES ('T000000001', 'D000000001', 'true', 'Lektor                        ', 'P000000001', 'SS00000001');
INSERT INTO public.teacher VALUES ('T000000002', 'D000000002', 'true', 'Professor                     ', 'P000000002', 'SS00000002');
INSERT INTO public.teacher VALUES ('T000000003', 'D000000003', 'true', 'Adjunkt                       ', 'P000000003', 'SS00000003');
INSERT INTO public.teacher VALUES ('T000000004', 'D000000002', 'true', 'Lektor                        ', 'P000000004', 'SS00000002');
INSERT INTO public.teacher VALUES ('T000000005', 'D000000001', 'true', 'Adjunkt                       ', 'P000000005', 'SS00000001');


--
-- Data for Name: allocation; Type: TABLE DATA; Schema: public; Owner: simonwagstrom
--

INSERT INTO public.allocation VALUES ('A000000001', 'CI00000001', 'T000000001');
INSERT INTO public.allocation VALUES ('A000000002', 'CI00000002', 'T000000002');
INSERT INTO public.allocation VALUES ('A000000003', 'CI00000003', 'T000000003');
INSERT INTO public.allocation VALUES ('A000000004', 'CI00000004', 'T000000002');
INSERT INTO public.allocation VALUES ('A000000005', 'CI00000005', 'T000000004');
INSERT INTO public.allocation VALUES ('A000000006', 'CI00000006', 'T000000001');
INSERT INTO public.allocation VALUES ('A000000007', 'CI00000007', 'T000000005');
INSERT INTO public.allocation VALUES ('A000000008', 'CI00000008', 'T000000005');
INSERT INTO public.allocation VALUES ('A000000009', 'CI00000009', 'T000000003');
INSERT INTO public.allocation VALUES ('A000000010', 'CI00000010', 'T000000004');


--
-- Data for Name: planned_activities; Type: TABLE DATA; Schema: public; Owner: simonwagstrom
--

INSERT INTO public.planned_activities VALUES ('CI00000001', 'TEN1      ', 20);
INSERT INTO public.planned_activities VALUES ('CI00000002', 'LAB1      ', 15);
INSERT INTO public.planned_activities VALUES ('CI00000002', 'TEN1      ', 25);
INSERT INTO public.planned_activities VALUES ('CI00000003', 'LABA      ', 20);
INSERT INTO public.planned_activities VALUES ('CI00000003', 'TENA      ', 30);
INSERT INTO public.planned_activities VALUES ('CI00000004', 'LABB      ', 30);
INSERT INTO public.planned_activities VALUES ('CI00000004', 'TEN1      ', 30);
INSERT INTO public.planned_activities VALUES ('CI00000005', 'INL1      ', 35);
INSERT INTO public.planned_activities VALUES ('CI00000005', 'TEN1      ', 25);
INSERT INTO public.planned_activities VALUES ('CI00000006', 'TEN1      ', 30);
INSERT INTO public.planned_activities VALUES ('CI00000007', 'TEN1      ', 25);
INSERT INTO public.planned_activities VALUES ('CI00000008', 'TEN1      ', 25);
INSERT INTO public.planned_activities VALUES ('CI00000009', 'LAB1      ', 20);
INSERT INTO public.planned_activities VALUES ('CI00000009', 'TEN1      ', 20);
INSERT INTO public.planned_activities VALUES ('CI00000010', 'INL1      ', 30);


--
-- Data for Name: salary; Type: TABLE DATA; Schema: public; Owner: simonwagstrom
--

INSERT INTO public.salary VALUES ('T000000001', '45000     ', '2024-01-01', '2024-12-31');
INSERT INTO public.salary VALUES ('T000000002', '52000     ', '2024-01-01', '2024-12-31');
INSERT INTO public.salary VALUES ('T000000003', '41000     ', '2024-01-01', '2024-12-31');
INSERT INTO public.salary VALUES ('T000000004', '47000     ', '2024-01-01', '2024-12-31');
INSERT INTO public.salary VALUES ('T000000005', '43000     ', '2024-01-01', '2024-12-31');


--
-- Data for Name: skill; Type: TABLE DATA; Schema: public; Owner: simonwagstrom
--

INSERT INTO public.skill VALUES ('SK00000001', 'Analys                                  ', 'SS00000001');
INSERT INTO public.skill VALUES ('SK00000002', 'Algebra                                 ', 'SS00000001');
INSERT INTO public.skill VALUES ('SK00000003', 'Programmering                           ', 'SS00000002');
INSERT INTO public.skill VALUES ('SK00000004', 'Databaser                               ', 'SS00000002');
INSERT INTO public.skill VALUES ('SK00000005', 'Elektronik                              ', 'SS00000003');
INSERT INTO public.skill VALUES ('SK00000006', 'Digital design                          ', 'SS00000003');


--
-- PostgreSQL database dump complete
--

\unrestrict QZ6vNhaEUcj6nIptSH8FKOGUaNR4mUim3rTvYtKWXNf5osEf1besZXsZze4hdf1

