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
    opponent_goals integer NOT NULL,
    winner_goals integer NOT NULL
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
    name character varying NOT NULL
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

INSERT INTO public.games VALUES (33, 2018, 'Final', 525, 526, 2, 4);
INSERT INTO public.games VALUES (34, 2018, 'Third Place', 527, 528, 0, 2);
INSERT INTO public.games VALUES (35, 2018, 'Semi-Final', 526, 528, 1, 2);
INSERT INTO public.games VALUES (36, 2018, 'Semi-Final', 525, 527, 0, 1);
INSERT INTO public.games VALUES (37, 2018, 'Quarter-Final', 526, 531, 2, 3);
INSERT INTO public.games VALUES (38, 2018, 'Quarter-Final', 528, 532, 0, 2);
INSERT INTO public.games VALUES (39, 2018, 'Quarter-Final', 527, 533, 1, 2);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 525, 534, 0, 2);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 528, 535, 1, 2);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 532, 536, 0, 1);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 527, 537, 2, 3);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 533, 538, 0, 2);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 526, 539, 1, 2);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 531, 540, 1, 2);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 534, 541, 1, 2);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 525, 542, 3, 4);
INSERT INTO public.games VALUES (49, 2014, 'Final', 543, 542, 0, 1);
INSERT INTO public.games VALUES (50, 2014, 'Third Place', 545, 533, 0, 3);
INSERT INTO public.games VALUES (51, 2014, 'Semi-Final', 542, 545, 0, 1);
INSERT INTO public.games VALUES (52, 2014, 'Semi-Final', 543, 533, 1, 7);
INSERT INTO public.games VALUES (53, 2014, 'Quarter-Final', 545, 549, 0, 1);
INSERT INTO public.games VALUES (54, 2014, 'Quarter-Final', 542, 527, 0, 1);
INSERT INTO public.games VALUES (55, 2014, 'Quarter-Final', 533, 535, 1, 2);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 543, 525, 0, 1);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 533, 553, 1, 2);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 535, 534, 0, 2);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 525, 555, 0, 2);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 543, 556, 1, 2);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 545, 538, 1, 2);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 549, 558, 1, 2);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 542, 536, 0, 1);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 527, 560, 1, 2);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (525, 'France');
INSERT INTO public.teams VALUES (526, 'Croatia');
INSERT INTO public.teams VALUES (527, 'Belgium');
INSERT INTO public.teams VALUES (528, 'England');
INSERT INTO public.teams VALUES (531, 'Russia');
INSERT INTO public.teams VALUES (532, 'Sweden');
INSERT INTO public.teams VALUES (533, 'Brazil');
INSERT INTO public.teams VALUES (534, 'Uruguay');
INSERT INTO public.teams VALUES (535, 'Colombia');
INSERT INTO public.teams VALUES (536, 'Switzerland');
INSERT INTO public.teams VALUES (537, 'Japan');
INSERT INTO public.teams VALUES (538, 'Mexico');
INSERT INTO public.teams VALUES (539, 'Denmark');
INSERT INTO public.teams VALUES (540, 'Spain');
INSERT INTO public.teams VALUES (541, 'Portugal');
INSERT INTO public.teams VALUES (542, 'Argentina');
INSERT INTO public.teams VALUES (543, 'Germany');
INSERT INTO public.teams VALUES (545, 'Netherlands');
INSERT INTO public.teams VALUES (549, 'Costa Rica');
INSERT INTO public.teams VALUES (553, 'Chile');
INSERT INTO public.teams VALUES (555, 'Nigeria');
INSERT INTO public.teams VALUES (556, 'Algeria');
INSERT INTO public.teams VALUES (558, 'Greece');
INSERT INTO public.teams VALUES (560, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 560, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: teams unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: games fk_opponent_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

