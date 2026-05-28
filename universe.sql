--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: debs; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.debs (
    debs_id integer NOT NULL,
    d1 integer NOT NULL,
    d2 text,
    name character varying(30)
);


ALTER TABLE public.debs OWNER TO freecodecamp;

--
-- Name: debs_debs_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.debs_debs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.debs_debs_id_seq OWNER TO freecodecamp;

--
-- Name: debs_debs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.debs_debs_id_seq OWNED BY public.debs.debs_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    num integer,
    fix numeric(5,2),
    txt text NOT NULL,
    logic boolean,
    logic2 boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    num integer,
    planet_id integer,
    puq character varying(30)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    num integer,
    star_id integer,
    puq character varying(30) NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    num integer NOT NULL,
    galaxy_id integer,
    puq character varying(30)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: debs debs_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.debs ALTER COLUMN debs_id SET DEFAULT nextval('public.debs_debs_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: debs; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.debs VALUES (1, 1, '1', 'byaka');
INSERT INTO public.debs VALUES (2, 2, '2', 'byaka');
INSERT INTO public.debs VALUES (3, 3, '3', 'byaka');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'be', 1, 1.00, 'a', true, false);
INSERT INTO public.galaxy VALUES (3, 'boo', 2, 2.00, 'b', true, false);
INSERT INTO public.galaxy VALUES (4, 'hehe', 3, 3.00, 'c', true, false);
INSERT INTO public.galaxy VALUES (5, 'be', 5, 5.00, 'd', true, false);
INSERT INTO public.galaxy VALUES (6, 'boo', 6, 6.00, 'e', true, false);
INSERT INTO public.galaxy VALUES (7, 'hehe', 7, 7.00, 'f', true, false);
INSERT INTO public.galaxy VALUES (1, 'g', 1, 0.00, 'z', true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'be', 1, 2, 'text_2');
INSERT INTO public.moon VALUES (3, 'boo', 2, 2, 'text_3');
INSERT INTO public.moon VALUES (4, 'hehe', 3, 2, 'text_4');
INSERT INTO public.moon VALUES (5, '5', 5, 2, 'text_5');
INSERT INTO public.moon VALUES (6, '6', 6, 2, 'text_6');
INSERT INTO public.moon VALUES (7, '7', 7, 2, 'text_7');
INSERT INTO public.moon VALUES (8, '8', 8, 2, 'text_8');
INSERT INTO public.moon VALUES (9, '9', 9, 2, 'text_9');
INSERT INTO public.moon VALUES (10, '10', 10, 2, 'text_10');
INSERT INTO public.moon VALUES (11, '11', 11, 2, 'text_11');
INSERT INTO public.moon VALUES (12, '12', 12, 2, 'text_12');
INSERT INTO public.moon VALUES (13, '13', 13, 2, 'text_13');
INSERT INTO public.moon VALUES (14, '14', 14, 2, 'text_14');
INSERT INTO public.moon VALUES (15, '15', 15, 2, 'text_15');
INSERT INTO public.moon VALUES (16, '16', 16, 2, 'text_16');
INSERT INTO public.moon VALUES (17, '17', 17, 2, 'text_17');
INSERT INTO public.moon VALUES (18, '18', 18, 2, 'text_18');
INSERT INTO public.moon VALUES (19, '19', 19, 2, 'text_19');
INSERT INTO public.moon VALUES (20, '20', 20, 2, 'text_20');
INSERT INTO public.moon VALUES (21, '21', 21, 2, 'text_21');
INSERT INTO public.moon VALUES (1, 'bibi', 0, 1, 'text_1');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'be', 1, 2, 'text_2');
INSERT INTO public.planet VALUES (3, 'boo', 2, 2, 'text_3');
INSERT INTO public.planet VALUES (4, 'hehe', 3, 2, 'text_4');
INSERT INTO public.planet VALUES (5, 'bgf', 5, 2, 'text_5');
INSERT INTO public.planet VALUES (6, 'bdfo', 6, 2, 'text_6');
INSERT INTO public.planet VALUES (7, 'hhhe', 7, 2, 'text_7');
INSERT INTO public.planet VALUES (8, 'bgf1', 5, 2, 'text_8');
INSERT INTO public.planet VALUES (9, 'bdfo2', 6, 2, 'text_9');
INSERT INTO public.planet VALUES (10, 'hhhe3', 7, 2, 'text_10');
INSERT INTO public.planet VALUES (11, 'bgf4', 5, 2, 'text_11');
INSERT INTO public.planet VALUES (12, 'bdfo5', 6, 2, 'text_12');
INSERT INTO public.planet VALUES (13, 'hhhe6', 7, 2, 'text_13');
INSERT INTO public.planet VALUES (14, 'bgf7', 5, 2, 'text_14');
INSERT INTO public.planet VALUES (15, 'bdfo8', 6, 2, 'text_15');
INSERT INTO public.planet VALUES (16, 'hhhe9', 7, 2, 'text_16');
INSERT INTO public.planet VALUES (1, 'bibi', 0, 1, 'text_1');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'debs', 1, 1, 'text_1');
INSERT INTO public.star VALUES (2, '1', 2, 2, 'text_2');
INSERT INTO public.star VALUES (3, '2', 3, 2, 'text_3');
INSERT INTO public.star VALUES (4, '3', 4, 2, 'text_4');
INSERT INTO public.star VALUES (5, '5', 3, 2, 'text_5');
INSERT INTO public.star VALUES (6, '6', 4, 2, 'text_6');
INSERT INTO public.star VALUES (7, '7', 5, 2, 'text_7');


--
-- Name: debs_debs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.debs_debs_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: debs debs_d1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.debs
    ADD CONSTRAINT debs_d1_key UNIQUE (d1);


--
-- Name: debs debs_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.debs
    ADD CONSTRAINT debs_pkey PRIMARY KEY (debs_id);


--
-- Name: galaxy galaxy_fix_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_fix_key UNIQUE (fix);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_txt_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_txt_key UNIQUE (txt);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey1 FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

