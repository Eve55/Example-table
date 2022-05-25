--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: astronomers; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronomers (
    astronomers_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    born integer
);


ALTER TABLE public.astronomers OWNER TO freecodecamp;

--
-- Name: astronomers_astronomers_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astronomers_astronomers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astronomers_astronomers_id_seq OWNER TO freecodecamp;

--
-- Name: astronomers_astronomers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astronomers_astronomers_id_seq OWNED BY public.astronomers.astronomers_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    description text,
    types character varying(20) NOT NULL,
    distance_from_earth numeric
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
    name character varying(20),
    has_life boolean NOT NULL,
    description text,
    types character varying(20),
    planet_id integer
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
    name character varying(20),
    has_life boolean NOT NULL,
    is_spherical boolean,
    age_in_million_of_years numeric,
    distance_from_earth integer,
    types character varying(20),
    star_id integer
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
    name character varying(20),
    constellation character varying(30),
    types character varying(30) NOT NULL,
    radiation character varying(30),
    galaxy_id integer
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
-- Name: astronomers astronomers_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomers ALTER COLUMN astronomers_id SET DEFAULT nextval('public.astronomers_astronomers_id_seq'::regclass);


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
-- Data for Name: astronomers; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronomers VALUES (1, 'Marc Aaronson', 'sample text', NULL);
INSERT INTO public.astronomers VALUES (2, 'George Ogden Abell', 'sample text', NULL);
INSERT INTO public.astronomers VALUES (3, 'Hiroshi Abe', 'sample text', NULL);
INSERT INTO public.astronomers VALUES (4, 'Antonio Abetti', 'sample text', NULL);
INSERT INTO public.astronomers VALUES (5, 'Giorgio Abetti', 'sample text', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (3, 'Backward', 'The spiral galaxy in the constelattion Centaurus.', 'spiral', 111);
INSERT INTO public.galaxy VALUES (4, 'Black Eye', 'The spiral galaxy in the constellation Coma Berenices.', 'spiral', 17);
INSERT INTO public.galaxy VALUES (5, 'Bodes', 'The spiral galaxy in the constellation Ursa Major', 'spiral', 11.74);
INSERT INTO public.galaxy VALUES (6, 'Butterfly', 'The spiral galaxy in the constellation Virgo.', 'spiral', 3.800);
INSERT INTO public.galaxy VALUES (7, 'Milky Way', 'The Milky Way is the galaxy that includes our Solar System.', 'spiral', 25.000);
INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'The Andromeda Galaxy is one of the few visible to the unaided eye, appearing as a milky blur.', 'elliptical', 2.52);
INSERT INTO public.galaxy VALUES (2, 'Antennae', 'The Antennae Galaxies are a pair of interacting galaxies in the constellation Corvus.', 'irregular', 45.1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', false, 'sample text', NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Deimos', false, 'sample text', NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Phobos', false, 'sample text', NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Amalthea', false, 'sample text', NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Callisto', false, 'sample text', NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Europa', false, 'sample text', NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Ganymede', false, 'sample text', NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Io', false, 'sample text', NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Dione', false, 'sample text', NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Enceladus', false, 'sample text', NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Hyperion', false, 'sample text', NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Lapetus', false, 'sample text', NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Mimas', false, 'sample text', NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Phoebe', false, 'sample text', NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Rhea', false, 'sample text', NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Tethys', false, 'sample text', NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Titan', false, 'sample text', NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Ariel', false, 'sample text', NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Miranda', false, 'sample text', NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Oberon', false, 'sample text', NULL, NULL);
INSERT INTO public.moon VALUES (21, 'Nereid', false, 'sample text', NULL, NULL);
INSERT INTO public.moon VALUES (22, 'Triton', false, 'sample text', NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, true, 4.6, 48, 'the terrestial', NULL);
INSERT INTO public.planet VALUES (2, 'Venus', false, true, 4.6, 38, 'the terrestial', NULL);
INSERT INTO public.planet VALUES (3, 'Earth', true, true, 4.6, 0, 'the terrestial', NULL);
INSERT INTO public.planet VALUES (4, 'Mars', false, true, 4.6, 34, 'the terrestial', NULL);
INSERT INTO public.planet VALUES (5, 'Ceres', false, true, 4.6, 48, 'the giant', NULL);
INSERT INTO public.planet VALUES (6, 'Jupiter', false, false, 4.6, 365, 'the giant', NULL);
INSERT INTO public.planet VALUES (7, 'Saturn', false, false, 4.6, 746, 'the giant', NULL);
INSERT INTO public.planet VALUES (8, 'Uranus', false, true, 4.6, 1116, 'the giant', NULL);
INSERT INTO public.planet VALUES (9, 'Neptune', false, true, 4.6, 2227, 'the giant', NULL);
INSERT INTO public.planet VALUES (10, 'Pluto', false, true, 4.6, 4467, 'the giant', NULL);
INSERT INTO public.planet VALUES (11, 'Charon', false, true, 4.6, 4468, 'the giant', NULL);
INSERT INTO public.planet VALUES (12, 'Eris', false, true, 4.6, 5000, 'the giant', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', NULL, 'Yellow dwarf star', NULL, NULL);
INSERT INTO public.star VALUES (2, 'Sagittarius A', 'Sagittarius', 'Supermassive Black Hole', NULL, NULL);
INSERT INTO public.star VALUES (3, 'Alpheratz', 'Andromeda', 'Hot Blue Star', NULL, NULL);
INSERT INTO public.star VALUES (4, 'Mirach', 'Andromeda', 'Reg Giant Star', NULL, NULL);
INSERT INTO public.star VALUES (5, 'Beta Comae Berenices', 'Coma Berenices', 'Yellow-Orange Dwarf Star', NULL, NULL);
INSERT INTO public.star VALUES (6, 'Alioth', 'Ursa Major', 'White Giant', NULL, NULL);


--
-- Name: astronomers_astronomers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astronomers_astronomers_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 15, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: astronomers astronomers_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomers
    ADD CONSTRAINT astronomers_pkey PRIMARY KEY (astronomers_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_key UNIQUE (planet_id);


--
-- Name: astronomers nameastro; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomers
    ADD CONSTRAINT nameastro UNIQUE (name);


--
-- Name: moon namemoon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT namemoon UNIQUE (name);


--
-- Name: planet nameplanet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT nameplanet UNIQUE (name);


--
-- Name: star namestar; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT namestar UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_key UNIQUE (star_id);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy uniquename; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uniquename UNIQUE (name);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

