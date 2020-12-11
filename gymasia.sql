--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

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
-- Name: categoria_pase; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categoria_pase (
    id_categoria_pase bigint NOT NULL,
    nombre_categoria character varying(30),
    precio_categoria numeric
);


ALTER TABLE public.categoria_pase OWNER TO postgres;

--
-- Name: categoria_pase_id_categoria_pase_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categoria_pase_id_categoria_pase_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categoria_pase_id_categoria_pase_seq OWNER TO postgres;

--
-- Name: categoria_pase_id_categoria_pase_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categoria_pase_id_categoria_pase_seq OWNED BY public.categoria_pase.id_categoria_pase;


--
-- Name: clase; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clase (
    id_clases bigint NOT NULL,
    nombre_clase character varying(30)
);


ALTER TABLE public.clase OWNER TO postgres;

--
-- Name: clase_id_clases_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clase_id_clases_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clase_id_clases_seq OWNER TO postgres;

--
-- Name: clase_id_clases_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clase_id_clases_seq OWNED BY public.clase.id_clases;


--
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    id_cliente bigint NOT NULL,
    nombre character varying(100),
    apellido character varying(100),
    telefono numeric,
    email character varying(100),
    dia_pago numeric,
    id_suscripcion integer
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- Name: cliente_id_cliente_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cliente_id_cliente_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cliente_id_cliente_seq OWNER TO postgres;

--
-- Name: cliente_id_cliente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cliente_id_cliente_seq OWNED BY public.cliente.id_cliente;


--
-- Name: pase_diario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pase_diario (
    id_pase_diario bigint NOT NULL,
    id_categoria_pase integer,
    id_cliente integer,
    fecha_pase_diario date,
    descripcion_pase_diario character varying(30)
);


ALTER TABLE public.pase_diario OWNER TO postgres;

--
-- Name: pase_diario_id_pase_diario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pase_diario_id_pase_diario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pase_diario_id_pase_diario_seq OWNER TO postgres;

--
-- Name: pase_diario_id_pase_diario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pase_diario_id_pase_diario_seq OWNED BY public.pase_diario.id_pase_diario;


--
-- Name: pasediario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pasediario (
    id bigint NOT NULL,
    id_categoria_pase integer,
    id_cliente integer,
    fecha date,
    descripcion_pase_diario character varying(30)
);


ALTER TABLE public.pasediario OWNER TO postgres;

--
-- Name: pasediario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pasediario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pasediario_id_seq OWNER TO postgres;

--
-- Name: pasediario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pasediario_id_seq OWNED BY public.pasediario.id;


--
-- Name: suscripcion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.suscripcion (
    id_suscripcion bigint NOT NULL,
    nombre_suscripcion character varying(50),
    detalle_suscripcion character varying(100),
    precio_suscripcion numeric
);


ALTER TABLE public.suscripcion OWNER TO postgres;

--
-- Name: suscripcion_id_suscripcion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.suscripcion_id_suscripcion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.suscripcion_id_suscripcion_seq OWNER TO postgres;

--
-- Name: suscripcion_id_suscripcion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.suscripcion_id_suscripcion_seq OWNED BY public.suscripcion.id_suscripcion;


--
-- Name: tipo_producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipo_producto (
    id_tipo_producto bigint NOT NULL,
    nombre_producto character varying(30),
    precio_producto numeric
);


ALTER TABLE public.tipo_producto OWNER TO postgres;

--
-- Name: tipo_producto_id_tipo_producto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipo_producto_id_tipo_producto_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipo_producto_id_tipo_producto_seq OWNER TO postgres;

--
-- Name: tipo_producto_id_tipo_producto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipo_producto_id_tipo_producto_seq OWNED BY public.tipo_producto.id_tipo_producto;


--
-- Name: transaccion_venta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transaccion_venta (
    id_transaccion_venta bigint NOT NULL,
    id_cliente integer,
    id_tipo_producto integer,
    fecha_venta date,
    cantidad numeric
);


ALTER TABLE public.transaccion_venta OWNER TO postgres;

--
-- Name: transaccion_venta_id_transaccion_venta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.transaccion_venta_id_transaccion_venta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.transaccion_venta_id_transaccion_venta_seq OWNER TO postgres;

--
-- Name: transaccion_venta_id_transaccion_venta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.transaccion_venta_id_transaccion_venta_seq OWNED BY public.transaccion_venta.id_transaccion_venta;


--
-- Name: categoria_pase id_categoria_pase; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria_pase ALTER COLUMN id_categoria_pase SET DEFAULT nextval('public.categoria_pase_id_categoria_pase_seq'::regclass);


--
-- Name: clase id_clases; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clase ALTER COLUMN id_clases SET DEFAULT nextval('public.clase_id_clases_seq'::regclass);


