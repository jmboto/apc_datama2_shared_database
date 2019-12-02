--
-- datama2mi182QL database dump
--

-- Dumped from database version 12.0
-- Dumped by pg_dump version 12.0

-- Started on 2019-11-14 14:32:57

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
-- TOC entry 203 (class 1259 OID 32782)
-- Name: applicant; Type: TABLE; Schema: jmboto; Owner: datama2mi182
--

CREATE TABLE jmboto.applicant (
    applicant_id integer NOT NULL,
    applicant_fname character varying(50) NOT NULL,
    applicant_mname character varying(50) NOT NULL,
    applicant_lname character varying(50) NOT NULL,
    applicant_edubg character varying(50) NOT NULL,
    applicant_despos character varying(50) NOT NULL
);


ALTER TABLE jmboto.applicant OWNER TO datama2mi182;

--
-- TOC entry 204 (class 1259 OID 40979)
-- Name: applicant_view; Type: VIEW; Schema: jmboto; Owner: datama2mi182
--

CREATE VIEW jmboto.applicant_view AS
 SELECT applicant.applicant_id,
    applicant.applicant_fname,
    applicant.applicant_mname,
    applicant.applicant_lname,
    applicant.applicant_edubg,
    applicant.applicant_despos
   FROM jmboto.applicant
  WHERE (applicant.applicant_id > 100);


ALTER TABLE jmboto.applicant_view OWNER TO datama2mi182;

--
-- TOC entry 202 (class 1259 OID 32777)
-- Name: employee; Type: TABLE; Schema: jmboto; Owner: datama2mi182
--

CREATE TABLE jmboto.employee (
    employee_id integer NOT NULL,
    emp_fname character varying(50) NOT NULL,
    emp_mname character varying(50) NOT NULL,
    emp_lname character varying(50) NOT NULL,
    emp_pnumber character varying(50) NOT NULL,
    emp_email character varying(50) NOT NULL,
    emp_position character varying(50) NOT NULL,
    emp_hire_date character varying(50) NOT NULL,
    emp_salary character varying(50) NOT NULL
);


ALTER TABLE jmboto.employee OWNER TO datama2mi182;

--
-- TOC entry 205 (class 1259 OID 40983)
-- Name: employee_view; Type: VIEW; Schema: jmboto; Owner: datama2mi182
--

CREATE VIEW jmboto.employee_view AS
 SELECT employee.employee_id,
    employee.emp_fname,
    employee.emp_mname,
    employee.emp_lname,
    employee.emp_pnumber,
    employee.emp_email,
    employee.emp_position,
    employee.emp_hire_date,
    employee.emp_salary
   FROM jmboto.employee
  WHERE (employee.employee_id < 100);


ALTER TABLE jmboto.employee_view OWNER TO datama2mi182;

--
-- TOC entry 2830 (class 0 OID 32782)
-- Dependencies: 203
-- Data for Name: applicant; Type: TABLE DATA; Schema: jmboto; Owner: datama2mi182
--

COPY jmboto.applicant (applicant_id, applicant_fname, applicant_mname, applicant_lname, applicant_edubg, applicant_despos) FROM stdin;
1	joemari	martirez	boto	collegegraduate	developer
3	joemari	martirez	boto	college graduate	developer
\.


--
-- TOC entry 2829 (class 0 OID 32777)
-- Dependencies: 202
-- Data for Name: employee; Type: TABLE DATA; Schema: jmboto; Owner: datama2mi182
--

COPY jmboto.employee (employee_id, emp_fname, emp_mname, emp_lname, emp_pnumber, emp_email, emp_position, emp_hire_date, emp_salary) FROM stdin;
0	Lars	Belicena	Evangelista	094235678743	lars@gmail.com	Manager	March 18	120000
3	antoinette	cruz	lorica	0966813831	antoLor@gmail.com	Human Resource	8/18/2018	27,500
\.


--
-- TOC entry 2700 (class 2606 OID 32786)
-- Name: applicant applicant_pkey; Type: CONSTRAINT; Schema: jmboto; Owner: datama2mi182
--

ALTER TABLE ONLY jmboto.applicant
    ADD CONSTRAINT applicant_pkey PRIMARY KEY (applicant_id);


--
-- TOC entry 2698 (class 2606 OID 32781)
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: jmboto; Owner: datama2mi182
--

ALTER TABLE ONLY jmboto.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (employee_id);


-- Completed on 2019-11-14 14:32:58

--
-- datama2mi182QL database dump complete
--

