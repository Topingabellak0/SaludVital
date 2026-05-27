--
-- PostgreSQL database cluster dump
--

-- Started on 2026-04-29 17:59:54

\restrict QbK6Ve9tjpKXhwKdpX8wucZ9m5VmcrLsdobVgAIg3RhOdL5I5Ug84puus9BQb8M

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE drfashion_user;
ALTER ROLE drfashion_user WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:36q8JptSxra1hV+fszuwJw==$4kgWeY/uBeHwMH8IRxAGK/hQhwEZ8kjUFbpELweTQQQ=:f1vuQDFJVVugxP6+eSF4wTanVvbjDvy64umolxCJ3oU=';
CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:dQSfB4tW9Fjp4fHfr5fY5g==$dba+ZpV/kScvZuqLlTJL30HPa4FLcRpIwEbpoYwYIes=:xj3V1zIviu3+vGRI6L3TP7u23xDAZZnZuASTXaJgAYU=';

--
-- User Configurations
--








\unrestrict QbK6Ve9tjpKXhwKdpX8wucZ9m5VmcrLsdobVgAIg3RhOdL5I5Ug84puus9BQb8M

--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

\restrict KZXFRrCbsxcSchlhgbpVNFCdWtomWjnXr3DRBigHkhUSEZQW6PHnMYtmQD8ifZz

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

-- Started on 2026-04-29 17:59:54

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

-- Completed on 2026-04-29 17:59:55

--
-- PostgreSQL database dump complete
--

\unrestrict KZXFRrCbsxcSchlhgbpVNFCdWtomWjnXr3DRBigHkhUSEZQW6PHnMYtmQD8ifZz

--
-- Database "drfashion_db" dump
--

--
-- PostgreSQL database dump
--

\restrict DfrIC3Z86xKKQhY28qcJ2NbVdoSJLQOidBCQgAq5tzM9wQ06mhk6gNWBR7voTB9

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

-- Started on 2026-04-29 17:59:55

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
-- TOC entry 5097 (class 1262 OID 16388)
-- Name: drfashion_db; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE drfashion_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';


ALTER DATABASE drfashion_db OWNER TO postgres;

\unrestrict DfrIC3Z86xKKQhY28qcJ2NbVdoSJLQOidBCQgAq5tzM9wQ06mhk6gNWBR7voTB9
\connect drfashion_db
\restrict DfrIC3Z86xKKQhY28qcJ2NbVdoSJLQOidBCQgAq5tzM9wQ06mhk6gNWBR7voTB9

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 224 (class 1259 OID 16425)
-- Name: favorites; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.favorites (
    id integer NOT NULL,
    user_id integer,
    product_id integer,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.favorites OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16424)
-- Name: favorites_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.favorites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.favorites_id_seq OWNER TO postgres;

--
-- TOC entry 5099 (class 0 OID 0)
-- Dependencies: 223
-- Name: favorites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.favorites_id_seq OWNED BY public.favorites.id;


--
-- TOC entry 232 (class 1259 OID 16501)
-- Name: password_resets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.password_resets (
    id integer NOT NULL,
    user_id integer,
    token character varying(255) NOT NULL,
    expires_at timestamp without time zone NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.password_resets OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 16500)
-- Name: password_resets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.password_resets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.password_resets_id_seq OWNER TO postgres;

--
-- TOC entry 5101 (class 0 OID 0)
-- Dependencies: 231
-- Name: password_resets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.password_resets_id_seq OWNED BY public.password_resets.id;


--
-- TOC entry 230 (class 1259 OID 16488)
-- Name: product_requests; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_requests (
    id integer NOT NULL,
    product_name character varying(150) NOT NULL,
    user_email character varying(100) NOT NULL,
    status character varying(20) DEFAULT 'pending'::character varying,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    notified_at timestamp without time zone,
    CONSTRAINT product_requests_status_check CHECK (((status)::text = ANY ((ARRAY['pending'::character varying, 'notified'::character varying, 'cancelled'::character varying])::text[])))
);


ALTER TABLE public.product_requests OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16487)
-- Name: product_requests_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_requests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.product_requests_id_seq OWNER TO postgres;

--
-- TOC entry 5103 (class 0 OID 0)
-- Dependencies: 229
-- Name: product_requests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_requests_id_seq OWNED BY public.product_requests.id;