--
-- Name: cliente id_cliente; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente ALTER COLUMN id_cliente SET DEFAULT nextval('public.cliente_id_cliente_seq'::regclass);


--
-- Name: pase_diario id_pase_diario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pase_diario ALTER COLUMN id_pase_diario SET DEFAULT nextval('public.pase_diario_id_pase_diario_seq'::regclass);


--
-- Name: pasediario id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pasediario ALTER COLUMN id SET DEFAULT nextval('public.pasediario_id_seq'::regclass);


--
-- Name: suscripcion id_suscripcion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.suscripcion ALTER COLUMN id_suscripcion SET DEFAULT nextval('public.suscripcion_id_suscripcion_seq'::regclass);


--
-- Name: tipo_producto id_tipo_producto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_producto ALTER COLUMN id_tipo_producto SET DEFAULT nextval('public.tipo_producto_id_tipo_producto_seq'::regclass);


--
-- Name: transaccion_venta id_transaccion_venta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaccion_venta ALTER COLUMN id_transaccion_venta SET DEFAULT nextval('public.transaccion_venta_id_transaccion_venta_seq'::regclass);


--
-- Data for Name: categoria_pase; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categoria_pase (id_categoria_pase, nombre_categoria, precio_categoria) FROM stdin;
1	pase diario tarde	5000
2	pase diario ma¤ana	5000
3	pase semanal tarde	3000
4	pase semanal ma¤ana	3000
\.


--
-- Data for Name: clase; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clase (id_clases, nombre_clase) FROM stdin;
1	crossfit
2	yoga
3	localizado
4	spinning
5	baile fitness
6	nataci¢n
7	defensa personal
\.


--
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cliente (id_cliente, nombre, apellido, telefono, email, dia_pago, id_suscripcion) FROM stdin;
1	Rosa	Araneda	925416325	klajsm@email.com	15	1
2	Jose	Perez	936251235	kajsla@email.com	20	20
3	Camila	Sanchez	987456321	kajhs@email.com	14	3
4	Josefa	Henriquez	926125252	pq¤l@gmail.com	27	14
5	Daniela	Perez	937452514	¤khhg@email.com	9	5
6	Jazmin	Palacios	946326523	qposk@email.com	6	6
7	Valentina	Figueroa	921452142	dskjhf@email.com	7	7
8	Constanza	Retamales	931541274	a¤ljsa@email.com	7	8
9	Belen	Araya	965412125	qmznxj@email.com	9	10
10	Rafael	Garay	921212140	mznzka@email.com	9	9
11	Carlos	Valdivia	923122336	jais@email.com	4	13
12	Valeska	Soro	941141451	lajaa@email.com	5	12
13	Roc¡o	Miranda	954545454	lkaa@email.com	5	15
14	Tamara	Valdivia	945451212	iuqiqu@email.com	3	11
15	Romina	Valenzuela	921212145	poqpoq@email.com	8	14
16	Tomas	Aguirre	923543432	mcnjd@email.com	8	20
17	Juan	Veloso	954545478	¤alaks@email.com	2	18
18	Claudia	Armijo	963256325	jajajha@email.com	2	19
19	Priscila	Avello	987457845	jpepe@email.com	1	19
20	Antonio	Martinez	945414243	mzkaka@email.com	1	17
\.


--
-- Data for Name: pase_diario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pase_diario (id_pase_diario, id_categoria_pase, id_cliente, fecha_pase_diario, descripcion_pase_diario) FROM stdin;
1	1	2	2020-04-12	pase diario tarde
2	1	2	2020-04-12	pase diario tarde
3	2	3	2020-10-01	pase semanal ma¤ana
\.


--
-- Data for Name: pasediario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pasediario (id, id_categoria_pase, id_cliente, fecha, descripcion_pase_diario) FROM stdin;
\.


--
-- Data for Name: suscripcion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.suscripcion (id_suscripcion, nombre_suscripcion, detalle_suscripcion, precio_suscripcion) FROM stdin;
1	anualfull	liberado	1000000
2	semestralfull	liberado	580000
3	trimestralfull	liberado	320000
4	mensualfull	liberado	120000
5	nocturnafull	liberado	500000
6	anualgolden	3 clases + 2 hr musculacion personalizada con entrenador	800000
7	semestralgolden	3 clases + 2 hr musculacion personalizada con entrenador	450000
8	trimestralgolden	3 clases + 2 hr musculacion personalizada con entrenador	280000
9	mensualgolden	3 clases + 2 hr musculacion personalizada con entrenador	100000
10	nocturnagolden	3 clases + 2 hr musculacion personalizada con entrenador	350000
11	anualsilver	3 veces a la semana de 3 hr	700000
12	semestralsilver	3 veces a la semana de 3 hr	370000
13	trimestralsilver	3 veces a la semana de 3 hr	230000
14	mensualsilver	3 veces a la semana de 3 hr	90000
15	nocturnasilver	3 veces a la semana de 3 hr	200000
16	anualbronce	2 veces a la semana 2 horas	400000
17	semestralbronce	2 veces a la semana 2 horas	220000
18	trimestralbronce	2 veces a la semana 2 horas	150000
19	mensualbronce	2 veces a la semana 2 horas	70000
20	nocturnabronce	2 veces a la semana 2 horas	80000
\.


