--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6
-- Dumped by pg_dump version 10.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: vz; Type: SCHEMA; Schema: -; Owner: vz
--

CREATE SCHEMA vz;


ALTER SCHEMA vz OWNER TO vz;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: migrations; Type: TABLE; Schema: vz; Owner: vz
--

CREATE TABLE vz.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE vz.migrations OWNER TO vz;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: vz; Owner: vz
--

CREATE SEQUENCE vz.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vz.migrations_id_seq OWNER TO vz;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: vz; Owner: vz
--

ALTER SEQUENCE vz.migrations_id_seq OWNED BY vz.migrations.id;


--
-- Name: password_resets; Type: TABLE; Schema: vz; Owner: vz
--

CREATE TABLE vz.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE vz.password_resets OWNER TO vz;

--
-- Name: users; Type: TABLE; Schema: vz; Owner: vz
--

CREATE TABLE vz.users (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE vz.users OWNER TO vz;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: vz; Owner: vz
--

CREATE SEQUENCE vz.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vz.users_id_seq OWNER TO vz;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: vz; Owner: vz
--

ALTER SEQUENCE vz.users_id_seq OWNED BY vz.users.id;


--
-- Name: migrations id; Type: DEFAULT; Schema: vz; Owner: vz
--

ALTER TABLE ONLY vz.migrations ALTER COLUMN id SET DEFAULT nextval('vz.migrations_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: vz; Owner: vz
--

ALTER TABLE ONLY vz.users ALTER COLUMN id SET DEFAULT nextval('vz.users_id_seq'::regclass);


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: vz; Owner: vz
--

COPY vz.migrations (id, migration, batch) FROM stdin;
1	2014_10_12_000000_create_users_table	1
2	2014_10_12_100000_create_password_resets_table	1
\.


--
-- Data for Name: password_resets; Type: TABLE DATA; Schema: vz; Owner: vz
--

COPY vz.password_resets (email, token, created_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: vz; Owner: vz
--

COPY vz.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
2	zvonlexa	zvon.lexa@yandex.ru	\N	$2y$10$Fl6GNXlixTTkoO830f9Zl.duMUe9PJe02vTJUNszTdSoNKwDR9dou	\N	2019-01-04 13:34:17	2019-01-04 13:34:17
1	Алексей	admin@site.com	\N	$2y$10$Fg/1I39sUAbDEltVCaZMdOwqmV.XTX.V4oECjWYt3myvsITMf.FLe	uLeLgpwht0efwT4k5yaSwzJ75a4u4RsZ7rXwGQZZBkidGbDh2Zh0lvk6t6vG	2018-12-13 13:53:35	2018-12-13 13:53:35
\.


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: vz; Owner: vz
--

SELECT pg_catalog.setval('vz.migrations_id_seq', 2, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: vz; Owner: vz
--

SELECT pg_catalog.setval('vz.users_id_seq', 2, true);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: vz; Owner: vz
--

ALTER TABLE ONLY vz.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: vz; Owner: vz
--

ALTER TABLE ONLY vz.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: vz; Owner: vz
--

ALTER TABLE ONLY vz.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: password_resets_email_index; Type: INDEX; Schema: vz; Owner: vz
--

CREATE INDEX password_resets_email_index ON vz.password_resets USING btree (email);


--
-- PostgreSQL database dump complete
--

