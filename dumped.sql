--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.1
-- Dumped by pg_dump version 9.6.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: rubymaypole
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE ar_internal_metadata OWNER TO rubymaypole;

--
-- Name: maypoles; Type: TABLE; Schema: public; Owner: rubymaypole
--

CREATE TABLE maypoles (
    id integer NOT NULL,
    name character varying,
    email character varying,
    message character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE maypoles OWNER TO rubymaypole;

--
-- Name: maypoles_id_seq; Type: SEQUENCE; Schema: public; Owner: rubymaypole
--

CREATE SEQUENCE maypoles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE maypoles_id_seq OWNER TO rubymaypole;

--
-- Name: maypoles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rubymaypole
--

ALTER SEQUENCE maypoles_id_seq OWNED BY maypoles.id;


--
-- Name: pages; Type: TABLE; Schema: public; Owner: rubymaypole
--

CREATE TABLE pages (
    id integer NOT NULL,
    title character varying,
    photo_main character varying,
    text_main text,
    photo_sub_1 character varying,
    photo_sub_1_link character varying,
    photo_sub_2 character varying,
    photo_sub_2_link character varying,
    photo_sub_3 character varying,
    photo_sub_3_link character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE pages OWNER TO rubymaypole;

--
-- Name: pages_id_seq; Type: SEQUENCE; Schema: public; Owner: rubymaypole
--

CREATE SEQUENCE pages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pages_id_seq OWNER TO rubymaypole;

--
-- Name: pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rubymaypole
--

ALTER SEQUENCE pages_id_seq OWNED BY pages.id;


--
-- Name: pagevideos; Type: TABLE; Schema: public; Owner: rubymaypole
--

CREATE TABLE pagevideos (
    id integer NOT NULL,
    title character varying,
    text_main text,
    photo_main character varying,
    sub_videos_set character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE pagevideos OWNER TO rubymaypole;

--
-- Name: pagevideos_id_seq; Type: SEQUENCE; Schema: public; Owner: rubymaypole
--

CREATE SEQUENCE pagevideos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pagevideos_id_seq OWNER TO rubymaypole;

--
-- Name: pagevideos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rubymaypole
--

ALTER SEQUENCE pagevideos_id_seq OWNED BY pagevideos.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: rubymaypole
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO rubymaypole;

--
-- Name: sub_pages; Type: TABLE; Schema: public; Owner: rubymaypole
--

CREATE TABLE sub_pages (
    id integer NOT NULL,
    photo_link character varying,
    photo_title character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE sub_pages OWNER TO rubymaypole;

--
-- Name: sub_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: rubymaypole
--

CREATE SEQUENCE sub_pages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sub_pages_id_seq OWNER TO rubymaypole;

--
-- Name: sub_pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rubymaypole
--

ALTER SEQUENCE sub_pages_id_seq OWNED BY sub_pages.id;


--
-- Name: subpages; Type: TABLE; Schema: public; Owner: rubymaypole
--

CREATE TABLE subpages (
    id integer NOT NULL,
    photo_link character varying,
    photo_title character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE subpages OWNER TO rubymaypole;

--
-- Name: subpages_id_seq; Type: SEQUENCE; Schema: public; Owner: rubymaypole
--

CREATE SEQUENCE subpages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE subpages_id_seq OWNER TO rubymaypole;

--
-- Name: subpages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rubymaypole
--

ALTER SEQUENCE subpages_id_seq OWNED BY subpages.id;


--
-- Name: videos; Type: TABLE; Schema: public; Owner: rubymaypole
--

CREATE TABLE videos (
    id integer NOT NULL,
    name character varying,
    photo character varying,
    link character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE videos OWNER TO rubymaypole;

--
-- Name: videos_id_seq; Type: SEQUENCE; Schema: public; Owner: rubymaypole
--

CREATE SEQUENCE videos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE videos_id_seq OWNER TO rubymaypole;

--
-- Name: videos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rubymaypole
--

ALTER SEQUENCE videos_id_seq OWNED BY videos.id;


--
-- Name: maypoles id; Type: DEFAULT; Schema: public; Owner: rubymaypole
--

ALTER TABLE ONLY maypoles ALTER COLUMN id SET DEFAULT nextval('maypoles_id_seq'::regclass);


--
-- Name: pages id; Type: DEFAULT; Schema: public; Owner: rubymaypole
--

ALTER TABLE ONLY pages ALTER COLUMN id SET DEFAULT nextval('pages_id_seq'::regclass);


--
-- Name: pagevideos id; Type: DEFAULT; Schema: public; Owner: rubymaypole
--

ALTER TABLE ONLY pagevideos ALTER COLUMN id SET DEFAULT nextval('pagevideos_id_seq'::regclass);


--
-- Name: sub_pages id; Type: DEFAULT; Schema: public; Owner: rubymaypole
--

ALTER TABLE ONLY sub_pages ALTER COLUMN id SET DEFAULT nextval('sub_pages_id_seq'::regclass);


--
-- Name: subpages id; Type: DEFAULT; Schema: public; Owner: rubymaypole
--

ALTER TABLE ONLY subpages ALTER COLUMN id SET DEFAULT nextval('subpages_id_seq'::regclass);


--
-- Name: videos id; Type: DEFAULT; Schema: public; Owner: rubymaypole
--

ALTER TABLE ONLY videos ALTER COLUMN id SET DEFAULT nextval('videos_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: rubymaypole
--

COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2016-12-19 00:09:49.662337	2016-12-19 00:09:49.662337
\.


--
-- Data for Name: maypoles; Type: TABLE DATA; Schema: public; Owner: rubymaypole
--

COPY maypoles (id, name, email, message, created_at, updated_at) FROM stdin;
1	\N	\N	And here is my message.	2017-01-06 01:47:57.484146	2017-01-06 01:47:57.484146
2	\N	\N	And here is my message.	2017-01-06 01:48:25.78352	2017-01-06 01:48:25.78352
3	\N	\N	And here is my message.	2017-01-06 01:50:37.878674	2017-01-06 01:50:37.878674
4	\N	\N	Magic thanks\r\n	2017-01-06 01:50:57.691736	2017-01-06 01:50:57.691736
5	John Murphy	john@gmail.com	Hello! I saw this and thought of you	2017-01-06 01:52:57.441383	2017-01-06 01:52:57.441383
6	John Murphy	john@gmail.com	Hello! My name is John and I would like a website about xyz.	2017-01-06 03:41:25.330013	2017-01-06 03:41:25.330013
7	John Murphy			2017-01-06 03:49:38.160322	2017-01-06 03:49:38.160322
8	123456789112345678922			2017-01-06 03:52:41.938906	2017-01-06 03:52:41.938906
9	John Murphy	this@gmail.com	Hello my name is John	2017-01-06 04:00:44.799272	2017-01-06 04:00:44.799272
10	John	john@john.com	hello there	2017-01-06 04:51:20.465398	2017-01-06 04:51:20.465398
11	My name	john@gmail.com	John Murphy	2017-01-06 19:41:35.19911	2017-01-06 19:41:35.19911
12	hello	john@gmail.com	Is this another attempt\r\n	2017-01-06 19:45:45.087338	2017-01-06 19:45:45.087338
13	John	john@gmail.com	And something else	2017-01-06 19:47:32.209458	2017-01-06 19:47:32.209458
14	John	john@gmail.com	Hello!\r\n	2017-01-06 19:48:06.716359	2017-01-06 19:48:06.716359
15	Correct	john@gmail.com	This should hopefully submit	2017-01-06 20:15:34.840414	2017-01-06 20:15:34.840414
\.


--
-- Name: maypoles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rubymaypole
--

SELECT pg_catalog.setval('maypoles_id_seq', 15, true);


--
-- Data for Name: pages; Type: TABLE DATA; Schema: public; Owner: rubymaypole
--

COPY pages (id, title, photo_main, text_main, photo_sub_1, photo_sub_1_link, photo_sub_2, photo_sub_2_link, photo_sub_3, photo_sub_3_link, created_at, updated_at) FROM stdin;
1	Maypole Film's Backstory	/images/2.jpg	Maypole Film began as a video production company. It operated within the West-Midlands and Worcestershire areas providing promotional videos. However, it became apparent to the company that their clients would benifit from other digital media to promote their businesses. Therefore, Maypole Film expanded to include websites in their portfolio. <br> \n The original business began with the help of The University of Birmingham's business start up programme, BSEEN. It was also giving assistance from Worcestershire County Council's business start up programme, and the people at Blue Orchid. \n\n It is the hope of the business owners that the company will develop a reputation for a fantastic service where the client understands each step of the process \n\nThe business aims to grow, take on new employees from the Worcestershire and West-Midlands areas, and provide a service that clients will absolutely love	/images/berries.jpg	2	/images/clock.jpg	2	/images/keyboard.jpg	2	2017-01-09 02:55:51.91522	2017-01-23 10:18:59.797031
2	The Director	/images/3.jpg	The Director, John Murphy, was born in West-Midlands and grew up in Worcestershire. After finishing University at the University of Birmingham he was determined to start a local business that would, itself, help local businesses. Thus, Maypole Film was created. \n \n	\N	2	\N	2	\N	2	2017-01-09 20:03:48.985272	2017-01-23 10:36:18.844123
3	Location Of Maypole Film	/images/1.jpg	Maypole Film is based in the Town of Bewdley. Bewdley is in Worcestershire, situated the West Mindlands. It is near both Birmingham and Worcester.	/images/1.jpg	2	/images/1.jpg	2	/images/1.jpg	2	2017-01-23 11:39:50.00599	2017-01-23 11:47:12.901123
4	Terms and Conditions	NONE	1) Introduction: This contact is between the customer of Maypole Film Limited (referred to as the “Customer”) and Maypole Film Limited (referred to as the “Company”) when the customer places an order with the company. An order maybe agreed upon in written, verbal or electronic form - usually takes the form of an email confirmation from the client. These conditions do not affect your statutory rights. \r\n\r\n2) Rights Reserved: Should the Company choose not to enforce any number of these conditions it should not be interpreted as a waiver of any of the Company’s rights. By providing the Company with an Order, the Customer accepts these terms and conditions. \r\n\r\n3) Payment: The Company shall issue an invoice to the Customer for the products or services supplied by the ccompany, or to be supplied, the payment terms for which will be stipulated on the invoice. The Company reserves the right to charge interest on overdue amounts at an annual rate of 50% above the Lloyds TSB Bank base rate ruling on the date payment is due. Title in the goods or services shall remain with the Company until full payment has been received, unless otherwise stipulated in the Order.\r\n\r\n4) Health & Safety: The Company and Customer will act in accordance with all relevant health and safety requirements in order to provide the product(s) or service(s). The Company will have business insurance as required. \r\n\r\n5) Creative Brief: Unless otherwise agreed, the Customer accepts the Company’s decisions on creativity within the product(s) or service(s). However, the company is prepared to make changes (but not a complete reworking of) the product. There is a stage for changes to the video to be requested from the customer. The Company will endeavour to produce these changes free of charge, however, large changed may be subject to a top up fee. Whether the change is large or small is left to the discretion of the Managing Director.\r\n\r\n6) Booking Fee/Cancellation: The Company requires full payment for any services or product provided to the customer. If the customer cancels production or changes their mind about wanting the product after the product/service as been provided, The Customer will still have to pay the price of the product/service AND WILL NOT RECEIVE THE RIGHTS TO USE, DISTRIBUTE OR TAKE OWNERSHIP OF THE PRODUCT/SERVICE. If The Customer cancels their request for the service/product during the production of the product or the implementation/preparation of the service, The Customer will be expected to pay a proportion of the overall cost of the service/product in relation to the work done by the company (the company decides what is a reasonable proportion). The customer also WILL NOT RECEIVE THE RIGHTS TO USE, DISTRIBUTE OR TAKE OWNERSHIP OF THE PRODUCT/SERVICE. \r\n\r\n7) Liability :The Company accepts no liability for any loss or damage that may arise from the supply of the product(s) or service(s). In the unlikely event of the Company being unable to supply the product(s) or service(s) as specified in the Order, liability shall be limited to the total invoice value – or monies already paid by the Customer.\r\n\r\n8) Copyright: Unless otherwise stated in the Order, the Company retains copyright in all their Original Material. Original Material includes video recordings, graphics, soundtracks, printed material and any other design or artwork commissioned by the Customer in relation to the Order. The Customer must ensure that permission is sought for the inclusion of any copyright material they supply to the Company to enable them to deliver the product(s) or service(s). The Customer must also ensure that permission is sought for the inclusion of any performers or performances, trademarks and locations. The Company retains the right to use this material in its original and edited form as they see fit, unless otherwise agreed in the Order. The Customer agrees to indemnify the Company in the event of any breach of copyright claims being brought against the Company in respect of material supplied by the Customer. \r\n\r\n9) Data Protection: The Customer must ensure that all necessary arrangements have been made with, and permissions obtained from, people and places that may be recorded on video as a result of the Company supplying the product(s) or service(s) – and that such recording is in compliance with Data Protection.\r\n\r\n10) Complaints Procedure: In the unlikely event of a dispute over the supply of product(s) or service(s), the Customer and Company, any disputes must be notified within 28-days of the Customer receiving the product(s) or service(s).\r\n\r\n11) Confidentiality: Unless otherwise agreed the Company will treat any information gained during the supply of the product(s) or service(s) as being private and confidential. Likewise, the Customer shall keep confidential any methodologies and technology used by the Company to supply of the product(s) or service(s).\r\n\r\n12) Basis of law: These Terms and Conditions and any accompanying letter and/or contract are governed by the laws of the United Kingdom.	/images/1.jpg	2	/images/1.jpg	2	/images/1.jpg	2	2017-01-23 13:12:24.608578	2017-01-23 13:44:44.548231
5	Websites For Professionals	/images/1.jpg	If you make something, or do something, then you need a website to tell the world about it. You need a website for a professional.\r\n\r\nThe aim of this kind of website is to present your products/services in a way that's appealing, easy to understand, and easy to navigate. For instance, imagine logging on to a website for a local art gallery - you want the website to give you the information in a way that's easily understood, and not awkward to get at. Moreover, you want to see some of the paintings!\r\n\r\nWe can make you such a website. Responsive, mobile/tablet(/and even smart watch) ready, with contact forms, advanced css features and information collecting features.\r\n\r\nWe also provide Search Engine Optimisation services! (So you appear near the top of list when someone searches for the service or product you provide on Google (or another search engine - Bing, Yahoo etc).\r\n\r\nFor more details please see the links below or go straight to the "Contact Us" section!	/images/1.jpg	2	/images/1.jpg	2	/images/1.jpg	2	2017-01-24 07:52:04.567239	2017-01-24 08:00:37.875712
6	Contact Us	NONE	Best way to contact us is with the form below! But if you'd prefer another method, feel free to use any of the contact details below. \r\nEmail: john.murphy@maypolefilm.co.uk\r\nPhone: 07447565376\r\nGlobal-Phone: +447447565376	/images/3.jpg	2	/images/3.jpg	2	/images/3.jpg	2	2017-01-27 13:00:27.247377	2017-01-27 13:00:27.247377
10	Review from Rose Liddell	/images/1.jpg	Rose Liddell -- "I used this service as part of my application for a highly competitive graduate scheme and was immensely pleased with the result. I was highly impressed by the professionalism and good quality of the service, by which the final result was a film that was finely edited, technically sound and most importantly helped me to stand out as an optimal candidate. What also impressed me about the service was that though I hadn’t used the service before, I was made to feel instantly comfortable. The company took care to explain to me the details of the process, which enabled me to understand how the film would be put together and helped me to feel a lot more relaxed. The company also cared to ensure that there was a few practice takes in order to test the quality of the sound and video production but to also enable me as the customer to practice until I felt comfortable. I felt that the service was completely flexible to my needs allowing me to repeat takes as often as I wanted until I was completely satisfied with the finished product. I am immensely satisfied with the finished product and gained a very positive customer experience from using the services provided by the company. I would highly recommend this company to any individual or business in need of a professional and customer friendly corporate video production service."	/images/1.jpg	2	/images/1.jpg	2	/images/1.jpg	2	2017-01-27 14:21:44.574892	2017-01-27 14:22:23.261193
7	Websites	/images/1.jpg	There are lots of different types of websites - and we can provide most of them. Here are a list of the categories of websites we provide, with examples of existing websites similar to the types. Select the category of website that you would like from the boxes below.\r\n\r\n<b>Professional Websites:</b>\r\n- Portfolio Websites (show off your products and services!)\r\n- Informative Websites\r\n- Organisation Websites (Charities, Schools, Local Events)\r\n- Small business Websites \r\n- Online blogs\r\n<b>Online Market Places</b>\r\n- Such as large market places (like richersounds.com or g2a.com)\r\n<b>Other Websites</b>\r\n- Social media (like Facebook or Twitter)\r\n- Online games\r\n-  Online polls\r\n	/images/1.jpg	5	/images/1.jpg	2	/images/1.jpg	2	2017-01-27 13:47:16.713116	2017-01-27 13:57:00.326676
8	Reviews	/images/1.jpg	"I would highly recommend Maypole Film to anyone else looking to produce videos and I will certainly be using them again"\r\n\r\n"The company took care to explain to me the details of the process, which enabled me to understand how the film would be put together and helped me to feel a lot more relaxed."\r\n\r\n"t. I am immensely satisfied with the finished product and gained a very positive customer experience from using the services provided by the company. "\r\n\r\nClick the links below to see the reviews in full	/images/1.jpg	2	/images/1.jpg	2	/images/1.jpg	2	2017-01-27 14:11:16.874014	2017-01-27 14:11:16.874014
11	Online Marketplaces	/images/1.jpg	This type of website are for those who wish to sell a great deal of products to a large number of clients. Amazon.co.uk, G2A.com, richersounds.com are all examples of this type of website.\r\n\r\nNot only does the website need to be responsive, searchable, clear and self-organising, but it also needs to be powered by a database and allow admins control over wish products are shown.\r\n\r\nWe provide this type of website. Contact us below with the form to request one.	/images/1.jpg	2	/images/1.jpg	2	/images/1.jpg	2	2017-01-27 14:26:31.195672	2017-01-27 14:26:31.195672
9	Review from Uni Green Scheme 	/images/clock.jpg	Michael James McLeod - Co-Founder of UniGreenScheme - unigreenscheme.co.uk\r\n\r\n"I contacted Maypole Film because I was in urgent need of a professional video for my company for a national competition. Despite the short-time frame, Maypole Film was able to attend at my convenience, they came to my premises to film, took multiple takes as needed and got it edited and produced in just two days. Not only was the end result professional but the service was some of the best I have seen in business. I would highly recommend Maypole Film to anyone else looking to produce videos and I will certainly be using them again"	/images/1.jpg	2	/images/1.jpg	2	/images/1.jpg	2	2017-01-27 14:16:09.741949	2017-01-27 14:18:59.835109
12	Other Websites	/images/1.jpg	As well as the two main types of websites listed in the other sections, Maypole provides lots of other kinds of websites. This includes video websites, social media websites, online poll websites, online games and many others. Please let us know in the contact box below what kind of website you would like.	/images/1.jpg	2	/images/1.jpg	2	/images/1.jpg	2	2017-01-27 19:58:33.718139	2017-01-27 19:58:33.718139
\.


--
-- Name: pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rubymaypole
--

SELECT pg_catalog.setval('pages_id_seq', 12, true);


--
-- Data for Name: pagevideos; Type: TABLE DATA; Schema: public; Owner: rubymaypole
--

COPY pagevideos (id, title, text_main, photo_main, sub_videos_set, created_at, updated_at) FROM stdin;
1	Maypole Film - Films	Businesses need promotional videoes to tell their customers what they do, how they do, and why the customers should chose them. Maypole Film can provide these videos for your company.	intro1	["animated1", "animated2", "intro1"]	2017-01-11 01:46:57.689267	2017-01-18 01:54:20.116262
2	Live Action	Live Action Video is the type of video that is taken with a camera. It is not animated, and involves actors or people speaking into the camera.\r\n\r\nWith this type of video you'll want it to look professional, have clear visuals and clear audio, and stand out from the crowd. \r\n\r\nThese videos can be used for many different purposes! From describing what product you make, or services you provide to advertising a town, demonstrating teaching methods or even providing instructions to a work force.\r\n\r\nIf this is the type of video you want, drop us a message below!	intro1	["animated1", "animated2", "intro1"]	2017-01-28 15:53:43.199297	2017-01-28 15:53:43.199297
3	Animated Video	Animated videos are essentially cartoon videos. They're often used to explain a product or service (known as explainer videos). They're eye catching, fun and good at communicating their message.\r\n\r\nTake a look at our examples below! If you'd like to order an animated video for you business, contact us with the form below.\r\n\r\n	intro1	["animated1", "animated2", "intro1"]	2017-01-28 17:06:30.760582	2017-01-28 17:06:30.760582
4	Other Video Types	Other than live action video there are more specialist videos. For instance, interactive videos (where users can use the mouse and arrows on a keyboard to interact with what they are seeing) or a constant live feed of video.\r\n\r\nTo see if we can provide the type of video you want, message us below using the contact form.	intro1	["animated1", "animated2", "intro1"]	2017-01-28 17:32:20.738866	2017-01-28 17:32:20.738866
\.


--
-- Name: pagevideos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rubymaypole
--

SELECT pg_catalog.setval('pagevideos_id_seq', 4, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: rubymaypole
--

COPY schema_migrations (version) FROM stdin;
0
20161230134012
20170109024130
20170111004151
20170112035314
20170123081040
20170123090417
\.


--
-- Data for Name: sub_pages; Type: TABLE DATA; Schema: public; Owner: rubymaypole
--

COPY sub_pages (id, photo_link, photo_title, created_at, updated_at) FROM stdin;
\.


--
-- Name: sub_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rubymaypole
--

SELECT pg_catalog.setval('sub_pages_id_seq', 1, false);


--
-- Data for Name: subpages; Type: TABLE DATA; Schema: public; Owner: rubymaypole
--

COPY subpages (id, photo_link, photo_title, created_at, updated_at) FROM stdin;
1	2	The Director	2017-01-23 09:13:04.174838	2017-01-24 11:54:49.560825
2	5	Professional	2017-01-27 13:56:28.339605	2017-01-27 13:56:28.339605
\.


--
-- Name: subpages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rubymaypole
--

SELECT pg_catalog.setval('subpages_id_seq', 2, true);


--
-- Data for Name: videos; Type: TABLE DATA; Schema: public; Owner: rubymaypole
--

COPY videos (id, name, photo, link, created_at, updated_at) FROM stdin;
2	tea	/images/2.jpg	https://www.youtube.com/embed/oGqv9IvSaYk?enablejsapi=1&version=3&playerapiid=ytplayer	2017-01-16 06:41:05.619279	2017-01-16 06:41:05.619279
3	animated1	/images/1.jpg	https://www.youtube.com/embed/oGqv9IvSaYk?enablejsapi=1&version=3&playerapiid=ytplayer	2017-01-18 02:59:13.703252	2017-01-18 02:59:13.703252
4	animated2	/images/1.jpg	https://www.youtube.com/embed/oGqv9IvSaYk?enablejsapi=1&version=3&playerapiid=ytplayer	2017-01-18 02:59:30.789196	2017-01-18 02:59:30.789196
1	intro1	/images/1.jpg	https://www.youtube.com/embed/UXVhLICU71w?enablejsapi=1&version=3&playerapiid=ytplayer	2017-01-12 04:00:32.655499	2017-01-20 23:28:36.19235
\.


--
-- Name: videos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rubymaypole
--

SELECT pg_catalog.setval('videos_id_seq', 4, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: rubymaypole
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: maypoles maypoles_pkey; Type: CONSTRAINT; Schema: public; Owner: rubymaypole
--

ALTER TABLE ONLY maypoles
    ADD CONSTRAINT maypoles_pkey PRIMARY KEY (id);


--
-- Name: pages pages_pkey; Type: CONSTRAINT; Schema: public; Owner: rubymaypole
--

ALTER TABLE ONLY pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (id);


--
-- Name: pagevideos pagevideos_pkey; Type: CONSTRAINT; Schema: public; Owner: rubymaypole
--

ALTER TABLE ONLY pagevideos
    ADD CONSTRAINT pagevideos_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: rubymaypole
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: sub_pages sub_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: rubymaypole
--

ALTER TABLE ONLY sub_pages
    ADD CONSTRAINT sub_pages_pkey PRIMARY KEY (id);


--
-- Name: subpages subpages_pkey; Type: CONSTRAINT; Schema: public; Owner: rubymaypole
--

ALTER TABLE ONLY subpages
    ADD CONSTRAINT subpages_pkey PRIMARY KEY (id);


--
-- Name: videos videos_pkey; Type: CONSTRAINT; Schema: public; Owner: rubymaypole
--

ALTER TABLE ONLY videos
    ADD CONSTRAINT videos_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

