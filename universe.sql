--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    number_of_stars integer NOT NULL,
    distance numeric NOT NULL,
    type text NOT NULL,
    is_visible boolean NOT NULL,
    number_of_planets integer NOT NULL,
    is_big boolean NOT NULL
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
    type text NOT NULL,
    planet_id integer,
    capacity integer NOT NULL,
    is_operational boolean NOT NULL
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
    type text NOT NULL,
    star_id integer,
    mass numeric NOT NULL,
    has_moons boolean NOT NULL
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
-- Name: space_station; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_station (
    space_station_id integer NOT NULL,
    name character varying(100) NOT NULL,
    type text NOT NULL,
    planet_id integer,
    capacity integer NOT NULL
);


ALTER TABLE public.space_station OWNER TO freecodecamp;

--
-- Name: space_station_station_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_station_station_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_station_station_id_seq OWNER TO freecodecamp;

--
-- Name: space_station_station_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_station_station_id_seq OWNED BY public.space_station.space_station_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    type text NOT NULL,
    galaxy_id integer,
    age numeric NOT NULL,
    has_planets numeric NOT NULL
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
-- Name: space_station space_station_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_station ALTER COLUMN space_station_id SET DEFAULT nextval('public.space_station_station_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 250000000, 0.0, 'Spiral', true, 8, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 1000000000, 2.537, 'Spiral', true, 10, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 40000000, 3.0, 'Spiral', true, 2, false);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 100000000, 23.5, 'Spiral', true, 6, true);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 80000000, 31.0, 'Elliptical', true, 5, false);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 120000000, 53.5, 'Elliptical', true, 7, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Natural Satellite', 3, 100, true);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Natural Satellite', 4, 50, true);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Natural Satellite', 4, 30, true);
INSERT INTO public.moon VALUES (4, 'Io', 'Galilean Moon', 5, 89, true);
INSERT INTO public.moon VALUES (5, 'Europa', 'Galilean Moon', 5, 68, true);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Galilean Moon', 5, 148, true);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Galilean Moon', 5, 107, true);
INSERT INTO public.moon VALUES (8, 'Titan', 'Natural Satellite', 6, 120, true);
INSERT INTO public.moon VALUES (9, 'Enceladus', 'Natural Satellite', 6, 45, true);
INSERT INTO public.moon VALUES (10, 'Mimas', 'Natural Satellite', 6, 20, true);
INSERT INTO public.moon VALUES (11, 'Triton', 'Natural Satellite', 8, 50, true);
INSERT INTO public.moon VALUES (12, 'Charon', 'Natural Satellite', 9, 40, true);
INSERT INTO public.moon VALUES (13, 'Dione', 'Natural Satellite', 6, 30, true);
INSERT INTO public.moon VALUES (14, 'Rhea', 'Natural Satellite', 6, 35, true);
INSERT INTO public.moon VALUES (15, 'Hyperion', 'Natural Satellite', 6, 25, true);
INSERT INTO public.moon VALUES (16, 'Miranda', 'Natural Satellite', 10, 15, true);
INSERT INTO public.moon VALUES (17, 'Ariel', 'Natural Satellite', 11, 20, true);
INSERT INTO public.moon VALUES (18, 'Umbriel', 'Natural Satellite', 11, 18, true);
INSERT INTO public.moon VALUES (19, 'Titania', 'Natural Satellite', 11, 30, true);
INSERT INTO public.moon VALUES (20, 'Oberon', 'Natural Satellite', 11, 25, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Terrestrial', 1, 0.055, false);
INSERT INTO public.planet VALUES (2, 'Venus', 'Terrestrial', 1, 0.815, false);
INSERT INTO public.planet VALUES (3, 'Earth', 'Terrestrial', 1, 1.0, true);
INSERT INTO public.planet VALUES (4, 'Mars', 'Terrestrial', 1, 0.107, true);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Gas Giant', 2, 317.8, true);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Gas Giant', 3, 95.2, true);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice Giant', 4, 14.6, true);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Ice Giant', 5, 17.2, true);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Dwarf Planet', 6, 0.002, false);
INSERT INTO public.planet VALUES (10, 'Kepler-186f', 'Exoplanet', 7, 1.47, false);
INSERT INTO public.planet VALUES (11, 'HD 209458 b', 'Exoplanet', 8, 0.69, false);
INSERT INTO public.planet VALUES (12, 'Proxima Centauri b', 'Exoplanet', 9, 1.17, false);


--
-- Data for Name: space_station; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_station VALUES (1, 'International Space Station', 'Research', 3, 100);
INSERT INTO public.space_station VALUES (2, 'Lunar Gateway', 'Research', 3, 50);
INSERT INTO public.space_station VALUES (3, 'Mars Base Alpha', 'Colonization', 4, 30);
INSERT INTO public.space_station VALUES (4, 'Europa Outpost', 'Exploration', 5, 40);
INSERT INTO public.space_station VALUES (5, 'Titan Research Station', 'Research', 6, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G-Type', 1, 4.6, 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 'M-Type', 1, 8.0, 0);
INSERT INTO public.star VALUES (3, 'Sirius', 'A-Type', 1, 0.3, 1);
INSERT INTO public.star VALUES (4, 'Alpha Centauri A', 'G-Type', 1, 4.85, 1);
INSERT INTO public.star VALUES (5, 'Alpha Centauri B', 'K-Type', 1, 4.85, 1);
INSERT INTO public.star VALUES (6, 'Barnard''s Star', 'M-Type', 1, 10.0, 1);
INSERT INTO public.star VALUES (7, 'Proxima Centauri', 'M-Type', 2, 4.85, 1);
INSERT INTO public.star VALUES (8, 'Rigel', 'B-Type', 3, 8.0, 0);
INSERT INTO public.star VALUES (9, 'Vega', 'A-Type', 4, 0.5, 0);
INSERT INTO public.star VALUES (10, 'Polaris', 'F-Type', 5, 7.0, 1);
INSERT INTO public.star VALUES (11, 'Antares', 'M-Type', 6, 12.0, 0);
INSERT INTO public.star VALUES (12, 'Aldebaran', 'K-Type', 6, 6.1, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: space_station_station_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_station_station_id_seq', 5, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: space_station space_station_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_station
    ADD CONSTRAINT space_station_name_key UNIQUE (name);


--
-- Name: space_station space_station_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_station
    ADD CONSTRAINT space_station_pkey PRIMARY KEY (space_station_id);


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
-- Name: moon moon_orbiting_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_orbiting_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: space_station space_station_orbiting_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_station
    ADD CONSTRAINT space_station_orbiting_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