--
-- TOC entry 222 (class 1259 OID 16408)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    price numeric(10,2) NOT NULL,
    category character varying(50) NOT NULL,
    stock integer DEFAULT 0 NOT NULL,
    image_url character varying(500),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    image character varying(255)
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16407)
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_id_seq OWNER TO postgres;

--
-- TOC entry 5105 (class 0 OID 0)
-- Dependencies: 221
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- TOC entry 226 (class 1259 OID 16446)
-- Name: promotions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.promotions (
    id integer NOT NULL,
    title character varying(200) NOT NULL,
    description text,
    discount_percent integer,
    start_date date,
    end_date date,
    image_url character varying(500),
    active boolean DEFAULT true,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    is_active boolean DEFAULT true,
    valid_from date,
    valid_to date
);


ALTER TABLE public.promotions OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16445)
-- Name: promotions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.promotions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.promotions_id_seq OWNER TO postgres;

--
-- TOC entry 5107 (class 0 OID 0)
-- Dependencies: 225
-- Name: promotions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.promotions_id_seq OWNED BY public.promotions.id;


--
-- TOC entry 228 (class 1259 OID 16460)
-- Name: requests; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.requests (
    id integer NOT NULL,
    product_name character varying(200) NOT NULL,
    user_email character varying(100) NOT NULL,
    status character varying(20) DEFAULT 'pending'::character varying,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.requests OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16459)
-- Name: requests_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.requests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.requests_id_seq OWNER TO postgres;

--
-- TOC entry 5109 (class 0 OID 0)
-- Dependencies: 227
-- Name: requests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.requests_id_seq OWNED BY public.requests.id;


--
-- TOC entry 220 (class 1259 OID 16392)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    password character varying(255) NOT NULL,
    role character varying(20) DEFAULT 'user'::character varying NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16391)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 5111 (class 0 OID 0)
-- Dependencies: 219
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 4894 (class 2604 OID 16428)
-- Name: favorites id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favorites ALTER COLUMN id SET DEFAULT nextval('public.favorites_id_seq'::regclass);


--
-- TOC entry 4907 (class 2604 OID 16504)
-- Name: password_resets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.password_resets ALTER COLUMN id SET DEFAULT nextval('public.password_resets_id_seq'::regclass);


--
-- TOC entry 4904 (class 2604 OID 16491)
-- Name: product_requests id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_requests ALTER COLUMN id SET DEFAULT nextval('public.product_requests_id_seq'::regclass);


--
-- TOC entry 4890 (class 2604 OID 16411)
-- Name: products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- TOC entry 4896 (class 2604 OID 16449)
-- Name: promotions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.promotions ALTER COLUMN id SET DEFAULT nextval('public.promotions_id_seq'::regclass);


--
-- TOC entry 4901 (class 2604 OID 16463)
-- Name: requests id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.requests ALTER COLUMN id SET DEFAULT nextval('public.requests_id_seq'::regclass);


--
-- TOC entry 4887 (class 2604 OID 16395)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 5083 (class 0 OID 16425)
-- Dependencies: 224
-- Data for Name: favorites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.favorites (id, user_id, product_id, created_at) FROM stdin;
3	2	4	2026-03-24 11:11:21.001692
7	5	4	2026-03-25 17:56:02.72524
\.


--
-- TOC entry 5091 (class 0 OID 16501)
-- Dependencies: 232
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.password_resets (id, user_id, token, expires_at, created_at) FROM stdin;
1	3	d792abf32ee3101ed9de06258a5564032ca2383ec0abad44885311977c5f7edd	2026-03-24 12:12:58.729	2026-03-24 11:12:58.730458
\.


--
-- TOC entry 5089 (class 0 OID 16488)
-- Dependencies: 230
-- Data for Name: product_requests; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_requests (id, product_name, user_email, status, created_at, notified_at) FROM stdin;
\.


