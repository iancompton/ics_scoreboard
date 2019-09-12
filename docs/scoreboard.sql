--
-- PostgreSQL database dump
--

-- Dumped from database version 10.2
-- Dumped by pg_dump version 11.1

-- Started on 2019-06-14 15:13:12

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 8 (class 2615 OID 51349)
-- Name: scoreboards; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA scoreboards;


ALTER SCHEMA scoreboards OWNER TO postgres;

--
-- TOC entry 2828 (class 0 OID 0)
-- Dependencies: 8
-- Name: SCHEMA scoreboards; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA scoreboards IS 'Scoreboards schema';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 199 (class 1259 OID 51360)
-- Name: game; Type: TABLE; Schema: scoreboards; Owner: postgres
--

CREATE TABLE scoreboards.game (
    id bigint NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE scoreboards.game OWNER TO postgres;

--
-- TOC entry 2830 (class 0 OID 0)
-- Dependencies: 199
-- Name: TABLE game; Type: COMMENT; Schema: scoreboards; Owner: postgres
--

COMMENT ON TABLE scoreboards.game IS 'Games table';


--
-- TOC entry 200 (class 1259 OID 51365)
-- Name: game_sequence; Type: SEQUENCE; Schema: scoreboards; Owner: postgres
--

CREATE SEQUENCE scoreboards.game_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999
    CACHE 1;


ALTER TABLE scoreboards.game_sequence OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 51371)
-- Name: gameuser; Type: TABLE; Schema: scoreboards; Owner: postgres
--

CREATE TABLE scoreboards.gameuser (
    id bigint NOT NULL,
    gameid bigint NOT NULL,
    userno bigint NOT NULL
);


ALTER TABLE scoreboards.gameuser OWNER TO postgres;

--
-- TOC entry 2833 (class 0 OID 0)
-- Dependencies: 202
-- Name: TABLE gameuser; Type: COMMENT; Schema: scoreboards; Owner: postgres
--

COMMENT ON TABLE scoreboards.gameuser IS 'Games users table';


--
-- TOC entry 203 (class 1259 OID 51376)
-- Name: gameuser_sequence; Type: SEQUENCE; Schema: scoreboards; Owner: postgres
--

CREATE SEQUENCE scoreboards.gameuser_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999
    CACHE 1;


ALTER TABLE scoreboards.gameuser_sequence OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 51355)
-- Name: score; Type: TABLE; Schema: scoreboards; Owner: postgres
--

CREATE TABLE scoreboards.score (
    id bigint NOT NULL,
    userno bigint NOT NULL,
    gameid bigint NOT NULL,
    timeadded timestamp without time zone NOT NULL,
    score bigint NOT NULL
);


ALTER TABLE scoreboards.score OWNER TO postgres;

--
-- TOC entry 2836 (class 0 OID 0)
-- Dependencies: 198
-- Name: TABLE score; Type: COMMENT; Schema: scoreboards; Owner: postgres
--

COMMENT ON TABLE scoreboards.score IS 'Score table';


--
-- TOC entry 201 (class 1259 OID 51368)
-- Name: score_sequence; Type: SEQUENCE; Schema: scoreboards; Owner: postgres
--

CREATE SEQUENCE scoreboards.score_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999
    CACHE 1;


ALTER TABLE scoreboards.score_sequence OWNER TO postgres;

--
-- TOC entry 2838 (class 0 OID 0)
-- Dependencies: 201
-- Name: SEQUENCE score_sequence; Type: COMMENT; Schema: scoreboards; Owner: postgres
--

COMMENT ON SEQUENCE scoreboards.score_sequence IS 'Score id sequence';


--
-- TOC entry 197 (class 1259 OID 51350)
-- Name: user; Type: TABLE; Schema: scoreboards; Owner: postgres
--

CREATE TABLE scoreboards."user" (
    userid character varying(20) NOT NULL,
    uniqueuserno bigint NOT NULL,
    firstname character varying(40) NOT NULL,
    lastname character varying(40) NOT NULL
);


ALTER TABLE scoreboards."user" OWNER TO postgres;

--
-- TOC entry 2840 (class 0 OID 0)
-- Dependencies: 197
-- Name: TABLE "user"; Type: COMMENT; Schema: scoreboards; Owner: postgres
--

COMMENT ON TABLE scoreboards."user" IS 'User table';