--
-- Data for Name: tipo_producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipo_producto (id_tipo_producto, nombre_producto, precio_producto) FROM stdin;
1	Energ‚tica	2000
2	Agua	500
3	Barra prote¡na	1000
4	Fruta	500
5	Toalla	10000
6	Pack £tiles aseo	10000
7	Caf‚	1000
8	S ndwich	2000
9	Gorro piscina	3000
10	mancuernas 2kg	8000
\.


--
-- Data for Name: transaccion_venta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transaccion_venta (id_transaccion_venta, id_cliente, id_tipo_producto, fecha_venta, cantidad) FROM stdin;
5	1	2	2020-03-12	3
6	3	5	2020-07-14	1
7	10	10	2020-09-23	5
8	15	6	2020-11-07	2
\.


--
-- Name: categoria_pase_id_categoria_pase_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categoria_pase_id_categoria_pase_seq', 4, true);


--
-- Name: clase_id_clases_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clase_id_clases_seq', 7, true);


--
-- Name: cliente_id_cliente_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cliente_id_cliente_seq', 20, true);


--
-- Name: pase_diario_id_pase_diario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pase_diario_id_pase_diario_seq', 3, true);


--
-- Name: pasediario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pasediario_id_seq', 1, false);


--
-- Name: suscripcion_id_suscripcion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.suscripcion_id_suscripcion_seq', 20, true);


--
-- Name: tipo_producto_id_tipo_producto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipo_producto_id_tipo_producto_seq', 10, true);


--
-- Name: transaccion_venta_id_transaccion_venta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.transaccion_venta_id_transaccion_venta_seq', 8, true);


--
-- Name: categoria_pase categoria_pase_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria_pase
    ADD CONSTRAINT categoria_pase_pkey PRIMARY KEY (id_categoria_pase);


--
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id_cliente);


--
-- Name: pase_diario pase_diario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pase_diario
    ADD CONSTRAINT pase_diario_pkey PRIMARY KEY (id_pase_diario);


--
-- Name: pasediario pasediario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pasediario
    ADD CONSTRAINT pasediario_pkey PRIMARY KEY (id);


--
-- Name: suscripcion suscripcion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.suscripcion
    ADD CONSTRAINT suscripcion_pkey PRIMARY KEY (id_suscripcion);


--
-- Name: tipo_producto tipo_producto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_producto
    ADD CONSTRAINT tipo_producto_pkey PRIMARY KEY (id_tipo_producto);


--
-- Name: transaccion_venta transaccion_venta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaccion_venta
    ADD CONSTRAINT transaccion_venta_pkey PRIMARY KEY (id_transaccion_venta);


--
-- Name: transaccion_venta fk_cliente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaccion_venta
    ADD CONSTRAINT fk_cliente FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente) ON DELETE SET NULL;


--
-- Name: pasediario fk_id_categoria_pase; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pasediario
    ADD CONSTRAINT fk_id_categoria_pase FOREIGN KEY (id_categoria_pase) REFERENCES public.categoria_pase(id_categoria_pase) ON DELETE SET NULL;


--
-- Name: pase_diario fk_id_categoria_pase; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pase_diario
    ADD CONSTRAINT fk_id_categoria_pase FOREIGN KEY (id_categoria_pase) REFERENCES public.categoria_pase(id_categoria_pase) ON DELETE SET NULL;


--
-- Name: pasediario fk_id_cliente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pasediario
    ADD CONSTRAINT fk_id_cliente FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente) ON DELETE SET NULL;


--
-- Name: pase_diario fk_id_cliente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pase_diario
    ADD CONSTRAINT fk_id_cliente FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente) ON DELETE SET NULL;


--
-- Name: cliente fk_id_suscripcion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT fk_id_suscripcion FOREIGN KEY (id_suscripcion) REFERENCES public.suscripcion(id_suscripcion) ON DELETE SET NULL;


--
-- Name: transaccion_venta fk_id_tipo_producto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaccion_venta
    ADD CONSTRAINT fk_id_tipo_producto FOREIGN KEY (id_tipo_producto) REFERENCES public.tipo_producto(id_tipo_producto) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

