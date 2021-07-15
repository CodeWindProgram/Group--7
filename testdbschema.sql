--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.3

-- Started on 2021-07-15 16:12:20

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
-- TOC entry 206 (class 1259 OID 16573)
-- Name: test_answer_choice; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.test_answer_choice (
    id bigint NOT NULL,
    testid bigint NOT NULL,
    questionid bigint NOT NULL,
    correct boolean DEFAULT false NOT NULL,
    option_text text
);


ALTER TABLE public.test_answer_choice OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16571)
-- Name: test_answer_choice_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.test_answer_choice_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_answer_choice_id_seq OWNER TO postgres;

--
-- TOC entry 3051 (class 0 OID 0)
-- Dependencies: 205
-- Name: test_answer_choice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.test_answer_choice_id_seq OWNED BY public.test_answer_choice.id;


--
-- TOC entry 204 (class 1259 OID 16460)
-- Name: test_question; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.test_question (
    id bigint NOT NULL,
    testid bigint NOT NULL,
    type character varying(50) NOT NULL,
    content text
);


ALTER TABLE public.test_question OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16458)
-- Name: test_question_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.test_question_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_question_id_seq OWNER TO postgres;

--
-- TOC entry 3052 (class 0 OID 0)
-- Dependencies: 203
-- Name: test_question_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.test_question_id_seq OWNED BY public.test_question.id;


--
-- TOC entry 208 (class 1259 OID 16595)
-- Name: test_result; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.test_result (
    id bigint NOT NULL,
    userid bigint NOT NULL,
    quizid bigint NOT NULL,
    score smallint DEFAULT 0 NOT NULL,
    startedat timestamp without time zone,
    finishedat timestamp without time zone,
    feedback text
);


ALTER TABLE public.test_result OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 16593)
-- Name: test_result_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.test_result_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_result_id_seq OWNER TO postgres;

--
-- TOC entry 3053 (class 0 OID 0)
-- Dependencies: 207
-- Name: test_result_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.test_result_id_seq OWNED BY public.test_result.id;


--
-- TOC entry 202 (class 1259 OID 16412)
-- Name: test_table; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.test_table (
    id integer NOT NULL,
    title character varying(75) NOT NULL,
    score smallint DEFAULT 0 NOT NULL,
    createdat timestamp without time zone NOT NULL,
    updatedat timestamp without time zone,
    publishedat timestamp without time zone,
    startsat timestamp without time zone,
    endsat timestamp without time zone
);


ALTER TABLE public.test_table OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16410)
-- Name: test_table_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.test_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_table_id_seq OWNER TO postgres;

--
-- TOC entry 3054 (class 0 OID 0)
-- Dependencies: 201
-- Name: test_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.test_table_id_seq OWNED BY public.test_table.id;


--
-- TOC entry 200 (class 1259 OID 16395)
-- Name: test_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.test_user (
    id bigint NOT NULL,
    firstname character varying(50) DEFAULT NULL::character varying,
    middlename character varying(50) DEFAULT NULL::character varying,
    lastname character varying(50) DEFAULT NULL::character varying,
    mobile character varying(15) NOT NULL,
    email character varying(50) NOT NULL,
    passwordhash character varying(32) NOT NULL,
    registeredat timestamp without time zone NOT NULL,
    profile text
);


ALTER TABLE public.test_user OWNER TO postgres;

--
-- TOC entry 2882 (class 2604 OID 16576)
-- Name: test_answer_choice id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_answer_choice ALTER COLUMN id SET DEFAULT nextval('public.test_answer_choice_id_seq'::regclass);


--
-- TOC entry 2881 (class 2604 OID 16463)
-- Name: test_question id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_question ALTER COLUMN id SET DEFAULT nextval('public.test_question_id_seq'::regclass);


--
-- TOC entry 2884 (class 2604 OID 16598)
-- Name: test_result id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_result ALTER COLUMN id SET DEFAULT nextval('public.test_result_id_seq'::regclass);


--
-- TOC entry 2879 (class 2604 OID 16415)
-- Name: test_table id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_table ALTER COLUMN id SET DEFAULT nextval('public.test_table_id_seq'::regclass);


--
-- TOC entry 3043 (class 0 OID 16573)
-- Dependencies: 206
-- Data for Name: test_answer_choice; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.test_answer_choice (id, testid, questionid, correct, option_text) FROM stdin;
\.


