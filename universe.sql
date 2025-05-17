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
    name character varying(30) NOT NULL,
    description text,
    distance_from_earth integer,
    discovery_year integer,
    has_life boolean
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
    name character varying(30),
    description text,
    distance_from_earth integer,
    discovery_year integer,
    has_life boolean,
    diameter numeric NOT NULL,
    planet_id integer NOT NULL
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    distance_from_earth integer,
    discovery_year integer,
    has_life boolean,
    star_id integer NOT NULL
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: space_movies; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_movies (
    space_movies_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text
);


ALTER TABLE public.space_movies OWNER TO freecodecamp;

--
-- Name: space_movies_movie_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_movies_movie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_movies_movie_id_seq OWNER TO freecodecamp;

--
-- Name: space_movies_movie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_movies_movie_id_seq OWNED BY public.space_movies.space_movies_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    description text,
    distance_from_earth integer,
    discovery_year integer,
    has_life boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: space_movies space_movies_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_movies ALTER COLUMN space_movies_id SET DEFAULT nextval('public.space_movies_movie_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'It is a spiral galaxy approximately 2.5 million light-years from Earth and the nearest major galaxy to the Milky Way.', 25, 1930, false);
INSERT INTO public.galaxy VALUES (2, 'Black Eye Galaxy', 'It is a galaxy which was discovered by Edward Pigott in March 1779 and independently by Johann Elert Bode in April of the same year, as well as by Charles Messier in 1780.', 55, 1779, false);
INSERT INTO public.galaxy VALUES (3, 'Bodes Galaxy', 'It is a spiral galaxy about 12 million light-years away, in the constellation Ursa Major. It was discovered by Johann Elert Bode on December 31, 1774.', 12, 1774, false);
INSERT INTO public.galaxy VALUES (4, 'Milky Way', 's a barred spiral galaxy containing an estimated 100 to 400 billion stars. It has a disk-like shape with a central bulge and spiral arms. ', 0, 1500, true);
INSERT INTO public.galaxy VALUES (5, 'galaxy_foo_5', 's a barred spiral galaxy containing an estimated 100 to 400 billion stars. It has a disk-like shape with a central bulge and spiral arms. ', 0, 1500, true);
INSERT INTO public.galaxy VALUES (6, 'galaxy_foo_6', 's a barred spiral galaxy containing an estimated 100 to 400 billion stars. It has a disk-like shape with a central bulge and spiral arms. ', 0, 1500, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Earth’s moon; only natural satellite visited by humans', 0, NULL, false, 3474, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Larger and closer of Mars’ two moons', 78, 1877, false, 22.4, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Smaller and farther moon of Mars', 78, 1877, false, 12.4, 4);
INSERT INTO public.moon VALUES (4, 'Europa', 'Jupiter’s moon; subsurface ocean suspected', 629, 1610, false, 3122, 5);
INSERT INTO public.moon VALUES (5, 'Ganymede', 'Largest moon in the solar system', 629, 1610, false, 5268, 5);
INSERT INTO public.moon VALUES (6, 'Callisto', 'Oldest and most cratered surface in the solar system', 629, 1610, false, 4821, 5);
INSERT INTO public.moon VALUES (7, 'Io', 'Most volcanically active body in the solar system', 629, 1610, false, 3643, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 'Saturn’s largest moon; thick orange atmosphere', 1275, 1655, false, 5150, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', 'Icy moon with water geysers and possible microbial life', 1275, 1789, true, 504, 6);
INSERT INTO public.moon VALUES (10, 'Mimas', 'Small moon with a large crater, looks like the Death Star', 1275, 1789, false, 396, 6);
INSERT INTO public.moon VALUES (11, 'Selene I', 'Tidally locked moon orbiting Alpheron III', 97, 2182, false, 3120, 11);
INSERT INTO public.moon VALUES (12, 'Thalassa', 'Ice-covered moon with possible subsurface ocean', 97, 2185, true, 1870, 11);
INSERT INTO public.moon VALUES (13, 'Vireon', 'Captured asteroid-moon orbiting Alpheron IV', 97, 2179, false, 540, 12);
INSERT INTO public.moon VALUES (14, 'Nirelia', 'Volcanic moon orbiting Alpheron I', 97, 2175, false, 990, 9);
INSERT INTO public.moon VALUES (15, 'Elaron', 'Rocky moon with magnetic anomalies around Alpheron V', 97, 2183, false, 1400, 13);
INSERT INTO public.moon VALUES (16, 'Calyra', 'Bright icy surface reflecting light from Alpheratz', 97, 2188, false, 460, 10);
INSERT INTO public.moon VALUES (17, 'Zephyria', 'Thin atmosphere and ice geysers; orbiting Alpheron VI', 97, 2190, true, 680, 14);
INSERT INTO public.moon VALUES (18, 'Drelon', 'Dark cratered surface; carbon-rich composition', 97, 2180, false, 1020, 10);
INSERT INTO public.moon VALUES (19, 'Myrr', 'Moon with unusual tidal patterns on Alpheron IV', 97, 2178, false, 920, 12);
INSERT INTO public.moon VALUES (20, 'Aurix', 'Potential for exotic chemical lakes', 97, 2191, false, 820, 14);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Smallest planet; closest to the Sun; rocky surface with extreme temperatures', 92, NULL, false, 2);
INSERT INTO public.planet VALUES (2, 'Venus', 'Similar in size to Earth; thick, toxic atmosphere; extreme greenhouse effect', 41, NULL, false, 2);
INSERT INTO public.planet VALUES (3, 'Earth', 'Our home planet; supports diverse life; only known planet with life', 0, NULL, true, 2);
INSERT INTO public.planet VALUES (4, 'Mars', 'The “Red Planet”; potential for past microbial life; has polar ice caps', 78, NULL, false, 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Largest planet; gas giant; has at least 95 moons', 629, NULL, false, 2);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Gas giant with prominent ring system; over 140 moons', 1275, NULL, false, 2);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice giant with a bluish color; rotates on its side', 2724, 1781, false, 2);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Deep blue ice giant; strong winds; farthest known planet', 4351, 1846, false, 1);
INSERT INTO public.planet VALUES (9, 'Alpheron I', 'Hot rocky planet closest to Alpheratz; extreme surface temperatures', 97, 2175, false, 1);
INSERT INTO public.planet VALUES (10, 'Alpheron II', 'Desert-like planet with thin atmosphere; no signs of life', 97, 2175, false, 1);
INSERT INTO public.planet VALUES (11, 'Alpheron III', 'Earth-sized planet in habitable zone; early signs of microbial life detected', 97, 2182, true, 1);
INSERT INTO public.planet VALUES (12, 'Alpheron IV', 'Gas giant with massive storms; has over 50 moons', 97, 2178, false, 1);
INSERT INTO public.planet VALUES (13, 'Alpheron V', 'Icy giant on the outer edge of the system; dark and cold', 97, 2180, false, 1);
INSERT INTO public.planet VALUES (14, 'Alpheron VI', 'Ocean world with sub-surface thermal activity; potential biosignatures', 97, 2191, true, 1);


--
-- Data for Name: space_movies; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_movies VALUES (1, '2001: A Space Odyssey', 'A mysterious monolith sets humanity on a journey through space and time.');
INSERT INTO public.space_movies VALUES (2, 'Interstellar', 'A team of astronauts travel through a wormhole in search of a new home for humanity.');
INSERT INTO public.space_movies VALUES (3, 'The Martian', 'An astronaut is stranded on Mars and must use science to survive.');
INSERT INTO public.space_movies VALUES (4, 'Gravity', 'Two astronauts struggle to survive after their shuttle is destroyed in orbit.');
INSERT INTO public.space_movies VALUES (5, 'Apollo 13', 'A real-life NASA mission faces disaster after an onboard explosion.');
INSERT INTO public.space_movies VALUES (6, 'Star Wars: A New Hope', 'A young farm boy joins a rebellion against an evil galactic empire.');
INSERT INTO public.space_movies VALUES (7, 'Star Trek', 'The crew of the USS Enterprise explores space and defends the galaxy.');
INSERT INTO public.space_movies VALUES (8, 'Guardians of the Galaxy', 'A group of misfits band together to protect a powerful artifact.');
INSERT INTO public.space_movies VALUES (9, 'Ad Astra', 'An astronaut travels to the edge of the solar system to find his missing father.');
INSERT INTO public.space_movies VALUES (10, 'Moon', 'A man working alone on the Moon uncovers a disturbing secret.');
INSERT INTO public.space_movies VALUES (11, 'Contact', 'A scientist receives a signal from an extraterrestrial intelligence.');
INSERT INTO public.space_movies VALUES (12, 'Sunshine', 'A team of scientists attempts to reignite the dying sun.');
INSERT INTO public.space_movies VALUES (13, 'Passengers', 'Two passengers wake up early on a space journey and face moral dilemmas.');
INSERT INTO public.space_movies VALUES (14, 'First Man', 'A biographical look at Neil Armstrong and the Apollo 11 mission.');
INSERT INTO public.space_movies VALUES (15, 'Event Horizon', 'A rescue crew investigates a spaceship that vanished into a black hole.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpheratz', 'es la estrella más brillante de la constelación de Andrómeda, ubicada a unos 97 años luz de la Tierra.', 97, 1781, false, 1);
INSERT INTO public.star VALUES (2, 'Sun', 'Our Sun is a 4.5 billion-year-old yellow dwarf star – a hot glowing ball of hydrogen and helium – at the center of our solar system.', 93, 0, false, 4);
INSERT INTO public.star VALUES (3, 'Sun 3', 'Our Sun is a 4.5 billion-year-old yellow dwarf star – a hot glowing ball of hydrogen and helium – at the center of our solar system.', 0, 0, false, 1);
INSERT INTO public.star VALUES (4, 'Sun 4', 'Our Sun is a 4.5 billion-year-old yellow dwarf star – a hot glowing ball of hydrogen and helium – at the center of our solar system.', 0, 0, false, 1);
INSERT INTO public.star VALUES (5, 'Sun 5', 'Our Sun is a 4.5 billion-year-old yellow dwarf star – a hot glowing ball of hydrogen and helium – at the center of our solar system.', 0, 0, false, 1);
INSERT INTO public.star VALUES (6, 'Sun 6', 'Our Sun is a 4.5 billion-year-old yellow dwarf star – a hot glowing ball of hydrogen and helium – at the center of our solar system.', 0, 0, false, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 1, false);


--
-- Name: space_movies_movie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_movies_movie_id_seq', 15, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: space_movies space_movies_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_movies
    ADD CONSTRAINT space_movies_name_key UNIQUE (name);


--
-- Name: space_movies space_movies_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_movies
    ADD CONSTRAINT space_movies_pkey PRIMARY KEY (space_movies_id);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