--
-- TOC entry 5081 (class 0 OID 16408)
-- Dependencies: 222
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (id, name, price, category, stock, image_url, created_at, updated_at, image) FROM stdin;
11	Audífonos	250.00	Electrónica	60	/assets/images/1777503652165-634084471.jpg	2026-04-29 17:00:52.171733	2026-04-29 17:00:52.171733	\N
4	Lámpara LED	45.50	Papelería	8	💡	2026-03-23 10:15:30.452008	2026-04-29 16:34:29.300342	\N
6	Mochila	55.00	Papelería	10	🎒	2026-03-23 10:15:30.452008	2026-04-29 16:34:29.265111	\N
13	Vestido elegante	299.99	Boutique	5	👗	2026-04-29 17:37:12.256853	2026-04-29 17:37:12.256853	\N
14	Escoba mágica	49.99	Limpieza	20	🧹	2026-04-29 17:37:12.256853	2026-04-29 17:37:12.256853	\N
15	Mochila	220.00	Papelería	1	/assets/images/1777506534433-594203400.webp	2026-04-29 17:48:54.440237	2026-04-29 17:48:54.440237	\N
17	Nerf	209.98	Regalos	5	/assets/images/1777506841564-51826314.avif	2026-04-29 17:54:01.57266	2026-04-29 17:54:01.57266	\N
29	Pegamento	40.00	Papelería	100	/assets/images/1777506961419-719367040.png	2026-04-29 17:56:01.425592	2026-04-29 17:56:55.630389	\N
7	Pegamento	15.00	Papelería	25	 	2026-03-25 15:31:27.089337	2026-04-29 16:34:29.268598	\N
\.


--
-- TOC entry 5085 (class 0 OID 16446)
-- Dependencies: 226
-- Data for Name: promotions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.promotions (id, title, description, discount_percent, start_date, end_date, image_url, active, created_at, updated_at, is_active, valid_from, valid_to) FROM stdin;
1	30% OFF en limpieza, Aprovecha el descuento en toda la categoría de limpieza	30% OFF en limpieza	30	2026-03-23	2026-04-07	\N	t	2026-03-23 10:15:30.452008	2026-03-25 17:52:44.900658	t	\N	\N
\.


--
-- TOC entry 5087 (class 0 OID 16460)
-- Dependencies: 228
-- Data for Name: requests; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.requests (id, product_name, user_email, status, created_at) FROM stdin;
\.


--
-- TOC entry 5079 (class 0 OID 16392)
-- Dependencies: 220
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, password, role, created_at) FROM stdin;
1	Administrador	admin@drfashion.com	$2b$10$X4ho/3b555N4OkK2paI11.BztKWrvj6Yc6RzbJwOd9rTom2bLvJSi	admin	2026-03-23 10:15:30.452008
2	Usuario Demo	usuario@email.com	$2b$10$fLCxxEJdIItDsMH.La2akuR36PRl3To./7gbrmMB3hUZe5CilWiDu	user	2026-03-23 10:15:30.452008
3	Angel Millan	angelmillanrodea@gmail.com	$2b$10$ZlYg/DFmUUo5yoaoc6IabepL9p0iYF8j8667rlnBgXtw41NNstRn2	user	2026-03-24 11:12:04.762222
4	daira juarez	juarezrayadaira@gmail.com	$2b$10$waTQwulsgL4Mg.cv5VdtZuVqh9eM1pioo.A1jisF6OjtGpUX60E5O	user	2026-03-24 13:39:53.669695
5	Nat G G	gardunonatalia35@gmail.com	$2b$10$K/AOPCZf2y7.K3mJA.tWt.Ag1h0m0gKQ8tLXqyyXXaF9LXFzSeKKa	user	2026-03-25 13:31:33.299596
6	Juan Antonio	antoniocdc27@gmail.com	$2b$10$eCwgMObBbK9KezXYPbvr4eaYAttrsU8E6KkNwyZQbqc2yzrR0lBEe	user	2026-04-29 16:47:56.943029
\.


--
-- TOC entry 5112 (class 0 OID 0)
-- Dependencies: 223
-- Name: favorites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.favorites_id_seq', 7, true);


--
-- TOC entry 5113 (class 0 OID 0)
-- Dependencies: 231
-- Name: password_resets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.password_resets_id_seq', 1, true);


--
-- TOC entry 5114 (class 0 OID 0)
-- Dependencies: 229
-- Name: product_requests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_requests_id_seq', 1, false);


--
-- TOC entry 5115 (class 0 OID 0)
-- Dependencies: 221
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 29, true);