--
-- TOC entry 3041 (class 0 OID 16460)
-- Dependencies: 204
-- Data for Name: test_question; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.test_question (id, testid, type, content) FROM stdin;
\.


--
-- TOC entry 3045 (class 0 OID 16595)
-- Dependencies: 208
-- Data for Name: test_result; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.test_result (id, userid, quizid, score, startedat, finishedat, feedback) FROM stdin;
\.


--
-- TOC entry 3039 (class 0 OID 16412)
-- Dependencies: 202
-- Data for Name: test_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.test_table (id, title, score, createdat, updatedat, publishedat, startsat, endsat) FROM stdin;
\.


--
-- TOC entry 3037 (class 0 OID 16395)
-- Dependencies: 200
-- Data for Name: test_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.test_user (id, firstname, middlename, lastname, mobile, email, passwordhash, registeredat, profile) FROM stdin;
\.


--
-- TOC entry 3055 (class 0 OID 0)
-- Dependencies: 205
-- Name: test_answer_choice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.test_answer_choice_id_seq', 1, false);


--
-- TOC entry 3056 (class 0 OID 0)
-- Dependencies: 203
-- Name: test_question_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.test_question_id_seq', 1, false);


--
-- TOC entry 3057 (class 0 OID 0)
-- Dependencies: 207
-- Name: test_result_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.test_result_id_seq', 1, false);


--
-- TOC entry 3058 (class 0 OID 0)
-- Dependencies: 201
-- Name: test_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.test_table_id_seq', 1, false);


--
-- TOC entry 2899 (class 2606 OID 16582)
-- Name: test_answer_choice test_answer_choice_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_answer_choice
    ADD CONSTRAINT test_answer_choice_pkey PRIMARY KEY (id);


--
-- TOC entry 2895 (class 2606 OID 16468)
-- Name: test_question test_question_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_question
    ADD CONSTRAINT test_question_pkey PRIMARY KEY (id);


--
-- TOC entry 2901 (class 2606 OID 16604)
-- Name: test_result test_result_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_result
    ADD CONSTRAINT test_result_pkey PRIMARY KEY (id);


--
-- TOC entry 2893 (class 2606 OID 16418)
-- Name: test_table test_table_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_table
    ADD CONSTRAINT test_table_pkey PRIMARY KEY (id);


--
-- TOC entry 2887 (class 2606 OID 16409)
-- Name: test_user test_user_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_user
    ADD CONSTRAINT test_user_email_key UNIQUE (email);


--
-- TOC entry 2889 (class 2606 OID 16407)
-- Name: test_user test_user_mobile_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_user
    ADD CONSTRAINT test_user_mobile_key UNIQUE (mobile);


--
-- TOC entry 2891 (class 2606 OID 16405)
-- Name: test_user test_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_user
    ADD CONSTRAINT test_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2897 (class 2606 OID 16570)
-- Name: test_question uq_testid; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_question
    ADD CONSTRAINT uq_testid UNIQUE (testid);


--
-- TOC entry 2903 (class 2606 OID 16583)
-- Name: test_answer_choice fk_answer_test; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_answer_choice
    ADD CONSTRAINT fk_answer_test FOREIGN KEY (testid) REFERENCES public.test_table(id);


--
-- TOC entry 2904 (class 2606 OID 16588)
-- Name: test_answer_choice fk_ques_options; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_answer_choice
    ADD CONSTRAINT fk_ques_options FOREIGN KEY (questionid) REFERENCES public.test_question(testid);


--
-- TOC entry 2902 (class 2606 OID 16469)
-- Name: test_question fk_question_test; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_question
    ADD CONSTRAINT fk_question_test FOREIGN KEY (testid) REFERENCES public.test_table(id);


--
-- TOC entry 2906 (class 2606 OID 16610)
-- Name: test_result fk_quiz_corr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_result
    ADD CONSTRAINT fk_quiz_corr FOREIGN KEY (quizid) REFERENCES public.test_question(id);


--
-- TOC entry 2905 (class 2606 OID 16605)
-- Name: test_result fk_take_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_result
    ADD CONSTRAINT fk_take_user FOREIGN KEY (userid) REFERENCES public.test_user(id) ON DELETE CASCADE;


-- Completed on 2021-07-15 16:12:20

--
-- PostgreSQL database dump complete
--

