--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

-- Started on 2022-06-08 14:28:34

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3364 (class 0 OID 24587)
-- Dependencies: 209
-- Data for Name: companies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.companies (company_id, company_name, phone_number) FROM stdin;
1	Company_1	111
2	Company_2	222
3	Company_3	333
4	Company_4	444
5	Company_5	555
\.


--
-- TOC entry 3365 (class 0 OID 24594)
-- Dependencies: 210
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers (customer_id, customer_name, company_id) FROM stdin;
1	Customer_1	\N
2	Customer_2	\N
3	Customer_3	\N
4	Customer_4	\N
\.


--
-- TOC entry 3367 (class 0 OID 24609)
-- Dependencies: 212
-- Data for Name: gender; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gender (gender_id, gender) FROM stdin;
1	male
2	female
\.


--
-- TOC entry 3368 (class 0 OID 24614)
-- Dependencies: 213
-- Data for Name: developers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.developers (developer_id, name, surname, age, gender_id, company_id) FROM stdin;
1	Name1	Surname1	25	1	1
2	Name2	Surname2	40	2	2
3	Name3	Surname3	65	1	3
4	Name4	Surname4	25	2	4
5	Name5	Surname5	40	1	5
6	Name6	Surname6	65	2	1
7	Name7	Surname7	25	1	2
8	Name8	Surname8	40	2	3
9	Name9	Surname9	65	1	4
10	Name10	Surname10	25	2	5
\.


--
-- TOC entry 3366 (class 0 OID 24604)
-- Dependencies: 211
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.projects (project_id, project_name) FROM stdin;
1	Project_1
2	Project_2
3	Project_3
4	Project_4
5	Project_5
6	Project_6
7	Project_7
8	Project_8
9	Project_9
10	Project_10
\.


--
-- TOC entry 3369 (class 0 OID 24629)
-- Dependencies: 214
-- Data for Name: developer_projects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.developer_projects (dev_proj_id, project_id, developer_id, company_id, customer_id) FROM stdin;
1	1	1	1	1
2	2	2	2	2
3	3	3	3	3
4	4	4	4	4
5	1	5	1	1
6	2	6	2	2
7	3	7	3	3
8	4	8	4	4
9	1	9	1	1
10	2	10	2	2
11	3	1	1	3
\.


--
-- TOC entry 3370 (class 0 OID 24654)
-- Dependencies: 215
-- Data for Name: language; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.language (language_id, language) FROM stdin;
1	Java
2	C++
3	C#
4	JS
\.


--
-- TOC entry 3371 (class 0 OID 24659)
-- Dependencies: 216
-- Data for Name: skill_level; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.skill_level (level_id, level) FROM stdin;
1	junior
2	middle
3	senior
\.


--
-- TOC entry 3372 (class 0 OID 24674)
-- Dependencies: 217
-- Data for Name: developer_skills; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.developer_skills (dev_skill_id, language_id, skill_level_id, developer_id) FROM stdin;
1	1	1	1
2	2	2	2
3	3	3	3
4	4	1	4
5	1	2	5
6	2	3	6
7	3	1	7
8	4	2	8
9	1	3	9
10	2	3	10
11	1	3	10
\.


-- Completed on 2022-06-08 14:28:34

--
-- PostgreSQL database dump complete
--