--
-- TOC entry 5116 (class 0 OID 0)
-- Dependencies: 225
-- Name: promotions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.promotions_id_seq', 1, true);


--
-- TOC entry 5117 (class 0 OID 0)
-- Dependencies: 227
-- Name: requests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.requests_id_seq', 1, false);


--
-- TOC entry 5118 (class 0 OID 0)
-- Dependencies: 219
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 6, true);


--
-- TOC entry 4917 (class 2606 OID 16432)
-- Name: favorites favorites_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favorites
    ADD CONSTRAINT favorites_pkey PRIMARY KEY (id);


--
-- TOC entry 4919 (class 2606 OID 16434)
-- Name: favorites favorites_user_id_product_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favorites
    ADD CONSTRAINT favorites_user_id_product_id_key UNIQUE (user_id, product_id);


--
-- TOC entry 4927 (class 2606 OID 16510)
-- Name: password_resets password_resets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.password_resets
    ADD CONSTRAINT password_resets_pkey PRIMARY KEY (id);


--
-- TOC entry 4925 (class 2606 OID 16499)
-- Name: product_requests product_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_requests
    ADD CONSTRAINT product_requests_pkey PRIMARY KEY (id);


--
-- TOC entry 4915 (class 2606 OID 16423)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- TOC entry 4921 (class 2606 OID 16458)
-- Name: promotions promotions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.promotions
    ADD CONSTRAINT promotions_pkey PRIMARY KEY (id);


--
-- TOC entry 4923 (class 2606 OID 16470)
-- Name: requests requests_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.requests
    ADD CONSTRAINT requests_pkey PRIMARY KEY (id);


--
-- TOC entry 4911 (class 2606 OID 16406)
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- TOC entry 4913 (class 2606 OID 16404)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 4928 (class 2606 OID 16440)
-- Name: favorites favorites_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favorites
    ADD CONSTRAINT favorites_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;


--
-- TOC entry 4929 (class 2606 OID 16435)
-- Name: favorites favorites_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favorites
    ADD CONSTRAINT favorites_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- TOC entry 4930 (class 2606 OID 16511)
-- Name: password_resets password_resets_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.password_resets
    ADD CONSTRAINT password_resets_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- TOC entry 5098 (class 0 OID 0)
-- Dependencies: 224
-- Name: TABLE favorites; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.favorites TO drfashion_user;


--
-- TOC entry 5100 (class 0 OID 0)
-- Dependencies: 232
-- Name: TABLE password_resets; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.password_resets TO drfashion_user;


--
-- TOC entry 5102 (class 0 OID 0)
-- Dependencies: 230
-- Name: TABLE product_requests; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.product_requests TO drfashion_user;


--
-- TOC entry 5104 (class 0 OID 0)
-- Dependencies: 222
-- Name: TABLE products; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.products TO drfashion_user;


--
-- TOC entry 5106 (class 0 OID 0)
-- Dependencies: 226
-- Name: TABLE promotions; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.promotions TO drfashion_user;


--
-- TOC entry 5108 (class 0 OID 0)
-- Dependencies: 228
-- Name: TABLE requests; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.requests TO drfashion_user;


--
-- TOC entry 5110 (class 0 OID 0)
-- Dependencies: 220
-- Name: TABLE users; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.users TO drfashion_user;


--
-- TOC entry 2082 (class 826 OID 16390)
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TABLES TO drfashion_user;


-- Completed on 2026-04-29 17:59:55

--
-- PostgreSQL database dump complete
--

\unrestrict DfrIC3Z86xKKQhY28qcJ2NbVdoSJLQOidBCQgAq5tzM9wQ06mhk6gNWBR7voTB9

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

\restrict VUnpIkAM0fynNhh3UhgzBGAt29cQ6t5Da7qazFUsgZvBhMALSo6lNlUmEWyiOdS

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

-- Started on 2026-04-29 17:59:56

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

-- Completed on 2026-04-29 17:59:56

--
-- PostgreSQL database dump complete
--

\unrestrict VUnpIkAM0fynNhh3UhgzBGAt29cQ6t5Da7qazFUsgZvBhMALSo6lNlUmEWyiOdS

-- Completed on 2026-04-29 17:59:56

--
-- PostgreSQL database cluster dump complete
--

