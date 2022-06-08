--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

-- Started on 2022-06-08 14:26:27

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 209 (class 1259 OID 24587)
-- Name: companies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.companies (
    company_id integer NOT NULL,
    company_name character varying(100),
    phone_number integer
);


ALTER TABLE public.companies OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 24594)
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    customer_id integer NOT NULL,
    customer_name character varying(100),
    company_id integer
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 24629)
-- Name: developer_projects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.developer_projects (
    dev_proj_id integer NOT NULL,
    project_id integer,
    developer_id integer,
    company_id integer,
    customer_id integer
);


ALTER TABLE public.developer_projects OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 24674)
-- Name: developer_skills; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.developer_skills (
    dev_skill_id integer NOT NULL,
    language_id integer,
    skill_level_id integer,
    developer_id integer
);


ALTER TABLE public.developer_skills OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 24614)
-- Name: developers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.developers (
    developer_id integer NOT NULL,
    name character varying(20),
    surname character varying(25) NOT NULL,
    age integer,
    gender_id integer,
    company_id integer
);


ALTER TABLE public.developers OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 24609)
-- Name: gender; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gender (
    gender_id integer NOT NULL,
    gender character varying(10)
);


ALTER TABLE public.gender OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 24654)
-- Name: language; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.language (
    language_id integer NOT NULL,
    language character varying(20)
);


ALTER TABLE public.language OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 24604)
-- Name: projects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projects (
    project_id integer NOT NULL,
    project_name character varying(100)
);


ALTER TABLE public.projects OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 24659)
-- Name: skill_level; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.skill_level (
    level_id integer NOT NULL,
    level character varying(10)
);


ALTER TABLE public.skill_level OWNER TO postgres;

--
-- TOC entry 3196 (class 2606 OID 24593)
-- Name: companies companies_phone_number_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.companies
    ADD CONSTRAINT companies_phone_number_key UNIQUE (phone_number);


--
-- TOC entry 3198 (class 2606 OID 24591)
-- Name: companies companies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.companies
    ADD CONSTRAINT companies_pkey PRIMARY KEY (company_id);


--
-- TOC entry 3200 (class 2606 OID 24598)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- TOC entry 3208 (class 2606 OID 24633)
-- Name: developer_projects developer_projects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.developer_projects
    ADD CONSTRAINT developer_projects_pkey PRIMARY KEY (dev_proj_id);


--
-- TOC entry 3214 (class 2606 OID 24678)
-- Name: developer_skills developer_skills_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.developer_skills
    ADD CONSTRAINT developer_skills_pkey PRIMARY KEY (dev_skill_id);


--
-- TOC entry 3206 (class 2606 OID 24618)
-- Name: developers developers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.developers
    ADD CONSTRAINT developers_pkey PRIMARY KEY (developer_id);


--
-- TOC entry 3204 (class 2606 OID 24613)
-- Name: gender gender_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gender
    ADD CONSTRAINT gender_pkey PRIMARY KEY (gender_id);


--
-- TOC entry 3210 (class 2606 OID 24658)
-- Name: language language_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.language
    ADD CONSTRAINT language_pkey PRIMARY KEY (language_id);


--
-- TOC entry 3202 (class 2606 OID 24608)
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (project_id);


--
-- TOC entry 3212 (class 2606 OID 24663)
-- Name: skill_level skill_level_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.skill_level
    ADD CONSTRAINT skill_level_pkey PRIMARY KEY (level_id);


--
-- TOC entry 3215 (class 2606 OID 24599)
-- Name: customers customers_company_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_company_id_fkey FOREIGN KEY (company_id) REFERENCES public.companies(company_id);


--
-- TOC entry 3220 (class 2606 OID 24644)
-- Name: developer_projects developer_projects_company_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.developer_projects
    ADD CONSTRAINT developer_projects_company_id_fkey FOREIGN KEY (company_id) REFERENCES public.companies(company_id);


--
-- TOC entry 3221 (class 2606 OID 24649)
-- Name: developer_projects developer_projects_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.developer_projects
    ADD CONSTRAINT developer_projects_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);


--
-- TOC entry 3219 (class 2606 OID 24639)
-- Name: developer_projects developer_projects_developer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.developer_projects
    ADD CONSTRAINT developer_projects_developer_id_fkey FOREIGN KEY (developer_id) REFERENCES public.developers(developer_id);


--
-- TOC entry 3218 (class 2606 OID 24634)
-- Name: developer_projects developer_projects_project_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.developer_projects
    ADD CONSTRAINT developer_projects_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.projects(project_id);


--
-- TOC entry 3224 (class 2606 OID 24689)
-- Name: developer_skills developer_skills_developer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.developer_skills
    ADD CONSTRAINT developer_skills_developer_id_fkey FOREIGN KEY (developer_id) REFERENCES public.developers(developer_id);


--
-- TOC entry 3222 (class 2606 OID 24679)
-- Name: developer_skills developer_skills_language_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.developer_skills
    ADD CONSTRAINT developer_skills_language_id_fkey FOREIGN KEY (language_id) REFERENCES public.language(language_id);


--
-- TOC entry 3223 (class 2606 OID 24684)
-- Name: developer_skills developer_skills_skill_level_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.developer_skills
    ADD CONSTRAINT developer_skills_skill_level_id_fkey FOREIGN KEY (skill_level_id) REFERENCES public.skill_level(level_id);


--
-- TOC entry 3217 (class 2606 OID 24624)
-- Name: developers developers_company_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.developers
    ADD CONSTRAINT developers_company_id_fkey FOREIGN KEY (company_id) REFERENCES public.companies(company_id);


--
-- TOC entry 3216 (class 2606 OID 24619)
-- Name: developers developers_gender_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.developers
    ADD CONSTRAINT developers_gender_id_fkey FOREIGN KEY (gender_id) REFERENCES public.gender(gender_id);


-- Completed on 2022-06-08 14:26:28

--
-- PostgreSQL database dump complete
--