--
-- TOC entry 2842 (class 0 OID 0)
-- Dependencies: 200
-- Name: game_sequence; Type: SEQUENCE SET; Schema: scoreboards; Owner: postgres
--

SELECT pg_catalog.setval('scoreboards.game_sequence', 1, false);


--
-- TOC entry 2843 (class 0 OID 0)
-- Dependencies: 203
-- Name: gameuser_sequence; Type: SEQUENCE SET; Schema: scoreboards; Owner: postgres
--

SELECT pg_catalog.setval('scoreboards.gameuser_sequence', 1, false);


--
-- TOC entry 2844 (class 0 OID 0)
-- Dependencies: 201
-- Name: score_sequence; Type: SEQUENCE SET; Schema: scoreboards; Owner: postgres
--

SELECT pg_catalog.setval('scoreboards.score_sequence', 3, true);


--
-- TOC entry 2692 (class 2606 OID 51364)
-- Name: game game_pkey; Type: CONSTRAINT; Schema: scoreboards; Owner: postgres
--

ALTER TABLE ONLY scoreboards.game
    ADD CONSTRAINT game_pkey PRIMARY KEY (id);


--
-- TOC entry 2694 (class 2606 OID 51375)
-- Name: gameuser gameuser_pkey; Type: CONSTRAINT; Schema: scoreboards; Owner: postgres
--

ALTER TABLE ONLY scoreboards.gameuser
    ADD CONSTRAINT gameuser_pkey PRIMARY KEY (id);


--
-- TOC entry 2690 (class 2606 OID 51359)
-- Name: score score_pkey; Type: CONSTRAINT; Schema: scoreboards; Owner: postgres
--

ALTER TABLE ONLY scoreboards.score
    ADD CONSTRAINT score_pkey PRIMARY KEY (id);


--
-- TOC entry 2688 (class 2606 OID 51354)
-- Name: user user_pkey; Type: CONSTRAINT; Schema: scoreboards; Owner: postgres
--

ALTER TABLE ONLY scoreboards."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (userid);


--
-- TOC entry 2829 (class 0 OID 0)
-- Dependencies: 8
-- Name: SCHEMA scoreboards; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON SCHEMA scoreboards TO "Scoreboard";


--
-- TOC entry 2831 (class 0 OID 0)
-- Dependencies: 199
-- Name: TABLE game; Type: ACL; Schema: scoreboards; Owner: postgres
--

GRANT ALL ON TABLE scoreboards.game TO "Scoreboard";


--
-- TOC entry 2832 (class 0 OID 0)
-- Dependencies: 200
-- Name: SEQUENCE game_sequence; Type: ACL; Schema: scoreboards; Owner: postgres
--

GRANT ALL ON SEQUENCE scoreboards.game_sequence TO "Scoreboard";


--
-- TOC entry 2834 (class 0 OID 0)
-- Dependencies: 202
-- Name: TABLE gameuser; Type: ACL; Schema: scoreboards; Owner: postgres
--

GRANT ALL ON TABLE scoreboards.gameuser TO "Scoreboard";


--
-- TOC entry 2835 (class 0 OID 0)
-- Dependencies: 203
-- Name: SEQUENCE gameuser_sequence; Type: ACL; Schema: scoreboards; Owner: postgres
--

GRANT ALL ON SEQUENCE scoreboards.gameuser_sequence TO "Scoreboard";


--
-- TOC entry 2837 (class 0 OID 0)
-- Dependencies: 198
-- Name: TABLE score; Type: ACL; Schema: scoreboards; Owner: postgres
--

GRANT ALL ON TABLE scoreboards.score TO "Scoreboard";


--
-- TOC entry 2839 (class 0 OID 0)
-- Dependencies: 201
-- Name: SEQUENCE score_sequence; Type: ACL; Schema: scoreboards; Owner: postgres
--

GRANT ALL ON SEQUENCE scoreboards.score_sequence TO "Scoreboard";


--
-- TOC entry 2841 (class 0 OID 0)
-- Dependencies: 197
-- Name: TABLE "user"; Type: ACL; Schema: scoreboards; Owner: postgres
--

GRANT ALL ON TABLE scoreboards."user" TO "Scoreboard";


-- Completed on 2019-06-14 15:13:12

--
-- PostgreSQL database dump complete
--

