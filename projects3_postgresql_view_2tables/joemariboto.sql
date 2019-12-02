--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 12.0

-- Started on 2019-12-02 14:07:18

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 32 (class 2615 OID 18548)
-- Name: jmboto; Type: SCHEMA; Schema: -; Owner: datama2mi182
--

CREATE SCHEMA jmboto;


ALTER SCHEMA jmboto OWNER TO datama2mi182;

SET default_tablespace = '';

--
-- TOC entry 425 (class 1259 OID 21624)
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
-- TOC entry 426 (class 1259 OID 21635)
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
-- TOC entry 428 (class 1259 OID 21659)
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
-- TOC entry 429 (class 1259 OID 21676)
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
-- TOC entry 4036 (class 0 OID 21624)
-- Dependencies: 425
-- Data for Name: applicant; Type: TABLE DATA; Schema: jmboto; Owner: datama2mi182
--

COPY jmboto.applicant (applicant_id, applicant_fname, applicant_mname, applicant_lname, applicant_edubg, applicant_despos) FROM stdin;
2016214225	Christian	Ignacio	Francisco	College Graduate	Front End Developer
2016214225	Christian	Ignacio	Francisco	College Graduate	Front End Developer
2016214225	Christian	Ignacio	Francisco	College Graduate	Front End Developer
2016214225	Christian	Ignacio	Francisco	College Graduate	Front End Developer
2016214225	Christian	Ignacio	Francisco	College Graduate	Front End Developer
2016214225	Christian	Ignacio	Francisco	College Graduate	Front End Developer
2016214225	Christian	Ignacio	Francisco	College Graduate	Front End Developer
\.


--
-- TOC entry 4037 (class 0 OID 21659)
-- Dependencies: 428
-- Data for Name: employee; Type: TABLE DATA; Schema: jmboto; Owner: datama2mi182
--

COPY jmboto.employee (employee_id, emp_fname, emp_mname, emp_lname, emp_pnumber, emp_email, emp_position, emp_hire_date, emp_salary) FROM stdin;
2015100218	Joemari	Martirez	Boto	09666831813	jmboto12@gmail.com	manager	june2019	45000
2015100218	Joemari	Martirez	Boto	09666831813	jmboto12@gmail.com	manager	june2019	45000
2015100218	Joemari	Martirez	Boto	09666831813	jmboto12@gmail.com	manager	june2019	45000
2015100218	Joemari	Martirez	Boto	09666831813	jmboto12@gmail.com	manager	june2019	45000
2015100218	Joemari	Martirez	Boto	09666831813	jmboto12@gmail.com	manager	june2019	45000
2015100218	Joemari	Martirez	Boto	09666831813	jmboto12@gmail.com	manager	june2019	45000
2015100218	Joemari	Martirez	Boto	09666831813	jmboto12@gmail.com	manager	june2019	45000
\.


-- Completed on 2019-12-02 14:07:19

--
-- PostgreSQL database dump complete
--

