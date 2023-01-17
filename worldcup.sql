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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(75) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 2018, 'Final', 90, 91, 4, 2);
INSERT INTO public.games VALUES (2, 2018, 'Third Place', 92, 93, 2, 0);
INSERT INTO public.games VALUES (3, 2018, 'Semi-Final', 91, 93, 2, 1);
INSERT INTO public.games VALUES (4, 2018, 'Semi-Final', 90, 92, 1, 0);
INSERT INTO public.games VALUES (5, 2018, 'Quarter-Final', 91, 94, 3, 2);
INSERT INTO public.games VALUES (6, 2018, 'Quarter-Final', 93, 95, 2, 0);
INSERT INTO public.games VALUES (7, 2018, 'Quarter-Final', 92, 96, 2, 1);
INSERT INTO public.games VALUES (8, 2018, 'Quarter-Final', 90, 97, 2, 0);
INSERT INTO public.games VALUES (9, 2018, 'Eighth-Final', 93, 98, 2, 1);
INSERT INTO public.games VALUES (10, 2018, 'Eighth-Final', 95, 99, 1, 0);
INSERT INTO public.games VALUES (11, 2018, 'Eighth-Final', 92, 100, 3, 2);
INSERT INTO public.games VALUES (12, 2018, 'Eighth-Final', 96, 101, 2, 0);
INSERT INTO public.games VALUES (13, 2018, 'Eighth-Final', 91, 102, 2, 1);
INSERT INTO public.games VALUES (14, 2018, 'Eighth-Final', 94, 103, 2, 1);
INSERT INTO public.games VALUES (15, 2018, 'Eighth-Final', 97, 104, 2, 1);
INSERT INTO public.games VALUES (16, 2018, 'Eighth-Final', 90, 105, 4, 3);
INSERT INTO public.games VALUES (17, 2014, 'Final', 106, 105, 1, 0);
INSERT INTO public.games VALUES (18, 2014, 'Third Place', 107, 96, 3, 0);
INSERT INTO public.games VALUES (19, 2014, 'Semi-Final', 105, 107, 1, 0);
INSERT INTO public.games VALUES (20, 2014, 'Semi-Final', 106, 96, 7, 1);
INSERT INTO public.games VALUES (21, 2014, 'Quarter-Final', 107, 108, 1, 0);
INSERT INTO public.games VALUES (22, 2014, 'Quarter-Final', 105, 92, 1, 0);
INSERT INTO public.games VALUES (23, 2014, 'Quarter-Final', 96, 98, 2, 1);
INSERT INTO public.games VALUES (24, 2014, 'Quarter-Final', 106, 90, 1, 0);
INSERT INTO public.games VALUES (25, 2014, 'Eighth-Final', 96, 109, 2, 1);
INSERT INTO public.games VALUES (26, 2014, 'Eighth-Final', 98, 97, 2, 0);
INSERT INTO public.games VALUES (27, 2014, 'Eighth-Final', 90, 110, 2, 0);
INSERT INTO public.games VALUES (28, 2014, 'Eighth-Final', 106, 111, 2, 1);
INSERT INTO public.games VALUES (29, 2014, 'Eighth-Final', 107, 101, 2, 1);
INSERT INTO public.games VALUES (30, 2014, 'Eighth-Final', 108, 112, 2, 1);
INSERT INTO public.games VALUES (31, 2014, 'Eighth-Final', 105, 99, 1, 0);
INSERT INTO public.games VALUES (32, 2014, 'Eighth-Final', 92, 113, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (90, 'France');
INSERT INTO public.teams VALUES (91, 'Croatia');
INSERT INTO public.teams VALUES (92, 'Belgium');
INSERT INTO public.teams VALUES (93, 'England');
INSERT INTO public.teams VALUES (94, 'Russia');
INSERT INTO public.teams VALUES (95, 'Sweden');
INSERT INTO public.teams VALUES (96, 'Brazil');
INSERT INTO public.teams VALUES (97, 'Uruguay');
INSERT INTO public.teams VALUES (98, 'Colombia');
INSERT INTO public.teams VALUES (99, 'Switzerland');
INSERT INTO public.teams VALUES (100, 'Japan');
INSERT INTO public.teams VALUES (101, 'Mexico');
INSERT INTO public.teams VALUES (102, 'Denmark');
INSERT INTO public.teams VALUES (103, 'Spain');
INSERT INTO public.teams VALUES (104, 'Portugal');
INSERT INTO public.teams VALUES (105, 'Argentina');
INSERT INTO public.teams VALUES (106, 'Germany');
INSERT INTO public.teams VALUES (107, 'Netherlands');
INSERT INTO public.teams VALUES (108, 'Costa Rica');
INSERT INTO public.teams VALUES (109, 'Chile');
INSERT INTO public.teams VALUES (110, 'Nigeria');
INSERT INTO public.teams VALUES (111, 'Algeria');
INSERT INTO public.teams VALUES (112, 'Greece');
INSERT INTO public.teams VALUES (113, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 113, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

