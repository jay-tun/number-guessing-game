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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer NOT NULL,
    best_game integer DEFAULT 0 NOT NULL,
    secret_number integer NOT NULL
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
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_player_id_seq OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_player_id_seq OWNED BY public.players.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: players user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN user_id SET DEFAULT nextval('public.players_player_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 8, 271, 270);
INSERT INTO public.games VALUES (2, 8, 339, 338);
INSERT INTO public.games VALUES (3, 9, 569, 568);
INSERT INTO public.games VALUES (4, 9, 969, 968);
INSERT INTO public.games VALUES (5, 8, 392, 389);
INSERT INTO public.games VALUES (6, 8, 246, 244);
INSERT INTO public.games VALUES (7, 8, 870, 869);
INSERT INTO public.games VALUES (8, 10, 12, 934);
INSERT INTO public.games VALUES (9, 10, 11, 793);
INSERT INTO public.games VALUES (10, 10, 16, 172);
INSERT INTO public.games VALUES (11, 13, 26, 25);
INSERT INTO public.games VALUES (12, 13, 99, 98);
INSERT INTO public.games VALUES (13, 15, 764, 763);
INSERT INTO public.games VALUES (14, 15, 864, 863);
INSERT INTO public.games VALUES (15, 13, 312, 309);
INSERT INTO public.games VALUES (16, 13, 73, 71);
INSERT INTO public.games VALUES (17, 13, 175, 174);
INSERT INTO public.games VALUES (18, 10, 10, 365);
INSERT INTO public.games VALUES (19, 20, 696, 695);
INSERT INTO public.games VALUES (20, 20, 47, 46);
INSERT INTO public.games VALUES (21, 22, 375, 374);
INSERT INTO public.games VALUES (22, 22, 691, 690);
INSERT INTO public.games VALUES (23, 20, 574, 571);
INSERT INTO public.games VALUES (24, 20, 676, 674);
INSERT INTO public.games VALUES (25, 20, 444, 443);
INSERT INTO public.games VALUES (26, 27, 555, 554);
INSERT INTO public.games VALUES (27, 27, 517, 516);
INSERT INTO public.games VALUES (28, 29, 137, 136);
INSERT INTO public.games VALUES (29, 29, 525, 524);
INSERT INTO public.games VALUES (30, 27, 360, 357);
INSERT INTO public.games VALUES (31, 27, 133, 131);
INSERT INTO public.games VALUES (32, 27, 648, 647);
INSERT INTO public.games VALUES (33, 34, 823, 822);
INSERT INTO public.games VALUES (34, 34, 12, 11);
INSERT INTO public.games VALUES (35, 36, 945, 944);
INSERT INTO public.games VALUES (36, 36, 854, 853);
INSERT INTO public.games VALUES (37, 34, 706, 703);
INSERT INTO public.games VALUES (38, 34, 403, 401);
INSERT INTO public.games VALUES (39, 34, 133, 132);
INSERT INTO public.games VALUES (40, 41, 346, 345);
INSERT INTO public.games VALUES (41, 41, 34, 33);
INSERT INTO public.games VALUES (42, 43, 85, 84);
INSERT INTO public.games VALUES (43, 43, 963, 962);
INSERT INTO public.games VALUES (44, 41, 332, 329);
INSERT INTO public.games VALUES (45, 41, 823, 821);
INSERT INTO public.games VALUES (46, 41, 69, 68);
INSERT INTO public.games VALUES (47, 48, 301, 300);
INSERT INTO public.games VALUES (48, 48, 964, 963);
INSERT INTO public.games VALUES (49, 50, 329, 328);
INSERT INTO public.games VALUES (50, 50, 846, 845);
INSERT INTO public.games VALUES (51, 48, 748, 745);
INSERT INTO public.games VALUES (52, 48, 231, 229);
INSERT INTO public.games VALUES (53, 48, 93, 92);
INSERT INTO public.games VALUES (54, 55, 129, 128);
INSERT INTO public.games VALUES (55, 55, 681, 680);
INSERT INTO public.games VALUES (56, 56, 374, 373);
INSERT INTO public.games VALUES (57, 56, 391, 390);
INSERT INTO public.games VALUES (58, 55, 781, 778);
INSERT INTO public.games VALUES (59, 55, 808, 806);
INSERT INTO public.games VALUES (60, 55, 127, 126);
INSERT INTO public.games VALUES (61, 57, 589, 588);
INSERT INTO public.games VALUES (62, 57, 67, 66);
INSERT INTO public.games VALUES (63, 58, 267, 266);
INSERT INTO public.games VALUES (64, 58, 513, 512);
INSERT INTO public.games VALUES (65, 57, 698, 695);
INSERT INTO public.games VALUES (66, 57, 952, 950);
INSERT INTO public.games VALUES (67, 57, 134, 133);
INSERT INTO public.games VALUES (68, 59, 305, 304);
INSERT INTO public.games VALUES (69, 59, 897, 896);
INSERT INTO public.games VALUES (70, 60, 305, 304);
INSERT INTO public.games VALUES (71, 60, 264, 263);
INSERT INTO public.games VALUES (72, 59, 831, 828);
INSERT INTO public.games VALUES (73, 59, 328, 326);
INSERT INTO public.games VALUES (74, 59, 13, 12);
INSERT INTO public.games VALUES (75, 10, 9, 708);
INSERT INTO public.games VALUES (76, 61, 959, 958);
INSERT INTO public.games VALUES (77, 61, 145, 144);
INSERT INTO public.games VALUES (78, 63, 909, 908);
INSERT INTO public.games VALUES (79, 63, 198, 197);
INSERT INTO public.games VALUES (80, 61, 257, 254);
INSERT INTO public.games VALUES (81, 61, 942, 940);
INSERT INTO public.games VALUES (82, 61, 62, 61);
INSERT INTO public.games VALUES (83, 68, 193, 192);
INSERT INTO public.games VALUES (84, 68, 199, 198);
INSERT INTO public.games VALUES (85, 70, 175, 174);
INSERT INTO public.games VALUES (86, 70, 645, 644);
INSERT INTO public.games VALUES (87, 68, 753, 750);
INSERT INTO public.games VALUES (88, 68, 69, 67);
INSERT INTO public.games VALUES (89, 68, 43, 42);
INSERT INTO public.games VALUES (90, 75, 960, 959);
INSERT INTO public.games VALUES (91, 75, 492, 491);
INSERT INTO public.games VALUES (92, 77, 417, 416);
INSERT INTO public.games VALUES (93, 77, 737, 736);
INSERT INTO public.games VALUES (94, 75, 900, 897);
INSERT INTO public.games VALUES (95, 75, 966, 964);
INSERT INTO public.games VALUES (96, 75, 750, 749);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (8, 'user_1739027291079', 0);
INSERT INTO public.players VALUES (9, 'user_1739027291078', 0);
INSERT INTO public.players VALUES (10, 'jnomad', 0);
INSERT INTO public.players VALUES (13, 'user_1739027987798', 0);
INSERT INTO public.players VALUES (15, 'user_1739027987797', 0);
INSERT INTO public.players VALUES (20, 'user_1739029632407', 0);
INSERT INTO public.players VALUES (22, 'user_1739029632406', 0);
INSERT INTO public.players VALUES (27, 'user_1739029720180', 0);
INSERT INTO public.players VALUES (29, 'user_1739029720179', 0);
INSERT INTO public.players VALUES (34, 'user_1739029757012', 0);
INSERT INTO public.players VALUES (36, 'user_1739029757011', 0);
INSERT INTO public.players VALUES (41, 'user_1739029943626', 0);
INSERT INTO public.players VALUES (43, 'user_1739029943625', 0);
INSERT INTO public.players VALUES (48, 'user_1739030007085', 0);
INSERT INTO public.players VALUES (50, 'user_1739030007084', 0);
INSERT INTO public.players VALUES (55, 'user_1739030844343', 0);
INSERT INTO public.players VALUES (56, 'user_1739030844342', 0);
INSERT INTO public.players VALUES (57, 'user_1739030895283', 0);
INSERT INTO public.players VALUES (58, 'user_1739030895282', 0);
INSERT INTO public.players VALUES (59, 'user_1739031631065', 0);
INSERT INTO public.players VALUES (60, 'user_1739031631064', 0);
INSERT INTO public.players VALUES (61, 'user_1739033121044', 0);
INSERT INTO public.players VALUES (63, 'user_1739033121043', 0);
INSERT INTO public.players VALUES (68, 'user_1739033147677', 0);
INSERT INTO public.players VALUES (70, 'user_1739033147676', 0);
INSERT INTO public.players VALUES (75, 'user_1739033301101', 0);
INSERT INTO public.players VALUES (77, 'user_1739033301100', 0);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 96, true);


--
-- Name: players_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_player_id_seq', 81, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (user_id);


--
-- Name: players players_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.players(user_id);


--
-- PostgreSQL database dump complete
--

