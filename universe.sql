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
-- Name: asteroids; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroids (
    asteroids_id integer NOT NULL,
    name character varying,
    planet_range integer NOT NULL,
    planet_distance integer NOT NULL,
    star_distance numeric
);


ALTER TABLE public.asteroids OWNER TO freecodecamp;

--
-- Name: asteroids_asteroids_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroids_asteroids_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroids_asteroids_id_seq OWNER TO freecodecamp;

--
-- Name: asteroids_asteroids_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroids_asteroids_id_seq OWNED BY public.asteroids.asteroids_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying,
    number_of_systems integer NOT NULL,
    distances integer,
    types_of_species numeric NOT NULL,
    spiral_galaxy boolean,
    elliptical_galaxy boolean,
    type_of_galaxy text
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
    name character varying,
    planetary_revolutions integer NOT NULL,
    distance_from_planet integer,
    distance_from_star numeric NOT NULL,
    regular_moon boolean,
    irregular_moon boolean,
    type_of_moon text,
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
    name character varying,
    number_of_moons integer NOT NULL,
    days_for_revolution integer NOT NULL,
    nearest_planet_distance numeric,
    terrestrial_planet boolean,
    giant_planet boolean,
    type_of_planet text,
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
    name character varying,
    number_of_planets integer NOT NULL,
    light_intensity integer,
    nearest_star_distance numeric NOT NULL,
    red_giant_star boolean,
    super_giants_star boolean,
    type_of_star text,
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
-- Name: asteroids asteroids_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids ALTER COLUMN asteroids_id SET DEFAULT nextval('public.asteroids_asteroids_id_seq'::regclass);


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
-- Data for Name: asteroids; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroids VALUES (1, 'askld', 2434, 98435, 239847);
INSERT INTO public.asteroids VALUES (2, 'ceres', 1, 414000, 413700000);
INSERT INTO public.asteroids VALUES (3, 'pallas', 2, 512000, 414000000);
INSERT INTO public.asteroids VALUES (4, 'vesta', 3, 353000, 412500000);
INSERT INTO public.asteroids VALUES (5, 'hygiea', 2, 435000, 415200000);
INSERT INTO public.asteroids VALUES (6, 'euphrosyne', 3, 628000, 416800000);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 10000, 457698, 567890000, false, true, 'elliptical');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 8278528, 1252622, 52152893582, true, false, 'spiral');
INSERT INTO public.galaxy VALUES (3, 'Sombrero', 245454, 28459, 8927540987, false, false, 'irregular');
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 925487, 908709, 298475, false, false, 'triangular');
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 9874, 854762, 251478596, true, false, 'spiral');
INSERT INTO public.galaxy VALUES (6, 'Cigar', 215286, 7029587, 9827345, false, true, 'elliptical');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (3, 'luna', 3, 384400, 149600000.0, true, false, 'natural satellite', 2);
INSERT INTO public.moon VALUES (4, 'phobos', 1, 9376, 227940000.0, true, false, 'inner moon', 3);
INSERT INTO public.moon VALUES (5, 'deimos', 2, 23460, 227940000.0, true, false, 'outer moon', 4);
INSERT INTO public.moon VALUES (6, 'europa', 4, 671000, 778500000.0, true, false, 'icy moon', 5);
INSERT INTO public.moon VALUES (7, 'ganymede', 5, 1070400, 778500000.0, true, false, 'largest moon', 6);
INSERT INTO public.moon VALUES (8, 'callisto', 6, 1883000, 778500000.0, true, false, 'outer large moon', 7);
INSERT INTO public.moon VALUES (9, 'io', 7, 421700, 778500000.0, true, false, 'volcanic moon', 8);
INSERT INTO public.moon VALUES (10, 'titan', 8, 1221870, 1434000000.0, true, false, 'thick atmosphere moon', 9);
INSERT INTO public.moon VALUES (11, 'rhea', 9, 527040, 1434000000.0, true, false, 'regular moon', 10);
INSERT INTO public.moon VALUES (12, 'tethys', 10, 294660, 1434000000.0, true, false, 'inner moon', 11);
INSERT INTO public.moon VALUES (13, 'dione', 11, 377400, 1434000000.0, true, false, 'mid-sized moon', 12);
INSERT INTO public.moon VALUES (14, 'iapetus', 12, 3561300, 1434000000.0, true, false, 'outer moon', 13);
INSERT INTO public.moon VALUES (15, 'miranda', 13, 129900, 2871000000.0, true, false, 'small moon', 14);
INSERT INTO public.moon VALUES (16, 'ariel', 14, 191020, 2871000000.0, true, false, 'medium-sized moon', 1);
INSERT INTO public.moon VALUES (17, 'umbriel', 15, 266000, 2871000000.0, true, false, 'dark moon', 2);
INSERT INTO public.moon VALUES (18, 'titania', 16, 436300, 2871000000.0, true, false, 'largest Uranus moon', 3);
INSERT INTO public.moon VALUES (19, 'oberon', 17, 583500, 2871000000.0, true, false, 'outer large moon', 4);
INSERT INTO public.moon VALUES (20, 'triton', 18, 354800, 4495000000.0, false, true, 'captured moon', 5);
INSERT INTO public.moon VALUES (21, 'nereid', 19, 5513400, 4495000000.0, false, true, 'irregular moon', 6);
INSERT INTO public.moon VALUES (22, 'chandrama', 2, 948375, 3498.0, true, false, 'regular moon', 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 365, 93208579, true, false, 'active', 1);
INSERT INTO public.planet VALUES (2, 'Mercury', 0, 185, 28947, false, false, 'active', 1);
INSERT INTO public.planet VALUES (3, 'Venus', 2, 254, 93409857, false, false, 'active', 1);
INSERT INTO public.planet VALUES (4, 'Mars', 2, 458, 8457908, true, false, 'active', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 9, 824, 1857965, false, false, 'active', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 25, 428, 28750, true, false, 'active', 1);
INSERT INTO public.planet VALUES (7, 'Neptune', 8, 152, 1741515, false, false, 'active', 1);
INSERT INTO public.planet VALUES (8, 'Uranus', 28, 25152, 41521, false, false, 'active', 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 0, 31824, 4717515, false, false, 'dwarf', 1);
INSERT INTO public.planet VALUES (10, 'Dimidium', 2824, 4514, 575551, false, true, 'active', 3);
INSERT INTO public.planet VALUES (11, 'Alijf', 5, 2558, 4242, true, false, 'dwarf', 5);
INSERT INTO public.planet VALUES (12, 'Talsk', 22, 2512, 8547126, false, true, 'active', 2);
INSERT INTO public.planet VALUES (13, 'Lajsf', 285, 44741, 4458556, true, false, 'dwarf', 4);
INSERT INTO public.planet VALUES (14, 'Jaksjdh', 8, 28247, 28296, false, true, 'active', 6);
INSERT INTO public.planet VALUES (15, 'Alij', 9, 3858, 45423, false, true, 'dwarf', 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 9, 298347, 9823475, true, false, 'red giant star', 1);
INSERT INTO public.star VALUES (2, 'Sirius', 15, 908279, 524658, false, true, 'super giant star', 3);
INSERT INTO public.star VALUES (3, 'Aldebaran', 20, 90823475, 524512851, true, false, 'red giant star', 5);
INSERT INTO public.star VALUES (4, 'Canopus', 18, 24828565, 4482875, true, false, 'red giant star', 2);
INSERT INTO public.star VALUES (5, 'Vega', 25, 284579, 25709879, false, true, 'super giant star', 4);
INSERT INTO public.star VALUES (6, 'Capella', 12, 824752625, 178285178, true, false, 'red giant star', 6);


--
-- Name: asteroids_asteroids_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroids_asteroids_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroids asteroids_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_name_key UNIQUE (name);


--
-- Name: asteroids asteroids_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_pkey PRIMARY KEY (asteroids_id);


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
-- Name: moon moon_planet_belonging_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_belonging_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_belonging_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_belonging_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_belonging_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_belonging_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

