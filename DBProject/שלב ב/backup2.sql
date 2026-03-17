--
-- PostgreSQL database dump
--

\restrict jlZ3tQJtZGbkSjfgw3s7DmgJ6hSMbQMLwanj1HuCjCjtmvZvHVgqlzMTyIiZPBr

-- Dumped from database version 17.1 (Debian 17.1-1.pgdg120+1)
-- Dumped by pg_dump version 17.9

-- Started on 2026-03-17 12:53:45 UTC

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 217 (class 1259 OID 24786)
-- Name: department; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.department (
    department_id integer NOT NULL,
    dept_name character varying(255) NOT NULL,
    location character varying(255)
);


ALTER TABLE public.department OWNER TO admin;

--
-- TOC entry 220 (class 1259 OID 24805)
-- Name: employee; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.employee (
    employee_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    phone_number character varying(15),
    department_id integer,
    role_id integer,
    contract_id integer,
    birth_date date
);


ALTER TABLE public.employee OWNER TO admin;

--
-- TOC entry 219 (class 1259 OID 24800)
-- Name: employee_contract; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.employee_contract (
    contract_id integer NOT NULL,
    start_date date DEFAULT CURRENT_DATE NOT NULL,
    salary numeric(10,2) NOT NULL,
    CONSTRAINT chk_min_salary CHECK ((salary >= (5000)::numeric))
);


ALTER TABLE public.employee_contract OWNER TO admin;

--
-- TOC entry 221 (class 1259 OID 24825)
-- Name: office; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.office (
    office_id integer NOT NULL,
    office_name character varying(255) NOT NULL,
    department_id integer,
    office_location character varying(255)
);


ALTER TABLE public.office OWNER TO admin;

--
-- TOC entry 218 (class 1259 OID 24795)
-- Name: role; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.role (
    role_id integer NOT NULL,
    role_title character varying(255) NOT NULL
);


ALTER TABLE public.role OWNER TO admin;

--
-- TOC entry 222 (class 1259 OID 24835)
-- Name: shift; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.shift (
    shift_id integer NOT NULL,
    shift_type character varying(50) NOT NULL,
    start_time time without time zone NOT NULL
);


ALTER TABLE public.shift OWNER TO admin;

--
-- TOC entry 223 (class 1259 OID 24840)
-- Name: shift_assignment; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.shift_assignment (
    assignment_id integer NOT NULL,
    employee_id integer,
    shift_id integer,
    work_date date NOT NULL
);


ALTER TABLE public.shift_assignment OWNER TO admin;

--
-- TOC entry 3404 (class 0 OID 24786)
-- Dependencies: 217
-- Data for Name: department; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.department (department_id, dept_name, location) FROM stdin;
1	Dept 1	Canha
2	Dept 2	Picton
3	Dept 3	Huainan
4	Dept 4	Nowe Skalmierzyce
5	Dept 5	Boksitogorsk
6	Dept 6	Nanyang
7	Dept 7	Jaciara
8	Dept 8	Aachen
9	Dept 9	Sydney
10	Dept 10	Ciduren
11	Dept 11	Kalashnikovo
12	Dept 12	Mochishche
13	Dept 13	Qingxi
14	Dept 14	Guacamaya
15	Dept 15	Cunha
16	Dept 16	Pervomaysk
17	Dept 17	Rakek
18	Dept 18	Mbuji-Mayi
19	Dept 19	Affery
20	Dept 20	Panyindangan
21	Dept 21	Xinzhan
22	Dept 22	Spodnja Hajdina
23	Dept 23	Itami
24	Dept 24	Dasha
25	Dept 25	Timurjaya
26	Dept 26	Pengshi
27	Dept 27	Lagangilang
28	Dept 28	Kozhevnikovo
29	Dept 29	Solsona
30	Dept 30	Mszana Dolna
31	Dept 31	Harstad
32	Dept 32	Bailingnao
33	Dept 33	Oygon
34	Dept 34	Fada N'gourma
35	Dept 35	Honghualiangzi
36	Dept 36	Telsiai
37	Dept 37	Starokorsunskaya
38	Dept 38	Changchuan
39	Dept 39	Kingston
40	Dept 40	Saint-Lô
41	Dept 41	Södertälje
42	Dept 42	Sémbé
43	Dept 43	Paris 07
44	Dept 44	Shibirghān
45	Dept 45	Ouadda
46	Dept 46	Zdenci
47	Dept 47	Mississauga
48	Dept 48	Būr Safājah
49	Dept 49	Kumagunnam
50	Dept 50	Paris 14
51	Dept 51	Greda
52	Dept 52	Limoges
53	Dept 53	Bahía de Caráquez
54	Dept 54	Singgugu
55	Dept 55	Kinalansan
56	Dept 56	Ilmajoki
57	Dept 57	Pasvalys
58	Dept 58	Khoronk’
59	Dept 59	Sandefjord
60	Dept 60	Yinghua
61	Dept 61	Elias Fausto
62	Dept 62	Qimantage
63	Dept 63	Tirhanimîne
64	Dept 64	Partizan
65	Dept 65	Krasnogorskiy
66	Dept 66	Vacov
67	Dept 67	Kalenderovci Donji
68	Dept 68	Tangtu
69	Dept 69	Vale de Madeiros
70	Dept 70	Tokonou
71	Dept 71	Dacheng
72	Dept 72	Rancagua
73	Dept 73	Macaíba
74	Dept 74	Limbuš
75	Dept 75	Tarouca
76	Dept 76	Beranci
77	Dept 77	Karlstad
78	Dept 78	Dalsjöfors
79	Dept 79	Umeå
80	Dept 80	Potok Złoty
81	Dept 81	Wan’an
82	Dept 82	Osoyoos
83	Dept 83	Vitina
84	Dept 84	Gayle
85	Dept 85	Makiv
86	Dept 86	Pointe-à-Pitre
87	Dept 87	Poputnaya
88	Dept 88	Villeneuve-la-Garenne
89	Dept 89	Volot
90	Dept 90	Moñitos
91	Dept 91	Energetik
92	Dept 92	Itzer
93	Dept 93	Tongzi
94	Dept 94	Zouiat ech Cheïkh
95	Dept 95	Daliuhang
96	Dept 96	Kaset Sombun
97	Dept 97	Villa Consuelo
98	Dept 98	Uchkulan
99	Dept 99	Mori
100	Dept 100	San Lorenzo
101	Dept 101	Bernardo de Irigoyen
102	Dept 102	Vyškov
103	Dept 103	Hanamaki
104	Dept 104	Södertälje
105	Dept 105	Kitango
106	Dept 106	Poyang
107	Dept 107	Huangsha
108	Dept 108	New York City
109	Dept 109	Olszówka
110	Dept 110	Santa Cruz
111	Dept 111	Odintsovo
112	Dept 112	Nizhniy Bestyakh
113	Dept 113	Facatativá
114	Dept 114	Halmstad
115	Dept 115	Masaki-chō
116	Dept 116	Nanterre
117	Dept 117	Paobulan
118	Dept 118	Pedregulho
119	Dept 119	Koesan
120	Dept 120	Kiiminki
121	Dept 121	Orangeville
122	Dept 122	Emmaboda
123	Dept 123	Pushkino
124	Dept 124	Mykonos
125	Dept 125	Kuroishi
126	Dept 126	Majiao
127	Dept 127	Suita
128	Dept 128	Sa Kaeo
129	Dept 129	Chenārān
130	Dept 130	Mineralni Bani
131	Dept 131	Citasuk
132	Dept 132	Mezinovskiy
133	Dept 133	Chenda
134	Dept 134	Ševica
135	Dept 135	Sukkozero
136	Dept 136	Pomacocha
137	Dept 137	‘Awaj
138	Dept 138	Modis
139	Dept 139	Toktogul
140	Dept 140	Sakété
141	Dept 141	Guaíba
142	Dept 142	Castellon De La Plana/Castello De La Pla
143	Dept 143	Loa Janan
144	Dept 144	Talangnan
145	Dept 145	Caihe
146	Dept 146	Dongyang
147	Dept 147	Kujung
148	Dept 148	Cambuga
149	Dept 149	Hoani
150	Dept 150	Tapakrejo
151	Dept 151	Pepe
152	Dept 152	Gamovo
153	Dept 153	Cabcaben
154	Dept 154	Taihua
155	Dept 155	Yangwei
156	Dept 156	Kiihtelysvaara
157	Dept 157	Tunis
158	Dept 158	Atlanta
159	Dept 159	Mahendranagar
160	Dept 160	Flic en Flac
161	Dept 161	Angochi
162	Dept 162	Bantiran
163	Dept 163	Pansoy
164	Dept 164	Pontevedra
165	Dept 165	Manyava
166	Dept 166	Pancur
167	Dept 167	Nice
168	Dept 168	Genève
169	Dept 169	Bodzentyn
170	Dept 170	La Cruz
171	Dept 171	Beitai
172	Dept 172	Wanquan
173	Dept 173	Hōjō
174	Dept 174	Tlogowungu
175	Dept 175	Lilongwe
176	Dept 176	Inhambane
177	Dept 177	Longquan
178	Dept 178	Zhuting
179	Dept 179	Oripää
180	Dept 180	Tanjung
181	Dept 181	Kashirskoye
182	Dept 182	Shatoujiao
183	Dept 183	Pathum Rat
184	Dept 184	Necoclí
185	Dept 185	'Ali Sabieh
186	Dept 186	Saparbay
187	Dept 187	Ţāmiyah
188	Dept 188	Carrizal
189	Dept 189	Pemzashen
190	Dept 190	Vinež
191	Dept 191	Huxiaoqiao
192	Dept 192	Treinta y Tres
193	Dept 193	Waterloo
194	Dept 194	Gandusari
195	Dept 195	Muruni
196	Dept 196	Zafar
197	Dept 197	Gaula
198	Dept 198	Xinxu
199	Dept 199	Haoba
200	Dept 200	Jesús Menéndez
201	Dept 201	Saint George's
202	Dept 202	Hejiaping
203	Dept 203	Xinji
204	Dept 204	Grenoble
205	Dept 205	Pasadena
206	Dept 206	Leon Postigo
207	Dept 207	Zaysan
208	Dept 208	Palmas Bellas
209	Dept 209	Basīrpur
210	Dept 210	Sal’sk
211	Dept 211	Melun
212	Dept 212	Wuppertal
213	Dept 213	Namasuba
214	Dept 214	Krebet
215	Dept 215	Licheng
216	Dept 216	Oinófyta
217	Dept 217	São João Nepomuceno
218	Dept 218	Thị Trấn Ngọc Lặc
219	Dept 219	Ryazhsk
220	Dept 220	Detroit
221	Dept 221	Tiassalé
222	Dept 222	Korenëvo
223	Dept 223	Kungsbacka
224	Dept 224	Baleber
225	Dept 225	Novokhovrino
226	Dept 226	Ar Riqāmā
227	Dept 227	Thala
228	Dept 228	Gengcheng
229	Dept 229	Miętne
230	Dept 230	Replot
231	Dept 231	Veselynove
232	Dept 232	Voskehask
233	Dept 233	Boleiros
234	Dept 234	Maoyang
235	Dept 235	Examília
236	Dept 236	Novyy Svit
237	Dept 237	Stockholm
238	Dept 238	Ninh Giang
239	Dept 239	Norsborg
240	Dept 240	Zangbi
241	Dept 241	Washington
242	Dept 242	Estância
243	Dept 243	Gotovlje
244	Dept 244	La Victoria
245	Dept 245	Águas
246	Dept 246	Yiqi
247	Dept 247	Donja Brela
248	Dept 248	Dongfanghong
249	Dept 249	Tver
250	Dept 250	Borovany
251	Dept 251	Belyy Gorodok
252	Dept 252	Saintes
253	Dept 253	Liujiage
254	Dept 254	Kupu
255	Dept 255	Asan-Maina Village
256	Dept 256	La Quiaca
257	Dept 257	Santana
258	Dept 258	Hema
259	Dept 259	Duut
260	Dept 260	Ait Ali
261	Dept 261	Francisco I Madero
262	Dept 262	Bački Breg
263	Dept 263	Leteki
264	Dept 264	Baqiu
265	Dept 265	Farasān
266	Dept 266	Lorient
267	Dept 267	Maurisu
268	Dept 268	Xinpu
269	Dept 269	Västra Frölunda
270	Dept 270	Pavlivka
271	Dept 271	Jeminay
272	Dept 272	Houbai
273	Dept 273	Banjar Teguan
274	Dept 274	Schieren
275	Dept 275	Fontenay-sous-Bois
276	Dept 276	Pathein
277	Dept 277	Pacobamba
278	Dept 278	Vilhelmina
279	Dept 279	Ibitinga
280	Dept 280	Askersund
281	Dept 281	Bahía Blanca
282	Dept 282	Barra dos Coqueiros
283	Dept 283	Brest
284	Dept 284	Suchań
285	Dept 285	Gwandu
286	Dept 286	Esquina
287	Dept 287	Petaling Jaya
288	Dept 288	Kragujevac
289	Dept 289	Winneba
290	Dept 290	Morinville
291	Dept 291	Misheronskiy
292	Dept 292	Rozwadza
293	Dept 293	Valencia
294	Dept 294	Lopatinskiy
295	Dept 295	Santa Luzia
296	Dept 296	Rutul
297	Dept 297	Kramators’k
298	Dept 298	Łyse
299	Dept 299	Bratislava
300	Dept 300	Mayahi
301	Dept 301	Svetlograd
302	Dept 302	Ubatã
303	Dept 303	Qal‘eh-ye Khvājeh
304	Dept 304	Narawayong
305	Dept 305	Wanlongshan
306	Dept 306	Manay
307	Dept 307	Fangqiang
308	Dept 308	Quanzhou
309	Dept 309	Palmas
310	Dept 310	Phlapphla Chai
311	Dept 311	Emiliano Zapata
312	Dept 312	Heicheng
313	Dept 313	Gaocheng
314	Dept 314	Khodasy
315	Dept 315	Rosh Pinna
316	Dept 316	Fatuulan
317	Dept 317	Wasquehal
318	Dept 318	Solok Timur
319	Dept 319	Tonj
320	Dept 320	Lazaro Cardenas
321	Dept 321	Barrie
322	Dept 322	Hule
323	Dept 323	Hengli
324	Dept 324	Keleng
325	Dept 325	Stuttgart
326	Dept 326	Nice
327	Dept 327	Jardinópolis
328	Dept 328	Palopat
329	Dept 329	Gōtsuchō
330	Dept 330	Qiancheng
331	Dept 331	Gojō
332	Dept 332	Zhangxiang
333	Dept 333	Gabrovo
334	Dept 334	Ranao
335	Dept 335	Kuala Lumpur
336	Dept 336	Rio Claro
337	Dept 337	Norberg
338	Dept 338	Sindon
339	Dept 339	Salt Lake City
340	Dept 340	Kol’chugino
341	Dept 341	Ratnapura
342	Dept 342	Artesianón
343	Dept 343	Sanjō
344	Dept 344	Kertorejo
345	Dept 345	Laocheng
346	Dept 346	Tekikbanyuurip
347	Dept 347	Kalávryta
348	Dept 348	Rogachëvo
349	Dept 349	Lishu
350	Dept 350	Razgrad
351	Dept 351	Palma De Mallorca
352	Dept 352	Kallithéa
353	Dept 353	Solidaridad
354	Dept 354	Gremyachinsk
355	Dept 355	Governor’s Harbour
356	Dept 356	Shigu
357	Dept 357	Talin Hiag
358	Dept 358	Sattahip
359	Dept 359	Visby
360	Dept 360	Shangyi
361	Dept 361	Dalongdong
362	Dept 362	Rantaupanjang
363	Dept 363	Zlín
364	Dept 364	Kortkeros
365	Dept 365	Mingshui
366	Dept 366	Tayug
367	Dept 367	Trondheim
368	Dept 368	Llusco
369	Dept 369	Yangcun
370	Dept 370	Al Khafjī
371	Dept 371	Kusak
372	Dept 372	Baborów
373	Dept 373	Frisange
374	Dept 374	Jiuzihe
375	Dept 375	Hebei
376	Dept 376	Kalix
377	Dept 377	Yajiang
378	Dept 378	Jiangbu
379	Dept 379	Trần Văn Thời
380	Dept 380	San Pedro de Ycuamandiyú
381	Dept 381	Xia Dawo
382	Dept 382	Carvalho
383	Dept 383	El Paso
384	Dept 384	Chenghuang
385	Dept 385	Paris La Défense
386	Dept 386	Xiaheqing
387	Dept 387	Xinfeng
388	Dept 388	Пласница
389	Dept 389	Bobrowice
390	Dept 390	Sapiranga
391	Dept 391	Geldrop
392	Dept 392	Ujmisht
393	Dept 393	Pyapon
394	Dept 394	Bartolomé Masó
395	Dept 395	Fengkou
396	Dept 396	Tonglin
397	Dept 397	Starychi
398	Dept 398	Pontarlier
399	Dept 399	Duzhenwan
400	Dept 400	Harar
401	Dept 401	Witkowo
402	Dept 402	Pierzchnica
403	Dept 403	Conceição da Barra
404	Dept 404	Kristiansand S
405	Dept 405	Walakeri
406	Dept 406	Alta Gracia
407	Dept 407	Rungis
408	Dept 408	Bourges
409	Dept 409	Niort
410	Dept 410	Quchi
411	Dept 411	Akkol’
412	Dept 412	Amiens
413	Dept 413	Đạ Tẻh
414	Dept 414	Rovira
415	Dept 415	Ban Phaeo
416	Dept 416	Ramos
417	Dept 417	Miskindzha
418	Dept 418	Martingança-Gare
419	Dept 419	Rubik
420	Dept 420	Sukomulyo
421	Dept 421	Pocpo
422	Dept 422	Kuznechikha
423	Dept 423	Yŏnggwang-ŭp
424	Dept 424	Wenci
425	Dept 425	Palermo
426	Dept 426	Sampués
427	Dept 427	Awar-awar
428	Dept 428	Boulder
429	Dept 429	Saeul
430	Dept 430	Kilingi-Nõmme
431	Dept 431	Floresta
432	Dept 432	Mjölby
433	Dept 433	Sandakan
434	Dept 434	Diamante
435	Dept 435	Riyadh
436	Dept 436	Chenghuang
437	Dept 437	Chinchero
438	Dept 438	Huashixia
439	Dept 439	Lukou
440	Dept 440	Lishu
441	Dept 441	Caoping
442	Dept 442	Burgos
443	Dept 443	Jianjun
444	Dept 444	Hejia
445	Dept 445	Tukbur
446	Dept 446	Yisa
447	Dept 447	Jiuzhen
448	Dept 448	Jajawai
449	Dept 449	Muzi
450	Dept 450	Compiègne
451	Dept 451	Shanguang
452	Dept 452	Pedamaran
453	Dept 453	Rzyki
454	Dept 454	Plataran
455	Dept 455	Zhuxi Chengguanzhen
456	Dept 456	Mengdong
457	Dept 457	Bang Bo
458	Dept 458	Haixing
459	Dept 459	Gangsha
460	Dept 460	Wonotirto
461	Dept 461	Gotovlje
462	Dept 462	Ruy Barbosa
463	Dept 463	Hebu
464	Dept 464	Sapporo
465	Dept 465	Langob
466	Dept 466	Lom Sak
467	Dept 467	Klobuky
468	Dept 468	Victoria
469	Dept 469	Saiki
470	Dept 470	La Ensenada
471	Dept 471	Raychikhinsk
472	Dept 472	Talin Hiag
473	Dept 473	Xiaoyi
474	Dept 474	Palaiseau
475	Dept 475	Tanggeung Kolot
476	Dept 476	Ningmute
477	Dept 477	Curahnongko
478	Dept 478	Taloko
479	Dept 479	Don Matías
480	Dept 480	Sidayu
481	Dept 481	Banghai
482	Dept 482	Harrison Brook
483	Dept 483	Paccha
484	Dept 484	Septfontaines
485	Dept 485	Hobo
486	Dept 486	Krajan Jabungcandi
487	Dept 487	Le Pontet
488	Dept 488	Alfenas
489	Dept 489	Blumenau
490	Dept 490	Sayansk
491	Dept 491	Shuidong
492	Dept 492	Sergokala
493	Dept 493	Sibaté
494	Dept 494	Namyang-dong
495	Dept 495	Nakhon Pathom
496	Dept 496	Barayong
497	Dept 497	Porta
498	Dept 498	Kafir Qala
499	Dept 499	Armação de Búzios
500	Dept 500	Chibombo
\.


--
-- TOC entry 3407 (class 0 OID 24805)
-- Dependencies: 220
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.employee (employee_id, first_name, last_name, phone_number, department_id, role_id, contract_id, birth_date) FROM stdin;
10	Imelda	Huggill	3375216752	4	3	10	1990-12-15
20	Nick	Callis	9789262934	3	3	20	1990-12-15
30	Frankie	Cattenach	6027557577	1	2	30	1990-12-15
40	Katie	Duckels	8935759068	4	1	40	1990-12-15
50	Calley	Jozsef	8315556336	1	2	50	1990-12-15
60	Shepard	Tolworthie	4619696869	2	2	60	1990-12-15
70	Ulrick	Inkin	6078457897	4	2	70	1990-12-15
80	Tana	Khomich	5591819937	5	2	80	1990-12-15
90	Muhammad	Tungay	7775260693	3	3	90	1990-12-15
100	Maridel	Limerick	9535730995	1	3	100	1990-12-15
110	Madelene	Grabiec	9767926600	4	1	110	1990-12-15
120	Neal	Pezey	4082819242	1	1	120	1990-12-15
130	Annadiane	Collcott	3277984097	1	1	130	1990-12-15
140	Gaile	Liff	3776171305	5	3	140	1990-12-15
150	Allyn	Serfati	3042389455	1	1	150	1990-12-15
160	Veronika	William	9388669421	1	3	160	1990-12-15
170	Josias	Rosencrantz	6109175714	2	2	170	1990-12-15
180	Bradford	Maplestone	6381094778	4	1	180	1990-12-15
190	Eleen	Prosek	3068327049	4	3	190	1990-12-15
200	Raimondo	Moynham	1991044724	5	1	200	1990-12-15
210	Pennie	Andreutti	7074409468	3	3	210	1990-12-15
220	Alasdair	McCumesky	6216528353	2	3	220	1990-12-15
230	Dode	Caldwell	2983084459	3	2	230	1990-12-15
240	Conn	Izod	5728976965	5	2	240	1990-12-15
250	Anthia	Sives	6392743201	2	2	250	1990-12-15
260	Hyacinthie	Murdy	8794635792	3	1	260	1990-12-15
270	Willamina	Blackler	7346792423	1	2	270	1990-12-15
280	Erika	Haddrill	9812237207	5	1	280	1990-12-15
290	Margo	Polley	9671367970	5	1	290	1990-12-15
300	Baxter	Zienkiewicz	6061609178	4	3	300	1990-12-15
310	Joby	Waterson	9814923642	1	3	310	1990-12-15
320	Sibylla	Morshead	6637558244	4	2	320	1990-12-15
330	Petronia	Grima	2621937185	5	3	330	1990-12-15
340	Sue	Harrowsmith	2228156857	3	3	340	1990-12-15
350	Homere	Smitherham	1099970991	2	1	350	1990-12-15
360	Wallis	Dafforne	1097989536	3	3	360	1990-12-15
370	Glenna	Enbury	5458031011	4	3	370	1990-12-15
380	Hewet	Penquet	7125310845	3	2	380	1990-12-15
390	Bee	Olcot	5064671922	4	1	390	1990-12-15
400	Jacobo	Steart	5227938522	3	1	400	1990-12-15
410	Ricki	Wolfart	5459952746	5	3	410	1990-12-15
420	Rodney	Elverston	8412763905	3	1	420	1990-12-15
430	Corty	Santino	9781266877	1	2	430	1990-12-15
440	Belicia	Chatainier	4968169031	2	2	440	1990-12-15
450	Christabel	Hasel	9415598644	3	3	450	1990-12-15
460	Markus	Gildersleeve	3022153260	4	2	460	1990-12-15
470	Neron	Longstaffe	1042399564	5	1	470	1990-12-15
480	Loretta	Leedal	3568119383	3	3	480	1990-12-15
490	Dorthy	Arnke	9924830518	5	3	490	1990-12-15
500	Zared	Gilmore	6212839336	5	2	500	1990-12-15
1	Dalis	Kubu	7389600490	4	2	1	1995-05-20
2	Laurent	Hutchinson	8631759300	2	2	2	1995-05-20
3	Nikolas	Pawel	1069917583	5	2	3	1995-05-20
4	Elvina	Emby	6016870849	1	1	4	1995-05-20
5	Tania	Heustace	5973464065	4	1	5	1995-05-20
6	Robinett	Babar	2933583842	3	2	6	1995-05-20
7	Ced	Garnsworth	9103592187	1	2	7	1995-05-20
8	Merissa	Lambirth	4069529786	2	1	8	1995-05-20
9	Niki	Abdee	2278876295	5	3	9	1995-05-20
11	Zebadiah	Bracci	7432982901	2	2	11	1995-05-20
12	Adriano	Ost	4941354290	5	3	12	1995-05-20
13	Theadora	Bertomier	5996618189	2	1	13	1995-05-20
14	Jere	Ryce	9891646978	3	1	14	1995-05-20
15	Maisie	Heales	8722104911	3	2	15	1995-05-20
16	Rog	Augustin	8456260207	1	1	16	1995-05-20
17	Janeva	Petruk	8705890003	1	2	17	1995-05-20
18	Giffy	Eastment	3224870755	2	3	18	1995-05-20
19	Tiphani	Learmouth	4887855517	2	2	19	1995-05-20
21	Wynny	Badger	7197708318	3	3	21	1995-05-20
22	Lionel	Devanny	9169616871	5	1	22	1995-05-20
23	Allan	Eskrigg	7127059132	5	3	23	1995-05-20
24	Faith	Gilhooly	3143855355	5	2	24	1995-05-20
25	Kippy	Pittet	2238024969	4	3	25	1995-05-20
26	Moyra	Burfoot	9158888981	3	2	26	1995-05-20
27	Papagena	Berling	3878662346	5	3	27	1995-05-20
28	Mario	Ucchino	9371463609	2	3	28	1995-05-20
29	Minerva	Lomaz	6155558643	5	3	29	1995-05-20
31	Derick	Riping	7529865374	1	2	31	1995-05-20
32	Dex	Morgans	2078961436	5	3	32	1995-05-20
33	Leeann	Addinall	4878325728	1	3	33	1995-05-20
34	Idell	Rives	5546497837	1	1	34	1995-05-20
35	Joella	Hitschke	5584679650	1	2	35	1995-05-20
36	Shanna	Ludlow	6288199724	2	1	36	1995-05-20
37	Lauryn	Tregido	3308351234	4	3	37	1995-05-20
38	Alard	Librey	2886909306	4	2	38	1995-05-20
39	Merla	Tubbles	9517116963	1	1	39	1995-05-20
41	Vin	Laville	2079212746	2	3	41	1995-05-20
42	Nanci	Furbank	2328476050	3	3	42	1995-05-20
43	Bendicty	Pinsent	7555866737	1	3	43	1995-05-20
44	Cristen	Brewins	5339949517	4	2	44	1995-05-20
45	De	Scrivin	1473333571	3	3	45	1995-05-20
46	Tom	Titmuss	1631080685	5	1	46	1995-05-20
47	Sherie	Scole	5223614287	1	3	47	1995-05-20
48	Edeline	Knoller	8828645649	1	2	48	1995-05-20
49	Layton	Morlon	8805945553	1	2	49	1995-05-20
51	Bettye	Letson	7748855991	3	1	51	1995-05-20
52	Jonathon	Doring	6672360727	3	3	52	1995-05-20
53	Bucky	Cardinal	6145314937	3	2	53	1995-05-20
54	Godard	Aps	9305549165	3	1	54	1995-05-20
55	Raf	Bredes	7269537621	4	1	55	1995-05-20
56	Ginevra	Beswell	7759628095	1	3	56	1995-05-20
57	Zared	Lindenbaum	5593007339	1	2	57	1995-05-20
58	Shannan	Tour	8316918830	2	1	58	1995-05-20
59	Arturo	Blaney	9639591433	2	1	59	1995-05-20
61	Matilda	Oxenden	3875679082	3	3	61	1995-05-20
62	Fitzgerald	Tait	5036258037	4	3	62	1995-05-20
63	Renell	Jinkinson	3451528561	3	1	63	1995-05-20
64	Clementina	Woodrough	4742642407	3	2	64	1995-05-20
65	Rockey	Hannaby	2712150604	4	2	65	1995-05-20
66	Sibley	Strangwood	1625004388	5	2	66	1995-05-20
67	Verene	Messenger	3523551388	3	2	67	1995-05-20
68	Stacy	Petracco	4988502704	4	1	68	1995-05-20
69	Chip	MacAdam	5341989647	4	2	69	1995-05-20
71	Margaret	Gobeau	4474777962	3	3	71	1995-05-20
72	Dollie	Janauschek	3051945483	4	2	72	1995-05-20
73	Gerri	Bracegirdle	4414970004	3	3	73	1995-05-20
74	Cindra	Le Prevost	2024126888	3	2	74	1995-05-20
75	Cross	Laffranconi	9237449126	2	2	75	1995-05-20
76	Felizio	Champkins	7678123900	5	1	76	1995-05-20
77	Ellynn	Delucia	7149059199	1	2	77	1995-05-20
78	Brendis	Curedale	8031214415	1	1	78	1995-05-20
79	Kata	Standbrook	8548989448	5	2	79	1995-05-20
81	Rozella	Lanaway	2889565395	3	1	81	1995-05-20
82	Miriam	Jirek	4848179140	1	2	82	1995-05-20
83	Malinda	Schneider	2319595702	2	2	83	1995-05-20
84	Cecilius	Worthy	1702832452	2	2	84	1995-05-20
85	Wilton	Watters	1013026334	3	2	85	1995-05-20
86	Gun	Guilloton	3099017067	2	3	86	1995-05-20
87	Carleen	Bril	6968494223	2	3	87	1995-05-20
88	Karin	Lansdown	4462386701	4	3	88	1995-05-20
89	Roy	Belfit	2877338064	5	1	89	1995-05-20
91	Colas	Reavell	6516514113	3	1	91	1995-05-20
92	Gunther	Wrought	9138458326	1	3	92	1995-05-20
93	Alli	Nenci	1007201878	3	2	93	1995-05-20
94	Gallagher	McCarthy	2955153506	5	1	94	1995-05-20
95	Shellie	Gammage	1829961960	4	2	95	1995-05-20
96	Bron	Haggath	3985222396	4	1	96	1995-05-20
97	Vidovic	Serchwell	1581111174	2	2	97	1995-05-20
98	Mort	Leggett	1803284204	1	2	98	1995-05-20
99	Alisa	Lowdeane	2259855058	5	2	99	1995-05-20
101	Nicol	Reichhardt	6428726940	3	3	101	1995-05-20
102	Cordey	Tejero	8638174560	2	3	102	1995-05-20
103	Arny	Corran	4591166223	1	3	103	1995-05-20
104	Dyan	Whoston	1386420591	2	1	104	1995-05-20
105	Brendin	Mowson	1464505926	5	1	105	1995-05-20
106	Susanna	Golston	6108921741	3	2	106	1995-05-20
107	Shirley	Bosher	7974003008	4	1	107	1995-05-20
108	Reider	Summerson	6737138575	2	2	108	1995-05-20
109	Lois	Writtle	9052103424	5	2	109	1995-05-20
111	Gunar	Guihen	3982443535	1	3	111	1995-05-20
112	Lambert	McCreary	7484269894	1	2	112	1995-05-20
113	Joaquin	Barrabeale	8626258638	2	1	113	1995-05-20
114	Paxon	Allender	2021185809	5	1	114	1995-05-20
115	Paxton	Halloway	8275615225	1	1	115	1995-05-20
116	Babette	Hambly	4584400353	1	1	116	1995-05-20
117	Aurel	Rosenbloom	2437583311	4	3	117	1995-05-20
118	Gwendolin	Serrell	2363338716	4	1	118	1995-05-20
119	Deana	Harte	1732528042	5	3	119	1995-05-20
121	Clemens	Garritley	9158638731	2	1	121	1995-05-20
122	Benedicto	Shere	7631818771	1	1	122	1995-05-20
123	Maire	Emmerson	3531553473	3	1	123	1995-05-20
124	Federica	Jancic	3172250074	1	1	124	1995-05-20
125	Ambur	Huckster	3039558289	5	2	125	1995-05-20
126	Corri	Danielis	4334286163	5	3	126	1995-05-20
127	Hestia	Gerrie	1186962820	2	2	127	1995-05-20
128	Merrily	Medgewick	2786035933	1	2	128	1995-05-20
129	Sadye	Pender	3867058487	3	2	129	1995-05-20
131	Cordie	Howat	6668686146	1	1	131	1995-05-20
132	Godfrey	Iowarch	8536644002	1	1	132	1995-05-20
133	Barris	Stote	9121045032	5	1	133	1995-05-20
134	Nollie	Izakson	7034049868	5	1	134	1995-05-20
135	Carrissa	Botley	9526586500	3	2	135	1995-05-20
136	Yancey	Craigs	5374408884	2	3	136	1995-05-20
137	Willabella	Rays	3376778160	3	2	137	1995-05-20
138	Boycey	Liggins	6265945057	4	1	138	1995-05-20
139	Veriee	Georgius	7918833127	1	3	139	1995-05-20
141	Nollie	McNiff	2859571594	5	1	141	1995-05-20
142	Otis	Shepperd	4674968281	5	1	142	1995-05-20
143	Ethan	Gutierrez	6855457966	1	2	143	1995-05-20
144	Marge	Mynett	9203558838	1	2	144	1995-05-20
145	Janis	Earey	3638223572	4	1	145	1995-05-20
146	Blinny	Godman	6558037598	2	1	146	1995-05-20
147	Lorrie	Powton	7694326892	4	1	147	1995-05-20
148	Hoyt	Hagyard	3813559842	4	1	148	1995-05-20
149	Rhonda	Blatherwick	9585900658	3	1	149	1995-05-20
151	Valene	Bowart	5681754649	3	1	151	1995-05-20
152	Read	Stiling	3469427980	5	3	152	1995-05-20
153	Fawnia	Barkworth	6588558579	3	3	153	1995-05-20
154	Benedetta	Scales	3601596125	3	2	154	1995-05-20
155	Stavro	Dabbes	8985292158	4	3	155	1995-05-20
156	Briny	Snead	7958549345	5	2	156	1995-05-20
157	Melantha	McVaugh	8173299210	1	2	157	1995-05-20
158	Lissie	Pateman	8622007246	3	3	158	1995-05-20
159	Deana	Iiannoni	3501926770	1	3	159	1995-05-20
161	Sheeree	Muglestone	4212138781	2	3	161	1995-05-20
162	Fancie	Hyndman	8739775021	1	3	162	1995-05-20
163	Agnes	McMonies	1669175901	3	3	163	1995-05-20
164	Brigit	Newcomb	8216490879	1	1	164	1995-05-20
165	Clementius	Gocke	7843129851	5	3	165	1995-05-20
166	Radcliffe	Agerskow	7063890406	1	2	166	1995-05-20
167	Gerald	Buckland	4496785091	1	1	167	1995-05-20
168	Lorie	Trays	8138402476	2	3	168	1995-05-20
169	Carlos	Bowring	8642178960	4	3	169	1995-05-20
171	Aarika	McReath	5376984687	2	1	171	1995-05-20
172	Hildagarde	Lugard	7052887997	4	3	172	1995-05-20
173	Kare	Franc	2553543637	4	2	173	1995-05-20
174	Sadie	Hallard	3595281408	1	2	174	1995-05-20
175	Feodora	Marritt	8024222856	2	3	175	1995-05-20
176	Carolynn	Prattin	1612849197	5	3	176	1995-05-20
177	Dominica	Walicki	3618221237	3	2	177	1995-05-20
178	Ofella	Yakutin	3789275297	3	1	178	1995-05-20
179	Fabio	Ledes	4762837912	3	1	179	1995-05-20
181	Retha	Dealtry	5189022353	3	2	181	1995-05-20
182	Isidoro	Sitford	1101535168	3	1	182	1995-05-20
183	Catriona	Tubritt	1731348218	5	1	183	1995-05-20
184	Ronica	Maceur	2844391931	2	1	184	1995-05-20
185	Andy	Hatchette	6113436293	5	3	185	1995-05-20
186	Thor	Dorbin	9991167465	2	2	186	1995-05-20
187	Lee	Eustace	8598525070	4	1	187	1995-05-20
188	Chlo	Burge	9924261319	5	2	188	1995-05-20
189	Waylen	Kolyagin	2811150625	2	2	189	1995-05-20
191	Agathe	Aherne	4258599065	1	1	191	1995-05-20
192	Cynthia	Youtead	6687265755	4	1	192	1995-05-20
193	Stanley	Iannini	4393041560	4	1	193	1995-05-20
194	Katherina	Ashmore	5625519091	2	3	194	1995-05-20
195	Kym	Gold	5228405214	4	3	195	1995-05-20
196	Aaron	Yashunin	3668844177	2	3	196	1995-05-20
197	Kelly	Sheers	1015093571	1	2	197	1995-05-20
198	Megen	Acott	9646358445	5	1	198	1995-05-20
199	Donni	Nurdin	5266030815	3	3	199	1995-05-20
201	Jeannie	Yelland	2325532492	2	3	201	1995-05-20
202	Sherilyn	Giorgini	9254132493	4	1	202	1995-05-20
203	Ross	Eliff	1829190424	4	2	203	1995-05-20
204	Esme	Sleeford	4466495823	1	2	204	1995-05-20
205	Lucky	Mayfield	1777696046	5	1	205	1995-05-20
206	Margaretha	Gilbard	6339238330	1	3	206	1995-05-20
207	Conan	Songhurst	8181340702	3	3	207	1995-05-20
208	Nathan	Dagger	3165663281	1	1	208	1995-05-20
209	Terrel	Lownes	7751662725	2	2	209	1995-05-20
211	Marlowe	Monk	9027785532	2	3	211	1995-05-20
212	Emmalyn	Ruff	2187385151	4	1	212	1995-05-20
213	Duffy	Danielsson	8907043762	4	2	213	1995-05-20
214	Desi	Meiklam	3345070303	5	2	214	1995-05-20
215	Shayla	Kilian	6583376725	5	1	215	1995-05-20
216	Chico	Huxley	5755248659	3	2	216	1995-05-20
217	Dory	Tallow	2384319354	2	1	217	1995-05-20
218	Shantee	Tomek	3989223452	1	2	218	1995-05-20
219	Cordi	Gingle	6756784389	1	3	219	1995-05-20
221	Bessie	Bomfield	3184230326	5	2	221	1995-05-20
222	Idaline	Dowle	8282461451	2	1	222	1995-05-20
223	Shanda	Calderon	1051123172	2	1	223	1995-05-20
224	Lanie	Laise	8337833550	3	3	224	1995-05-20
225	Riccardo	McIlvaney	2035308868	1	3	225	1995-05-20
226	Maurice	Aronov	4503702798	3	1	226	1995-05-20
227	Urbain	Urion	6442001521	1	3	227	1995-05-20
228	Quincey	Frick	9015933466	3	3	228	1995-05-20
229	Valenka	Pigdon	4856695417	2	1	229	1995-05-20
231	Morry	Chaudret	5741349297	4	1	231	1995-05-20
232	Mable	Smooth	7117339281	1	2	232	1995-05-20
233	Jennilee	MacCleay	7674790431	3	3	233	1995-05-20
234	Doria	Perrygo	7389531810	3	1	234	1995-05-20
235	Caitrin	Worg	2039523431	4	2	235	1995-05-20
236	Quentin	McCraine	3235695942	1	2	236	1995-05-20
237	Nicholle	Lattka	9466252045	4	2	237	1995-05-20
238	Rory	Emmerson	6998890291	1	2	238	1995-05-20
239	Ken	Saurat	4306860996	4	3	239	1995-05-20
241	Ree	Fine	8341051424	5	2	241	1995-05-20
242	Mitzi	Soame	5402356878	3	3	242	1995-05-20
243	Teri	Smogur	2244737066	2	1	243	1995-05-20
244	Wandis	Riglesford	9868275096	4	1	244	1995-05-20
245	Maisie	Boggers	4796010431	5	3	245	1995-05-20
246	Carley	Skryne	9107160103	1	2	246	1995-05-20
247	Gardner	Wythe	1443270240	2	1	247	1995-05-20
248	Jenna	Peedell	9108447775	2	1	248	1995-05-20
249	Michaeline	Nunan	8909638063	2	3	249	1995-05-20
251	Skipper	Pavlenko	6775543715	5	1	251	1995-05-20
252	Conroy	Kryska	5252446312	3	2	252	1995-05-20
253	Percy	Tissell	8583760387	2	2	253	1995-05-20
254	Kaleb	Iacapucci	6976821512	2	3	254	1995-05-20
255	Sherwynd	Elward	5819423358	4	3	255	1995-05-20
256	Sherlocke	Dyett	7642932672	4	2	256	1995-05-20
257	Jessica	Hunting	2007941415	1	2	257	1995-05-20
258	Peterus	Parkins	2692193530	2	2	258	1995-05-20
259	Clayborne	Souttar	1691550101	2	3	259	1995-05-20
261	Kipper	Iiannoni	2362261875	5	3	261	1995-05-20
262	Dev	Hartop	3593484144	3	2	262	1995-05-20
263	Marj	Sima	4076196944	4	1	263	1995-05-20
264	Isac	Mold	9935996826	5	2	264	1995-05-20
265	Barbara-anne	Willan	5043419097	1	1	265	1995-05-20
266	Gallard	Bohler	5682933838	5	3	266	1995-05-20
267	Byram	Froggatt	9383704436	3	1	267	1995-05-20
268	Valentijn	Aronoff	4872237602	3	1	268	1995-05-20
269	Willey	Adcocks	8099071058	4	3	269	1995-05-20
271	Kingsly	Amiable	1223738516	3	2	271	1995-05-20
272	Towny	Luno	3644786956	4	2	272	1995-05-20
273	Theadora	Jira	6973632580	4	1	273	1995-05-20
274	Ilise	Kellert	3481670902	3	3	274	1995-05-20
275	Philbert	O'Leary	8544676267	5	2	275	1995-05-20
276	Darnall	Oloshkin	5291432677	2	3	276	1995-05-20
277	Andreana	Broadbere	6977608228	4	3	277	1995-05-20
278	Kaitlin	Siman	1809594028	4	2	278	1995-05-20
279	Carlie	Bulfoot	2136819539	2	3	279	1995-05-20
281	Geri	Robeiro	2639490629	5	3	281	1995-05-20
282	Selene	Coorington	2921172790	5	1	282	1995-05-20
283	Mill	Buxy	4153658862	5	2	283	1995-05-20
284	Mei	Fenny	1616053886	3	1	284	1995-05-20
285	Marjory	Everingham	3978351414	3	1	285	1995-05-20
286	Bradly	Oxtiby	3808246833	4	3	286	1995-05-20
287	Vladimir	Chillingworth	4219407344	3	3	287	1995-05-20
288	Crosby	Geddes	7138555124	2	2	288	1995-05-20
289	Carley	Lafond	2343435969	1	2	289	1995-05-20
291	Vladimir	Tomadoni	2993028051	2	1	291	1995-05-20
292	Candide	Asquez	9457300088	2	2	292	1995-05-20
293	Harcourt	MacNeil	4989433199	1	2	293	1995-05-20
294	Roderich	Labet	3301402692	3	2	294	1995-05-20
295	Eleanore	McLoney	4102812466	1	3	295	1995-05-20
296	Royall	Dowyer	5289157801	3	2	296	1995-05-20
297	Danya	Avieson	3533914439	5	2	297	1995-05-20
298	Georgeta	Espinola	9781259694	1	1	298	1995-05-20
299	Cherri	Chainey	4621239669	4	3	299	1995-05-20
301	Esdras	Vidloc	4863397539	3	3	301	1995-05-20
302	Gavan	Ledamun	2121065118	1	3	302	1995-05-20
303	Rora	Setchfield	9758697677	2	3	303	1995-05-20
304	Anna-diana	Cholton	8887000926	3	2	304	1995-05-20
305	Cecil	Bagnal	3024419054	5	1	305	1995-05-20
306	Delphine	Midghall	5955782991	2	1	306	1995-05-20
307	Drew	Layus	9584867535	3	3	307	1995-05-20
308	Addi	Jantet	5128713935	2	2	308	1995-05-20
309	Hanna	Surplice	3368706968	1	2	309	1995-05-20
311	Jeannie	Brundell	5552608280	1	1	311	1995-05-20
312	Hobey	Dyerson	6852545159	2	2	312	1995-05-20
313	Maye	McColley	1521122724	3	1	313	1995-05-20
314	Farand	Growy	7525522590	2	1	314	1995-05-20
315	Harley	Elesander	8344058944	3	2	315	1995-05-20
316	Dorie	Duplain	3934280163	4	2	316	1995-05-20
317	Carri	Knightsbridge	4063289907	4	1	317	1995-05-20
318	Culley	Gynni	8962807750	4	3	318	1995-05-20
319	Sella	Mcall	1779640884	3	1	319	1995-05-20
321	Tomkin	Spinas	9603041049	2	1	321	1995-05-20
322	Candi	Barensen	3293685165	4	3	322	1995-05-20
323	Kareem	Espinet	7492118693	1	1	323	1995-05-20
324	Dell	Purple	7389955228	5	3	324	1995-05-20
325	Nickolai	Wyne	4184124658	2	1	325	1995-05-20
326	Freedman	Antyshev	4594520172	5	3	326	1995-05-20
327	Ulick	Sterre	5171553496	1	3	327	1995-05-20
328	Timi	Sawyers	1897869479	2	3	328	1995-05-20
329	Vida	Hark	5137471246	5	2	329	1995-05-20
331	Maximilian	Henrych	9141859923	2	3	331	1995-05-20
332	Miran	Gedney	9158686846	1	2	332	1995-05-20
333	Orsola	Malham	2778579462	4	2	333	1995-05-20
334	Hercules	Cona	9288278821	4	2	334	1995-05-20
335	Belvia	Pleasance	2788468710	5	2	335	1995-05-20
336	Maryrose	Arnason	1027358780	2	2	336	1995-05-20
337	Toddie	Winspear	1414352979	5	2	337	1995-05-20
338	Reinald	Batiste	3559002900	2	3	338	1995-05-20
339	Antonietta	Lamlin	2931841732	5	1	339	1995-05-20
341	Germaine	Todhunter	7478621375	5	2	341	1995-05-20
342	Ivette	Bloyes	7569168393	3	2	342	1995-05-20
343	Frank	Haughey	4075320928	4	3	343	1995-05-20
344	Allix	Hawick	8053144574	5	2	344	1995-05-20
345	Berkeley	Joerning	3002986470	4	2	345	1995-05-20
346	Odie	Takis	6049780071	1	3	346	1995-05-20
347	Stanislas	Clemenceau	9319584748	3	2	347	1995-05-20
348	Linn	Aguirrezabala	4118037526	5	2	348	1995-05-20
349	Wiatt	Angelini	6195990379	2	1	349	1995-05-20
351	Claudelle	Braime	2027375672	2	1	351	1995-05-20
352	Hamid	Nisen	8638168358	2	1	352	1995-05-20
353	Nevil	Standbrook	5727366182	5	1	353	1995-05-20
354	Cass	Rotherforth	7079218547	5	1	354	1995-05-20
355	Dianemarie	Barensky	8819613306	2	3	355	1995-05-20
356	Monica	Burlingham	6745515528	3	1	356	1995-05-20
357	Chick	McComiskey	6931575772	5	1	357	1995-05-20
358	Costanza	Trodden	8638904571	4	1	358	1995-05-20
359	Janina	Henniger	4072028772	3	2	359	1995-05-20
361	Ninetta	Cresser	3447168982	3	2	361	1995-05-20
362	Ottilie	Coopland	8982613812	5	2	362	1995-05-20
363	Michael	Aked	6934316830	4	2	363	1995-05-20
364	Bendix	Thomelin	9776557727	3	2	364	1995-05-20
365	Clarissa	Cossam	2435880820	5	2	365	1995-05-20
366	Kordula	Leythley	3212994361	3	2	366	1995-05-20
367	Caron	Brisley	8338443573	2	1	367	1995-05-20
368	Miquela	Mizzen	5832511240	1	2	368	1995-05-20
369	Sadye	Collen	4631272368	5	1	369	1995-05-20
371	Kamillah	Reicharz	4337152762	4	1	371	1995-05-20
372	Antonius	Dain	2762689358	4	1	372	1995-05-20
373	Mala	Peteri	8156172465	4	2	373	1995-05-20
374	Barbee	Dionisii	5888176689	5	3	374	1995-05-20
375	Marcelle	Loalday	5027074495	5	3	375	1995-05-20
376	Roldan	Niccols	5921666812	1	1	376	1995-05-20
377	Tadio	Bente	2208140658	1	1	377	1995-05-20
378	Karine	Nathon	6142235309	2	3	378	1995-05-20
379	Rriocard	Skirling	8776884114	1	2	379	1995-05-20
381	Chaim	Klass	8616859441	3	1	381	1995-05-20
382	Reginald	Akam	4798488345	4	3	382	1995-05-20
383	Ronny	Broadfield	7605722730	3	2	383	1995-05-20
384	Barbara	Roakes	9671464117	5	3	384	1995-05-20
385	Rickey	Eveleigh	9326407508	4	2	385	1995-05-20
386	Colleen	Mayou	1088632074	2	2	386	1995-05-20
387	Garvin	Karlolak	1541591147	5	2	387	1995-05-20
388	Audra	Shortland	5151166449	2	2	388	1995-05-20
389	Valerie	Baldrick	5039559462	5	2	389	1995-05-20
391	Fannie	Gras	4596519357	2	3	391	1995-05-20
392	Alissa	Provis	4944293718	4	2	392	1995-05-20
393	Sena	Lafont	5286345663	1	1	393	1995-05-20
394	Anett	Abreheart	8207521534	3	3	394	1995-05-20
395	Brena	Tracey	3497338897	1	3	395	1995-05-20
396	Farrel	Preston	9149120554	1	1	396	1995-05-20
397	Peggy	Levi	1155074852	5	1	397	1995-05-20
398	Trip	Wickersley	1016322491	5	3	398	1995-05-20
399	Isaiah	Hartus	5505891814	3	3	399	1995-05-20
401	Tabatha	Garrud	6638773272	3	3	401	1995-05-20
402	Erek	Okenfold	2752380993	3	2	402	1995-05-20
403	Jenn	Espinheira	1413656763	1	1	403	1995-05-20
404	Coral	Duckels	1985404997	1	3	404	1995-05-20
405	Krissy	Alwell	3151891019	3	3	405	1995-05-20
406	Elfie	Caghy	1335381219	2	1	406	1995-05-20
407	Dona	McIlmorow	1616564225	1	3	407	1995-05-20
408	Calv	Tylor	7213530572	5	2	408	1995-05-20
409	Grenville	Dykes	3964496557	5	1	409	1995-05-20
411	Mervin	Garriock	7057562855	2	3	411	1995-05-20
412	Amata	Fair	8544329568	5	2	412	1995-05-20
413	Albertine	Templeton	9078545364	4	3	413	1995-05-20
414	Michelina	Lapenna	5198454375	4	1	414	1995-05-20
415	Shellie	Matuszak	6245376947	4	3	415	1995-05-20
416	Bennie	Petrowsky	1049179833	1	2	416	1995-05-20
417	Walker	Cowlishaw	7412382282	2	1	417	1995-05-20
418	Ulrick	Canizares	2515777983	1	2	418	1995-05-20
419	Reagan	Treadwell	5443145677	3	1	419	1995-05-20
421	Micah	Freear	6766598027	4	1	421	1995-05-20
422	Josepha	Thurley	3823145498	4	2	422	1995-05-20
423	Joshia	Lawie	2856630967	1	2	423	1995-05-20
424	Belinda	Klementz	4851442227	1	2	424	1995-05-20
425	Dory	McEvay	2931887029	2	2	425	1995-05-20
426	Michelina	Valentine	3603189110	2	1	426	1995-05-20
427	Nell	Pickerin	6114359542	3	2	427	1995-05-20
428	Pamelina	Stoll	5126288948	3	1	428	1995-05-20
429	Arden	Nouch	6557420019	3	1	429	1995-05-20
431	Karlee	Maccrae	8248419241	1	3	431	1995-05-20
432	Lavena	Heffernon	6353291837	4	3	432	1995-05-20
433	Rasla	O'Lagene	8957553435	4	2	433	1995-05-20
434	Georges	Peachey	1876231920	1	2	434	1995-05-20
435	Dominica	Oldham	8182800581	1	1	435	1995-05-20
436	Rouvin	Vant	1588709338	5	1	436	1995-05-20
437	Mischa	Masdon	3264924331	3	1	437	1995-05-20
438	Roderigo	Rolfini	8142019383	3	2	438	1995-05-20
439	Augy	Dennett	3789728176	5	2	439	1995-05-20
441	Sofia	Tatham	8722863671	4	3	441	1995-05-20
442	Arliene	Mollen	7162679508	4	1	442	1995-05-20
443	Leigh	Royds	1399015782	4	3	443	1995-05-20
444	Casi	Tarbatt	7907302965	4	1	444	1995-05-20
445	Conn	Thumnel	7321581084	4	1	445	1995-05-20
446	Modesta	Henriques	7734819633	2	3	446	1995-05-20
447	Arda	Videan	8737963439	2	1	447	1995-05-20
448	Spencer	Skelton	8659814061	1	3	448	1995-05-20
449	Albert	Dibdale	6541441108	1	3	449	1995-05-20
451	Gabriel	Sebastian	3449909309	1	3	451	1995-05-20
452	Madelin	Rudeforth	2069791180	5	3	452	1995-05-20
453	Hale	Lapthorn	4071738773	4	1	453	1995-05-20
454	Kariotta	MacCourt	7138176056	5	1	454	1995-05-20
455	Robby	Mucklow	5762654727	4	1	455	1995-05-20
456	Anissa	Japp	8354101285	1	1	456	1995-05-20
457	Maura	Stredwick	7998719308	4	3	457	1995-05-20
458	Mollee	Sorrell	7841347442	5	2	458	1995-05-20
459	Baxy	McFaell	5235431803	4	2	459	1995-05-20
461	Vinita	Kinghorne	3746224455	5	3	461	1995-05-20
462	Ulick	O' Bee	8335999131	1	1	462	1995-05-20
463	Mordy	Pyser	8072394699	5	2	463	1995-05-20
464	Lyda	Rottenbury	1661770419	3	2	464	1995-05-20
465	Roselin	Heasman	4332438924	5	2	465	1995-05-20
466	Lock	Pellman	6677977197	5	1	466	1995-05-20
467	Farrell	Tremayle	8579620821	3	2	467	1995-05-20
468	Natalee	Weson	2556297110	2	2	468	1995-05-20
469	Massimo	Richardin	9286916843	4	2	469	1995-05-20
471	Geordie	Boutcher	4275507767	4	2	471	1995-05-20
472	Sherlocke	Santos	4499789018	3	2	472	1995-05-20
473	Giacomo	Blodg	3706384000	1	1	473	1995-05-20
474	Lester	Barles	5052950436	1	3	474	1995-05-20
475	Kimberli	Ryson	5812675555	5	2	475	1995-05-20
476	Corbett	Stubbs	9631817358	3	3	476	1995-05-20
477	Jeddy	Esposito	3492646568	4	3	477	1995-05-20
478	Cindie	Towhey	6235744436	2	1	478	1995-05-20
479	Reiko	Ivashkin	5733776296	3	2	479	1995-05-20
481	Rubie	Kabsch	7526726962	4	2	481	1995-05-20
482	Nevsa	Elcoux	4687175648	4	3	482	1995-05-20
483	Eleonora	Wren	4974481576	4	1	483	1995-05-20
484	Joannes	Simkovitz	2611634125	4	1	484	1995-05-20
485	Clerc	McKerlie	6719208699	1	1	485	1995-05-20
486	Mattheus	Tinham	6621666344	2	1	486	1995-05-20
487	Sheff	Naisby	2025229259	5	3	487	1995-05-20
488	Washington	Naulty	6681793912	3	1	488	1995-05-20
489	Cassandra	Jehan	7135430695	2	2	489	1995-05-20
491	Tait	Fairholme	6308992202	4	1	491	1995-05-20
492	Pietrek	Challicombe	4165900454	5	1	492	1995-05-20
493	Julieta	Coote	7377376232	3	2	493	1995-05-20
494	Godart	Cayser	2604354388	1	2	494	1995-05-20
495	Fenelia	Fernley	2636724480	2	3	495	1995-05-20
496	Coriss	Faust	8074800667	5	2	496	1995-05-20
497	Ker	Fries	7838999237	1	2	497	1995-05-20
498	Tonye	Oels	8876678569	5	3	498	1995-05-20
499	Christy	Hamm	7379247478	2	2	499	1995-05-20
\.


--
-- TOC entry 3406 (class 0 OID 24800)
-- Dependencies: 219
-- Data for Name: employee_contract; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.employee_contract (contract_id, start_date, salary) FROM stdin;
1	2023-02-11	10917.13
3	2024-01-21	8554.77
5	2024-07-25	11985.39
9	2020-10-18	10657.01
10	2023-08-04	10936.84
12	2023-07-23	7934.81
22	2024-06-19	6698.64
23	2023-06-20	11419.65
24	2022-10-04	15157.57
25	2024-11-24	13799.95
27	2022-10-07	17840.79
29	2023-04-20	16390.34
32	2023-03-12	8904.08
35	2024-02-12	16369.55
37	2022-10-14	8669.26
38	2022-01-13	13676.19
39	2024-02-29	13164.32
40	2024-01-12	12700.09
43	2024-02-27	17513.53
44	2021-11-04	12775.41
45	2024-10-04	16832.16
46	2023-01-03	16396.74
51	2024-10-01	10324.69
53	2024-04-22	9955.19
55	2024-03-20	9323.39
62	2023-05-09	12329.71
65	2021-02-15	8427.10
66	2024-08-01	13403.08
68	2022-07-21	13210.19
69	2020-11-16	7370.89
70	2024-01-22	13018.37
71	2024-04-19	12226.03
72	2024-02-03	11834.87
76	2022-09-06	14096.27
78	2024-09-30	14117.11
79	2024-10-02	17046.63
80	2024-02-13	16409.55
88	2022-02-27	11096.27
89	2021-12-29	13730.23
94	2020-03-01	11870.47
95	2020-09-27	15971.27
96	2022-05-26	7322.79
99	2023-05-07	11125.14
104	2024-07-21	17159.91
105	2024-07-15	18023.87
106	2024-05-20	12390.25
107	2023-01-08	8354.70
109	2023-12-27	17202.69
110	2021-10-12	9797.82
112	2024-02-17	8078.30
114	2022-05-26	16244.18
117	2022-09-06	9134.77
118	2022-05-21	12237.55
119	2022-08-26	12588.94
125	2024-07-04	13821.72
126	2024-08-02	7096.43
133	2021-04-17	16126.02
134	2023-06-13	18027.05
138	2021-03-06	16555.14
139	2024-03-16	17062.20
140	2022-07-04	17266.19
141	2023-11-19	12318.94
142	2023-08-07	13343.54
143	2024-10-08	8154.31
144	2024-07-03	15853.47
145	2020-08-09	8819.81
147	2022-03-13	12268.67
148	2021-05-20	6692.55
150	2024-08-15	11658.34
151	2024-08-17	16937.98
152	2020-02-24	17925.63
155	2022-08-03	16646.94
156	2023-03-06	16071.42
161	2024-05-27	11493.73
477	2021-08-02	15830.93
481	2023-08-16	10049.40
482	2022-05-03	7833.96
483	2023-09-12	18084.40
484	2021-03-13	7736.84
487	2020-10-07	17191.20
490	2021-04-21	12540.43
491	2020-10-15	17432.74
492	2024-04-30	12543.91
497	2024-01-02	11391.80
498	2021-10-20	11508.21
499	2024-09-02	8451.68
500	2024-04-28	10002.66
501	2022-04-09	14417.61
502	2023-11-04	15391.64
165	2023-01-31	8837.53
169	2020-06-24	12666.96
172	2022-07-01	16916.87
173	2020-03-04	9372.24
175	2024-10-07	16018.85
176	2021-09-27	8529.56
178	2024-03-22	10926.97
180	2021-11-12	12888.12
181	2024-06-22	9328.09
183	2020-07-22	15091.46
185	2021-07-12	11893.21
186	2024-11-17	6697.61
187	2023-07-04	10942.76
188	2022-02-27	7450.12
190	2023-01-29	12083.63
192	2023-08-09	17753.39
193	2023-12-17	11267.01
195	2020-08-03	16350.58
198	2023-05-07	10281.59
200	2020-02-07	12104.07
202	2023-09-24	14165.38
203	2021-10-22	14232.95
204	2024-03-09	6618.23
205	2024-02-27	7088.15
212	2022-06-29	15716.83
213	2020-06-22	10571.06
214	2020-02-27	12383.02
215	2023-11-16	11389.94
218	2024-06-20	16123.71
221	2023-06-10	14595.06
225	2024-03-28	16389.38
231	2021-05-27	18037.20
235	2024-07-27	6636.05
237	2020-03-08	13354.28
238	2024-03-01	14873.48
239	2020-03-29	10686.27
240	2021-10-05	11415.02
241	2024-03-05	16277.51
244	2022-06-16	14432.04
245	2023-03-14	16329.11
250	2024-07-13	9333.46
251	2021-11-24	15354.56
255	2024-02-25	11288.49
256	2020-08-06	12257.16
257	2024-08-25	12714.91
259	2024-05-24	16575.01
261	2021-09-21	15853.93
263	2023-06-17	10501.05
264	2020-08-10	17417.60
266	2020-04-27	16346.34
269	2020-03-10	10388.11
271	2024-05-08	15801.29
272	2020-01-28	7099.24
273	2021-01-16	17917.07
275	2020-02-29	9719.69
277	2023-06-19	9661.20
278	2024-10-12	12386.57
279	2024-12-04	11175.77
280	2024-03-23	9673.04
281	2023-03-31	8613.93
282	2022-06-30	15921.49
283	2021-02-21	7087.19
284	2024-11-21	16950.91
286	2020-01-25	13924.47
290	2024-03-26	16969.37
297	2021-12-03	13918.51
298	2024-01-15	14145.30
299	2024-03-31	15293.84
300	2021-11-28	13252.91
303	2024-05-29	10185.76
304	2024-01-26	7680.64
305	2020-01-10	6633.82
307	2024-02-11	10064.76
316	2023-01-27	9205.72
317	2022-01-08	11829.91
318	2022-04-13	15589.47
320	2022-06-14	14636.02
322	2023-02-28	13537.81
324	2021-07-23	12001.25
326	2023-07-27	15958.20
503	2024-10-20	14502.95
504	2022-01-07	11589.60
505	2021-09-30	7907.24
329	2023-05-18	18073.62
330	2021-03-10	12084.76
333	2021-05-25	16963.68
334	2023-10-23	7785.41
335	2020-02-06	13276.18
337	2023-12-15	8529.69
339	2024-03-15	13963.97
341	2024-10-19	17282.44
343	2020-02-20	17169.35
344	2022-06-10	10559.98
345	2024-10-17	15188.41
348	2023-01-26	11812.78
353	2024-11-20	7856.85
354	2020-09-12	6975.24
357	2021-03-30	11201.82
358	2023-06-08	15670.77
362	2024-06-14	13317.95
363	2024-05-04	16936.23
365	2020-08-15	16078.46
367	2024-08-12	9496.49
369	2021-06-16	13236.73
370	2023-07-30	7941.78
371	2021-10-28	17232.46
372	2020-01-27	11510.33
373	2022-01-23	13582.15
374	2024-07-22	17802.92
375	2023-10-12	6723.47
376	2024-05-29	15103.87
378	2024-06-26	7518.40
382	2022-08-23	15806.32
384	2023-08-05	7521.82
385	2020-08-31	13771.58
387	2023-09-06	9393.96
389	2020-12-19	8707.05
390	2022-11-13	18038.97
391	2024-01-21	11293.92
392	2022-08-04	9060.45
397	2024-04-03	9561.16
398	2023-03-10	15853.86
405	2024-11-05	7391.94
408	2023-08-03	13380.91
409	2023-07-21	12887.26
410	2022-01-08	8759.97
412	2022-08-18	7153.32
413	2024-10-21	13818.22
414	2024-08-01	13326.20
415	2022-02-11	9056.23
421	2024-11-02	16338.96
422	2020-10-26	17914.74
428	2024-07-22	14520.50
429	2024-11-05	17561.89
432	2023-01-20	9235.65
433	2023-07-10	8456.64
434	2024-07-03	13418.61
436	2022-03-19	17215.70
439	2021-07-22	8827.41
441	2022-07-31	10734.63
442	2020-06-03	16960.02
443	2020-05-25	6681.94
444	2022-06-01	9687.91
445	2022-07-03	17080.61
452	2021-05-25	12433.67
453	2020-10-08	10112.41
454	2022-03-18	7942.59
455	2021-02-12	15394.72
457	2024-06-11	13296.65
458	2023-05-13	17349.54
459	2022-07-04	14805.05
460	2020-04-05	6993.81
461	2024-01-12	6932.96
463	2020-09-17	17247.32
465	2021-01-17	13604.77
466	2022-11-25	10205.58
469	2022-04-20	10789.55
470	2020-10-21	17963.36
471	2024-10-06	14019.65
472	2024-01-09	10415.55
475	2020-09-11	17457.00
493	2024-07-17	17430.01
496	2020-02-26	9464.15
2306	2023-07-06	9906.17
2471	2021-04-11	8866.44
2961	2023-01-06	7132.47
3620	2021-08-20	7673.66
4942	2021-08-24	7551.73
5431	2021-10-27	8606.01
5926	2021-05-26	9507.05
6912	2020-10-05	7567.56
12344	2020-06-04	6977.51
13336	2020-06-27	6693.91
16796	2020-10-20	16635.00
17125	2023-08-05	7177.80
17289	2022-06-03	8679.07
19114	2022-07-20	8508.92
506	2024-04-29	15617.19
507	2021-09-06	9627.11
508	2024-11-09	8040.01
509	2023-11-23	14080.46
510	2021-01-09	14887.36
511	2021-11-25	12309.67
512	2022-02-12	12318.84
513	2022-02-24	8268.03
514	2021-10-31	15012.22
515	2021-11-03	11953.14
516	2020-01-05	9915.33
517	2022-04-07	17509.17
518	2024-07-23	6689.29
519	2020-11-22	8101.36
520	2024-09-13	10109.58
521	2020-04-10	7355.30
522	2023-02-26	8547.52
523	2022-08-01	16087.46
524	2023-10-11	14144.85
525	2024-07-18	15356.16
526	2021-08-02	12217.60
527	2023-07-13	13641.38
528	2022-12-31	15201.71
529	2020-02-01	13774.23
530	2021-09-02	10788.91
531	2022-03-15	18078.86
532	2022-11-28	16467.90
533	2020-07-28	7288.72
534	2022-03-04	13854.80
535	2021-10-23	11272.84
536	2024-06-20	9031.55
537	2021-02-14	14387.39
538	2022-03-01	12946.37
539	2020-10-05	7268.71
540	2024-09-01	12019.37
541	2022-07-29	16736.91
542	2023-10-06	8111.42
543	2023-04-25	10656.82
544	2024-10-25	13415.35
545	2023-12-11	17531.44
546	2023-03-22	17279.58
547	2020-07-22	17144.94
548	2021-10-07	6764.90
549	2024-03-20	7545.98
550	2022-07-13	9843.05
551	2022-04-24	9395.71
552	2024-09-21	16813.43
553	2024-05-14	7404.82
554	2024-11-20	9987.44
555	2020-10-27	17119.64
556	2024-04-10	12345.06
557	2022-07-22	17120.66
558	2024-09-02	9261.95
559	2024-11-28	15934.71
560	2022-11-23	16629.31
561	2024-05-18	10602.56
562	2021-07-02	16158.15
563	2023-10-02	7058.73
564	2022-02-16	17249.35
565	2024-08-15	14887.52
566	2020-08-19	16268.59
567	2023-09-16	16554.76
568	2024-07-27	7991.22
569	2022-09-01	16079.44
570	2020-07-18	11186.91
571	2023-02-14	14781.76
572	2023-06-01	6886.20
573	2020-04-07	15510.58
574	2021-04-11	7071.49
575	2020-08-27	8639.84
576	2023-05-26	13874.41
577	2022-07-25	10739.50
578	2022-03-30	11105.61
579	2020-06-21	14231.04
580	2020-07-25	8138.82
581	2021-11-14	10030.39
582	2020-01-20	8124.17
583	2021-03-02	11121.90
584	2023-01-01	14136.59
585	2021-02-23	7233.04
586	2023-07-09	14905.94
587	2022-08-13	16333.28
588	2022-05-16	11040.02
589	2020-09-17	10792.89
590	2022-07-10	12602.00
591	2020-02-17	11845.34
592	2023-02-16	14838.66
593	2023-02-08	14892.66
594	2022-10-04	10038.77
595	2021-05-17	10223.63
596	2023-05-08	17446.79
597	2022-05-30	14478.11
598	2024-07-19	6915.23
599	2024-11-04	6999.26
600	2022-10-21	8402.41
601	2020-07-17	11343.55
602	2020-10-15	17880.46
603	2021-11-24	7731.10
604	2023-10-14	11608.01
605	2024-06-12	7090.23
606	2021-12-31	7888.05
607	2022-11-19	12330.69
608	2022-06-01	10533.48
609	2023-06-09	13432.15
610	2022-06-27	6992.00
611	2021-05-02	15622.72
612	2023-01-27	12762.15
613	2021-08-25	18080.63
614	2022-09-14	17161.03
615	2022-06-08	9982.69
616	2021-03-26	14719.43
617	2023-07-09	11170.24
618	2022-10-29	8150.25
619	2021-09-02	12393.88
620	2020-02-03	8570.55
621	2023-12-06	13851.05
622	2021-08-22	13075.41
623	2023-05-29	6958.73
624	2020-05-30	16325.27
625	2020-08-09	18044.90
626	2023-10-28	9512.89
627	2024-09-08	11164.42
628	2023-08-08	8924.71
629	2021-11-03	8633.68
630	2023-11-25	16056.05
631	2021-07-13	14167.45
632	2023-04-08	10551.44
633	2024-07-21	15758.61
634	2021-11-30	9539.73
635	2022-11-03	7987.40
636	2021-03-07	8713.96
637	2020-02-12	14463.62
638	2023-02-23	9349.35
639	2020-12-01	8318.54
640	2022-03-17	16416.90
641	2021-01-03	13795.72
642	2020-11-27	8741.78
643	2020-08-10	15952.24
644	2021-02-24	10534.56
645	2023-09-27	6860.61
646	2021-07-21	11925.25
647	2023-02-26	17946.35
648	2023-09-12	13049.95
649	2024-03-27	7836.87
650	2024-03-01	17314.43
651	2023-09-13	17174.40
652	2024-04-02	12244.59
653	2024-01-17	8666.01
654	2022-02-04	14526.85
655	2020-07-13	17851.49
656	2020-10-23	17201.10
657	2023-01-23	7000.76
658	2023-08-02	13175.93
659	2023-11-05	17019.89
660	2024-09-29	11599.37
661	2022-01-16	9809.85
662	2021-01-27	11718.43
663	2020-12-14	11630.91
664	2023-12-07	14774.31
665	2022-02-12	10835.66
666	2022-02-18	12506.18
667	2024-10-05	17737.35
668	2023-07-25	14240.41
669	2023-07-19	9174.07
670	2021-10-01	12565.95
671	2021-07-20	10875.52
672	2024-08-18	8753.15
673	2024-03-03	17644.78
674	2023-09-01	14844.70
675	2024-05-31	9724.70
676	2024-07-13	7806.16
677	2023-07-05	9835.61
678	2023-09-16	16790.80
679	2021-06-05	16522.96
680	2023-05-02	14958.97
681	2022-11-23	8411.28
682	2024-10-21	15565.54
683	2023-11-11	9341.92
684	2020-06-27	11924.30
685	2020-09-23	8661.96
686	2024-02-08	11596.18
687	2023-06-02	17113.86
688	2022-12-05	11947.46
689	2022-12-26	17250.11
690	2021-02-06	12458.29
691	2023-11-26	16965.26
692	2024-04-08	15372.66
693	2020-06-09	11805.43
694	2023-01-04	16861.49
695	2021-07-11	7818.84
696	2021-06-11	7048.38
697	2022-02-16	12016.29
698	2022-02-21	7217.44
699	2023-09-12	6755.08
700	2021-10-13	9446.42
701	2024-04-21	14547.21
702	2022-05-25	14584.30
703	2020-11-13	15256.89
704	2022-04-25	13147.85
705	2022-03-11	9735.88
706	2020-10-23	8856.59
707	2021-09-26	10727.62
708	2022-05-24	11009.33
709	2020-06-09	9893.71
710	2023-11-15	15267.75
711	2022-08-12	8303.83
712	2024-07-07	9402.52
713	2022-10-29	8167.93
714	2022-01-14	12111.12
715	2023-07-06	13988.72
716	2023-02-01	10089.03
717	2023-04-19	8503.67
718	2020-08-14	7664.00
719	2023-04-30	15169.50
720	2023-04-23	13371.93
721	2023-07-15	6808.27
722	2023-11-13	14169.13
723	2022-02-25	12477.73
724	2023-12-06	14402.88
725	2020-08-20	9728.08
726	2020-11-15	10550.37
727	2020-07-03	17020.42
728	2021-08-19	7871.43
729	2024-10-25	7533.62
730	2022-01-06	6961.29
731	2020-08-08	17095.88
732	2021-06-22	11312.12
733	2024-06-07	11313.88
734	2022-08-07	11507.10
735	2021-10-22	15996.80
736	2021-09-13	8078.98
737	2022-04-22	12145.07
738	2021-01-21	11538.20
739	2024-04-08	16492.81
740	2024-12-05	9279.97
741	2022-03-25	9336.25
742	2024-05-29	8998.68
743	2024-03-24	9422.08
744	2022-08-21	11126.30
745	2024-05-11	14899.27
746	2021-02-26	10387.74
747	2021-05-29	11400.80
748	2021-03-01	8542.26
749	2020-11-14	6906.56
750	2020-09-01	16971.56
751	2024-06-26	10962.06
752	2021-11-18	13211.57
753	2021-05-30	10353.67
754	2023-04-14	17467.27
755	2023-10-17	11082.09
756	2021-08-31	16058.25
757	2021-12-22	14241.04
758	2022-05-15	6740.24
759	2022-10-25	8621.91
760	2021-06-18	17827.73
761	2022-01-14	8332.89
762	2023-10-04	14696.15
763	2024-07-01	6854.81
764	2023-10-02	11325.77
765	2024-06-28	14310.27
766	2020-02-20	11271.15
767	2021-12-18	15199.37
768	2022-11-15	12434.57
769	2024-06-24	10300.34
770	2024-06-19	14876.08
771	2020-12-23	15510.30
772	2023-01-26	15480.21
773	2021-04-08	10044.72
774	2023-08-19	12361.94
775	2021-11-23	12087.67
776	2024-01-28	12304.65
777	2023-02-05	8901.28
778	2021-06-25	8594.00
779	2021-10-07	17027.70
780	2022-03-20	17604.45
781	2021-11-15	10890.02
782	2023-06-27	17460.51
783	2021-01-14	16060.00
784	2022-06-26	8761.32
785	2024-02-04	13445.70
786	2024-06-26	18044.75
787	2024-10-26	14095.84
788	2024-05-02	11506.80
789	2024-11-23	12371.98
790	2022-02-23	7974.35
791	2024-06-14	15861.64
792	2022-04-05	16810.73
793	2024-04-01	7653.62
794	2021-05-09	6812.93
795	2023-10-12	16228.97
796	2022-05-29	14621.47
797	2024-08-21	17190.64
798	2022-12-16	12652.85
799	2022-01-14	17139.54
800	2024-07-31	17675.62
801	2022-05-22	10133.08
802	2024-01-31	13411.51
803	2021-02-21	16383.92
804	2023-05-11	14948.63
805	2022-03-24	7172.79
806	2020-04-01	12765.10
807	2023-02-07	17613.10
808	2020-09-05	9266.99
809	2020-01-18	13281.78
810	2024-09-13	10066.71
811	2023-03-18	16423.28
812	2021-12-16	16398.80
813	2021-08-28	16263.41
814	2021-05-29	9454.18
815	2020-04-07	11007.20
816	2021-03-14	8577.63
817	2024-06-28	12066.18
818	2022-12-06	11328.06
819	2024-09-02	12491.64
820	2020-06-27	16968.68
821	2020-07-07	11279.44
822	2024-06-25	14770.89
823	2022-02-04	15921.40
824	2021-11-11	17596.76
825	2024-04-22	17894.66
826	2024-07-12	16387.73
827	2022-01-13	13031.10
828	2022-02-10	16257.50
829	2024-08-01	6816.21
830	2024-01-28	14333.94
831	2021-09-18	8405.37
832	2023-08-30	9556.39
833	2023-01-08	14403.79
834	2021-11-27	11985.73
835	2022-04-04	9061.43
836	2021-07-23	12029.72
837	2024-10-19	15162.97
838	2024-04-25	12936.51
839	2024-07-28	7162.84
840	2022-10-20	15174.37
841	2021-07-31	8921.60
842	2021-12-14	7465.24
843	2020-02-15	9636.39
844	2021-07-10	11344.89
845	2023-09-16	17580.20
846	2021-08-31	17992.97
847	2024-11-22	12083.66
848	2020-03-02	11314.28
849	2022-09-05	14827.63
850	2021-05-06	16624.43
851	2022-10-21	13795.96
852	2022-08-31	10157.01
853	2020-04-27	10967.94
854	2023-08-15	15144.72
855	2021-08-02	11482.94
856	2020-01-06	14166.82
857	2020-10-23	14438.27
858	2020-09-14	14656.58
859	2022-02-23	6742.60
860	2022-06-08	8947.98
861	2021-08-19	12483.82
862	2022-06-18	7841.91
863	2024-02-05	17799.35
864	2022-09-24	9498.97
865	2022-03-14	16111.75
866	2021-09-13	9717.72
867	2023-08-24	16098.42
868	2023-09-29	14482.23
869	2024-09-30	15473.56
870	2021-10-02	9931.25
871	2020-12-10	16020.95
872	2023-05-20	17196.89
873	2022-06-15	9644.89
874	2022-07-17	10389.36
875	2024-06-15	13992.45
876	2023-10-16	17590.82
877	2021-03-28	9796.99
878	2021-02-27	10883.89
879	2022-02-04	10786.27
880	2020-12-13	12474.99
881	2023-07-03	8288.40
882	2022-05-13	12474.45
883	2024-09-11	15659.49
884	2020-07-06	17868.57
885	2023-12-02	15511.85
886	2022-06-19	18003.57
887	2023-07-01	6714.71
888	2021-01-28	15873.44
889	2020-07-13	9988.97
890	2024-04-06	8437.68
891	2023-01-16	7317.63
892	2021-12-26	13554.60
893	2022-09-01	14659.34
894	2021-03-03	14331.22
895	2021-04-02	18026.12
896	2020-03-30	13560.51
897	2021-09-29	9329.92
898	2023-08-08	13704.93
899	2023-06-12	16007.02
900	2020-05-31	7695.40
901	2021-07-22	8437.41
902	2020-06-28	8267.23
903	2023-11-23	10163.58
904	2022-08-27	14859.81
905	2020-10-04	16247.58
906	2024-08-29	12828.71
907	2022-03-14	12608.48
908	2023-02-12	15237.93
909	2022-04-08	12698.91
910	2023-06-03	11617.07
911	2023-01-06	15310.25
912	2021-09-08	12160.73
913	2020-12-01	17422.52
914	2023-12-31	9342.92
915	2023-04-21	17416.99
916	2021-08-26	9910.89
917	2021-08-04	17279.86
918	2021-11-29	7692.51
919	2021-05-19	17780.02
920	2023-11-24	10281.89
921	2020-12-31	12675.10
922	2020-02-18	7544.19
923	2020-02-04	8560.84
924	2020-02-17	12725.14
925	2024-02-15	7717.50
926	2024-07-09	11218.91
927	2021-11-17	8987.17
928	2023-12-08	15100.09
929	2022-01-19	17717.38
930	2023-04-26	9399.02
931	2021-04-14	18043.13
932	2024-04-20	7003.97
933	2023-11-27	12489.93
934	2024-10-27	9256.65
935	2022-01-19	16323.58
936	2022-09-30	11975.96
937	2021-09-04	15214.02
938	2020-08-12	11796.71
939	2023-01-01	6849.17
940	2021-03-15	16542.20
941	2020-12-08	18043.77
942	2022-01-02	8234.11
943	2022-04-06	10272.24
944	2024-05-14	14751.88
945	2020-03-22	15751.30
946	2022-07-31	10013.08
947	2022-08-14	12075.09
948	2024-06-03	8279.56
949	2023-08-11	7286.21
950	2021-08-06	11399.36
951	2021-07-23	13832.80
952	2021-11-25	13356.96
953	2023-05-22	14404.96
954	2024-07-15	9138.70
955	2020-12-24	6752.21
956	2022-02-06	12226.02
957	2023-08-11	9735.52
958	2021-06-01	15822.45
959	2024-02-06	17033.28
960	2024-06-12	6862.73
961	2021-06-12	14809.23
962	2023-10-24	16955.01
963	2022-04-16	11940.17
964	2024-01-01	12469.09
965	2022-02-11	6835.81
966	2022-05-27	8259.71
967	2023-02-13	16531.72
968	2023-06-25	17194.69
969	2021-01-06	10281.83
970	2021-02-13	8750.45
971	2024-09-07	11465.37
972	2021-02-04	16061.27
973	2021-08-09	9883.02
974	2022-10-27	8342.59
975	2023-05-06	17571.88
976	2023-11-12	9974.38
977	2020-03-30	14313.84
978	2022-02-26	17489.66
979	2021-09-22	9766.93
980	2024-01-23	11046.91
981	2022-12-17	8936.95
982	2021-12-05	9561.80
983	2020-02-06	7966.67
984	2020-07-09	14566.34
985	2020-08-27	15616.78
986	2024-04-15	8789.95
987	2020-03-18	13720.83
988	2021-07-10	13997.76
989	2024-03-02	13370.67
990	2022-11-19	8205.74
991	2022-06-04	15888.12
992	2024-08-16	11410.51
993	2024-06-05	10810.30
994	2023-06-28	14524.70
995	2022-05-26	7403.47
996	2022-05-09	13980.66
997	2022-09-11	16421.86
998	2023-09-13	7855.61
999	2023-02-05	14660.05
1000	2020-08-07	12355.40
1001	2020-03-09	9059.64
1002	2020-11-10	13419.40
1003	2023-03-16	7805.25
1004	2020-03-24	10936.40
1005	2022-03-17	12237.58
1006	2021-12-09	16551.24
1007	2023-01-08	10224.13
1008	2022-07-17	11459.76
1009	2020-10-09	14094.16
1010	2021-09-02	12828.66
1011	2021-07-11	16449.09
1012	2023-05-26	8537.28
1013	2022-07-09	13545.16
1014	2021-07-14	13718.20
1015	2024-02-25	10414.46
1016	2021-10-10	7229.64
1017	2022-02-08	12731.26
1018	2024-03-07	8815.40
1019	2023-04-19	12479.36
1020	2022-03-06	17077.68
1021	2021-09-21	8178.69
1022	2023-01-05	7130.82
1023	2024-10-15	17331.63
1024	2024-03-27	8409.70
1025	2020-06-23	7145.01
1026	2024-09-17	7797.22
1027	2020-07-27	14421.91
1028	2024-03-10	7276.03
1029	2023-08-01	16140.88
1030	2021-01-26	8249.22
1031	2020-10-27	6948.29
1032	2020-05-04	8286.21
1033	2024-01-27	12120.00
1034	2023-07-12	16159.35
1035	2020-08-10	11094.35
1036	2023-02-25	12165.40
1037	2020-11-21	10707.40
1038	2024-04-17	16423.78
1039	2020-05-17	10745.84
1040	2024-03-02	11153.35
1041	2022-09-22	12912.68
1042	2024-06-12	17646.61
1043	2024-01-15	13528.61
1044	2021-08-25	11731.28
1045	2020-08-11	15379.67
1046	2024-06-20	11404.71
1047	2021-06-22	13864.32
1048	2023-11-17	18002.93
1049	2022-11-08	13448.79
1050	2024-10-23	16166.24
1051	2022-06-05	15851.79
1052	2020-04-26	14341.58
1053	2024-08-07	17541.66
1054	2021-11-05	16966.17
1055	2023-10-12	12760.13
1056	2020-09-13	10882.68
1057	2020-01-01	15831.20
1058	2023-06-20	17977.72
1059	2023-06-06	7115.94
1060	2023-08-30	11580.43
1061	2022-07-08	9641.91
1062	2023-04-29	9827.21
1063	2023-02-19	9841.21
1064	2021-11-17	15905.84
1065	2022-05-08	8894.44
1066	2022-09-15	15826.45
1067	2022-09-10	9417.03
1068	2021-06-02	12003.85
1069	2024-08-18	7799.67
1070	2022-03-19	12019.46
1071	2023-02-16	12251.44
1072	2020-08-31	10358.60
1073	2024-10-24	14601.36
1074	2021-02-03	8426.21
1075	2020-10-14	10925.66
1076	2021-05-06	15265.67
1077	2020-11-28	14228.70
1078	2022-08-16	14912.95
1079	2024-10-08	7694.04
1080	2023-03-15	9148.90
1081	2021-07-28	8471.18
1082	2022-04-30	16812.57
1083	2023-05-05	14747.26
1084	2022-07-17	11167.42
1085	2020-11-21	10087.00
1086	2022-11-15	18000.11
1087	2023-05-14	10749.46
1088	2023-07-11	15201.81
1089	2023-09-18	9472.11
1090	2021-08-20	16370.93
1091	2024-11-29	8300.58
1092	2021-09-17	15296.88
1093	2022-02-08	17643.05
1094	2021-12-19	7783.33
1095	2022-01-05	17462.84
1096	2024-08-26	12891.39
1097	2022-07-01	15434.97
1098	2022-10-15	17336.64
1099	2022-10-12	15669.39
1100	2021-06-13	11662.98
1101	2021-09-29	16753.21
1102	2020-02-23	15891.31
1103	2022-02-19	13698.34
1104	2020-10-16	6746.69
1105	2021-04-11	16861.55
1106	2020-12-30	8620.76
1107	2020-08-13	11317.97
1108	2020-06-03	17073.61
1109	2023-09-11	16954.73
1110	2021-05-04	17424.61
1111	2021-02-09	17744.39
1112	2021-11-28	13763.44
1113	2024-07-23	10848.90
1114	2023-02-08	16605.41
1115	2023-01-19	9919.06
1116	2024-08-30	14762.49
1117	2024-06-14	9765.22
1118	2022-08-05	15373.07
1119	2020-09-17	11467.16
1120	2022-01-04	14802.79
1121	2020-05-30	14345.45
1122	2020-01-11	7460.19
1123	2024-07-26	9441.14
1124	2021-02-21	13959.01
1125	2023-10-22	17768.17
1126	2024-01-27	13033.62
1127	2024-02-17	10713.25
1128	2022-07-11	8762.99
1129	2024-06-22	17059.61
1130	2023-10-29	15935.13
1131	2020-10-09	9952.24
1132	2020-12-29	9617.48
1133	2022-01-19	12511.10
1134	2020-09-22	13253.93
1135	2023-03-25	18089.91
1136	2021-11-15	8984.78
1137	2022-09-07	13335.87
1138	2022-11-06	14448.74
1139	2024-04-08	7790.58
1140	2024-06-13	10366.46
1141	2022-11-30	10211.22
1142	2023-01-11	13591.14
1143	2023-01-20	17507.07
1144	2023-12-20	15965.34
1145	2024-11-29	14905.18
1146	2024-11-05	11382.75
1147	2023-06-27	7013.24
1148	2024-10-04	7572.36
1149	2024-05-18	16747.32
1150	2022-01-06	14786.64
1151	2020-05-11	9334.63
1152	2024-02-16	14849.47
1153	2024-01-31	9381.38
1154	2022-08-24	14481.89
1155	2022-11-12	13203.93
1156	2023-08-24	9428.17
1157	2020-06-25	10851.96
1158	2020-06-23	10056.10
1159	2024-11-28	15433.99
1160	2022-10-05	17720.35
1161	2022-11-03	12644.24
1162	2024-01-12	17852.00
1163	2021-12-15	12777.94
1164	2021-02-04	8159.65
1165	2022-06-09	8133.90
1166	2022-05-12	10447.59
1167	2022-04-15	15576.12
1168	2022-12-04	14926.48
1169	2024-05-13	13669.84
1170	2023-12-25	16258.83
1171	2022-11-05	12108.37
1172	2020-11-05	9223.47
1173	2022-12-17	10606.61
1174	2021-02-20	9891.34
1175	2024-03-24	16413.49
1176	2023-08-27	11413.48
1177	2021-05-04	9108.61
1178	2020-06-21	14161.06
1179	2020-04-18	18084.37
1180	2021-12-15	13674.44
1181	2023-12-08	14657.07
1182	2024-10-16	9989.27
1183	2023-06-01	14436.27
1184	2022-07-21	16316.32
1185	2023-11-21	12107.70
1186	2020-03-21	9674.65
1187	2023-08-31	16111.04
1188	2024-09-26	9459.88
1189	2020-12-17	12697.19
1190	2022-12-24	9399.62
1191	2022-10-05	13561.12
1192	2023-07-27	13298.61
1193	2022-05-03	15214.35
1194	2020-08-15	16877.16
1195	2023-02-21	9474.11
1196	2022-02-05	8568.91
1197	2021-09-04	8183.64
1198	2020-12-20	15577.46
1199	2022-09-28	13862.43
1200	2020-02-26	6745.75
1201	2023-11-22	12300.31
1202	2022-10-12	10876.94
1203	2022-06-23	6631.65
1204	2021-07-03	14236.05
1205	2020-05-13	16840.34
1206	2022-12-17	16245.76
1207	2021-01-04	7413.06
1208	2022-06-10	15147.59
1209	2024-10-27	12784.67
1210	2021-11-05	13531.93
1211	2024-02-04	13646.69
1212	2024-10-01	14682.99
1213	2021-03-16	8923.52
1214	2021-02-10	9886.17
1215	2021-03-07	12821.67
1216	2020-11-22	6713.17
1217	2024-05-29	8574.18
1218	2021-04-20	7316.39
1219	2024-06-25	11715.34
1220	2024-02-23	16607.81
1221	2022-09-12	8468.82
1222	2021-11-26	9704.84
1223	2023-03-24	7040.13
1224	2021-11-19	7784.50
1225	2024-10-15	7176.96
1226	2021-04-08	12516.08
1227	2020-06-13	8128.35
1228	2022-12-11	14962.80
1229	2022-06-24	17424.64
1230	2024-05-04	12450.30
1231	2023-07-20	8567.73
1232	2023-04-23	14820.91
1233	2020-09-25	11044.02
1234	2022-09-23	8682.64
1235	2022-07-05	10681.88
1236	2022-06-19	10691.70
1237	2022-12-20	8806.66
1238	2024-06-18	13491.22
1239	2020-05-26	16726.10
1240	2021-07-29	17940.18
1241	2020-12-28	18081.45
1242	2024-03-17	14595.46
1243	2020-08-06	6784.15
1244	2024-06-02	7624.48
1245	2023-01-15	17468.04
1246	2021-12-17	11822.79
1247	2021-04-01	10494.59
1248	2020-10-24	7921.78
1249	2020-08-15	17580.36
1250	2020-01-02	9449.43
1251	2022-08-17	16310.49
1252	2024-05-24	12660.53
1253	2023-09-15	15986.47
1254	2020-12-13	16740.67
1255	2021-02-28	15211.32
1256	2020-10-01	7533.55
1257	2023-10-29	14873.46
1258	2023-11-16	12332.73
1259	2020-07-09	14458.94
1260	2020-06-30	17923.27
1261	2023-04-25	8270.82
1262	2020-03-16	11527.50
1263	2020-07-20	16318.06
1264	2023-11-28	12543.82
1265	2022-05-25	10957.47
1266	2022-04-30	17133.08
1267	2020-08-27	17075.74
1268	2021-05-08	17319.47
1269	2024-08-28	15310.30
1270	2022-03-02	10959.94
1271	2023-12-21	9463.68
1272	2020-12-13	12784.33
1273	2022-10-27	11644.15
1274	2024-05-14	7176.06
1275	2024-03-13	12530.31
1276	2023-06-17	10688.58
1277	2020-11-08	14189.95
1278	2023-06-07	10944.79
1279	2023-01-20	13881.07
1280	2024-01-04	17191.30
1281	2022-01-25	10129.33
1282	2024-10-09	9374.82
1283	2023-03-23	7863.42
1284	2020-05-08	17043.09
1285	2020-08-10	8344.96
1286	2021-07-01	12262.27
1287	2024-01-13	17933.50
1288	2022-12-16	17715.84
1289	2023-03-27	9365.41
1290	2024-08-08	11660.86
1291	2022-04-04	6794.39
1292	2023-08-23	16834.41
1293	2021-10-12	11136.89
1294	2021-08-18	14570.70
1295	2023-01-11	13027.81
1296	2021-11-23	17229.78
1297	2024-06-06	11082.46
1298	2024-10-24	6990.65
1299	2020-02-13	9182.39
1300	2024-01-25	17149.15
1301	2021-07-21	8293.85
1302	2021-03-18	14936.74
1303	2023-05-25	7246.90
1304	2020-09-27	17542.98
1305	2024-05-10	12724.36
1306	2020-04-13	17466.36
1307	2021-10-21	7816.18
1308	2020-01-24	11097.24
1309	2020-08-09	12262.23
1310	2021-02-22	13208.17
1311	2021-06-26	8897.49
1312	2020-04-12	8140.43
1313	2020-03-08	12778.87
1314	2020-05-24	14274.24
1315	2023-05-28	16239.22
1316	2022-09-06	16029.98
1317	2020-10-01	11164.30
1318	2024-10-26	11605.43
1319	2021-01-25	8380.54
1320	2023-06-17	11469.25
1321	2020-04-14	9377.07
1322	2021-08-01	13814.15
1323	2024-02-23	7881.66
1324	2022-07-13	11140.73
1325	2022-12-06	12175.85
1326	2020-03-10	13071.82
1327	2024-06-09	13338.64
1328	2021-06-05	11014.14
1329	2023-11-19	9499.58
1330	2020-06-01	12165.62
1331	2020-11-25	17730.53
1332	2021-12-13	15026.15
1333	2022-06-08	11209.26
1334	2022-08-10	8423.35
1335	2024-09-11	12234.63
1336	2024-10-24	16521.46
1337	2022-01-08	7251.26
1338	2024-05-23	15553.77
1339	2023-11-02	6986.20
1340	2023-02-16	15598.22
1341	2024-08-14	13063.50
1342	2023-06-02	15914.16
1343	2021-01-24	6916.62
1344	2022-11-21	16056.24
1345	2022-06-06	10920.63
1346	2022-12-14	12377.21
1347	2023-05-22	8287.15
1348	2022-07-02	15826.10
1349	2020-10-13	9523.83
1350	2022-03-27	11080.34
1351	2023-11-23	14096.16
1352	2022-09-10	17249.47
1353	2023-05-26	16899.48
1354	2023-10-31	17593.80
1355	2022-01-22	12977.46
1356	2022-09-15	11475.21
1357	2020-10-24	14928.12
1358	2024-03-04	11959.03
1359	2021-12-05	14475.16
1360	2023-09-15	17377.29
1361	2023-05-24	13639.88
1362	2021-03-23	9889.57
1363	2022-08-13	8331.89
1364	2024-07-24	16120.73
1365	2022-09-15	8722.49
1366	2023-11-24	7487.21
1367	2022-12-01	14840.95
1368	2020-08-15	12142.27
1369	2023-08-30	8525.20
1370	2020-11-30	17168.36
1371	2022-04-17	15923.78
1372	2022-04-17	9568.76
1373	2023-11-11	9070.56
1374	2021-07-30	9188.12
1375	2021-08-16	10193.11
1376	2021-03-18	12180.40
1377	2020-01-08	9468.06
1378	2024-04-02	17283.01
1379	2021-09-27	16523.56
1380	2022-06-27	16374.02
1381	2024-06-24	11242.81
1382	2022-04-06	16489.08
1383	2023-03-28	11253.26
1384	2023-08-09	16791.73
1385	2024-07-01	9667.95
1386	2020-06-22	15685.05
1387	2022-10-27	16598.58
1388	2024-04-12	13095.20
1389	2024-09-03	12840.08
1390	2023-11-14	14077.66
1391	2021-07-13	7220.27
1392	2023-09-02	13625.75
1393	2022-06-17	14494.14
1394	2023-11-20	16826.63
1395	2023-10-09	17531.62
1396	2024-03-01	15304.67
1397	2022-04-08	17739.94
1398	2024-06-07	7819.31
1399	2023-07-15	11794.88
1400	2020-05-23	9493.96
1401	2020-03-20	8712.04
1402	2022-04-18	14309.21
1403	2020-07-31	11250.70
1404	2021-11-08	16459.50
1405	2024-02-17	15543.75
1406	2021-08-22	14154.79
1407	2020-10-10	13098.32
1408	2021-06-14	10779.16
1409	2022-04-08	15471.38
1410	2020-03-29	7095.80
1411	2023-01-07	17475.71
1412	2024-03-17	9086.95
1413	2024-09-17	7299.12
1414	2021-10-19	16542.86
1415	2023-09-14	7735.91
1416	2021-04-11	7063.52
1417	2023-08-10	10202.62
1418	2023-04-07	9555.75
1419	2022-01-26	14526.37
1420	2020-09-15	9598.38
1421	2024-03-05	6819.41
1422	2024-11-19	13318.44
1423	2020-08-29	13695.24
1424	2022-02-09	8097.71
1425	2022-02-08	16714.63
1426	2020-11-09	12146.82
1427	2020-06-25	17435.08
1428	2022-08-01	8281.07
1429	2024-11-21	10085.06
1430	2023-08-15	10992.70
1431	2024-05-10	12864.52
1432	2020-04-20	14878.83
1433	2022-07-02	12295.86
1434	2023-08-07	8867.17
1435	2023-01-23	15985.77
1436	2020-05-04	8574.16
1437	2022-02-19	9390.73
1438	2020-04-07	16153.69
1439	2023-07-02	10790.23
1440	2020-07-29	17548.53
1441	2024-10-28	16487.56
1442	2022-11-03	12096.38
1443	2022-08-14	10255.53
1444	2022-12-21	14868.78
1445	2020-08-25	17881.69
1446	2023-07-22	12357.05
1447	2020-12-06	10492.57
1448	2024-09-29	13512.80
1449	2024-07-14	8894.97
1450	2022-09-03	8661.09
1451	2021-01-26	17836.46
1452	2023-09-10	14400.74
1453	2022-11-09	10466.76
1454	2022-08-04	6899.76
1455	2021-02-08	10547.59
1456	2023-03-24	12562.44
1457	2023-09-13	14556.93
1458	2020-07-31	10194.84
1459	2020-11-29	11630.47
1460	2024-04-22	15821.15
1461	2020-06-07	14971.68
1462	2023-08-27	7895.72
1463	2023-09-19	8003.98
1464	2021-08-20	17889.26
1465	2023-05-11	10152.13
1466	2021-01-30	10681.63
1467	2023-08-18	11572.78
1468	2020-03-03	11911.87
1469	2020-10-19	14158.12
1470	2020-06-12	11896.19
1471	2023-12-20	17011.19
1472	2024-11-19	9274.62
1473	2022-08-09	8788.63
1474	2022-06-10	9883.87
1475	2021-12-20	12295.74
1476	2020-09-03	16960.34
1477	2022-03-10	11143.39
1478	2023-01-08	17606.62
1479	2022-09-19	11645.42
1480	2020-09-08	14407.07
1481	2024-06-21	13150.31
1482	2023-09-07	12696.71
1483	2022-01-04	13344.53
1484	2023-04-24	8096.63
1485	2023-02-06	16769.45
1486	2020-06-29	16756.64
1487	2022-04-21	10832.66
1488	2021-02-23	16381.63
1489	2023-08-12	14321.32
1490	2021-01-10	7583.96
1491	2022-06-14	8890.63
1492	2022-09-17	15849.06
1493	2024-01-20	15820.45
1494	2020-11-11	12291.42
1495	2024-11-09	11354.75
1496	2023-09-25	8488.00
1497	2021-06-08	7614.68
1498	2022-09-29	17328.28
1499	2022-10-19	11525.97
1500	2021-04-30	17632.94
1501	2020-07-27	17268.30
1502	2021-04-17	11720.78
1503	2022-10-23	16808.23
1504	2024-01-24	16721.62
1505	2024-01-07	6803.03
1506	2022-08-12	9266.90
1507	2023-06-08	14745.38
1508	2021-09-02	16713.31
1509	2021-05-30	13121.04
1510	2024-01-20	8748.82
1511	2024-01-12	15197.81
1512	2023-06-21	16247.33
1513	2022-02-21	12023.59
1514	2020-12-07	16277.21
1515	2022-01-29	11803.41
1516	2023-02-23	13339.18
1517	2024-11-26	10422.17
1518	2022-10-18	14512.53
1519	2023-04-16	7986.39
1520	2022-04-01	15841.07
1521	2024-01-06	9474.03
1522	2021-06-05	8212.27
1523	2024-01-08	6618.83
1524	2023-02-16	16294.67
1525	2024-01-03	8046.32
1526	2022-02-18	14660.98
1527	2023-08-16	13320.97
1528	2023-07-18	8399.80
1529	2021-11-22	10765.99
1530	2023-06-24	13688.53
1531	2023-02-24	9173.68
1532	2023-08-01	10610.51
1533	2023-06-15	16103.82
1534	2024-10-22	16942.01
1535	2021-11-29	15058.07
1536	2021-08-20	10261.82
1537	2023-03-12	8365.65
1538	2020-02-04	10270.20
1539	2022-10-19	10192.92
1540	2021-03-22	13348.78
1541	2022-01-16	8943.37
1542	2021-08-04	15160.65
1543	2022-09-13	13003.13
1544	2020-07-14	12345.60
1545	2020-07-10	9870.79
1546	2024-02-25	13643.62
1547	2023-12-04	15320.04
1548	2020-03-24	8885.51
1549	2021-04-10	13845.19
1550	2022-09-08	10866.81
1551	2021-07-30	8067.26
1552	2021-06-26	16392.37
1553	2022-11-14	16938.20
1554	2022-08-23	17977.75
1555	2022-11-06	12105.12
1556	2021-01-25	16821.97
1557	2024-07-25	14457.84
1558	2022-01-07	13554.34
1559	2020-11-20	8644.70
1560	2020-08-06	14996.12
1561	2020-12-06	13387.08
1562	2024-10-31	9962.23
1563	2021-12-10	17661.70
1564	2024-09-13	10437.28
1565	2020-06-03	15147.52
1566	2021-02-07	13558.35
1567	2020-04-18	16127.39
1568	2023-12-26	12203.56
1569	2020-06-28	12217.82
1570	2024-07-01	11343.04
1571	2023-07-25	12553.95
1572	2020-10-22	17681.06
1573	2020-04-11	16788.57
1574	2021-06-08	9617.36
1575	2020-01-05	11011.21
1576	2023-07-08	14912.39
1577	2023-08-26	15815.15
1578	2024-04-22	10939.46
1579	2020-01-28	12086.24
1580	2020-07-10	13108.72
1581	2020-02-16	13009.44
1582	2023-10-03	15085.97
1583	2022-07-12	17489.19
1584	2024-01-03	9168.03
1585	2023-08-13	12464.54
1586	2024-03-22	13282.44
1587	2021-05-22	13469.83
1588	2023-04-24	17179.81
1589	2020-05-19	14999.89
1590	2023-11-28	13360.66
1591	2020-02-27	11914.81
1592	2022-02-22	9211.19
1593	2020-12-09	8634.61
1594	2020-03-16	12202.55
1595	2023-11-25	9709.84
1596	2024-01-17	7712.17
1597	2024-03-23	14040.32
1598	2021-10-13	7049.98
1599	2022-09-17	17469.91
1600	2023-07-22	15581.73
1601	2024-08-02	7430.72
1602	2023-05-15	15968.55
1603	2023-08-31	16979.07
1604	2023-05-10	10864.95
1605	2022-08-07	10704.11
1606	2020-06-01	17629.89
1607	2020-09-10	9591.32
1608	2020-11-24	7807.21
1609	2022-04-26	7246.51
1610	2024-10-22	10253.25
1611	2021-09-04	15892.82
1612	2020-01-28	17955.19
1613	2021-04-02	12620.25
1614	2022-10-09	14425.50
1615	2022-08-04	7067.79
1616	2021-08-26	14462.37
1617	2020-07-31	17303.58
1618	2020-11-30	7663.37
1619	2024-04-13	8985.17
1620	2020-08-09	11446.83
1621	2024-11-23	17621.31
1622	2024-09-24	17415.84
1623	2022-10-23	16066.98
1624	2023-06-24	8288.19
1625	2024-07-04	7415.29
1626	2021-04-15	11560.97
1627	2022-10-17	7645.78
1628	2023-01-11	9224.11
1629	2021-07-10	8407.82
1630	2020-04-06	10459.67
1631	2024-02-03	15618.23
1632	2022-01-27	17242.40
1633	2020-03-24	10302.09
1634	2022-11-08	10843.11
1635	2020-04-06	6720.31
1636	2022-08-22	14409.71
1637	2021-09-02	14431.08
1638	2021-09-08	17488.83
1639	2023-09-23	6748.77
1640	2020-06-16	13971.78
1641	2022-02-12	8038.36
1642	2021-07-22	6629.25
1643	2024-05-21	10037.97
1644	2020-01-24	14481.25
1645	2021-10-13	15913.91
1646	2023-03-20	17303.37
1647	2024-06-25	15765.31
1648	2021-08-01	12960.60
1649	2023-09-13	15813.89
1650	2021-06-04	16101.24
1651	2021-08-07	8100.40
1652	2023-03-28	15133.21
1653	2022-06-02	13267.56
1654	2022-10-16	6693.24
1655	2023-11-27	12277.63
1656	2024-02-21	12262.76
1657	2024-01-15	13665.94
1658	2023-03-10	7871.47
1659	2022-02-01	10643.63
1660	2020-10-02	17557.02
1661	2020-03-27	11165.98
1662	2020-11-15	18000.52
1663	2020-08-21	13442.84
1664	2024-07-20	15290.26
1665	2024-10-09	17223.75
1666	2022-03-17	8384.32
1667	2020-02-02	9428.12
1668	2020-12-29	17214.91
1669	2022-08-14	6700.62
1670	2020-02-10	17403.30
1671	2024-03-14	13034.78
1672	2021-10-05	16702.27
1673	2022-01-14	16161.05
1674	2024-01-12	17268.11
1675	2023-05-09	17213.09
1676	2020-06-02	16633.04
1677	2022-03-28	7144.29
1678	2023-10-30	7201.62
1679	2024-05-16	13735.52
1680	2023-08-20	14364.11
1681	2020-07-03	17669.87
1682	2023-12-27	13263.95
1683	2021-01-28	16183.25
1684	2023-07-08	6697.90
1685	2023-06-13	13882.45
1686	2021-06-24	17008.21
1687	2023-07-08	15997.10
1688	2024-10-17	9265.79
1689	2022-12-21	16494.53
1690	2024-08-09	13712.41
1691	2024-03-09	14380.09
1692	2024-03-01	6907.09
1693	2021-02-16	15868.05
1694	2021-11-21	8703.16
1695	2020-10-10	10458.93
1696	2024-04-23	15930.88
1697	2023-09-23	8889.58
1698	2022-11-28	14624.98
1699	2022-12-03	15271.54
1700	2021-12-23	8059.25
1701	2022-08-02	16431.70
1702	2022-10-22	8906.34
1703	2022-03-04	15062.96
1704	2022-04-22	12805.80
1705	2020-03-02	16886.40
1706	2023-11-04	17842.80
1707	2021-03-30	15850.72
1708	2020-03-06	16598.78
1709	2021-06-23	11658.71
1710	2020-02-18	11191.11
1711	2020-03-17	12394.06
1712	2023-05-19	13047.88
1713	2024-04-24	15607.29
1714	2020-01-01	17540.15
1715	2024-08-20	16107.88
1716	2020-11-01	17227.78
1717	2020-07-29	8959.48
1718	2023-05-10	14753.44
1719	2022-06-30	8018.40
1720	2023-02-08	9385.11
1721	2020-02-04	7760.59
1722	2022-05-26	7336.32
1723	2022-08-13	11935.23
1724	2021-06-25	11659.00
1725	2022-12-23	9387.37
1726	2023-07-16	11241.01
1727	2023-08-08	11571.96
1728	2024-04-29	9827.01
1729	2021-01-13	9343.16
1730	2023-01-04	16063.87
1731	2020-01-12	10658.26
1732	2020-06-24	14657.24
1733	2023-03-01	10225.20
1734	2024-01-30	15187.72
1735	2022-10-15	14832.94
1736	2021-09-10	15832.04
1737	2024-09-15	14757.00
1738	2021-01-02	17530.81
1739	2022-05-09	10201.51
1740	2024-01-04	11865.38
1741	2020-09-16	9695.16
1742	2021-07-15	15097.18
1743	2022-11-06	15360.92
1744	2022-10-24	15545.35
1745	2023-10-07	8207.87
1746	2024-06-29	7670.06
1747	2021-05-01	11905.42
1748	2021-09-24	15306.73
1749	2021-06-14	8433.41
1750	2021-04-29	7713.03
1751	2022-05-09	9498.18
1752	2020-05-14	10552.67
1753	2024-06-05	14737.08
1754	2022-07-22	16847.90
1755	2022-06-21	12398.19
1756	2021-01-20	16383.21
1757	2022-01-20	13726.19
1758	2022-01-04	17198.85
1759	2023-11-18	8965.05
1760	2024-08-22	14382.57
1761	2020-05-12	12254.79
1762	2021-07-07	7663.57
1763	2022-03-28	11122.88
1764	2020-04-11	15697.97
1765	2021-01-13	11990.56
1766	2020-02-04	11631.11
1767	2023-07-24	11677.42
1768	2023-12-25	16646.50
1769	2022-07-14	12262.47
1770	2021-07-28	13470.29
1771	2023-12-27	10986.30
1772	2020-11-01	10526.19
1773	2020-11-20	17565.28
1774	2023-04-08	14368.65
1775	2024-07-14	8974.31
1776	2023-10-04	14971.90
1777	2021-09-06	11956.81
1778	2022-04-17	8329.57
1779	2020-10-04	8276.33
1780	2023-04-28	12134.24
1781	2021-05-07	13547.97
1782	2024-07-16	13468.12
1783	2022-02-08	15336.25
1784	2021-12-15	10826.03
1785	2023-08-19	14548.65
1786	2022-08-05	16943.59
1787	2023-09-14	7643.25
1788	2023-03-17	8290.83
1789	2022-01-19	10686.76
1790	2022-10-21	10468.24
1791	2020-05-11	13648.50
1792	2022-10-09	10302.17
1793	2021-10-24	14143.61
1794	2022-04-01	14427.51
1795	2024-02-28	10239.04
1796	2021-08-13	8040.40
1797	2024-11-08	14786.75
1798	2024-04-20	15806.80
1799	2020-01-02	17063.56
1800	2023-03-02	18097.01
1801	2023-05-05	8972.17
1802	2021-12-29	7558.86
1803	2020-10-19	7087.77
1804	2020-11-24	17693.43
1805	2023-09-30	14228.02
1806	2020-06-27	11465.22
1807	2020-03-26	7634.93
1808	2022-01-01	15025.06
1809	2023-06-30	12463.25
1810	2023-03-01	12039.87
1811	2022-05-15	13145.49
1812	2023-06-11	10416.93
1813	2022-08-04	16603.84
1814	2020-05-07	17121.13
1815	2020-12-28	11462.22
1816	2023-12-23	7188.97
1817	2023-07-23	15981.10
1818	2021-06-15	15662.03
1819	2020-06-30	12145.17
1820	2023-01-31	8679.83
1821	2022-02-10	15407.63
1822	2022-12-19	7719.72
1823	2022-12-29	11541.94
1824	2020-03-28	11302.31
1825	2020-11-06	14840.05
1826	2021-08-12	6612.10
1827	2023-09-23	10251.97
1828	2023-10-26	8118.52
1829	2020-06-19	13551.59
1830	2023-02-20	10605.34
1831	2022-07-13	10803.86
1832	2021-01-27	10596.42
1833	2020-10-07	11285.02
1834	2021-12-12	6617.14
1835	2022-01-08	11581.01
1836	2021-03-14	10371.27
1837	2020-06-16	10134.60
1838	2023-06-09	12598.30
1839	2020-06-19	10325.96
1840	2021-11-23	8330.83
1841	2024-09-10	17086.65
1842	2022-09-10	15708.88
1843	2022-04-05	8285.13
1844	2022-11-06	12165.28
1845	2023-04-19	13939.03
1846	2020-02-21	9773.89
1847	2023-01-19	11865.02
1848	2021-10-04	12689.41
1849	2024-07-24	15195.19
1850	2023-10-12	9313.84
1851	2022-11-11	15189.02
1852	2022-07-23	16604.38
1853	2020-04-18	12550.43
1854	2020-05-05	10669.96
1855	2020-10-29	6924.89
1856	2024-11-25	15074.09
1857	2024-01-24	9630.54
1858	2023-12-17	10480.38
1859	2021-11-14	13755.65
1860	2020-06-12	10593.99
1861	2020-02-01	7471.43
1862	2024-05-17	9511.65
1863	2024-05-10	15311.53
1864	2020-05-11	9784.97
1865	2024-04-26	15113.50
1866	2020-12-16	8414.78
1867	2023-12-24	8140.28
1868	2020-09-20	9262.40
1869	2024-09-13	9266.27
1870	2023-04-12	9609.35
1871	2022-06-10	17631.94
1872	2020-10-26	15144.95
1873	2021-10-07	12970.01
1874	2022-09-03	14435.40
1875	2020-12-05	10240.59
1876	2020-08-12	15944.05
1877	2023-01-16	12430.12
1878	2024-09-20	7327.60
1879	2021-02-14	12053.33
1880	2022-05-12	15126.13
1881	2024-08-10	16495.42
1882	2020-09-16	14402.89
1883	2020-02-27	8589.31
1884	2023-03-13	12446.82
1885	2021-03-27	11196.01
1886	2023-08-27	8446.27
1887	2021-10-18	16686.40
1888	2022-09-06	14028.63
1889	2021-06-25	14711.93
1890	2024-08-20	11389.66
1891	2024-06-13	9937.98
1892	2022-12-23	9278.13
1893	2020-01-29	13165.14
1894	2023-06-25	10963.93
1895	2022-07-17	16870.93
1896	2023-12-29	14842.79
1897	2022-06-07	14213.84
1898	2021-06-28	7897.49
1899	2024-07-29	16020.97
1900	2022-07-24	16269.30
1901	2022-08-07	14273.85
1902	2020-01-13	7310.58
1903	2022-08-12	17652.89
1904	2022-05-17	13475.41
1905	2020-02-10	11735.17
1906	2022-03-24	16054.27
1907	2020-05-23	13664.97
1908	2024-10-21	12354.94
1909	2021-04-29	13732.80
1910	2021-01-02	7542.60
1911	2021-02-05	7970.79
1912	2024-03-03	7202.92
1913	2021-01-31	11451.07
1914	2020-11-25	7505.69
1915	2020-07-14	7523.74
1916	2024-08-03	15971.75
1917	2022-11-19	8928.03
1918	2023-12-23	18042.01
1919	2023-07-15	16987.15
1920	2020-12-24	7964.84
1921	2020-01-17	13667.16
1922	2023-11-05	6808.38
1923	2021-06-03	8347.96
1924	2022-07-24	9535.07
1925	2024-01-27	8935.54
1926	2020-10-29	15131.14
1927	2023-03-11	15531.06
1928	2020-06-30	17715.93
1929	2024-06-14	10590.11
1930	2020-02-11	10314.78
1931	2023-03-20	17439.33
1932	2024-04-24	12396.31
1933	2023-04-09	17390.04
1934	2024-06-03	16374.04
1935	2022-09-15	8267.88
1936	2024-11-13	11047.80
1937	2023-06-27	14132.95
1938	2023-01-12	16171.75
1939	2021-04-06	14579.56
1940	2022-10-25	8915.45
1941	2023-10-18	14902.53
1942	2023-11-23	15013.85
1943	2022-02-07	9222.68
1944	2024-07-29	16436.49
1945	2023-11-05	15970.23
1946	2020-08-24	15758.61
1947	2020-01-07	16013.05
1948	2020-01-08	11395.10
1949	2022-03-24	7649.93
1950	2020-05-15	15350.88
1951	2020-03-25	16208.56
1952	2021-10-18	11900.23
1953	2021-12-15	14232.67
1954	2020-01-20	7004.01
1955	2024-10-23	6671.08
1956	2020-05-12	16093.01
1957	2020-10-28	13137.26
1958	2022-03-30	7575.24
1959	2022-05-16	11145.01
1960	2022-04-11	10397.63
1961	2023-05-31	8560.14
1962	2022-06-08	15694.11
1963	2021-06-22	8216.53
1964	2024-05-21	9424.76
1965	2021-09-20	13815.73
1966	2023-08-21	12090.34
1967	2020-04-23	17256.70
1968	2021-01-10	10333.67
1969	2022-08-03	15131.65
1970	2021-11-08	7405.08
1971	2022-05-01	7759.19
1972	2022-11-02	15213.92
1973	2023-03-09	11432.14
1974	2020-01-06	12896.59
1975	2020-08-23	10832.12
1976	2023-07-19	8843.90
1977	2020-11-01	12560.25
1978	2022-03-12	16748.32
1979	2023-02-25	8519.27
1980	2020-08-08	15873.85
1981	2023-09-18	12790.47
1982	2022-05-04	14611.05
1983	2021-12-26	13646.67
1984	2022-06-23	7194.64
1985	2020-02-06	12356.22
1986	2020-01-30	10044.13
1987	2021-07-07	17224.05
1988	2024-09-18	7767.82
1989	2024-06-25	11070.91
1990	2021-09-17	17345.25
1991	2023-09-13	14404.19
1992	2024-08-14	12246.72
1993	2024-01-27	9857.13
1994	2023-03-31	9500.63
1995	2023-05-31	9495.26
1996	2024-06-09	11679.73
1997	2021-11-22	12219.25
1998	2022-01-24	17359.63
1999	2021-08-17	16904.69
2000	2024-10-12	13671.97
2001	2022-02-12	16578.04
2002	2024-01-31	8671.23
2003	2022-06-03	17998.76
2004	2022-02-05	8668.67
2005	2021-03-03	7579.82
2006	2020-08-03	7104.90
2007	2020-10-16	10542.87
2008	2021-07-18	10969.23
2009	2023-08-27	6941.35
2010	2022-06-24	9556.66
2011	2021-09-10	11876.77
2012	2024-11-17	17839.89
2013	2021-11-23	11609.80
2014	2024-02-06	11267.37
2015	2022-11-14	14843.70
2016	2021-04-13	11856.44
2017	2022-08-24	9439.84
2018	2021-11-20	15224.14
2019	2023-10-14	9163.00
2020	2024-03-03	9497.22
2021	2022-09-22	11238.68
2022	2021-08-19	15379.61
2023	2020-06-10	13294.88
2024	2022-07-17	11470.90
2025	2022-04-05	14421.45
2026	2020-11-08	11448.16
2027	2021-11-10	9482.46
2028	2022-09-29	10619.00
2029	2020-02-25	7578.00
2030	2022-12-30	15836.66
2031	2024-10-28	14448.05
2032	2020-12-23	10088.58
2033	2023-09-13	16935.52
2034	2024-01-10	13344.97
2035	2022-07-20	16106.24
2036	2023-10-09	14650.14
2037	2024-03-17	14769.83
2038	2022-08-11	14576.89
2039	2021-12-01	13447.98
2040	2021-10-27	15127.96
2041	2021-10-28	17269.70
2042	2021-09-07	15996.92
2043	2024-02-26	8148.02
2044	2022-08-04	14182.45
2045	2022-11-29	12606.51
2046	2022-10-23	15512.45
2047	2020-11-07	16842.80
2048	2023-05-21	16717.84
2049	2023-05-03	8118.94
2050	2022-08-05	14498.97
2051	2021-01-11	17110.83
2052	2022-10-22	17719.29
2053	2022-08-28	10487.51
2054	2020-07-28	11139.28
2055	2022-02-01	13393.54
2056	2022-08-17	16059.22
2057	2021-11-08	12255.36
2058	2024-10-17	13652.20
2059	2022-09-26	13616.76
2060	2020-02-18	7645.83
2061	2020-11-14	8662.74
2062	2022-11-02	6872.44
2063	2024-01-26	7105.64
2064	2020-02-03	15319.40
2065	2023-09-27	13081.32
2066	2022-06-09	11410.07
2067	2022-11-22	14094.51
2068	2022-04-17	13857.57
2069	2022-10-28	9881.68
2070	2022-06-22	17007.12
2071	2023-11-04	7349.40
2072	2022-04-24	15011.08
2073	2020-01-20	10057.85
2074	2022-01-05	14790.16
2075	2022-08-01	8210.50
2076	2023-05-23	11911.69
2077	2022-07-19	6869.87
2078	2023-02-12	7940.75
2079	2022-09-27	14649.11
2080	2023-09-21	9402.34
2081	2023-09-23	16404.76
2082	2021-11-06	14906.21
2083	2021-03-14	13737.95
2084	2022-05-08	17589.56
2085	2023-08-02	7118.57
2086	2023-10-01	10047.28
2087	2022-12-05	8628.02
2088	2023-01-02	16626.47
2089	2024-05-29	17553.42
2090	2021-05-27	14593.75
2091	2020-01-22	15676.94
2092	2024-06-10	15767.48
2093	2023-10-23	16142.03
2094	2020-01-19	12542.19
2095	2020-06-11	15078.34
2096	2022-08-29	10453.00
2097	2024-10-27	14705.00
2098	2022-01-31	10780.67
2099	2024-09-23	17690.84
2100	2020-05-14	16952.52
2101	2023-01-27	7530.12
2102	2023-01-20	9205.09
2103	2021-03-31	17818.77
2104	2022-09-14	6620.32
2105	2023-08-13	17747.58
2106	2023-02-03	8834.94
2107	2020-03-18	16156.44
2108	2020-05-24	12897.88
2109	2022-07-10	8222.64
2110	2024-03-09	13211.99
2111	2023-05-09	8984.82
2112	2022-08-26	12851.98
2113	2024-11-09	10156.45
2114	2020-05-24	16854.40
2115	2024-02-07	15501.26
2116	2023-04-23	7774.19
2117	2021-04-13	10527.91
2118	2024-10-01	17228.00
2119	2022-01-15	16609.91
2120	2022-06-21	12337.91
2121	2020-12-31	15119.30
2122	2023-08-09	10025.31
2123	2021-05-19	14825.70
2124	2020-02-07	14491.09
2125	2020-11-18	13633.16
2126	2023-12-25	15044.77
2127	2020-03-08	6730.40
2128	2023-12-20	9577.90
2129	2022-02-18	7369.27
2130	2020-09-07	16194.41
2131	2024-11-20	17005.82
2132	2024-07-19	14088.65
2133	2020-09-23	9442.87
2134	2024-02-16	8291.08
2135	2021-12-02	10464.43
2136	2020-04-23	9822.27
2137	2023-02-27	17742.49
2138	2021-11-18	14659.19
2139	2022-01-31	12745.92
2140	2021-09-29	10148.65
2141	2024-06-25	10015.71
2142	2022-03-29	11984.87
2143	2020-06-18	11941.16
2144	2022-02-13	17607.49
2145	2024-11-18	9194.25
2146	2023-12-30	10660.48
2147	2022-05-14	15973.92
2148	2020-09-16	8906.63
2149	2024-09-23	14826.19
2150	2022-01-14	14874.93
2151	2020-08-23	10658.68
2152	2023-01-22	7282.56
2153	2021-10-06	8760.16
2154	2024-01-10	15453.00
2155	2023-09-22	17403.81
2156	2022-06-14	7618.36
2157	2020-06-09	13656.07
2158	2020-07-29	9164.74
2159	2022-03-31	11664.09
2160	2022-05-25	7328.18
2161	2021-11-07	11466.46
2162	2024-04-13	7804.04
2163	2021-06-19	13127.80
2164	2023-01-17	11288.43
2165	2020-05-19	14735.94
2166	2024-02-20	10090.51
2167	2020-07-27	15875.11
2168	2023-08-22	13813.28
2169	2024-06-11	12743.40
2170	2022-10-28	13063.19
2171	2023-06-29	7363.73
2172	2020-02-12	8650.26
2173	2021-08-02	9227.73
2174	2023-05-11	16091.15
2175	2020-02-03	12067.90
2176	2023-11-04	15457.69
2177	2020-06-05	15468.10
2178	2023-01-21	8212.15
2179	2022-05-19	12774.33
2180	2024-02-20	15171.21
2181	2022-01-29	11386.15
2182	2020-02-13	16718.01
2183	2021-09-01	7803.70
2184	2022-10-09	14210.44
2185	2023-07-17	13563.42
2186	2023-06-08	17558.00
2187	2020-09-20	8457.92
2188	2020-03-05	12238.82
2189	2024-11-21	10573.46
2190	2024-05-09	14003.40
2191	2020-06-08	12225.12
2192	2024-02-29	12415.87
2193	2024-01-14	10644.08
2194	2020-03-09	17692.01
2195	2020-02-17	11031.04
2196	2020-04-20	10828.43
2197	2024-10-27	13799.70
2198	2020-06-25	14711.05
2199	2021-11-18	7115.43
2200	2021-12-15	7671.46
2201	2020-01-27	16549.01
2202	2021-06-26	11132.08
2203	2022-11-13	10131.38
2204	2021-04-27	10608.61
2205	2021-12-09	13722.32
2206	2021-01-19	16445.01
2207	2022-01-18	15784.75
2208	2021-07-01	9838.69
2209	2024-03-21	17265.75
2210	2020-08-11	9528.73
2211	2022-10-01	17959.76
2212	2020-05-31	9880.57
2213	2021-03-15	7154.34
2214	2024-01-25	13064.01
2215	2024-01-01	17517.41
2216	2023-04-27	13988.04
2217	2022-08-25	10206.06
2218	2023-07-19	14238.54
2219	2021-03-13	7800.60
2220	2024-04-16	12735.77
2221	2020-09-07	14208.23
2222	2024-06-30	9398.25
2223	2024-11-13	16984.20
2224	2024-11-15	11005.41
2225	2022-04-18	16055.58
2226	2021-03-25	9475.83
2227	2023-01-07	12762.59
2228	2024-03-25	12166.02
2229	2024-08-14	9549.22
2230	2024-02-04	15359.57
2231	2022-10-11	17066.38
2232	2021-08-13	15131.31
2233	2022-10-05	11455.24
2234	2021-05-25	16101.55
2235	2022-09-03	8433.54
2236	2023-02-21	12182.39
2237	2023-02-16	6932.79
2238	2021-03-17	6954.76
2239	2021-03-03	12207.84
2240	2024-07-11	12323.58
2241	2023-01-19	16047.76
2242	2020-12-14	12922.19
2243	2024-05-29	7420.03
2244	2022-05-15	10436.38
2245	2022-06-12	7436.88
2246	2024-08-01	10294.32
2247	2022-01-16	12023.47
2248	2021-09-01	12596.04
2249	2023-02-10	17307.83
2250	2021-12-02	14541.17
2251	2022-10-28	11449.22
2252	2024-10-27	16293.51
2253	2024-02-21	11493.74
2254	2024-06-01	14968.79
2255	2023-01-25	16905.97
2256	2022-07-29	17183.93
2257	2023-02-20	16316.66
2258	2024-03-29	7738.70
2259	2024-05-17	17473.70
2260	2023-02-08	14508.58
2261	2022-07-09	11204.80
2262	2020-04-24	10790.66
2263	2020-01-13	9524.39
2264	2022-04-02	9782.31
2265	2023-03-08	8103.69
2266	2023-07-26	13047.86
2267	2023-01-12	18054.01
2268	2024-11-07	9323.66
2269	2024-10-14	8403.01
2270	2023-11-02	14130.20
2271	2023-08-05	14014.55
2272	2022-04-20	13227.46
2273	2022-10-22	16965.35
2274	2024-04-27	8483.16
2275	2022-01-31	15372.62
2276	2023-11-13	15353.00
2277	2020-06-27	14692.36
2278	2021-06-11	12030.57
2279	2023-08-20	6859.48
2280	2024-09-01	12619.37
2281	2024-11-12	8634.83
2282	2020-10-23	10152.06
2283	2024-04-29	14702.43
2284	2022-11-25	15095.47
2285	2021-10-04	7023.55
2286	2024-01-21	14977.60
2287	2024-11-09	17696.40
2288	2021-02-09	11574.86
2289	2022-04-04	12640.39
2290	2020-04-06	10554.26
2291	2023-07-09	11499.67
2292	2024-05-18	7137.96
2293	2022-02-25	12694.13
2294	2020-10-19	14551.55
2295	2020-02-05	12442.54
2296	2020-08-26	10294.09
2297	2024-04-10	7712.02
2298	2024-10-31	14668.84
2299	2024-05-14	12760.54
2300	2020-11-16	7280.37
2301	2021-12-19	9514.07
2302	2024-11-09	12409.24
2303	2023-08-18	15470.31
2304	2020-10-12	16397.72
2305	2023-12-06	17511.92
2307	2021-12-06	8198.83
2308	2022-09-30	12653.58
2309	2022-06-06	12581.61
2310	2021-07-22	7017.71
2311	2022-05-19	15409.81
2312	2020-09-22	7128.78
2313	2024-07-25	7465.55
2314	2024-06-07	7133.47
2315	2023-03-06	14697.06
2316	2024-09-09	6615.38
2317	2021-11-05	11712.33
2318	2020-02-15	15328.26
2319	2022-03-26	13464.57
2320	2024-10-28	13615.70
2321	2023-06-30	15053.21
2322	2021-12-30	18018.78
2323	2021-06-19	10770.53
2324	2021-12-29	12896.27
2325	2021-07-31	16712.68
2326	2024-02-23	16932.54
2327	2023-09-10	8243.18
2328	2021-01-28	11646.73
2329	2021-01-22	15120.61
2330	2020-08-13	16373.52
2331	2022-03-17	14249.07
2332	2024-10-26	11054.21
2333	2020-07-09	14348.04
2334	2023-06-07	12492.70
2335	2024-06-04	7167.67
2336	2020-09-11	12665.89
2337	2020-04-19	11391.65
2338	2023-02-28	11346.33
2339	2021-09-17	16381.32
2340	2023-05-20	15428.61
2341	2022-01-12	6771.66
2342	2024-05-14	12298.13
2343	2021-11-06	11652.84
2344	2020-05-17	11247.94
2345	2020-03-09	12015.31
2346	2020-12-31	14552.65
2347	2024-02-25	17260.77
2348	2021-01-05	15987.05
2349	2020-01-15	15752.44
2350	2021-07-30	11006.16
2351	2020-05-14	11099.49
2352	2022-12-19	13226.58
2353	2020-02-04	16260.14
2354	2022-10-23	17892.80
2355	2023-08-01	17217.89
2356	2020-11-20	16051.74
2357	2023-11-18	7890.88
2358	2021-01-26	15554.55
2359	2023-06-22	7390.62
2360	2023-03-07	15011.18
2361	2021-03-25	16825.68
2362	2023-07-24	8655.38
2363	2021-01-14	6860.10
2364	2020-10-19	14031.70
2365	2024-10-11	11500.72
2366	2023-08-24	17030.99
2367	2022-06-27	8903.15
2368	2024-05-13	12852.11
2369	2024-05-01	14250.80
2370	2021-09-23	8117.71
2371	2020-09-29	17305.32
2372	2021-03-28	11931.88
2373	2021-03-18	13703.95
2374	2023-05-22	17107.90
2375	2022-05-13	12037.61
2376	2022-01-15	10025.14
2377	2022-04-30	9714.31
2378	2021-10-24	12621.34
2379	2024-02-14	15027.18
2380	2020-02-10	7405.71
2381	2020-02-25	11673.25
2382	2023-12-20	15152.80
2383	2023-07-04	9316.84
2384	2021-08-18	17740.64
2385	2022-11-28	15577.70
2386	2024-05-18	10905.50
2387	2024-08-14	17290.98
2388	2022-08-29	16046.35
2389	2021-09-30	9001.91
2390	2022-12-02	15511.49
2391	2023-02-17	13315.15
2392	2023-04-20	9224.72
2393	2022-06-13	9218.49
2394	2023-12-14	13164.81
2395	2023-06-20	15738.23
2396	2022-03-24	8023.55
2397	2020-10-11	7426.19
2398	2022-04-22	12235.43
2399	2020-01-13	10139.45
2400	2022-10-15	17216.60
2401	2020-04-20	16481.70
2402	2022-05-08	7142.18
2403	2021-12-06	15384.69
2404	2020-07-13	10323.95
2405	2023-08-17	13329.21
2406	2022-08-11	16617.85
2407	2021-06-06	7655.59
2408	2023-06-18	9050.08
2409	2020-04-16	6816.12
2410	2021-12-05	15405.22
2411	2020-01-22	7222.96
2412	2021-04-25	8669.66
2413	2023-12-29	15958.87
2414	2024-04-20	16624.15
2415	2022-02-01	10646.83
2416	2024-02-21	13410.60
2417	2021-02-01	10836.39
2418	2024-05-22	9499.90
2419	2023-03-05	10805.98
2420	2024-08-28	16293.22
2421	2024-02-13	12378.56
2422	2020-03-19	12791.38
2423	2021-07-04	8348.88
2424	2021-09-05	10382.16
2425	2021-04-20	13620.22
2426	2020-07-21	11868.86
2427	2020-07-04	11047.66
2428	2021-11-15	16966.57
2429	2023-12-05	14956.25
2430	2021-08-12	11577.75
2431	2023-04-02	18069.55
2432	2022-08-30	10013.59
2433	2021-04-05	17221.09
2434	2021-12-14	9434.64
2435	2021-06-12	11026.05
2436	2022-04-10	15808.51
2437	2022-01-19	9883.48
2438	2024-07-11	17507.97
2439	2022-09-08	16953.77
2440	2022-01-08	8900.62
2441	2021-10-26	7587.06
2442	2020-03-17	10726.09
2443	2022-12-25	13970.14
2444	2024-08-06	16466.05
2445	2022-04-30	10438.02
2446	2023-07-22	9245.56
2447	2023-04-17	7530.96
2448	2024-01-12	11673.73
2449	2020-09-29	12004.78
2450	2022-03-16	15853.40
2451	2024-03-17	15904.93
2452	2022-11-16	17972.44
2453	2022-04-14	13027.18
2454	2022-11-12	8133.56
2455	2024-05-31	14980.56
2456	2024-10-04	10288.35
2457	2020-07-26	12809.75
2458	2020-05-08	6636.34
2459	2020-02-10	7330.84
2460	2023-09-08	9535.85
2461	2021-06-27	15170.21
2462	2020-04-05	14305.01
2463	2023-08-10	12431.01
2464	2024-07-12	17951.40
2465	2024-09-18	14925.54
2466	2020-07-21	13471.63
2467	2023-08-26	11574.57
2468	2020-10-03	13626.03
2469	2021-05-24	16795.41
2470	2020-05-03	15837.49
2472	2021-07-21	8527.48
2473	2023-03-02	8355.89
2474	2020-04-05	15556.31
2475	2024-09-27	10412.33
2476	2020-01-18	16468.00
2477	2024-04-24	8139.98
2478	2022-03-25	9815.66
2479	2024-05-16	16089.62
2480	2024-11-17	8649.40
2481	2022-05-14	10601.66
2482	2021-07-13	17823.69
2483	2021-09-20	10540.21
2484	2022-05-21	9343.29
2485	2024-08-12	14829.25
2486	2021-06-15	11096.73
2487	2023-07-17	9570.35
2488	2024-11-25	15540.15
2489	2020-09-14	8908.55
2490	2023-12-28	6826.25
2491	2022-09-13	10318.35
2492	2023-04-25	14647.37
2493	2022-09-07	17463.97
2494	2021-03-21	11228.75
2495	2024-11-15	9436.23
2496	2021-12-15	12079.87
2497	2022-06-14	15315.03
2498	2023-09-13	8745.91
2499	2020-11-28	17188.34
2500	2023-06-03	10042.43
2501	2020-06-10	8119.29
2502	2021-12-23	10232.32
2503	2024-07-14	11798.37
2504	2024-06-14	7436.19
2505	2021-03-15	7168.35
2506	2024-04-06	11119.68
2507	2023-12-28	16310.91
2508	2020-01-03	16380.98
2509	2024-11-04	13506.91
2510	2022-10-12	14350.50
2511	2023-10-21	16343.59
2512	2021-08-17	6799.41
2513	2023-08-30	14402.41
2514	2024-09-12	16217.36
2515	2024-03-21	8893.67
2516	2022-01-23	11435.99
2517	2021-11-06	17817.12
2518	2021-08-20	17393.04
2519	2023-03-01	8050.73
2520	2020-02-28	15797.65
2521	2023-08-14	15794.27
2522	2021-10-04	9624.19
2523	2023-07-10	16400.92
2524	2022-08-30	11417.25
2525	2023-08-02	16161.78
2526	2020-03-25	14197.44
2527	2022-07-18	14583.84
2528	2024-02-06	17526.29
2529	2023-09-25	9603.90
2530	2024-07-05	14543.01
2531	2024-06-08	13104.28
2532	2023-12-07	10596.09
2533	2021-07-26	9845.37
2534	2023-06-25	12953.94
2535	2024-10-02	10382.62
2536	2021-05-19	12291.36
2537	2022-02-20	11696.92
2538	2020-03-27	7840.65
2539	2020-10-01	6729.81
2540	2022-03-14	16506.53
2541	2023-07-31	7756.48
2542	2023-05-06	18040.46
2543	2023-12-13	13951.51
2544	2020-08-23	10132.26
2545	2024-08-21	15552.98
2546	2021-07-07	16780.19
2547	2024-01-31	11077.78
2548	2024-11-08	12556.42
2549	2024-02-16	17704.91
2550	2023-12-22	8514.08
2551	2022-02-20	12101.12
2552	2020-11-06	14653.48
2553	2021-05-01	15602.38
2554	2021-09-12	16333.98
2555	2024-09-08	11112.47
2556	2023-11-30	15970.95
2557	2024-02-06	16404.24
2558	2022-03-27	8810.44
2559	2020-09-13	12057.20
2560	2021-08-26	13413.92
2561	2021-06-23	14514.09
2562	2021-09-29	17586.79
2563	2022-05-13	15860.83
2564	2020-10-15	10735.19
2565	2024-08-26	8330.53
2566	2022-01-23	12105.14
2567	2022-03-30	15205.23
2568	2022-07-03	15712.22
2569	2024-01-25	6946.31
2570	2022-05-09	13307.90
2571	2021-10-06	11686.30
2572	2023-05-19	7775.64
2573	2022-04-14	16375.30
2574	2022-10-30	17233.84
2575	2023-12-02	7195.56
2576	2021-03-21	16098.76
2577	2022-10-13	9753.46
2578	2020-11-17	17478.52
2579	2022-11-22	12406.81
2580	2020-11-12	13469.83
2581	2023-06-17	12171.00
2582	2022-06-19	9776.89
2583	2022-01-09	7539.97
2584	2023-07-21	11076.61
2585	2020-01-18	16543.00
2586	2023-01-03	7329.84
2587	2023-11-26	13227.50
2588	2021-04-20	8185.84
2589	2020-05-23	8690.80
2590	2024-04-30	8035.83
2591	2020-03-29	15111.55
2592	2024-08-15	15060.97
2593	2023-04-15	7620.59
2594	2022-05-08	6804.45
2595	2023-03-01	10460.23
2596	2023-03-06	14656.04
2597	2022-10-01	13937.19
2598	2022-09-30	8165.49
2599	2023-05-04	7018.52
2600	2022-12-18	17803.92
2601	2024-05-01	14322.11
2602	2022-11-27	8871.85
2603	2022-08-25	9347.67
2604	2020-01-17	10498.14
2605	2023-01-03	12030.33
2606	2022-12-05	11303.15
2607	2021-05-18	9252.71
2608	2023-02-24	9760.02
2609	2023-06-10	12378.61
2610	2022-09-13	8438.60
2611	2024-03-25	17801.73
2612	2021-10-29	17704.21
2613	2022-08-07	13514.32
2614	2022-10-05	13302.71
2615	2023-08-20	13203.92
2616	2024-03-31	13732.36
2617	2022-04-19	12127.49
2618	2020-02-28	13546.28
2619	2024-09-24	10631.69
2620	2024-04-15	10818.98
2621	2021-12-12	16147.43
2622	2021-01-26	17948.59
2623	2023-05-03	13045.50
2624	2021-12-07	14807.66
2625	2020-06-19	12302.39
2626	2020-07-29	7428.76
2627	2022-02-01	15539.43
2628	2024-04-08	13516.77
2629	2021-05-28	17445.14
2630	2020-10-14	6925.78
2631	2021-05-15	6733.15
2632	2022-04-18	10516.78
2633	2021-03-26	14368.90
2634	2020-07-28	16704.10
2635	2024-08-08	16112.41
2636	2024-06-26	10521.03
2637	2020-02-02	12033.13
2638	2023-10-20	10574.25
2639	2021-05-14	8635.95
2640	2024-05-15	11535.80
2641	2022-09-27	14092.29
2642	2024-01-04	6659.55
2643	2022-09-27	16472.31
2644	2020-10-05	7389.18
2645	2022-08-23	15595.57
2646	2024-06-12	8227.16
2647	2022-05-26	10780.52
2648	2024-01-15	12449.26
2649	2023-07-15	17406.53
2650	2021-02-21	14939.76
2651	2021-11-24	13465.67
2652	2022-06-22	12578.44
2653	2022-06-01	14367.42
2654	2024-08-23	9822.17
2655	2021-06-06	7736.88
2656	2020-08-24	15634.69
2657	2022-12-15	17954.62
2658	2020-09-06	11917.27
2659	2020-04-25	11284.84
2660	2021-04-05	12541.57
2661	2023-01-03	7868.05
2662	2020-08-17	10674.15
2663	2023-09-11	11633.36
2664	2020-01-04	10795.20
2665	2023-05-15	7376.60
2666	2024-07-23	15000.50
2667	2023-06-16	17693.70
2668	2022-01-23	17168.47
2669	2021-04-30	8018.04
2670	2021-02-10	7605.80
2671	2024-09-28	9117.76
2672	2023-02-16	7066.74
2673	2020-01-06	8009.79
2674	2020-10-26	9614.75
2675	2020-07-09	10699.10
2676	2024-03-13	11092.47
2677	2023-04-21	13661.31
2678	2021-05-14	10529.90
2679	2020-11-04	9840.20
2680	2022-11-16	8154.04
2681	2020-09-11	8142.47
2682	2020-09-04	11538.28
2683	2024-09-21	17312.65
2684	2022-08-08	8468.17
2685	2021-10-29	17128.05
2686	2022-11-26	17698.71
2687	2023-12-31	15868.07
2688	2022-06-05	11570.37
2689	2024-03-16	16419.71
2690	2021-10-25	9984.01
2691	2022-08-10	16971.36
2692	2022-04-14	7277.98
2693	2024-10-14	7691.78
2694	2022-05-18	7429.01
2695	2023-04-24	12655.91
2696	2022-06-19	12036.78
2697	2021-04-25	13925.21
2698	2020-04-28	9533.09
2699	2023-08-19	14390.00
2700	2023-07-16	7570.72
2701	2021-08-30	8782.29
2702	2023-03-26	12733.65
2703	2024-03-22	14272.45
2704	2021-09-06	11580.37
2705	2023-03-16	13247.45
2706	2023-03-21	7136.53
2707	2022-08-06	16844.53
2708	2020-05-16	9748.66
2709	2022-03-01	9623.96
2710	2022-08-14	12271.68
2711	2022-08-04	13529.90
2712	2020-06-29	10311.88
2713	2023-02-28	10357.25
2714	2022-08-02	16138.55
2715	2023-12-08	17853.66
2716	2022-03-09	12437.49
2717	2020-10-29	15576.48
2718	2023-06-19	10351.80
2719	2024-01-25	11216.98
2720	2022-06-20	6980.92
2721	2022-04-03	8796.88
2722	2024-02-08	17942.37
2723	2020-03-16	12609.51
2724	2021-12-12	7589.95
2725	2021-02-13	9635.98
2726	2020-10-20	13040.24
2727	2024-02-27	10142.18
2728	2021-02-11	14378.33
2729	2022-01-31	8526.07
2730	2023-03-04	17106.32
2731	2022-09-19	13270.20
2732	2022-07-15	12673.06
2733	2022-10-24	9858.52
2734	2020-07-28	7176.81
2735	2020-11-15	12463.53
2736	2022-01-26	12078.11
2737	2022-07-26	7623.35
2738	2022-03-09	7216.92
2739	2020-11-23	12581.10
2740	2022-04-23	8091.33
2741	2022-02-02	10244.02
2742	2024-06-20	13040.59
2743	2023-08-18	17814.03
2744	2022-01-12	17436.35
2745	2023-10-13	9625.47
2746	2020-06-26	11990.00
2747	2023-04-02	18026.28
2748	2021-09-13	11821.05
2749	2023-04-19	17999.96
2750	2023-06-28	12825.41
2751	2023-12-26	14526.55
2752	2022-02-08	14254.62
2753	2023-02-10	13828.19
2754	2023-03-20	17273.74
2755	2023-12-27	9329.74
2756	2022-02-02	7555.65
2757	2022-09-30	8401.03
2758	2021-02-08	8929.59
2759	2023-01-29	13073.56
2760	2021-08-10	14476.97
2761	2022-06-22	10375.62
2762	2021-06-22	8792.88
2763	2022-11-02	9098.88
2764	2024-02-26	10615.03
2765	2021-03-07	15554.98
2766	2021-11-02	7040.34
2767	2023-07-12	8808.66
2768	2022-03-06	9084.74
2769	2022-01-16	14834.64
2770	2022-08-15	14353.40
2771	2022-04-20	15858.22
2772	2022-10-19	16794.66
2773	2024-05-19	14580.78
2774	2024-04-16	9830.52
2775	2022-06-02	12624.29
2776	2024-03-28	15784.40
2777	2024-09-22	8576.15
2778	2022-02-28	12465.92
2779	2023-10-16	9156.95
2780	2024-03-04	9609.35
2781	2021-05-08	11642.96
2782	2021-06-25	8629.94
2783	2021-11-10	10307.30
2784	2024-08-10	15277.46
2785	2023-02-03	7131.95
2786	2024-04-23	7425.59
2787	2022-03-29	13006.93
2788	2020-07-01	16032.29
2789	2023-12-02	16906.84
2790	2020-09-28	16261.73
2791	2024-07-19	6746.82
2792	2021-07-29	13449.42
2793	2021-11-09	16693.65
2794	2020-03-21	7055.72
2795	2022-03-20	12789.43
2796	2021-10-23	9144.23
2797	2023-04-30	17868.32
2798	2022-04-14	9744.17
2799	2024-03-01	6961.24
2800	2023-12-24	12353.90
2801	2023-09-12	11139.51
2802	2023-06-29	17390.99
2803	2024-09-03	17565.66
2804	2020-03-30	11155.37
2805	2020-10-17	7892.18
2806	2020-02-16	13058.20
2807	2023-12-08	13310.75
2808	2020-08-11	8684.27
2809	2021-02-17	15226.59
2810	2023-08-18	17245.24
2811	2021-10-11	14587.48
2812	2021-03-09	13886.90
2813	2022-05-10	16695.56
2814	2020-02-26	16444.33
2815	2022-06-14	11770.09
2816	2020-12-06	17779.53
2817	2024-05-06	10417.71
2818	2022-12-16	11285.97
2819	2024-04-26	14359.37
2820	2022-03-21	13765.04
2821	2024-08-01	14176.24
2822	2023-01-19	10198.72
2823	2020-12-03	10760.15
2824	2023-07-04	13524.30
2825	2022-04-10	14924.05
2826	2022-07-08	11651.80
2827	2021-10-20	13439.21
2828	2024-07-17	17712.82
2829	2020-05-06	8998.46
2830	2024-08-28	14259.18
2831	2024-11-09	6766.75
2832	2023-02-25	13775.78
2833	2023-01-04	9220.55
2834	2020-12-29	14917.09
2835	2022-09-08	15255.23
2836	2020-04-27	14085.85
2837	2021-06-23	14855.29
2838	2020-05-01	9557.39
2839	2023-05-17	12046.24
2840	2021-05-14	16460.68
2841	2020-04-09	14844.01
2842	2021-11-25	9179.35
2843	2024-09-28	14980.18
2844	2020-10-24	14726.46
2845	2024-10-18	12441.74
2846	2023-03-23	14723.16
2847	2022-02-26	11457.75
2848	2021-02-15	15880.81
2849	2022-02-02	16642.96
2850	2022-08-26	16615.47
2851	2022-07-16	10496.17
2852	2020-05-05	10594.63
2853	2022-05-29	12805.17
2854	2022-11-24	12244.73
2855	2020-04-03	14043.19
2856	2023-09-16	15645.78
2857	2020-06-15	11507.34
2858	2024-09-30	13631.58
2859	2020-03-23	7314.11
2860	2020-06-19	7890.41
2861	2021-07-11	6965.57
2862	2020-02-11	16629.05
2863	2024-09-27	13710.55
2864	2020-06-26	8322.89
2865	2022-01-25	6673.47
2866	2024-04-29	14099.31
2867	2024-05-25	13255.18
2868	2021-09-17	12705.27
2869	2023-05-31	10791.69
2870	2023-10-31	15078.35
2871	2022-01-03	11000.20
2872	2024-06-08	13815.38
2873	2023-06-08	13925.36
2874	2021-07-28	12708.19
2875	2020-08-11	12817.95
2876	2022-10-18	11305.06
2877	2024-11-11	14207.41
2878	2021-08-20	10783.05
2879	2023-11-02	8911.40
2880	2024-02-09	13700.66
2881	2022-06-07	8965.50
2882	2020-09-15	15754.82
2883	2020-08-22	8107.52
2884	2023-08-30	14947.82
2885	2021-05-05	16468.44
2886	2020-05-13	10012.46
2887	2022-01-01	16952.04
2888	2020-08-25	12308.72
2889	2023-07-17	7503.20
2890	2023-06-24	10822.88
2891	2022-01-02	7429.60
2892	2021-04-01	6902.89
2893	2024-10-12	13280.47
2894	2024-11-21	9066.36
2895	2023-02-05	9771.69
2896	2021-12-31	17436.89
2897	2022-04-02	13332.49
2898	2021-06-21	12410.17
2899	2023-03-15	16194.24
2900	2020-12-11	12915.44
2901	2021-10-18	10514.22
2902	2024-08-01	9746.92
2903	2021-10-23	10248.93
2904	2023-10-18	12968.02
2905	2021-04-13	8617.15
2906	2021-01-28	10058.98
2907	2021-03-07	8105.31
2908	2024-05-04	11129.00
2909	2021-11-26	15044.96
2910	2023-03-23	12117.22
2911	2023-06-27	6797.71
2912	2024-07-27	14190.49
2913	2023-10-16	16957.12
2914	2024-08-22	11114.12
2915	2022-07-16	15511.35
2916	2020-11-19	7168.87
2917	2024-03-07	14998.57
2918	2021-04-15	8481.33
2919	2021-06-01	12544.73
2920	2022-05-18	7168.20
2921	2023-12-01	15825.25
2922	2023-01-20	11959.09
2923	2020-11-09	14993.86
2924	2024-11-29	9926.50
2925	2023-08-18	9198.22
2926	2020-11-30	15401.79
2927	2020-12-12	13003.31
2928	2023-11-12	13344.88
2929	2021-03-27	16798.81
2930	2021-02-06	13202.83
2931	2020-04-08	9841.55
2932	2022-08-28	8594.09
2933	2020-06-02	17036.01
2934	2024-06-25	11309.17
2935	2022-08-22	8083.55
2936	2021-02-03	14260.27
2937	2022-04-21	6931.63
2938	2024-08-20	16539.62
2939	2023-03-22	8698.77
2940	2023-12-01	8999.77
2941	2023-05-19	15924.61
2942	2021-09-14	13910.62
2943	2021-06-30	6842.51
2944	2022-07-27	9874.96
2945	2023-08-01	13481.12
2946	2020-10-23	9031.36
2947	2020-06-15	15397.80
2948	2021-02-10	7504.22
2949	2023-04-05	9758.03
2950	2021-10-12	16150.29
2951	2020-10-18	16407.00
2952	2020-03-02	12394.16
2953	2024-04-14	13985.93
2954	2022-12-01	14464.13
2955	2021-07-23	12324.47
2956	2023-02-23	16228.63
2957	2023-12-05	17784.12
2958	2020-11-05	13460.48
2959	2021-02-17	14668.95
2960	2022-08-26	11637.08
2962	2024-10-29	17443.11
2963	2020-04-14	17967.31
2964	2020-01-01	12984.70
2965	2022-02-25	10856.65
2966	2023-06-09	17392.85
2967	2023-02-26	7282.70
2968	2021-10-09	9614.28
2969	2020-04-12	11955.20
2970	2021-10-18	13476.54
2971	2023-04-25	12846.82
2972	2020-11-28	10152.65
2973	2023-11-04	12398.92
2974	2022-06-23	15402.63
2975	2024-05-15	16404.64
2976	2021-05-26	16696.11
2977	2022-12-26	16457.27
2978	2024-05-28	16831.98
2979	2023-09-15	6801.80
2980	2020-10-07	17486.40
2981	2022-09-10	7312.12
2982	2023-11-12	9962.33
2983	2020-04-16	14665.67
2984	2020-11-26	16474.70
2985	2022-12-14	10086.69
2986	2020-03-01	17958.40
2987	2020-04-10	10420.35
2988	2020-10-06	7891.79
2989	2020-01-01	9857.21
2990	2022-01-29	17891.31
2991	2023-11-14	11288.81
2992	2023-04-26	17081.01
2993	2020-01-18	9375.80
2994	2021-05-23	12530.52
2995	2024-04-20	7476.31
2996	2022-07-15	9299.24
2997	2024-05-03	8369.18
2998	2022-09-26	10079.96
2999	2020-05-29	9631.35
3000	2021-07-12	14000.32
3001	2024-11-09	16019.47
3002	2021-04-04	17474.40
3003	2023-06-05	12357.11
3004	2023-05-10	9733.98
3005	2021-05-20	6772.95
3006	2020-07-12	16285.77
3007	2021-06-15	6687.30
3008	2021-04-11	8272.74
3009	2021-08-31	14194.52
3010	2023-05-09	7813.55
3011	2024-07-27	13135.45
3012	2022-12-12	8991.18
3013	2024-03-03	10664.82
3014	2021-06-23	12022.32
3015	2020-11-24	9365.61
3016	2020-06-28	8790.05
3017	2021-03-18	11482.06
3018	2024-07-29	11713.82
3019	2024-07-07	12049.71
3020	2023-12-13	13427.56
3021	2021-01-20	9885.54
3022	2021-02-28	10222.44
3023	2020-07-05	10849.32
3024	2022-10-30	9654.70
3025	2023-02-05	13321.10
3026	2021-07-12	13079.89
3027	2020-05-28	13222.98
3028	2021-08-23	12582.86
3029	2023-08-30	11646.36
3030	2024-01-07	13315.42
3031	2024-02-21	16494.35
3032	2022-03-23	16647.11
3033	2024-01-29	12125.63
3034	2021-08-06	11204.78
3035	2021-04-12	16895.56
3036	2024-05-08	16168.15
3037	2023-11-17	17707.78
3038	2020-10-19	11807.08
3039	2020-02-24	12145.05
3040	2020-12-04	11675.96
3041	2021-11-09	14636.74
3042	2024-10-08	6992.32
3043	2020-12-30	17181.37
3044	2021-01-13	7564.13
3045	2024-07-15	7461.34
3046	2023-08-30	12573.50
3047	2020-12-27	6976.10
3048	2021-12-04	17116.31
3049	2022-07-16	7556.94
3050	2020-08-31	15632.97
3051	2021-09-30	16367.17
3052	2024-03-24	13472.79
3053	2023-03-22	7494.68
3054	2021-12-22	15557.09
3055	2023-09-15	11479.39
3056	2023-03-14	11812.84
3057	2023-11-17	8499.62
3058	2021-06-17	15873.09
3059	2022-03-26	14122.09
3060	2022-02-04	8262.12
3061	2023-04-30	14306.95
3062	2021-02-12	10891.24
3063	2020-12-25	8894.26
3064	2024-07-15	9100.42
3065	2022-03-25	14453.35
3066	2023-02-11	7496.82
3067	2022-09-20	15401.04
3068	2022-12-06	9377.33
3069	2021-09-29	14374.77
3070	2021-01-09	17852.44
3071	2020-06-23	9411.14
3072	2021-01-24	15962.62
3073	2020-12-08	11972.42
3074	2022-10-11	15340.12
3075	2024-06-09	12565.30
3076	2020-04-08	7545.63
3077	2024-07-22	7271.07
3078	2023-12-02	12493.57
3079	2020-09-04	11352.43
3080	2021-05-17	10476.82
3081	2021-12-13	8623.77
3082	2022-04-20	14598.51
3083	2022-07-18	9752.50
3084	2022-06-30	15484.93
3085	2024-03-16	9681.73
3086	2024-04-23	15492.90
3087	2022-10-29	10746.68
3088	2021-10-30	12144.33
3089	2020-05-25	13726.27
3090	2021-10-28	10384.78
3091	2023-03-05	14251.98
3092	2020-10-09	12035.13
3093	2020-07-03	7002.03
3094	2024-08-23	17594.04
3095	2021-12-23	8876.06
3096	2024-05-14	13117.66
3097	2021-04-08	8056.94
3098	2024-02-22	14853.48
3099	2021-04-05	8362.54
3100	2022-12-14	8087.31
3101	2022-07-31	16986.46
3102	2024-02-29	10890.86
3103	2020-04-23	17402.93
3104	2023-02-20	9286.00
3105	2020-01-05	11604.10
3106	2021-10-01	16977.55
3107	2021-09-12	7241.71
3108	2024-01-14	11805.27
3109	2021-09-09	6788.18
3110	2024-10-29	11589.60
3111	2024-04-24	14579.82
3112	2022-04-21	14295.04
3113	2024-05-11	11914.43
3114	2022-11-12	9406.28
3115	2024-07-08	7484.62
3116	2022-06-24	9273.37
3117	2024-02-13	8641.18
3118	2023-04-01	13613.03
3119	2022-04-10	8947.51
3120	2023-07-14	9636.21
3121	2021-12-05	16870.24
3122	2021-09-30	10917.33
3123	2022-04-21	17329.35
3124	2024-03-01	14026.05
3125	2023-03-07	15397.88
3126	2024-08-21	16787.96
3127	2024-05-23	10975.79
3128	2023-07-02	9948.33
3129	2020-06-22	16984.33
3130	2020-06-26	11936.42
3131	2024-07-11	13567.41
3132	2022-05-02	9513.83
3133	2022-12-08	16629.84
3134	2023-04-08	8443.01
3135	2021-07-24	10398.80
3136	2020-07-30	16609.20
3137	2022-03-07	16548.71
3138	2023-04-03	12124.32
3139	2022-07-12	16376.72
3140	2021-09-07	6769.41
3141	2021-11-10	15510.82
3142	2022-12-04	10978.00
3143	2023-08-12	6648.54
3144	2024-08-18	16868.16
3145	2023-12-17	10338.00
3146	2020-01-25	7422.20
3147	2024-05-31	13077.33
3148	2024-05-15	10259.49
3149	2022-12-15	16859.57
3150	2024-11-26	8029.04
3151	2020-08-28	10136.09
3152	2020-10-19	9677.81
3153	2023-09-19	12329.20
3154	2020-07-10	9742.99
3155	2022-12-12	13988.12
3156	2022-08-16	9297.05
3157	2022-02-16	7057.20
3158	2020-05-26	14214.94
3159	2024-02-17	11015.88
3160	2023-01-14	7669.66
3161	2024-07-03	8624.76
3162	2020-07-12	9033.48
3163	2022-10-18	11632.39
3164	2024-08-27	11947.25
3165	2020-04-07	17489.41
3166	2020-01-08	7729.60
3167	2022-01-03	17902.42
3168	2024-01-22	7973.00
3169	2024-02-11	17970.21
3170	2022-03-12	8415.48
3171	2021-03-19	8402.18
3172	2023-09-07	15878.82
3173	2024-01-19	7459.78
3174	2020-12-16	16229.89
3175	2022-05-27	15001.52
3176	2024-01-24	15182.51
3177	2024-10-24	7662.85
3178	2022-07-17	12738.01
3179	2024-05-10	6839.72
3180	2024-02-02	16316.75
3181	2021-02-24	10744.56
3182	2023-02-11	10898.71
3183	2023-04-21	16331.58
3184	2021-06-16	17151.87
3185	2021-10-02	8358.96
3186	2020-01-04	7681.93
3187	2021-08-27	15171.78
3188	2023-12-22	15454.06
3189	2022-12-01	16220.37
3190	2022-01-16	10943.37
3191	2020-04-19	14314.04
3192	2023-08-29	17948.42
3193	2021-11-12	7948.25
3194	2023-11-04	10514.81
3195	2022-04-04	15129.60
3196	2024-09-25	10377.80
3197	2024-04-29	12110.82
3198	2023-02-04	16360.03
3199	2021-11-08	15213.41
3200	2021-11-13	15948.50
3201	2021-06-07	13411.17
3202	2023-05-02	8813.42
3203	2020-05-23	9628.54
3204	2023-07-08	16889.78
3205	2021-02-03	9116.49
3206	2023-10-07	9768.99
3207	2022-02-01	17827.81
3208	2023-12-09	9433.11
3209	2021-12-12	13805.50
3210	2022-03-13	6639.82
3211	2023-04-15	11283.54
3212	2022-12-27	13965.00
3213	2020-03-27	14427.91
3214	2022-04-13	12130.57
3215	2023-10-30	14235.38
3216	2021-10-09	15459.27
3217	2023-09-07	16189.35
3218	2023-11-01	13978.46
3219	2023-08-24	12706.94
3220	2024-02-15	16922.07
3221	2021-05-01	10449.16
3222	2024-03-14	10398.54
3223	2024-06-29	12010.92
3224	2021-05-17	14052.65
3225	2022-09-16	9294.43
3226	2020-11-09	7940.09
3227	2021-06-28	14153.85
3228	2022-10-02	17523.69
3229	2023-01-27	10281.25
3230	2022-01-14	13075.73
3231	2023-05-14	14248.52
3232	2020-09-19	8172.49
3233	2022-05-13	7580.77
3234	2021-04-19	7864.69
3235	2023-02-13	17822.62
3236	2020-07-22	15986.80
3237	2021-03-07	13533.26
3238	2023-11-29	16595.00
3239	2020-06-07	8613.67
3240	2024-02-29	9365.35
3241	2022-04-28	9812.77
3242	2023-06-30	9121.22
3243	2023-06-07	8622.85
3244	2022-02-27	15873.77
3245	2022-11-13	10386.96
3246	2022-08-21	10524.12
3247	2023-06-23	17405.17
3248	2020-08-28	9285.50
3249	2021-03-28	16164.28
3250	2020-03-19	11522.49
3251	2024-10-21	9734.48
3252	2023-12-13	8116.56
3253	2024-04-23	13454.74
3254	2022-06-03	14529.15
3255	2021-06-01	16379.05
3256	2024-06-07	8616.44
3257	2022-08-27	6975.75
3258	2021-01-13	12918.54
3259	2023-11-19	17415.19
3260	2023-02-11	9360.66
3261	2023-05-07	11742.05
3262	2022-12-18	12098.22
3263	2020-06-13	7101.99
3264	2024-03-16	15826.23
3265	2022-03-29	8782.95
3266	2024-09-23	8323.66
3267	2023-09-30	13899.23
3268	2023-02-16	9514.69
3269	2024-02-14	9130.92
3270	2021-02-07	9732.61
3271	2022-06-07	14784.21
3272	2020-04-25	7280.33
3273	2021-07-23	10684.53
3274	2020-06-08	12590.61
3275	2022-07-17	15937.67
3276	2022-02-11	12032.77
3277	2022-02-21	17364.54
3278	2022-02-19	13710.16
3279	2021-03-04	16375.53
3280	2022-12-25	17104.85
3281	2021-11-06	7129.05
3282	2020-03-15	14620.39
3283	2024-03-12	11096.62
3284	2020-12-08	14792.10
3285	2023-08-15	15147.35
3286	2023-04-18	11920.15
3287	2024-01-11	8984.05
3288	2023-11-07	9626.12
3289	2024-06-12	10354.65
3290	2023-02-02	9337.70
3291	2022-05-23	8225.03
3292	2021-11-02	9018.38
3293	2022-02-02	13859.22
3294	2022-06-30	15137.32
3295	2024-05-14	8285.72
3296	2020-12-14	11315.86
3297	2024-03-12	8275.81
3298	2023-05-29	13665.77
3299	2023-09-03	11314.75
3300	2023-05-02	10484.55
3301	2020-09-08	12100.19
3302	2021-12-19	14435.62
3303	2020-12-24	10040.44
3304	2020-12-03	11496.63
3305	2024-03-13	6933.32
3306	2021-01-14	17722.72
3307	2023-10-13	8294.63
3308	2022-04-27	13748.29
3309	2023-09-07	16512.78
3310	2022-05-27	9630.29
3311	2023-07-24	11554.86
3312	2021-06-29	17300.79
3313	2021-10-28	13944.21
3314	2024-11-16	12879.77
3315	2021-10-04	14597.15
3316	2021-03-01	13048.44
3317	2024-02-09	14916.78
3318	2024-06-20	12937.63
3319	2022-08-18	6880.40
3320	2024-01-21	8809.39
3321	2024-11-16	12308.28
3322	2022-06-05	7831.62
3323	2022-07-11	17973.25
3324	2023-04-06	14920.00
3325	2023-04-16	10058.84
3326	2020-05-09	13474.50
3327	2021-10-26	13725.91
3328	2022-10-19	12107.54
3329	2023-02-22	10901.63
3330	2023-08-04	14864.14
3331	2021-04-03	7610.96
3332	2023-08-25	15186.16
3333	2024-01-02	16682.71
3334	2023-03-17	10353.87
3335	2024-02-21	11056.69
3336	2020-08-07	12514.89
3337	2022-01-11	7039.04
3338	2022-10-04	9150.29
3339	2022-09-22	9938.45
3340	2024-05-28	16654.12
3341	2020-10-08	17401.95
3342	2020-12-08	14914.64
3343	2020-12-22	13063.28
3344	2021-08-07	16344.99
3345	2022-09-27	16797.21
3346	2020-03-20	10451.82
3347	2024-04-26	7671.04
3348	2022-04-26	7321.14
3349	2022-09-17	6906.04
3350	2020-09-07	12124.52
3351	2023-04-07	12182.92
3352	2022-12-25	16788.80
3353	2023-07-20	9382.25
3354	2022-06-08	17720.42
3355	2024-10-12	10866.32
3356	2021-01-10	10224.50
3357	2022-06-07	15591.51
3358	2023-12-06	14810.80
3359	2023-12-28	7483.34
3360	2020-02-29	12490.99
3361	2021-03-31	7186.33
3362	2024-09-05	9168.68
3363	2020-05-24	14312.71
3364	2020-04-09	9457.00
3365	2022-05-28	12655.37
3366	2024-01-25	15799.16
3367	2021-10-30	6835.20
3368	2021-04-26	15154.42
3369	2021-01-12	7714.87
3370	2022-02-28	17716.94
3371	2024-04-25	16907.87
3372	2021-10-30	17289.34
3373	2024-01-31	9898.49
3374	2021-10-13	8345.85
3375	2020-10-25	7401.25
3376	2024-03-29	12050.17
3377	2024-09-08	9438.76
3378	2023-07-04	16066.12
3379	2023-09-04	14000.15
3380	2022-09-20	9304.72
3381	2022-09-27	8570.70
3382	2021-09-23	7967.29
3383	2020-01-09	7793.86
3384	2021-08-08	11020.83
3385	2021-09-03	11526.32
3386	2020-02-08	8322.41
3387	2021-02-10	17199.70
3388	2020-11-20	12702.05
3389	2022-09-03	8035.11
3390	2020-08-13	11464.11
3391	2020-12-04	17762.06
3392	2024-09-11	8473.52
3393	2020-03-07	12312.58
3394	2022-06-13	13576.82
3395	2022-10-31	13981.04
3396	2021-07-13	14667.19
3397	2020-11-21	13863.23
3398	2020-04-03	16019.07
3399	2022-11-15	14716.38
3400	2020-01-05	17388.25
3401	2024-11-05	10504.18
3402	2024-04-15	16291.95
3403	2022-04-07	14848.59
3404	2023-08-20	8766.24
3405	2020-12-21	7015.72
3406	2021-03-03	17153.79
3407	2024-09-07	12554.54
3408	2020-08-27	9978.10
3409	2023-02-23	15678.70
3410	2023-06-05	17530.31
3411	2024-09-15	13064.40
3412	2022-07-25	9566.62
3413	2023-06-16	7732.69
3414	2024-05-27	8213.32
3415	2024-10-12	17280.37
3416	2022-05-13	15458.44
3417	2020-04-20	11784.69
3418	2024-08-10	7353.15
3419	2024-04-21	17044.47
3420	2022-07-28	15058.33
3421	2023-09-30	17280.91
3422	2021-11-01	9428.26
3423	2024-10-22	8413.50
3424	2021-08-02	9797.79
3425	2022-10-23	7323.44
3426	2021-08-12	10867.83
3427	2020-06-24	16760.65
3428	2024-12-05	6912.78
3429	2020-06-22	10216.80
3430	2023-07-03	11645.10
3431	2024-09-25	7592.48
3432	2022-06-30	17041.17
3433	2020-08-18	11959.69
3434	2020-03-11	10692.10
3435	2023-02-26	16637.92
3436	2021-08-22	10762.09
3437	2024-05-09	8603.32
3438	2020-03-17	16018.79
3439	2022-05-17	15925.68
3440	2022-02-14	9720.21
3441	2020-11-25	6729.52
3442	2024-07-27	13987.79
3443	2023-07-23	9947.68
3444	2023-09-08	13632.90
3445	2024-05-26	17034.43
3446	2023-05-03	8817.22
3447	2022-02-26	13417.00
3448	2023-09-07	16920.70
3449	2020-07-18	16151.59
3450	2021-09-21	17653.24
3451	2021-11-17	10404.52
3452	2023-07-07	8335.24
3453	2023-08-22	11868.17
3454	2024-10-26	15023.60
3455	2023-01-16	16637.76
3456	2020-09-17	10784.43
3457	2024-09-20	13965.44
3458	2024-10-28	6672.05
3459	2020-12-10	12062.46
3460	2024-05-12	16595.78
3461	2020-10-05	15816.44
3462	2024-11-14	10311.33
3463	2024-03-11	16894.15
3464	2024-04-23	17286.73
3465	2020-01-22	16410.07
3466	2020-05-21	13062.06
3467	2023-10-23	16254.83
3468	2021-06-25	9959.45
3469	2020-10-16	16426.61
3470	2024-11-29	16147.65
3471	2020-03-26	15814.65
3472	2022-06-12	10291.48
3473	2024-08-04	10433.57
3474	2020-04-30	9980.11
3475	2020-11-06	16890.58
3476	2022-08-31	6638.94
3477	2023-10-23	6945.95
3478	2022-04-18	7195.08
3479	2024-05-13	16208.27
3480	2022-07-27	8200.63
3481	2023-02-20	12650.46
3482	2024-08-05	16662.51
3483	2020-08-31	6862.77
3484	2022-06-07	15106.82
3485	2022-10-30	10904.56
3486	2023-01-09	11678.62
3487	2024-08-09	8243.78
3488	2020-10-22	12596.36
3489	2022-08-03	16712.28
3490	2022-03-06	13313.46
3491	2021-05-25	14897.45
3492	2024-12-01	17196.68
3493	2024-08-09	18089.06
3494	2020-06-08	6845.99
3495	2024-01-04	14363.18
3496	2020-03-28	17097.23
3497	2020-08-03	12149.68
3498	2021-08-09	9205.78
3499	2024-04-11	15790.32
3500	2021-10-20	15725.87
3501	2020-08-16	16538.97
3502	2020-10-11	9871.18
3503	2024-04-04	7897.72
3504	2021-11-08	6648.35
3505	2021-08-04	9055.84
3506	2022-09-02	12178.26
3507	2024-12-05	11584.67
3508	2020-04-05	6910.83
3509	2024-08-09	13582.49
3510	2021-04-16	14175.17
3511	2022-12-30	10155.51
3512	2023-11-21	12203.98
3513	2024-11-05	13974.82
3514	2020-01-04	10979.08
3515	2021-09-20	14406.30
3516	2020-06-16	18002.59
3517	2024-03-06	12460.82
3518	2021-08-29	17703.17
3519	2023-07-26	17399.22
3520	2022-04-03	9125.68
3521	2021-02-28	7757.04
3522	2023-01-21	6830.52
3523	2021-07-16	15176.57
3524	2020-11-04	17249.19
3525	2021-05-07	9508.46
3526	2020-02-28	12078.45
3527	2024-03-06	7294.16
3528	2020-11-12	13424.47
3529	2024-06-18	8741.01
3530	2022-12-25	10296.01
3531	2020-02-23	10675.54
3532	2022-10-16	16412.38
3533	2023-12-24	11930.58
3534	2020-11-02	16922.18
3535	2024-10-12	16516.76
3536	2020-04-05	14697.89
3537	2020-09-08	12368.62
3538	2021-06-12	15521.76
3539	2024-04-15	9612.09
3540	2023-11-10	11891.77
3541	2022-04-14	14963.72
3542	2021-10-25	16188.24
3543	2021-11-10	11577.76
3544	2024-05-06	9121.71
3545	2022-09-23	14070.43
3546	2021-12-13	16457.96
3547	2021-09-25	15152.83
3548	2021-08-23	7648.84
3549	2020-08-12	9750.12
3550	2020-03-17	12237.71
3551	2023-03-17	15599.29
3552	2024-07-05	9210.05
3553	2020-09-06	11722.86
3554	2022-07-19	10751.67
3555	2021-09-23	7243.65
3556	2021-01-01	15491.82
3557	2023-03-25	11239.27
3558	2021-07-19	9043.47
3559	2021-10-16	13105.51
3560	2021-03-20	7398.46
3561	2023-08-30	17991.61
3562	2023-10-05	15945.97
3563	2021-07-02	17811.68
3564	2023-07-04	14219.42
3565	2022-05-17	11390.03
3566	2024-01-19	10395.62
3567	2022-01-03	13806.15
3568	2023-04-30	16863.32
3569	2022-08-31	13962.78
3570	2023-05-22	8441.88
3571	2023-04-12	15164.76
3572	2023-05-23	9586.68
3573	2021-07-17	15970.74
3574	2020-07-31	7045.81
3575	2020-09-24	13508.93
3576	2022-10-04	9863.73
3577	2020-08-21	17639.18
3578	2020-02-16	13528.60
3579	2020-04-12	17111.35
3580	2022-04-13	11827.16
3581	2024-09-04	9794.83
3582	2020-04-30	6743.53
3583	2022-01-23	11155.96
3584	2020-07-09	9881.46
3585	2022-07-13	7616.83
3586	2023-06-14	13383.13
3587	2024-10-22	16555.24
3588	2023-06-17	9960.95
3589	2021-09-20	8193.62
3590	2023-09-10	14010.83
3591	2021-08-12	12840.95
3592	2022-11-11	11670.07
3593	2021-11-26	17083.04
3594	2021-08-10	12259.31
3595	2020-09-19	11926.85
3596	2023-10-07	9430.59
3597	2021-05-04	10019.83
3598	2023-12-29	7381.65
3599	2021-03-05	9115.47
3600	2023-09-20	14293.47
3601	2024-02-05	16801.98
3602	2024-02-25	8129.03
3603	2023-03-25	12560.97
3604	2024-07-18	11191.99
3605	2021-02-12	16048.72
3606	2020-08-20	9782.98
3607	2023-10-30	15855.99
3608	2023-06-16	14644.82
3609	2022-01-07	16888.31
3610	2021-01-09	9486.71
3611	2022-02-16	17582.82
3612	2024-05-02	6844.78
3613	2022-02-07	8789.24
3614	2023-08-14	11234.38
3615	2023-06-09	13836.13
3616	2020-07-20	9061.45
3617	2020-04-20	15909.98
3618	2023-09-04	15877.68
3619	2021-12-22	15620.14
3621	2023-04-11	17612.45
3622	2022-08-13	16996.33
3623	2023-12-27	13837.25
3624	2022-12-26	8547.32
3625	2022-08-23	16287.27
3626	2024-09-07	7647.87
3627	2022-09-28	16348.44
3628	2020-07-02	16233.05
3629	2023-10-08	17288.47
3630	2022-09-14	12884.39
3631	2021-07-19	16379.90
3632	2021-04-20	9122.13
3633	2020-07-04	12576.95
3634	2020-05-21	14175.61
3635	2021-02-08	16355.60
3636	2021-08-16	16029.98
3637	2022-10-12	8320.64
3638	2023-02-17	15738.29
3639	2023-12-20	17094.54
3640	2020-07-01	7626.16
3641	2022-01-12	7352.80
3642	2021-07-18	16851.33
3643	2024-10-06	10712.33
3644	2020-05-24	14563.78
3645	2023-04-28	11637.84
3646	2023-10-01	17086.30
3647	2022-09-27	10008.67
3648	2023-12-30	14106.08
3649	2021-07-31	7223.58
3650	2021-05-06	14168.12
3651	2021-03-12	9872.80
3652	2023-01-11	13491.46
3653	2021-04-17	14381.04
3654	2023-11-22	17943.89
3655	2021-05-22	8651.22
3656	2022-06-02	15875.44
3657	2020-02-15	7438.92
3658	2020-12-11	9227.14
3659	2020-05-20	16096.76
3660	2022-07-15	11027.92
3661	2024-09-27	16507.97
3662	2020-03-22	9940.77
3663	2021-10-20	16077.80
3664	2021-05-24	11568.20
3665	2024-06-05	14940.77
3666	2021-07-29	14488.45
3667	2024-05-01	8480.48
3668	2024-07-14	8701.28
3669	2024-01-17	9278.82
3670	2023-12-02	13123.15
3671	2022-08-15	7962.05
3672	2024-01-07	6745.99
3673	2023-06-11	12274.09
3674	2021-12-20	15936.68
3675	2022-06-16	13102.03
3676	2020-11-14	9356.12
3677	2021-01-08	11261.79
3678	2024-04-12	15606.38
3679	2020-08-27	8926.32
3680	2024-01-28	15629.80
3681	2022-04-24	16905.11
3682	2022-11-07	11630.44
3683	2021-10-01	15445.24
3684	2023-07-06	13222.27
3685	2020-05-06	12247.04
3686	2023-08-08	14333.51
3687	2022-02-09	8490.73
3688	2020-09-27	9861.12
3689	2022-01-04	14399.56
3690	2023-04-10	15304.01
3691	2022-03-20	15725.83
3692	2021-02-07	6892.42
3693	2021-08-25	10512.23
3694	2023-08-30	9246.69
3695	2021-05-06	13137.71
3696	2024-12-01	7596.67
3697	2020-02-07	11439.14
3698	2024-08-29	14253.72
3699	2022-01-12	15399.14
3700	2024-04-16	8441.43
3701	2024-05-15	13993.38
3702	2022-04-22	9389.43
3703	2023-01-29	11564.27
3704	2020-11-24	10559.92
3705	2020-12-22	9340.89
3706	2024-06-29	11284.56
3707	2023-03-27	9538.27
3708	2020-04-13	9964.24
3709	2020-11-14	16474.31
3710	2023-08-17	17922.43
3711	2023-12-12	11109.73
3712	2024-10-17	11722.13
3713	2021-12-07	17000.83
3714	2024-02-02	13286.13
3715	2021-08-26	10797.32
3716	2023-06-19	13923.43
3717	2020-07-29	16940.27
3718	2024-05-08	10962.98
3719	2023-02-13	13825.88
3720	2024-05-11	8373.45
3721	2020-02-12	13095.64
3722	2023-02-28	12580.82
3723	2020-05-02	7680.85
3724	2020-05-09	12725.85
3725	2020-04-27	7082.29
3726	2021-07-29	9535.32
3727	2020-11-18	17270.41
3728	2020-09-04	17418.11
3729	2021-05-07	11230.83
3730	2020-10-28	10590.81
3731	2020-08-04	13164.77
3732	2024-03-07	7778.41
3733	2020-10-05	8929.44
3734	2024-01-01	9244.99
3735	2023-05-08	14097.56
3736	2021-09-20	16243.21
3737	2020-01-25	10292.53
3738	2022-08-31	7866.66
3739	2022-01-30	10662.26
3740	2021-07-23	13312.43
3741	2021-08-03	12005.47
3742	2024-03-04	17821.39
3743	2020-08-21	13679.54
3744	2023-03-05	11052.74
3745	2021-03-10	17184.62
3746	2020-12-04	13678.38
3747	2020-11-14	7417.98
3748	2022-12-25	13133.39
3749	2024-01-22	17070.22
3750	2023-06-26	10688.79
3751	2020-04-28	9907.12
3752	2020-08-06	14328.62
3753	2024-02-26	7926.75
3754	2023-04-13	17604.08
3755	2024-02-14	15394.05
3756	2021-12-09	8797.25
3757	2020-04-01	16500.39
3758	2022-03-22	7491.73
3759	2020-01-23	10092.18
3760	2024-10-30	14070.15
3761	2021-07-23	10244.82
3762	2021-08-08	12662.77
3763	2020-03-22	6672.50
3764	2024-09-04	15192.51
3765	2020-02-19	16690.10
3766	2023-07-14	12876.51
3767	2024-09-13	9228.96
3768	2023-07-20	14508.81
3769	2024-09-24	9446.07
3770	2024-02-02	7640.24
3771	2023-08-20	15736.85
3772	2020-06-14	10124.66
3773	2020-02-07	14156.61
3774	2020-11-05	17682.52
3775	2023-10-27	12633.36
3776	2024-06-04	13753.60
3777	2022-04-13	17740.77
3778	2021-01-29	10358.09
3779	2023-09-12	14032.36
3780	2020-07-09	10806.26
3781	2024-05-22	17534.00
3782	2023-03-23	14735.31
3783	2023-07-16	7515.40
3784	2023-11-12	15141.22
3785	2022-08-29	15859.70
3786	2020-06-20	11775.13
3787	2020-06-30	14856.10
3788	2020-10-14	8425.09
3789	2021-03-06	14504.17
3790	2022-04-28	7077.20
3791	2022-07-09	15063.90
3792	2024-04-04	9737.94
3793	2021-02-27	16355.24
3794	2024-06-15	15243.29
3795	2023-03-15	9142.75
3796	2023-02-01	9872.92
3797	2024-10-04	11781.39
3798	2021-07-15	17664.62
3799	2022-06-13	15003.37
3800	2024-10-19	17060.04
3801	2024-09-11	11696.56
3802	2024-04-05	14385.71
3803	2023-10-06	15164.83
3804	2023-08-10	11993.04
3805	2023-06-14	9679.97
3806	2021-05-22	9094.38
3807	2021-07-17	17975.86
3808	2020-08-20	17286.84
3809	2024-07-15	10595.74
3810	2022-01-26	9848.35
3811	2020-10-23	14640.14
3812	2024-01-03	12681.36
3813	2021-12-27	12114.92
3814	2020-07-27	7730.79
3815	2021-04-12	7898.04
3816	2022-12-20	8095.46
3817	2023-11-06	10032.07
3818	2024-05-06	9361.28
3819	2024-10-11	18025.44
3820	2024-04-08	12830.74
3821	2024-06-03	11719.61
3822	2021-01-07	13569.05
3823	2022-05-09	10110.09
3824	2023-09-24	10612.00
3825	2022-04-03	16351.84
3826	2021-01-22	9990.75
3827	2020-03-30	13226.41
3828	2021-12-20	15376.42
3829	2020-05-09	7225.01
3830	2023-11-15	11213.48
3831	2021-01-16	14935.61
3832	2022-02-10	17772.05
3833	2021-01-18	9555.19
3834	2023-04-02	12309.62
3835	2024-12-04	12244.78
3836	2021-07-11	11577.33
3837	2020-10-26	10561.08
3838	2020-06-07	14508.55
3839	2020-10-21	15472.61
3840	2022-06-04	11877.85
3841	2023-10-08	14121.96
3842	2024-01-08	9938.18
3843	2024-07-23	16765.62
3844	2020-04-12	14940.94
3845	2021-03-17	10366.33
3846	2022-05-26	10929.85
3847	2023-03-29	15238.16
3848	2020-06-07	12642.06
3849	2024-05-16	11622.89
3850	2020-12-18	15867.41
3851	2021-06-24	8621.87
3852	2020-02-21	14583.14
3853	2020-02-17	15241.58
3854	2024-07-03	16451.99
3855	2024-05-18	7689.05
3856	2022-04-09	11328.00
3857	2024-10-06	11554.23
3858	2024-07-20	17863.38
3859	2024-02-22	14407.91
3860	2023-10-12	12675.93
3861	2024-03-24	12958.31
3862	2022-11-29	12755.80
3863	2022-08-08	13423.49
3864	2021-07-11	15532.61
3865	2020-07-14	11641.98
3866	2021-05-11	9557.79
3867	2020-11-17	13624.66
3868	2020-06-18	10576.75
3869	2024-10-14	11381.13
3870	2021-07-02	14723.22
3871	2020-04-29	13799.92
3872	2022-05-27	13849.99
3873	2024-10-20	10509.60
3874	2020-04-05	11247.94
3875	2020-04-13	12115.81
3876	2023-12-31	17726.25
3877	2021-12-09	18057.10
3878	2022-05-25	13262.91
3879	2021-05-10	14041.98
3880	2022-03-15	9295.06
3881	2023-12-05	15710.48
3882	2023-02-28	16800.35
3883	2024-03-18	14866.63
3884	2020-01-22	11865.16
3885	2023-02-08	15337.77
3886	2024-01-17	9738.45
3887	2024-07-05	13268.38
3888	2021-12-29	11499.74
3889	2022-12-26	7801.21
3890	2022-02-28	8299.76
3891	2021-02-19	16358.78
3892	2023-12-16	10716.63
3893	2023-10-06	9860.12
3894	2022-11-02	15020.75
3895	2020-10-09	11973.63
3896	2022-05-25	8913.83
3897	2022-07-06	9862.36
3898	2022-05-16	11073.37
3899	2023-01-01	10924.75
3900	2022-07-16	9681.11
3901	2021-06-25	15626.97
3902	2020-05-01	12092.98
3903	2021-12-14	9968.07
3904	2020-12-11	13159.05
3905	2024-05-27	9158.29
3906	2022-04-13	11387.02
3907	2023-07-11	9541.54
3908	2023-04-25	8618.23
3909	2021-11-07	17529.19
3910	2024-04-16	13414.47
3911	2022-06-18	17414.19
3912	2021-11-09	16252.93
3913	2022-08-21	8373.87
3914	2023-10-28	14253.73
3915	2023-06-15	10930.35
3916	2024-01-15	10983.98
3917	2020-03-30	9173.72
3918	2023-06-12	17015.42
3919	2020-12-22	11645.45
3920	2020-12-13	10725.88
3921	2022-09-24	7423.70
3922	2022-03-22	8946.52
3923	2020-07-23	8414.94
3924	2024-08-23	13113.97
3925	2020-12-27	14103.34
3926	2020-03-30	15014.38
3927	2020-11-28	13462.23
3928	2022-08-17	16794.37
3929	2022-05-18	15851.62
3930	2021-02-27	16492.23
3931	2023-10-05	8179.53
3932	2022-11-08	12658.13
3933	2021-01-04	11015.42
3934	2021-08-10	10875.70
3935	2023-08-18	15816.12
3936	2020-03-15	14776.03
3937	2024-05-25	8338.49
3938	2023-03-26	8176.79
3939	2022-06-28	16578.57
3940	2021-04-13	13430.59
3941	2021-11-15	12566.38
3942	2022-12-08	17751.18
3943	2023-04-26	9125.78
3944	2020-08-18	13374.73
3945	2020-04-14	17081.89
3946	2023-07-09	13016.48
3947	2021-06-30	6884.63
3948	2023-03-02	14357.28
3949	2024-09-23	9224.97
3950	2021-01-29	16353.76
3951	2022-06-23	14354.80
3952	2023-12-24	16508.14
3953	2023-04-25	9077.81
3954	2021-12-13	6806.38
3955	2021-06-27	14579.58
3956	2022-07-03	7679.13
3957	2024-11-25	7621.21
3958	2021-04-25	6705.56
3959	2021-09-08	11130.58
3960	2022-04-18	7198.80
3961	2024-03-24	13664.00
3962	2023-08-28	12297.67
3963	2024-12-04	10417.65
3964	2023-03-19	15295.95
3965	2021-05-03	10432.93
3966	2021-08-13	10933.43
3967	2023-01-31	14608.88
3968	2020-12-28	11495.01
3969	2024-02-09	17555.57
3970	2024-07-05	10460.18
3971	2021-08-01	11489.39
3972	2023-10-15	9914.86
3973	2024-08-17	12769.75
3974	2021-08-01	10823.62
3975	2021-01-05	13930.53
3976	2022-10-20	10450.43
3977	2020-06-19	15712.43
3978	2021-04-05	16855.46
3979	2022-04-24	6833.77
3980	2023-07-17	15680.45
3981	2022-09-28	15408.20
3982	2021-04-22	17256.36
3983	2023-09-14	9980.70
3984	2023-02-10	7414.33
3985	2020-02-26	8738.14
3986	2022-10-04	14379.35
3987	2021-03-10	8692.11
3988	2023-11-01	8533.29
3989	2024-01-16	8307.75
3990	2022-04-23	9333.26
3991	2023-07-18	15061.80
3992	2022-06-14	8959.00
3993	2023-03-26	15398.10
3994	2022-11-03	10744.47
3995	2024-09-29	13006.83
3996	2020-05-09	13804.98
3997	2021-02-11	14609.07
3998	2022-05-16	11655.53
3999	2022-10-01	12664.02
4000	2023-03-18	8872.50
4001	2023-03-18	8813.30
4002	2024-12-03	7974.38
4003	2021-02-16	9442.32
4004	2021-06-11	17494.37
4005	2020-08-18	8326.66
4006	2023-06-01	7490.19
4007	2024-03-17	16680.81
4008	2023-05-08	12829.85
4009	2022-06-02	17870.86
4010	2020-04-24	17887.26
4011	2020-10-14	9380.03
4012	2020-08-03	13336.04
4013	2022-08-30	9092.10
4014	2023-11-07	10821.97
4015	2021-01-08	12059.41
4016	2020-07-20	6856.91
4017	2021-08-01	17908.64
4018	2024-09-05	8291.21
4019	2021-07-30	17164.66
4020	2021-04-17	9814.20
4021	2021-10-21	8454.93
4022	2020-12-03	9670.27
4023	2022-04-15	7279.02
4024	2022-03-27	8555.17
4025	2020-04-09	8934.48
4026	2021-05-13	12970.86
4027	2023-08-10	14909.53
4028	2020-11-01	9794.62
4029	2024-07-28	10577.06
4030	2020-01-15	16974.90
4031	2020-09-27	14392.60
4032	2020-04-03	16751.57
4033	2022-03-21	16343.82
4034	2021-12-06	10495.42
4035	2021-06-19	8322.89
4036	2020-05-19	10343.74
4037	2024-05-22	13035.87
4038	2024-05-20	15108.17
4039	2024-01-06	14131.65
4040	2022-04-04	7051.66
4041	2020-11-13	17282.75
4042	2022-08-09	15023.84
4043	2020-05-21	16554.24
4044	2021-04-12	16274.43
4045	2024-10-23	14286.75
4046	2021-10-22	13962.17
4047	2022-10-30	9489.14
4048	2021-07-30	7062.92
4049	2021-03-13	13356.95
4050	2024-09-03	15623.20
4051	2024-02-25	14243.36
4052	2021-08-16	8447.72
4053	2023-12-21	9402.67
4054	2023-02-17	12847.15
4055	2024-08-22	9923.93
4056	2023-08-06	12650.63
4057	2024-08-26	8597.66
4058	2021-03-16	7896.85
4059	2024-04-28	15508.69
4060	2022-04-15	11711.91
4061	2022-07-27	11986.25
4062	2021-02-18	7412.65
4063	2022-05-27	10272.39
4064	2022-01-19	14547.70
4065	2021-04-28	14648.98
4066	2022-09-27	10444.36
4067	2021-06-10	13050.32
4068	2023-04-27	9510.04
4069	2021-02-18	17371.25
4070	2022-01-23	15961.18
4071	2022-05-13	9412.22
4072	2024-06-02	7964.53
4073	2024-09-01	9799.10
4074	2020-02-02	11324.87
4075	2022-07-09	11575.85
4076	2022-02-05	7687.64
4077	2021-11-16	14277.75
4078	2021-01-13	9275.73
4079	2022-04-25	7765.94
4080	2022-04-01	9196.12
4081	2021-10-20	15822.74
4082	2023-09-20	7745.54
4083	2021-05-08	17019.68
4084	2022-09-10	12634.62
4085	2023-05-28	15826.73
4086	2020-05-22	8916.17
4087	2023-02-17	8945.37
4088	2021-10-08	13519.85
4089	2022-05-18	8447.17
4090	2022-11-21	14999.21
4091	2021-12-01	6880.82
4092	2022-10-13	17843.84
4093	2023-09-21	12921.57
4094	2024-10-15	15410.20
4095	2024-06-05	12868.90
4096	2024-10-24	13880.22
4097	2021-03-30	8530.20
4098	2023-11-06	14602.93
4099	2022-01-07	8089.51
4100	2022-02-20	18026.34
4101	2024-01-12	11677.79
4102	2023-04-13	17257.83
4103	2021-02-24	17035.89
4104	2024-09-14	7208.19
4105	2022-05-18	6809.23
4106	2021-04-25	16012.43
4107	2023-01-16	14363.55
4108	2020-12-26	16517.54
4109	2021-10-30	6716.81
4110	2022-03-10	7752.52
4111	2020-01-12	16230.89
4112	2023-08-22	13062.24
4113	2023-02-24	12288.85
4114	2022-01-26	17637.30
4115	2020-10-01	16745.89
4116	2023-10-09	16329.93
4117	2020-01-12	7461.92
4118	2021-09-06	8243.79
4119	2023-10-08	9732.13
4120	2023-02-03	10825.17
4121	2020-11-29	11871.90
4122	2024-09-01	7724.55
4123	2021-05-15	7690.94
4124	2021-02-23	12888.63
4125	2022-05-07	14200.62
4126	2023-09-15	9485.16
4127	2022-08-08	18008.72
4128	2023-05-03	13009.93
4129	2021-06-14	7975.48
4130	2023-09-24	17779.81
4131	2020-05-26	7175.16
4132	2022-09-09	16777.56
4133	2023-11-13	17598.44
4134	2021-08-18	10979.80
4135	2021-12-03	17220.48
4136	2021-11-26	9424.49
4137	2020-05-18	8083.64
4138	2021-06-24	11873.19
4139	2022-04-24	14261.27
4140	2021-02-16	14269.83
4141	2023-12-14	13513.62
4142	2022-07-13	7280.02
4143	2022-05-31	7908.47
4144	2022-07-05	13610.31
4145	2020-11-21	12936.67
4146	2023-11-09	13737.11
4147	2020-08-10	12197.79
4148	2022-12-04	16177.42
4149	2024-08-22	9945.96
4150	2022-12-02	16782.45
4151	2020-12-08	14204.33
4152	2020-09-29	9152.61
4153	2021-02-27	14299.31
4154	2023-05-01	14429.85
4155	2021-11-03	8852.83
4156	2020-07-15	17557.89
4157	2023-06-22	9118.02
4158	2021-09-10	10722.58
4159	2021-03-16	14643.27
4160	2024-04-24	17300.24
4161	2024-03-03	8675.70
4162	2022-06-21	7508.07
4163	2020-10-22	17695.64
4164	2023-03-22	7084.33
4165	2020-12-23	9327.85
4166	2024-06-30	13381.90
4167	2022-04-07	16626.71
4168	2021-08-01	12447.27
4169	2022-11-19	9327.43
4170	2021-09-11	9377.51
4171	2021-04-19	15731.57
4172	2021-08-16	14951.98
4173	2022-10-20	8668.58
4174	2024-07-22	9215.64
4175	2024-03-04	9247.80
4176	2022-12-21	15904.33
4177	2021-06-06	12394.65
4178	2021-04-04	17899.74
4179	2024-08-30	15365.17
4180	2021-03-07	15255.70
4181	2024-09-05	10441.76
4182	2021-09-16	8413.28
4183	2024-09-05	9666.72
4184	2023-12-13	13688.67
4185	2020-05-09	13582.05
4186	2022-12-31	13122.62
4187	2020-03-22	7734.96
4188	2023-03-19	13277.06
4189	2024-10-02	12270.53
4190	2024-10-03	10662.90
4191	2022-03-01	11070.91
4192	2024-11-19	8958.51
4193	2020-04-01	16329.10
4194	2021-03-06	15352.91
4195	2023-04-09	17451.36
4196	2021-04-13	7717.19
4197	2020-10-12	12566.57
4198	2022-02-10	13178.83
4199	2023-12-30	7475.24
4200	2023-09-23	8717.80
4201	2021-10-22	13529.27
4202	2020-01-24	11020.33
4203	2022-09-14	7364.42
4204	2023-12-20	11434.84
4205	2023-08-31	8871.44
4206	2024-01-21	8693.52
4207	2021-09-12	13304.83
4208	2022-11-05	9038.11
4209	2022-04-14	17832.33
4210	2024-04-05	14147.16
4211	2020-10-31	14744.68
4212	2021-10-20	9870.59
4213	2023-01-01	10059.33
4214	2021-03-29	10439.19
4215	2024-04-19	12057.51
4216	2023-05-05	8896.52
4217	2024-04-28	16100.35
4218	2020-10-28	9709.09
4219	2022-02-12	9264.17
4220	2024-01-19	8517.82
4221	2023-02-04	10544.29
4222	2023-06-05	12068.67
4223	2022-09-18	13167.09
4224	2020-07-23	7434.09
4225	2023-03-03	14925.04
4226	2020-12-26	10171.61
4227	2024-05-17	8626.73
4228	2023-03-27	8364.08
4229	2022-12-21	11682.24
4230	2023-01-15	13374.92
4231	2023-01-06	16471.55
4232	2022-04-23	17675.07
4233	2024-07-11	10987.11
4234	2021-07-06	7696.87
4235	2022-11-16	8348.77
4236	2022-01-05	9254.16
4237	2020-12-05	8019.30
4238	2021-07-29	14454.96
4239	2021-10-03	8921.82
4240	2021-12-27	11387.02
4241	2020-05-25	11194.44
4242	2020-12-22	11929.42
4243	2020-08-01	14671.07
4244	2024-10-27	9953.83
4245	2023-02-13	8839.92
4246	2024-02-11	9127.62
4247	2020-09-27	12294.65
4248	2021-12-31	6649.97
4249	2020-12-01	9305.20
4250	2022-07-01	7810.54
4251	2023-10-01	13813.69
4252	2020-08-07	7493.42
4253	2020-06-11	7900.01
4254	2020-03-31	8202.37
4255	2022-04-22	14326.64
4256	2023-10-12	16297.18
4257	2024-02-21	13240.98
4258	2023-02-23	16929.17
4259	2021-04-10	9307.71
4260	2023-03-15	12770.19
4261	2022-07-23	9850.93
4262	2021-01-27	16939.03
4263	2023-09-03	8168.34
4264	2022-01-28	15216.99
4265	2020-11-28	14137.14
4266	2020-09-06	10038.66
4267	2020-01-24	11551.33
4268	2020-12-11	17030.68
4269	2022-06-30	17788.18
4270	2022-04-24	14783.81
4271	2022-05-04	12239.55
4272	2023-04-07	8104.97
4273	2021-06-27	14741.38
4274	2024-06-05	11126.80
4275	2024-05-31	15664.63
4276	2024-03-27	17016.46
4277	2020-12-24	6869.18
4278	2024-12-01	12520.01
4279	2020-01-27	17694.91
4280	2023-07-11	17704.11
4281	2022-06-17	14252.09
4282	2020-09-23	7375.80
4283	2024-10-29	10857.16
4284	2021-04-21	7431.20
4285	2020-01-20	10277.71
4286	2023-12-31	12570.89
4287	2021-08-23	10510.80
4288	2022-05-29	9136.94
4289	2020-03-22	11296.92
4290	2023-10-15	9110.68
4291	2022-11-22	15917.62
4292	2021-12-17	7786.69
4293	2020-01-14	10923.64
4294	2020-01-25	13880.85
4295	2023-03-02	7050.12
4296	2020-06-30	16516.74
4297	2021-09-26	12084.40
4298	2023-06-04	16370.66
4299	2020-02-04	11080.31
4300	2021-02-15	10983.36
4301	2023-05-04	16517.49
4302	2024-09-14	14047.24
4303	2021-11-03	10654.82
4304	2021-05-30	13627.93
4305	2022-06-06	14453.33
4306	2022-07-17	15857.77
4307	2022-02-07	8210.28
4308	2022-11-30	15716.04
4309	2022-11-29	17862.86
4310	2021-01-15	17921.13
4311	2023-05-20	9475.27
4312	2022-03-07	12811.93
4313	2022-09-21	7442.12
4314	2024-07-17	14219.27
4315	2022-09-19	9548.35
4316	2023-02-04	16565.90
4317	2022-05-10	7872.88
4318	2022-12-03	11717.60
4319	2020-04-18	17754.99
4320	2024-06-27	12130.08
4321	2020-01-07	13703.19
4322	2020-04-03	8724.27
4323	2020-09-13	11922.22
4324	2022-04-13	15839.23
4325	2022-07-27	14438.08
4326	2024-02-04	13096.51
4327	2023-04-13	7804.18
4328	2021-05-04	15752.63
4329	2024-01-20	10001.01
4330	2021-02-06	13801.29
4331	2020-06-08	17033.91
4332	2022-07-25	12228.69
4333	2020-12-02	15757.71
4334	2024-08-10	8357.96
4335	2021-10-19	17109.64
4336	2020-09-07	18077.03
4337	2023-03-26	16389.06
4338	2023-10-22	11256.39
4339	2021-02-19	8983.45
4340	2023-11-07	16425.00
4341	2023-08-30	15043.61
4342	2020-03-12	8272.55
4343	2022-11-24	13761.67
4344	2024-01-11	7841.15
4345	2023-07-22	11954.76
4346	2020-09-06	13009.47
4347	2023-10-27	9901.40
4348	2023-09-10	12829.43
4349	2024-05-24	12628.77
4350	2024-07-14	17756.23
4351	2020-04-27	7516.44
4352	2023-05-05	12832.98
4353	2020-09-30	11355.19
4354	2023-01-16	12666.35
4355	2021-01-03	13033.98
4356	2023-09-04	6973.85
4357	2023-09-29	9566.04
4358	2021-03-05	13137.95
4359	2020-04-15	7970.79
4360	2023-05-10	16527.86
4361	2022-11-07	10480.62
4362	2023-04-24	9319.17
4363	2022-02-24	16494.35
4364	2020-11-23	13363.34
4365	2021-11-26	11177.66
4366	2022-09-24	7651.67
4367	2021-12-31	8494.31
4368	2023-07-21	9427.64
4369	2022-05-18	7577.15
4370	2021-08-18	13399.34
4371	2022-02-05	15837.98
4372	2024-10-03	7826.88
4373	2021-06-14	12260.90
4374	2024-09-01	10058.30
4375	2023-01-07	13447.40
4376	2021-04-09	11233.25
4377	2022-05-30	9755.51
4378	2020-04-03	8592.07
4379	2020-08-20	17530.65
4380	2020-07-31	6757.59
4381	2023-12-19	17221.19
4382	2020-12-04	17628.46
4383	2022-03-23	15359.08
4384	2020-08-24	11775.20
4385	2022-01-19	14481.40
4386	2022-12-05	13128.48
4387	2024-02-09	15251.85
4388	2020-12-11	11598.78
4389	2022-11-25	12810.46
4390	2021-04-24	11082.04
4391	2022-06-11	16258.52
4392	2022-10-22	12380.68
4393	2022-03-17	7336.88
4394	2021-08-02	8734.78
4395	2024-06-23	15453.29
4396	2024-03-09	16778.24
4397	2024-04-18	11952.07
4398	2020-06-27	15681.02
4399	2021-01-06	14426.07
4400	2024-02-05	12282.03
4401	2024-01-27	9550.77
4402	2021-09-17	11557.58
4403	2024-01-18	16602.44
4404	2021-11-07	12817.93
4405	2020-10-28	9454.09
4406	2024-05-03	9137.30
4407	2023-06-30	9890.99
4408	2024-05-16	9536.90
4409	2021-09-11	17662.26
4410	2023-09-24	17400.65
4411	2020-03-18	16411.14
4412	2021-06-26	12286.37
4413	2020-01-12	7791.39
4414	2021-09-25	10421.02
4415	2022-08-31	8936.82
4416	2024-10-24	15824.97
4417	2021-11-01	7066.42
4418	2024-10-22	9553.90
4419	2021-11-18	10529.53
4420	2020-08-16	7540.84
4421	2023-03-04	12593.21
4422	2021-10-10	8609.94
4423	2024-08-01	12235.15
4424	2024-11-08	11132.55
4425	2022-01-29	12854.24
4426	2023-09-13	6794.26
4427	2021-01-26	15594.90
4428	2021-03-12	11052.78
4429	2024-11-07	17337.21
4430	2022-05-30	13164.05
4431	2021-10-02	18022.63
4432	2023-01-11	17311.18
4433	2022-11-05	14298.74
4434	2024-05-10	16915.71
4435	2023-11-17	9614.01
4436	2023-09-20	11331.60
4437	2020-12-30	13423.55
4438	2022-10-13	17128.40
4439	2024-06-25	12887.34
4440	2020-09-22	15863.49
4441	2022-03-06	16591.45
4442	2022-09-12	14404.88
4443	2022-08-05	13831.50
4444	2022-04-16	16741.17
4445	2022-09-01	6943.51
4446	2021-09-09	8006.94
4447	2020-11-23	17398.02
4448	2022-12-16	14041.33
4449	2024-11-08	14522.65
4450	2021-04-28	13374.92
4451	2023-03-29	14643.79
4452	2022-12-05	14611.34
4453	2021-09-30	14478.08
4454	2022-03-21	7182.34
4455	2022-06-01	7282.29
4456	2023-02-13	10801.31
4457	2024-01-07	12122.74
4458	2022-01-06	11669.41
4459	2020-07-26	13153.24
4460	2021-08-09	15651.60
4461	2023-02-14	13913.68
4462	2021-05-05	16702.29
4463	2024-08-07	15509.45
4464	2021-03-03	14819.06
4465	2023-09-15	14094.29
4466	2022-11-27	14033.71
4467	2020-03-24	17433.01
4468	2023-10-17	13180.71
4469	2024-08-15	7957.04
4470	2021-08-30	7728.97
4471	2024-02-11	11080.68
4472	2021-09-14	11040.27
4473	2023-10-07	16062.11
4474	2021-08-27	12914.83
4475	2021-06-30	11985.88
4476	2021-03-13	10332.24
4477	2020-03-25	14318.33
4478	2024-08-05	11716.84
4479	2024-10-08	9009.31
4480	2023-07-15	9909.53
4481	2020-09-07	11225.56
4482	2023-01-09	14098.63
4483	2021-06-26	10257.67
4484	2024-03-21	8683.32
4485	2020-04-09	16952.92
4486	2021-09-08	15262.34
4487	2022-08-14	11704.23
4488	2021-06-14	16012.84
4489	2024-05-08	6646.95
4490	2023-09-15	13889.89
4491	2024-05-26	16467.35
4492	2023-06-29	9065.40
4493	2020-04-13	7461.00
4494	2021-12-30	7002.54
4495	2021-10-27	17706.44
4496	2022-05-19	14291.63
4497	2022-05-03	16708.43
4498	2022-08-17	12469.15
4499	2021-09-07	7759.10
4500	2020-11-19	8668.00
4501	2020-08-29	14989.52
4502	2024-10-10	8817.89
4503	2022-03-31	12243.16
4504	2022-05-19	15376.49
4505	2021-09-06	15086.00
4506	2023-10-05	9087.50
4507	2024-04-23	16092.79
4508	2023-02-08	17314.48
4509	2020-09-24	16784.47
4510	2024-02-26	11555.34
4511	2024-07-13	12566.71
4512	2022-02-11	15173.01
4513	2023-01-03	14518.82
4514	2023-01-12	8166.71
4515	2024-01-26	7869.94
4516	2022-05-19	9878.87
4517	2021-02-13	17059.01
4518	2020-10-13	16844.40
4519	2021-09-05	13878.99
4520	2020-01-05	12277.37
4521	2023-05-09	13874.40
4522	2021-01-27	11625.68
4523	2021-07-06	15813.93
4524	2022-10-20	10193.02
4525	2023-09-21	8793.75
4526	2021-02-24	12170.71
4527	2022-06-27	17290.98
4528	2021-02-07	11775.54
4529	2023-02-05	15700.05
4530	2024-08-06	10622.82
4531	2024-03-22	13213.02
4532	2024-07-28	10755.70
4533	2022-10-23	12429.90
4534	2022-12-31	17407.03
4535	2022-08-26	16688.62
4536	2023-05-21	17388.83
4537	2024-10-27	16640.44
4538	2024-04-15	10560.96
4539	2020-03-28	12493.44
4540	2020-05-29	17422.57
4541	2021-11-12	6748.69
4542	2024-01-29	10705.50
4543	2022-06-09	17229.81
4544	2021-05-24	9784.85
4545	2024-09-27	11715.91
4546	2020-01-03	9291.77
4547	2022-05-08	9082.82
4548	2021-03-17	16444.68
4549	2020-09-04	9506.63
4550	2023-09-13	12473.49
4551	2020-09-15	9267.45
4552	2021-11-27	8079.69
4553	2023-09-20	8352.43
4554	2023-07-11	17410.20
4555	2023-01-28	17437.07
4556	2024-05-15	17505.52
4557	2021-12-16	14225.12
4558	2021-04-30	16310.81
4559	2020-02-19	8456.40
4560	2020-12-10	8680.19
4561	2021-08-20	11457.92
4562	2024-11-22	12909.08
4563	2021-12-28	11361.64
4564	2021-07-22	7570.33
4565	2024-04-06	14741.99
4566	2021-08-19	16799.70
4567	2023-09-17	12223.81
4568	2020-02-19	10927.68
4569	2024-09-27	7381.47
4570	2023-04-27	16084.46
4571	2021-02-28	14496.13
4572	2023-07-28	11480.11
4573	2021-12-05	14471.02
4574	2022-05-09	16385.71
4575	2021-08-01	15208.69
4576	2024-02-24	11979.88
4577	2021-08-18	9709.80
4578	2024-08-04	14858.02
4579	2021-03-13	14530.40
4580	2024-08-31	12200.27
4581	2022-01-12	7279.83
4582	2022-09-03	13361.73
4583	2023-08-30	6916.02
4584	2024-07-25	12541.01
4585	2022-09-10	6997.04
4586	2021-02-18	8829.83
4587	2022-08-03	13033.16
4588	2024-11-01	12467.47
4589	2020-04-23	13622.38
4590	2022-05-03	10672.11
4591	2020-09-11	13647.76
4592	2021-11-24	13210.97
4593	2020-06-24	14394.01
4594	2021-02-20	13701.03
4595	2023-04-14	10893.21
4596	2020-05-01	14905.31
4597	2024-06-17	13857.83
4598	2022-09-24	9101.16
4599	2024-11-21	13476.27
4600	2020-08-21	13930.18
4601	2021-08-18	11136.57
4602	2020-04-01	15719.22
4603	2020-09-12	13126.25
4604	2023-04-28	6840.92
4605	2024-08-20	9217.55
4606	2022-11-18	9697.95
4607	2023-05-03	10373.77
4608	2021-02-02	7418.88
4609	2020-11-28	10861.61
4610	2020-09-05	14416.87
4611	2022-07-02	10935.09
4612	2020-06-23	11928.65
4613	2024-03-20	14687.91
4614	2021-05-17	9268.80
4615	2024-10-24	7856.02
4616	2023-04-26	17370.70
4617	2022-02-20	13080.90
4618	2021-05-28	6746.22
4619	2023-12-22	10835.11
4620	2024-05-11	15792.49
4621	2024-05-08	13559.46
4622	2020-09-18	8526.26
4623	2020-09-10	16815.46
4624	2021-09-02	13511.50
4625	2021-06-21	12651.66
4626	2020-04-10	7857.37
4627	2022-05-12	15613.32
4628	2024-12-04	7920.07
4629	2024-01-07	11736.99
4630	2024-09-22	16598.03
4631	2022-09-28	13150.18
4632	2021-08-24	15587.51
4633	2023-04-14	13938.51
4634	2022-06-10	6666.52
4635	2021-03-25	16687.72
4636	2021-06-30	14616.45
4637	2021-08-20	15843.50
4638	2022-12-09	9834.23
4639	2020-06-07	11793.48
4640	2024-02-07	13385.70
4641	2020-02-01	10421.99
4642	2022-12-20	16031.10
4643	2022-06-27	13566.77
4644	2022-10-01	12963.33
4645	2024-02-29	15187.63
4646	2021-10-06	13072.33
4647	2021-02-05	10014.63
4648	2022-02-08	17912.19
4649	2024-03-07	11988.12
4650	2021-08-15	17405.66
4651	2020-12-08	8778.49
4652	2024-03-28	12168.45
4653	2021-04-10	12323.46
4654	2022-08-12	15725.00
4655	2020-10-03	16309.94
4656	2021-03-10	14709.28
4657	2024-07-01	16636.79
4658	2023-10-10	17364.46
4659	2022-03-02	11246.72
4660	2023-02-22	12256.27
4661	2024-07-15	15709.26
4662	2022-05-22	13566.74
4663	2022-05-23	8115.43
4664	2024-09-08	17693.73
4665	2022-12-08	17376.38
4666	2022-01-26	11081.95
4667	2022-09-14	16091.30
4668	2022-11-16	14258.22
4669	2024-01-08	14637.62
4670	2023-02-03	8147.64
4671	2020-02-20	12022.12
4672	2022-07-31	7424.72
4673	2022-11-30	14199.91
4674	2024-11-08	15505.84
4675	2023-12-21	10002.96
4676	2020-02-14	12178.27
4677	2024-06-01	15609.76
4678	2024-05-16	7503.09
4679	2020-10-14	13873.32
4680	2020-03-20	7869.03
4681	2020-06-01	15970.54
4682	2023-02-27	7615.75
4683	2023-02-03	12828.67
4684	2023-02-28	14019.78
4685	2021-04-01	7204.33
4686	2024-11-16	8894.26
4687	2020-10-24	12197.31
4688	2022-01-21	15212.69
4689	2023-10-28	17293.58
4690	2022-08-07	18063.26
4691	2021-06-22	10437.32
4692	2024-09-26	7322.06
4693	2024-07-20	12407.69
4694	2021-01-03	8599.66
4695	2022-03-15	12815.39
4696	2023-09-07	12827.29
4697	2023-01-12	13064.94
4698	2023-08-06	12487.36
4699	2021-11-23	16494.10
4700	2023-04-27	12233.79
4701	2021-11-13	8524.89
4702	2024-06-15	14244.20
4703	2021-03-28	9944.34
4704	2021-01-18	11175.20
4705	2020-03-29	14991.33
4706	2022-08-17	8972.05
4707	2022-02-26	6732.02
4708	2022-05-24	11176.93
4709	2021-04-14	10828.11
4710	2020-08-19	11148.44
4711	2020-06-24	12230.66
4712	2024-10-27	15587.36
4713	2020-01-31	15057.44
4714	2022-03-25	10961.95
4715	2021-07-05	8033.15
4716	2023-08-19	10166.62
4717	2021-05-30	17607.38
4718	2022-03-01	16313.80
4719	2021-07-22	8101.10
4720	2024-09-20	10224.88
4721	2024-08-16	13153.72
4722	2021-09-05	10890.32
4723	2024-06-09	9444.92
4724	2024-08-08	9144.11
4725	2020-01-01	8123.10
4726	2023-03-09	16269.94
4727	2024-07-28	14180.18
4728	2024-06-18	9052.25
4729	2021-12-16	12569.57
4730	2022-07-02	12105.94
4731	2023-12-29	13258.87
4732	2023-06-20	6836.07
4733	2021-10-08	11826.68
4734	2021-03-26	11299.50
4735	2022-03-03	9062.04
4736	2024-05-11	13413.55
4737	2023-04-27	11736.83
4738	2021-04-28	7800.73
4739	2022-01-22	9617.07
4740	2024-01-08	12104.96
4741	2020-01-27	8842.86
4742	2024-08-24	13103.98
4743	2022-07-26	7801.21
4744	2023-04-20	13820.60
4745	2024-04-14	17634.56
4746	2024-06-07	14283.20
4747	2022-08-25	12610.37
4748	2023-08-15	14019.00
4749	2021-11-20	15887.86
4750	2024-01-30	11422.65
4751	2023-02-08	7455.63
4752	2020-10-31	11159.68
4753	2024-06-15	10489.12
4754	2022-07-25	6964.53
4755	2021-05-02	7404.10
4756	2022-01-20	9625.93
4757	2021-06-20	8202.13
4758	2020-08-04	11937.45
4759	2022-12-12	14237.32
4760	2021-12-26	7784.66
4761	2021-08-14	14136.24
4762	2024-06-02	7589.11
4763	2021-06-22	8790.30
4764	2024-06-11	17414.35
4765	2024-05-12	7546.75
4766	2021-01-29	11402.33
4767	2021-10-17	15106.34
4768	2022-07-18	12810.64
4769	2020-01-28	17030.14
4770	2024-03-23	16474.01
4771	2024-03-19	10395.88
4772	2024-05-31	6788.59
4773	2020-01-03	8912.97
4774	2024-11-29	12536.75
4775	2021-03-19	16068.18
4776	2022-06-16	12108.07
4777	2022-12-27	7249.61
4778	2021-08-08	15167.02
4779	2024-04-25	17009.56
4780	2020-05-25	15714.58
4781	2021-02-18	6763.30
4782	2020-09-07	11276.11
4783	2024-02-23	17663.27
4784	2024-02-03	13811.32
4785	2020-07-16	6980.68
4786	2021-01-27	12952.09
4787	2021-11-21	18032.31
4788	2020-02-08	17945.02
4789	2023-08-16	17381.06
4790	2021-09-03	14578.06
4791	2021-12-20	13436.50
4792	2022-10-21	18008.44
4793	2022-07-31	17467.21
4794	2020-11-01	6627.67
4795	2021-06-27	15234.10
4796	2020-08-03	10681.39
4797	2020-05-24	13755.14
4798	2024-10-30	14951.86
4799	2024-05-17	9412.79
4800	2020-06-05	15465.36
4801	2021-12-12	8363.82
4802	2020-05-11	7064.22
4803	2023-06-09	7939.86
4804	2024-11-23	14499.02
4805	2021-10-21	14409.37
4806	2022-10-13	13014.33
4807	2023-11-18	8272.00
4808	2023-07-15	12569.54
4809	2023-12-04	11995.46
4810	2022-03-04	6654.15
4811	2023-01-08	11451.13
4812	2020-01-18	17309.05
4813	2020-04-07	10998.61
4814	2021-11-05	15587.89
4815	2021-03-20	14453.14
4816	2022-09-14	16569.75
4817	2022-10-04	6686.78
4818	2022-08-06	10865.81
4819	2021-11-04	10826.30
4820	2021-12-19	11445.67
4821	2021-09-04	16563.36
4822	2024-01-08	13899.60
4823	2024-03-19	16537.45
4824	2022-05-17	8119.43
4825	2023-09-20	17905.30
4826	2024-10-08	11504.49
4827	2022-05-30	10774.03
4828	2022-12-29	10831.81
4829	2023-10-24	9014.94
4830	2020-06-17	13724.57
4831	2020-02-21	16793.98
4832	2023-10-12	16028.13
4833	2020-07-08	12624.44
4834	2022-05-05	9745.67
4835	2021-04-17	7153.27
4836	2023-03-25	8072.09
4837	2023-11-28	12959.21
4838	2021-02-03	10641.26
4839	2021-02-20	13705.01
4840	2024-01-23	11003.36
4841	2022-03-19	15098.99
4842	2023-02-20	17750.88
4843	2020-07-22	16620.73
4844	2023-10-14	13550.39
4845	2022-02-16	8175.11
4846	2020-03-02	14218.23
4847	2022-02-12	15352.82
4848	2021-04-05	10009.25
4849	2023-06-19	13304.06
4850	2020-02-13	16409.43
4851	2024-06-09	9673.95
4852	2024-04-07	17093.88
4853	2023-07-07	12160.00
4854	2024-08-10	12507.45
4855	2023-05-21	10228.76
4856	2022-12-22	17130.58
4857	2021-05-06	17044.66
4858	2024-04-24	13200.42
4859	2024-09-25	7876.49
4860	2022-05-27	10030.41
4861	2020-06-07	8453.35
4862	2020-01-07	16002.87
4863	2024-12-01	14544.33
4864	2024-06-30	15282.71
4865	2022-07-11	13259.41
4866	2020-06-12	9235.75
4867	2020-09-21	13426.84
4868	2020-01-31	7945.89
4869	2024-11-04	11935.84
4870	2022-10-24	16394.53
4871	2022-05-27	7467.47
4872	2020-02-17	7216.75
4873	2023-04-03	12966.20
4874	2021-01-29	8060.43
4875	2022-10-04	7579.57
4876	2020-11-20	14373.96
4877	2022-01-07	10178.02
4878	2022-01-03	17207.43
4879	2023-09-12	10976.10
4880	2021-04-23	11477.69
4881	2022-01-26	8553.33
4882	2023-02-17	9978.55
4883	2023-09-08	15161.38
4884	2022-11-21	11215.33
4885	2022-01-26	13332.16
4886	2023-03-17	13764.96
4887	2021-12-29	12376.22
4888	2021-05-20	8905.02
4889	2023-04-06	8290.85
4890	2024-07-09	7305.55
4891	2022-01-02	8651.15
4892	2021-08-30	15714.27
4893	2023-06-13	15364.30
4894	2020-08-31	10231.42
4895	2021-08-28	12720.30
4896	2022-05-24	11220.02
4897	2022-09-02	11921.52
4898	2024-11-18	14482.38
4899	2022-08-22	14864.41
4900	2022-04-02	14530.53
4901	2023-07-29	10033.50
4902	2021-12-20	9045.47
4903	2023-10-28	10755.87
4904	2021-07-05	7725.56
4905	2022-07-28	16535.85
4906	2022-10-20	13220.26
4907	2021-08-08	11171.01
4908	2021-03-29	10050.62
4909	2020-03-18	15919.48
4910	2024-06-28	15396.03
4911	2023-05-23	13717.37
4912	2022-07-30	11756.13
4913	2024-02-07	8411.79
4914	2023-11-23	10521.66
4915	2023-08-12	12781.36
4916	2024-11-07	18051.41
4917	2023-05-24	14594.62
4918	2021-11-13	15057.26
4919	2020-08-27	16674.54
4920	2021-12-31	6926.43
4921	2024-06-21	16767.50
4922	2022-10-15	17189.32
4923	2022-08-03	13957.08
4924	2023-09-09	10947.92
4925	2024-08-24	11486.90
4926	2021-05-04	14857.76
4927	2024-06-17	12975.35
4928	2021-03-15	15127.12
4929	2023-05-25	8162.62
4930	2023-10-02	11875.81
4931	2020-04-01	8734.53
4932	2022-07-09	17368.04
4933	2024-06-05	14767.45
4934	2021-09-27	10017.99
4935	2020-08-11	10587.46
4936	2023-07-08	13206.81
4937	2024-06-02	11515.77
4938	2023-12-26	17182.72
4939	2022-10-20	11052.30
4940	2020-08-01	14303.26
4941	2021-10-05	16014.47
4943	2022-10-09	17493.38
4944	2020-04-25	8524.53
4945	2023-04-06	9588.14
4946	2024-05-21	10461.82
4947	2020-06-30	6666.56
4948	2020-07-02	13795.00
4949	2022-07-26	10935.95
4950	2021-05-13	8307.92
4951	2021-09-28	11804.56
4952	2022-07-31	8573.59
4953	2020-10-05	10426.81
4954	2024-09-07	11957.19
4955	2024-08-03	18021.22
4956	2022-10-25	7718.69
4957	2021-08-29	14848.93
4958	2022-12-12	15904.46
4959	2023-01-23	10175.59
4960	2020-09-16	9248.31
4961	2024-03-12	13765.31
4962	2022-03-22	12895.91
4963	2022-07-23	8666.72
4964	2020-09-24	14045.60
4965	2022-04-10	14016.76
4966	2020-11-23	8311.14
4967	2021-12-10	17158.66
4968	2024-11-25	8624.81
4969	2022-12-09	9587.03
4970	2022-07-26	15254.88
4971	2021-12-03	12478.65
4972	2023-07-09	8622.18
4973	2022-01-28	13671.82
4974	2021-08-22	16832.44
4975	2024-10-03	8092.45
4976	2022-05-05	13837.87
4977	2023-11-06	11782.56
4978	2022-10-25	14461.86
4979	2020-11-01	11265.21
4980	2022-10-28	9898.10
4981	2021-11-11	9968.73
4982	2020-05-12	12220.52
4983	2021-03-26	14716.84
4984	2020-03-26	12363.31
4985	2020-02-12	10027.93
4986	2020-08-13	13779.79
4987	2022-07-15	8744.03
4988	2024-07-30	16927.01
4989	2020-03-22	15297.64
4990	2022-09-07	16424.18
4991	2024-10-03	9054.71
4992	2021-01-26	12290.95
4993	2021-07-12	16187.08
4994	2024-03-28	8988.91
4995	2020-07-23	14757.88
4996	2022-05-10	9411.20
4997	2020-09-17	12581.96
4998	2021-03-10	14565.76
4999	2024-08-08	16565.68
5000	2020-12-23	11594.09
5001	2022-06-21	6625.02
5002	2023-11-26	16269.71
5003	2022-04-04	7772.41
5004	2021-09-30	15014.49
5005	2020-06-04	11804.50
5006	2024-01-04	17073.40
5007	2021-12-18	7495.11
5008	2023-02-18	6963.94
5009	2023-01-24	17556.16
5010	2022-04-03	12638.02
5011	2022-05-18	15493.85
5012	2023-10-01	10614.57
5013	2021-03-17	18013.88
5014	2023-06-16	8830.69
5015	2023-12-05	7438.42
5016	2021-09-20	9723.66
5017	2023-06-10	7918.23
5018	2023-05-11	6661.73
5019	2020-05-26	9140.23
5020	2024-09-18	13871.27
5021	2020-03-11	8218.36
5022	2020-06-03	13180.36
5023	2020-11-04	9508.36
5024	2021-09-02	14784.12
5025	2021-06-26	9455.11
5026	2024-03-11	18044.49
5027	2020-12-15	12976.68
5028	2020-09-20	10506.16
5029	2021-10-22	7851.72
5030	2021-02-22	10371.05
5031	2021-07-21	17380.92
5032	2020-10-15	10870.12
5033	2022-09-25	8383.39
5034	2021-09-08	8856.21
5035	2021-02-28	9751.72
5036	2020-02-10	7758.60
5037	2020-04-21	17083.11
5038	2022-09-06	14497.34
5039	2020-12-24	14231.07
5040	2022-12-10	11320.36
5041	2024-08-13	17970.39
5042	2023-06-04	7367.34
5043	2020-09-14	10208.39
5044	2021-05-13	7821.77
5045	2024-01-10	14074.44
5046	2020-11-06	11949.87
5047	2021-06-07	11804.07
5048	2022-03-30	15948.98
5049	2024-01-18	16720.34
5050	2020-09-18	12522.38
5051	2024-02-15	8451.77
5052	2021-01-21	17100.09
5053	2022-06-02	9946.74
5054	2022-09-10	8442.03
5055	2020-04-15	11974.81
5056	2021-12-23	9721.55
5057	2021-02-03	12002.58
5058	2023-02-27	17824.65
5059	2020-09-15	10474.65
5060	2021-07-30	13548.22
5061	2024-05-15	10805.74
5062	2020-09-15	10281.02
5063	2022-09-07	14327.44
5064	2023-09-26	13903.40
5065	2024-03-07	16169.72
5066	2021-05-21	8077.28
5067	2024-03-23	15106.67
5068	2022-02-07	10500.61
5069	2022-02-12	17779.10
5070	2021-10-27	8033.13
5071	2023-08-08	15739.26
5072	2024-08-23	16225.73
5073	2020-02-20	15108.90
5074	2021-09-18	14476.42
5075	2021-01-01	6875.53
5076	2020-08-01	8707.22
5077	2021-07-29	17851.01
5078	2022-08-05	11712.85
5079	2020-01-04	17942.31
5080	2020-06-07	7473.08
5081	2021-08-31	8269.72
5082	2022-08-14	16744.34
5083	2020-02-29	11841.42
5084	2020-12-15	17883.06
5085	2020-04-28	15381.89
5086	2024-07-02	16774.33
5087	2022-09-21	17005.22
5088	2024-05-25	14003.50
5089	2020-06-29	12315.86
5090	2021-02-14	14881.79
5091	2023-04-05	8073.72
5092	2022-05-27	9990.98
5093	2022-11-13	14206.20
5094	2021-12-15	14527.74
5095	2023-10-15	9260.79
5096	2023-09-12	10188.26
5097	2020-01-01	12629.76
5098	2023-03-19	8710.52
5099	2020-09-06	13369.78
5100	2024-06-09	7715.87
5101	2020-02-14	13057.99
5102	2024-03-05	7563.81
5103	2024-09-20	7397.49
5104	2022-03-09	17045.27
5105	2021-06-07	13996.23
5106	2022-10-17	10331.36
5107	2021-01-07	8486.35
5108	2022-08-27	8978.79
5109	2022-05-27	14713.34
5110	2024-04-10	6600.89
5111	2021-03-15	7612.61
5112	2020-12-18	13182.70
5113	2020-01-15	11490.68
5114	2024-10-05	10728.00
5115	2024-08-04	15903.44
5116	2022-09-24	15969.47
5117	2022-03-28	11751.57
5118	2020-08-10	14073.71
5119	2024-11-23	11916.36
5120	2022-08-19	16318.18
5121	2020-10-02	16689.51
5122	2022-09-02	14635.83
5123	2021-01-03	10239.85
5124	2024-02-12	7521.36
5125	2023-09-17	14994.90
5126	2024-06-20	11345.56
5127	2020-12-10	11733.61
5128	2022-09-04	14589.74
5129	2022-02-05	9410.81
5130	2023-04-22	6909.62
5131	2021-01-02	12120.24
5132	2024-04-04	10495.99
5133	2022-07-03	6711.11
5134	2024-01-29	11873.07
5135	2024-04-17	18070.03
5136	2024-06-26	15185.56
5137	2021-10-27	8186.93
5138	2020-09-21	16374.12
5139	2024-11-20	7948.85
5140	2022-06-19	17020.06
5141	2020-02-29	14488.03
5142	2023-03-02	12942.99
5143	2021-02-02	6803.27
5144	2022-01-16	13298.84
5145	2022-07-04	14337.72
5146	2023-08-28	17196.94
5147	2023-11-28	7497.15
5148	2023-08-26	13518.40
5149	2022-02-28	16057.18
5150	2023-06-30	14017.46
5151	2024-03-24	16832.23
5152	2024-09-04	17870.75
5153	2020-10-17	10011.33
5154	2020-10-12	17716.11
5155	2023-08-24	8761.80
5156	2021-05-27	11120.18
5157	2020-05-03	12751.95
5158	2022-09-02	16927.28
5159	2022-01-12	16569.91
5160	2020-11-24	14095.00
5161	2021-05-15	17970.32
5162	2022-02-02	16667.33
5163	2024-03-05	16542.96
5164	2020-11-06	14871.90
5165	2023-12-17	16833.52
5166	2021-02-25	7177.66
5167	2023-07-26	8322.00
5168	2022-01-14	16742.36
5169	2024-01-15	10521.31
5170	2024-04-18	14084.45
5171	2020-07-15	9921.78
5172	2021-06-06	7772.75
5173	2021-03-21	16584.99
5174	2023-05-02	13923.51
5175	2023-05-01	7453.14
5176	2020-06-21	12554.41
5177	2022-11-29	10233.81
5178	2022-03-13	7025.71
5179	2021-01-27	17261.99
5180	2022-02-19	7717.19
5181	2020-07-13	16878.48
5182	2023-01-23	7148.24
5183	2023-07-13	17772.10
5184	2024-10-25	8786.34
5185	2024-03-21	7036.29
5186	2021-06-06	10908.15
5187	2022-06-26	8331.39
5188	2024-03-24	9003.33
5189	2023-02-05	8498.40
5190	2023-11-24	13395.31
5191	2023-02-23	13233.63
5192	2021-12-10	17453.41
5193	2020-12-13	7267.84
5194	2023-01-15	15628.56
5195	2020-09-14	7815.02
5196	2020-01-31	10588.60
5197	2022-06-05	11488.72
5198	2020-03-27	8998.59
5199	2022-10-05	7514.56
5200	2024-07-19	8634.38
5201	2020-12-13	15296.06
5202	2024-08-26	10048.64
5203	2021-09-09	12203.91
5204	2020-08-11	12683.40
5205	2021-04-18	13117.96
5206	2022-12-22	12163.25
5207	2021-01-07	14193.40
5208	2022-05-23	13559.57
5209	2020-05-01	7064.27
5210	2020-10-13	14186.11
5211	2020-06-17	13557.29
5212	2024-10-01	7050.46
5213	2021-10-18	11952.26
5214	2023-11-09	6955.15
5215	2022-06-26	8556.93
5216	2020-04-27	16317.45
5217	2021-10-22	17930.11
5218	2022-01-10	6757.37
5219	2023-10-20	11975.79
5220	2022-03-06	7731.19
5221	2020-08-23	10354.12
5222	2021-02-09	9513.72
5223	2022-02-02	11325.91
5224	2021-10-21	7712.61
5225	2023-03-19	17475.03
5226	2024-06-12	17028.04
5227	2023-12-16	14368.65
5228	2021-09-21	16738.05
5229	2023-09-12	16000.77
5230	2021-10-11	13395.75
5231	2021-02-28	16149.06
5232	2020-08-28	6900.94
5233	2020-06-13	10716.46
5234	2024-04-11	11927.57
5235	2021-10-12	8859.06
5236	2022-06-12	17838.60
5237	2021-06-12	12371.85
5238	2024-01-08	7442.59
5239	2020-01-22	17837.55
5240	2022-04-29	13258.16
5241	2024-02-12	10766.14
5242	2024-02-22	18073.55
5243	2024-04-21	10082.10
5244	2023-06-04	11570.73
5245	2024-08-21	10505.97
5246	2023-09-07	12847.45
5247	2020-12-27	14084.40
5248	2023-10-15	10562.52
5249	2020-10-11	17424.54
5250	2022-10-04	7662.27
5251	2022-07-21	11139.44
5252	2021-03-22	13178.11
5253	2023-01-02	15772.02
5254	2020-04-22	6698.58
5255	2022-12-31	9150.18
5256	2021-07-14	14273.70
5257	2020-10-05	17122.11
5258	2024-10-21	12030.95
5259	2022-03-12	15193.21
5260	2024-02-25	6740.97
5261	2024-06-19	16437.03
5262	2022-10-06	12613.65
5263	2021-01-23	8505.10
5264	2024-01-20	17239.79
5265	2021-06-03	11381.48
5266	2024-02-18	9578.87
5267	2024-05-24	15269.22
5268	2023-10-30	7502.40
5269	2020-09-21	7492.06
5270	2021-10-22	10607.22
5271	2024-03-05	17329.22
5272	2020-01-26	10568.96
5273	2023-09-18	16302.09
5274	2024-07-26	17657.72
5275	2021-07-04	11932.05
5276	2022-05-21	16027.80
5277	2020-09-02	15360.24
5278	2020-11-23	16790.15
5279	2024-05-24	14064.49
5280	2024-09-21	10449.67
5281	2024-06-21	9574.08
5282	2023-04-05	7269.08
5283	2022-07-31	8132.39
5284	2020-12-04	14855.03
5285	2022-01-18	8081.22
5286	2020-04-24	18056.26
5287	2023-08-21	14861.35
5288	2024-10-31	11756.05
5289	2022-03-23	15961.80
5290	2024-03-02	12117.39
5291	2020-10-07	14554.15
5292	2021-04-29	10896.56
5293	2020-03-13	9070.57
5294	2022-04-15	8760.99
5295	2023-08-02	7349.03
5296	2024-08-19	17509.56
5297	2022-07-03	7160.06
5298	2023-07-01	8314.50
5299	2021-08-25	7006.88
5300	2021-11-13	7390.22
5301	2023-06-10	16196.16
5302	2024-09-28	10154.91
5303	2023-04-19	17154.85
5304	2022-09-07	10078.40
5305	2024-03-03	10583.89
5306	2023-06-05	12350.52
5307	2020-12-06	12380.98
5308	2024-11-11	18048.61
5309	2024-09-21	10390.44
5310	2022-08-25	9388.80
5311	2020-03-15	8200.59
5312	2021-04-23	16742.70
5313	2021-05-23	18070.50
5314	2024-08-08	14078.62
5315	2022-02-24	14874.38
5316	2021-02-16	9529.18
5317	2021-07-19	8766.23
5318	2024-03-26	16922.58
5319	2023-03-15	12296.44
5320	2021-06-10	14264.03
5321	2021-02-08	7112.70
5322	2022-09-18	10138.54
5323	2020-12-12	15045.97
5324	2020-11-20	12776.43
5325	2024-06-04	14089.19
5326	2023-05-12	14640.90
5327	2024-03-14	18085.22
5328	2021-04-24	13083.29
5329	2022-06-29	11798.83
5330	2022-09-07	15859.86
5331	2024-07-04	16432.30
5332	2024-03-04	11013.81
5333	2020-09-15	11249.27
5334	2024-07-14	17307.60
5335	2022-08-06	16153.69
5336	2023-08-04	8731.69
5337	2022-04-27	7876.75
5338	2020-01-06	15210.59
5339	2023-05-30	13547.47
5340	2021-12-28	16578.88
5341	2021-03-02	7989.98
5342	2021-01-18	9549.65
5343	2023-03-18	12580.61
5344	2021-08-22	9074.18
5345	2021-05-24	10023.80
5346	2024-07-08	16777.29
5347	2021-06-19	8072.84
5348	2022-10-03	10968.09
5349	2021-05-11	11497.17
5350	2022-07-04	12250.25
5351	2021-09-16	7207.11
5352	2023-04-25	8022.08
5353	2023-10-23	10313.67
5354	2023-11-04	16138.10
5355	2021-06-10	14582.28
5356	2024-11-29	13968.37
5357	2024-07-06	12603.30
5358	2020-11-09	16975.17
5359	2022-11-09	10419.08
5360	2022-10-26	18003.42
5361	2021-03-22	13020.58
5362	2020-04-07	15754.53
5363	2020-07-13	13981.68
5364	2021-03-05	16015.39
5365	2021-11-08	7577.09
5366	2021-02-02	10968.69
5367	2021-11-06	15817.77
5368	2020-12-31	6918.87
5369	2020-02-24	9307.05
5370	2023-07-16	15350.07
5371	2021-11-12	12026.61
5372	2024-02-23	12189.84
5373	2021-09-08	6720.41
5374	2021-01-29	10761.81
5375	2022-08-06	17080.72
5376	2024-07-10	14226.55
5377	2022-03-21	7517.14
5378	2023-03-26	11565.18
5379	2024-01-06	12037.78
5380	2022-04-02	17717.27
5381	2023-04-27	16841.13
5382	2022-06-13	7372.83
5383	2020-03-10	17332.57
5384	2020-07-05	17533.35
5385	2021-03-22	10262.34
5386	2020-01-02	7514.47
5387	2023-11-24	10769.88
5388	2022-04-11	15455.72
5389	2020-08-14	8509.33
5390	2023-07-20	15131.54
5391	2021-10-31	12789.36
5392	2020-12-20	17311.34
5393	2022-09-02	11021.91
5394	2023-04-01	17291.03
5395	2020-11-15	10196.75
5396	2022-01-29	16956.57
5397	2023-08-19	10942.58
5398	2020-01-31	7849.53
5399	2024-09-19	7161.52
5400	2024-05-13	16471.05
5401	2023-01-01	12913.05
5402	2024-05-05	9455.95
5403	2022-04-27	15741.71
5404	2022-03-27	8653.73
5405	2023-12-04	10407.54
5406	2024-06-08	8677.98
5407	2024-06-03	11451.13
5408	2021-10-16	11452.02
5409	2020-01-23	8641.58
5410	2024-04-07	13196.76
5411	2021-07-18	8370.04
5412	2022-07-13	8254.46
5413	2020-05-10	16969.19
5414	2022-08-07	16692.25
5415	2020-06-21	10838.69
5416	2022-11-09	11365.60
5417	2023-10-13	7084.24
5418	2021-07-19	13964.98
5419	2024-10-23	17741.57
5420	2020-12-10	8383.29
5421	2020-10-16	8188.95
5422	2024-09-17	12117.92
5423	2024-10-20	7462.82
5424	2024-11-21	10469.57
5425	2020-04-17	8444.21
5426	2022-08-17	6938.22
5427	2023-05-21	9277.90
5428	2020-03-29	7889.48
5429	2023-08-25	9584.43
5430	2020-03-16	6954.25
5432	2024-03-04	7292.47
5433	2020-06-18	11726.30
5434	2020-05-30	7532.58
5435	2022-03-06	8694.37
5436	2022-07-10	10872.76
5437	2023-12-06	7975.27
5438	2022-04-03	12343.84
5439	2023-05-18	15440.52
5440	2024-02-18	8682.96
5441	2022-10-14	7451.86
5442	2021-03-08	10305.79
5443	2024-04-29	8497.08
5444	2020-07-05	15125.37
5445	2023-12-10	17029.27
5446	2022-11-26	12581.28
5447	2024-07-11	7976.46
5448	2022-12-02	13651.25
5449	2024-11-03	16938.05
5450	2023-04-18	7936.63
5451	2024-03-13	7249.51
5452	2024-08-17	12056.64
5453	2023-03-20	8186.00
5454	2021-01-24	15895.26
5455	2023-07-28	10430.74
5456	2021-10-29	7795.03
5457	2021-12-10	10652.58
5458	2023-01-09	15183.83
5459	2020-08-23	13678.59
5460	2022-11-10	7451.76
5461	2023-02-14	8996.21
5462	2021-08-27	8678.73
5463	2024-07-06	8612.29
5464	2023-11-15	12745.98
5465	2020-12-02	8572.00
5466	2020-12-17	17043.32
5467	2020-05-20	14548.97
5468	2021-10-06	12407.94
5469	2021-03-18	8979.64
5470	2024-06-10	12049.72
5471	2022-11-05	7411.47
5472	2024-05-15	12800.42
5473	2023-10-11	13004.86
5474	2021-05-06	14169.49
5475	2020-11-23	15639.10
5476	2021-05-07	16579.80
5477	2021-06-29	14746.92
5478	2021-12-07	12246.18
5479	2020-12-19	9129.36
5480	2024-06-28	14563.30
5481	2024-01-16	15868.36
5482	2023-09-25	13465.38
5483	2022-03-09	16534.81
5484	2020-03-09	11545.62
5485	2024-03-06	16643.04
5486	2022-12-25	8628.98
5487	2020-09-22	11599.40
5488	2020-06-12	7501.74
5489	2024-05-23	8738.22
5490	2022-12-21	8549.52
5491	2020-03-17	14009.32
5492	2022-12-13	13979.58
5493	2024-05-07	15095.00
5494	2023-01-09	14182.34
5495	2024-02-02	16371.08
5496	2020-01-23	10112.32
5497	2021-04-28	11272.39
5498	2023-06-15	10131.88
5499	2022-05-13	13344.30
5500	2024-04-23	13186.71
5501	2024-10-03	13568.13
5502	2024-02-01	17982.08
5503	2024-02-26	9698.79
5504	2020-12-17	13952.35
5505	2023-10-15	12578.00
5506	2021-12-02	9961.87
5507	2024-01-27	17718.51
5508	2023-08-10	7378.56
5509	2021-07-31	11318.91
5510	2023-09-24	15531.05
5511	2020-11-23	15315.35
5512	2023-09-07	8333.63
5513	2022-02-27	12962.02
5514	2021-12-31	10378.81
5515	2021-08-07	10840.67
5516	2020-05-15	17661.47
5517	2023-05-06	10476.31
5518	2021-03-30	12211.79
5519	2021-04-24	17824.16
5520	2021-12-12	9355.81
5521	2022-11-10	11050.52
5522	2020-09-12	8686.22
5523	2021-01-28	13589.72
5524	2020-05-03	12128.14
5525	2022-03-27	10086.76
5526	2020-10-19	15697.98
5527	2024-09-20	12659.16
5528	2023-10-27	13802.29
5529	2024-08-20	17299.93
5530	2020-08-13	15343.74
5531	2024-11-27	12539.70
5532	2022-01-09	11685.59
5533	2024-11-19	11522.63
5534	2021-08-14	10754.10
5535	2024-02-07	6643.96
5536	2024-07-14	7281.09
5537	2023-10-25	12506.23
5538	2022-07-25	16869.19
5539	2022-03-12	6800.37
5540	2021-12-16	17285.27
5541	2021-03-11	15245.46
5542	2024-08-01	8144.35
5543	2023-04-30	17349.01
5544	2020-07-07	7217.72
5545	2021-03-13	13288.44
5546	2023-02-25	7807.20
5547	2024-11-14	14721.27
5548	2024-06-23	14145.90
5549	2020-04-09	17383.15
5550	2023-12-03	7677.88
5551	2023-07-18	7910.78
5552	2020-04-23	15514.74
5553	2021-11-21	10213.10
5554	2022-07-23	8519.31
5555	2020-05-11	16352.61
5556	2020-11-21	13288.09
5557	2023-01-28	12275.24
5558	2021-08-08	16213.07
5559	2024-05-09	17545.79
5560	2020-06-06	13799.34
5561	2024-02-18	11152.13
5562	2023-11-20	10164.30
5563	2020-04-30	11398.71
5564	2021-03-08	10440.42
5565	2020-02-06	16880.09
5566	2023-07-24	16956.73
5567	2024-12-04	16538.52
5568	2023-08-18	11315.60
5569	2021-03-13	12344.42
5570	2022-01-27	13212.79
5571	2020-06-06	16649.64
5572	2023-07-11	16890.94
5573	2020-10-19	8627.89
5574	2024-10-08	17450.58
5575	2021-07-15	11046.77
5576	2020-07-01	14767.91
5577	2023-06-20	9417.58
5578	2021-07-26	10468.89
5579	2020-12-10	12003.27
5580	2022-02-26	7188.51
5581	2020-04-28	10521.28
5582	2024-02-04	11147.49
5583	2020-01-22	6659.17
5584	2022-02-08	12339.44
5585	2022-04-09	11067.24
5586	2020-02-06	17544.99
5587	2022-02-17	7444.71
5588	2020-05-30	8876.48
5589	2023-04-25	12232.22
5590	2023-07-18	9779.98
5591	2023-10-30	17227.40
5592	2020-11-04	8218.63
5593	2020-07-11	13794.91
5594	2020-06-19	12047.05
5595	2024-09-08	13894.79
5596	2024-08-30	10870.30
5597	2024-06-07	16531.59
5598	2021-10-01	11948.02
5599	2022-05-03	7924.12
5600	2021-01-15	14929.24
5601	2023-12-13	14598.78
5602	2023-05-07	14243.29
5603	2022-05-12	12315.79
5604	2024-10-09	14639.72
5605	2023-07-05	15338.56
5606	2021-08-16	6910.92
5607	2023-09-17	10519.22
5608	2021-07-23	11235.28
5609	2024-09-09	14986.51
5610	2020-09-15	15283.11
5611	2021-03-02	14669.36
5612	2021-10-13	14306.22
5613	2021-05-08	6762.01
5614	2022-05-09	14605.61
5615	2023-11-02	10117.97
5616	2022-10-17	14930.98
5617	2023-08-12	8015.71
5618	2024-01-23	13679.76
5619	2023-07-08	13591.60
5620	2022-06-25	14461.24
5621	2023-11-01	13148.95
5622	2023-02-28	16312.96
5623	2020-03-01	7987.39
5624	2023-11-13	11276.87
5625	2024-03-10	10601.48
5626	2021-11-11	16918.92
5627	2020-03-03	6868.93
5628	2020-10-03	11760.02
5629	2022-07-26	17565.78
5630	2022-04-26	16478.91
5631	2021-07-28	14770.44
5632	2023-10-01	11139.22
5633	2020-08-03	17342.58
5634	2021-03-23	7093.46
5635	2024-07-31	13296.58
5636	2020-02-20	12254.50
5637	2023-08-12	14757.69
5638	2021-03-04	15378.41
5639	2020-01-04	16378.54
5640	2023-10-03	17085.47
5641	2021-11-16	11551.80
5642	2023-09-06	16603.18
5643	2022-10-28	11457.16
5644	2022-03-19	16558.50
5645	2022-09-24	11180.54
5646	2021-06-02	12109.43
5647	2024-11-26	10041.84
5648	2020-03-20	11792.36
5649	2021-09-25	9981.47
5650	2022-12-06	14068.42
5651	2023-04-26	11121.63
5652	2022-11-22	15048.66
5653	2021-11-01	12206.95
5654	2021-08-28	11225.09
5655	2020-03-22	11259.18
5656	2021-06-11	11768.46
5657	2022-02-04	11526.81
5658	2022-01-12	8191.37
5659	2021-10-07	6975.61
5660	2022-02-01	14087.94
5661	2023-11-12	12402.50
5662	2022-05-17	17099.75
5663	2020-06-17	8410.73
5664	2022-04-04	11619.70
5665	2022-09-24	10920.05
5666	2020-10-06	12709.67
5667	2022-02-26	14665.13
5668	2024-09-07	15517.84
5669	2020-10-10	12610.58
5670	2020-04-20	10409.73
5671	2021-10-03	16018.89
5672	2023-09-16	16813.71
5673	2022-08-09	12060.22
5674	2022-11-07	17735.80
5675	2022-03-11	14547.28
5676	2024-08-05	14367.03
5677	2022-06-07	12397.43
5678	2024-09-06	10327.72
5679	2020-12-21	10018.51
5680	2021-09-15	11124.74
5681	2024-10-26	17729.10
5682	2020-07-13	12516.76
5683	2020-06-06	14577.27
5684	2023-04-01	11102.19
5685	2023-10-14	17382.44
5686	2021-12-03	16405.19
5687	2023-04-16	16333.45
5688	2022-10-26	9478.90
5689	2021-10-22	11989.08
5690	2023-01-30	13641.58
5691	2024-02-19	13089.69
5692	2020-07-04	10820.23
5693	2020-09-10	12511.39
5694	2020-12-16	13845.49
5695	2024-10-28	17231.13
5696	2020-07-01	13977.29
5697	2023-03-15	14003.15
5698	2022-05-17	16339.53
5699	2024-01-17	14522.98
5700	2022-06-27	17855.87
5701	2023-08-11	13926.95
5702	2023-07-18	14552.01
5703	2020-12-10	13952.97
5704	2022-12-09	14255.69
5705	2024-02-09	14538.62
5706	2022-03-19	14760.53
5707	2021-02-07	10235.97
5708	2022-07-28	9495.77
5709	2024-10-31	7364.65
5710	2023-12-09	7635.80
5711	2023-09-15	13964.43
5712	2024-04-08	8158.41
5713	2023-07-08	12028.57
5714	2021-01-19	13746.60
5715	2023-06-03	7432.53
5716	2023-08-02	16798.25
5717	2024-01-31	8482.60
5718	2022-09-10	17131.25
5719	2023-05-22	12573.75
5720	2020-10-13	8975.47
5721	2020-04-04	17773.69
5722	2020-05-11	15583.77
5723	2022-06-22	14704.74
5724	2022-03-10	16684.38
5725	2022-04-13	7072.29
5726	2022-02-08	11262.25
5727	2022-04-04	6835.03
5728	2021-08-11	9746.60
5729	2023-08-07	12190.66
5730	2022-08-10	9161.93
5731	2020-12-27	8927.33
5732	2021-08-19	13316.38
5733	2024-06-04	12408.48
5734	2023-07-05	9710.02
5735	2020-06-04	16280.34
5736	2022-04-05	12350.56
5737	2021-02-16	8987.33
5738	2020-06-13	15816.06
5739	2024-04-27	10698.12
5740	2024-02-08	11337.23
5741	2021-02-21	9280.84
5742	2021-05-13	13507.74
5743	2022-05-06	8527.46
5744	2023-12-11	11371.65
5745	2020-07-31	17528.22
5746	2023-09-10	15391.56
5747	2022-02-25	8628.72
5748	2021-02-08	12409.56
5749	2022-07-16	10874.97
5750	2021-09-08	12828.14
5751	2021-07-14	16645.66
5752	2024-10-02	12279.79
5753	2020-11-07	11855.52
5754	2020-02-03	17489.22
5755	2021-02-24	16992.29
5756	2021-12-02	9164.72
5757	2024-05-20	16490.74
5758	2023-04-24	15451.31
5759	2024-03-28	14770.38
5760	2020-04-23	7438.85
5761	2020-02-09	9379.77
5762	2022-01-31	12196.56
5763	2024-07-27	15473.62
5764	2021-12-05	10338.79
5765	2023-04-21	11938.74
5766	2022-08-29	16606.15
5767	2021-01-18	17341.88
5768	2023-06-08	14334.84
5769	2020-09-12	15422.75
5770	2024-05-01	7305.66
5771	2024-05-31	7679.12
5772	2020-04-03	13113.79
5773	2021-04-21	14180.93
5774	2021-06-27	15874.89
5775	2021-01-18	13404.26
5776	2020-09-03	14481.60
5777	2021-04-26	10816.09
5778	2022-01-19	16930.76
5779	2022-11-10	8538.48
5780	2023-08-11	8185.09
5781	2024-11-18	17103.99
5782	2024-05-03	14132.38
5783	2021-02-02	16717.77
5784	2022-02-06	13729.68
5785	2024-01-20	11211.37
5786	2023-08-27	13675.45
5787	2020-12-08	11251.79
5788	2020-03-12	15775.98
5789	2022-09-01	14573.90
5790	2020-10-08	7918.52
5791	2021-07-31	14869.38
5792	2022-02-14	12134.31
5793	2021-07-30	7814.82
5794	2020-06-20	7309.47
5795	2023-08-04	16835.38
5796	2021-07-13	15128.56
5797	2022-10-15	9216.24
5798	2024-07-19	10383.06
5799	2020-08-05	16771.89
5800	2021-11-19	8550.02
5801	2023-04-15	12820.76
5802	2022-01-30	9916.77
5803	2022-03-21	10667.93
5804	2024-11-04	9584.96
5805	2023-11-13	6893.77
5806	2021-07-22	9550.14
5807	2021-01-25	15562.96
5808	2020-03-17	8452.37
5809	2024-05-25	12264.65
5810	2024-02-15	12088.00
5811	2022-10-17	8351.87
5812	2022-05-18	15600.66
5813	2023-03-26	14329.16
5814	2022-04-11	6754.87
5815	2020-12-31	11078.07
5816	2021-08-03	9685.67
5817	2021-05-22	17123.52
5818	2024-03-04	16756.18
5819	2023-01-09	9013.35
5820	2022-02-08	10894.79
5821	2021-07-04	14642.53
5822	2020-02-03	8338.14
5823	2022-03-11	9027.94
5824	2022-06-11	12611.82
5825	2024-10-15	7403.14
5826	2021-11-20	11701.80
5827	2024-02-26	15490.96
5828	2022-12-01	7132.95
5829	2022-12-25	14504.23
5830	2023-06-26	16424.44
5831	2023-12-25	15259.18
5832	2024-08-10	18010.41
5833	2020-08-21	11451.28
5834	2021-07-01	11676.65
5835	2021-01-23	9315.10
5836	2023-10-25	7042.81
5837	2023-06-08	10439.24
5838	2021-08-28	8853.42
5839	2020-01-19	12788.36
5840	2022-12-05	6869.99
5841	2024-01-19	12854.95
5842	2024-07-04	6871.39
5843	2022-07-06	7603.10
5844	2022-11-03	7427.68
5845	2021-07-06	16227.84
5846	2022-07-13	13745.54
5847	2022-07-05	13626.96
5848	2020-03-30	6621.07
5849	2020-09-18	17225.88
5850	2020-10-26	6940.52
5851	2024-03-13	14906.31
5852	2020-05-25	16261.71
5853	2022-11-04	13368.54
5854	2022-05-07	16946.62
5855	2023-08-08	9556.75
5856	2024-04-20	9877.41
5857	2023-08-08	17124.29
5858	2024-07-08	13946.52
5859	2023-03-06	10084.17
5860	2020-11-24	12372.40
5861	2020-01-14	11499.63
5862	2021-04-01	9600.98
5863	2022-08-10	10739.61
5864	2022-01-30	7654.66
5865	2022-04-06	7970.43
5866	2022-12-02	9004.64
5867	2023-10-07	15725.49
5868	2024-05-31	12380.65
5869	2021-07-15	10871.17
5870	2020-07-17	8573.68
5871	2024-06-09	11044.30
5872	2022-09-22	7214.43
5873	2024-01-26	7470.31
5874	2022-11-28	16588.77
5875	2022-04-09	6976.60
5876	2022-07-14	13502.55
5877	2022-10-10	15919.23
5878	2023-11-01	12913.76
5879	2024-01-04	15404.76
5880	2022-04-07	16744.70
5881	2020-12-09	13572.96
5882	2023-03-28	11241.65
5883	2020-10-10	16059.86
5884	2020-09-22	12085.71
5885	2020-04-26	6833.68
5886	2024-05-06	15247.54
5887	2020-08-01	9192.04
5888	2021-10-22	14124.68
5889	2024-02-22	18078.62
5890	2022-04-18	6953.00
5891	2021-10-28	10154.55
5892	2024-04-21	9406.36
5893	2023-08-23	9219.82
5894	2021-06-10	11998.79
5895	2023-07-13	14495.32
5896	2020-05-11	8941.68
5897	2021-08-27	14941.87
5898	2023-03-20	15716.31
5899	2022-06-14	13727.36
5900	2021-05-12	16929.05
5901	2023-03-02	14280.06
5902	2022-02-12	9353.76
5903	2024-04-21	11678.14
5904	2022-11-04	6759.21
5905	2022-01-04	11027.52
5906	2024-11-13	12755.96
5907	2020-12-19	12534.88
5908	2024-04-02	17952.55
5909	2023-12-18	6828.96
5910	2021-10-29	9938.26
5911	2023-10-29	7593.04
5912	2022-05-21	16455.69
5913	2024-04-03	10684.71
5914	2023-10-03	14337.23
5915	2024-04-22	13033.45
5916	2023-05-22	8743.60
5917	2020-01-06	9890.40
5918	2020-11-06	16004.94
5919	2020-06-27	12274.43
5920	2023-09-01	17242.04
5921	2021-08-24	13540.71
5922	2023-09-27	17647.53
5923	2024-04-21	14216.46
5924	2023-07-04	11332.77
5925	2020-10-02	11450.23
5927	2020-04-05	16559.07
5928	2020-06-13	17682.96
5929	2023-07-17	8447.13
5930	2024-11-12	6813.23
5931	2020-10-14	11659.01
5932	2021-11-15	14749.05
5933	2022-10-07	11869.52
5934	2020-11-21	16741.65
5935	2020-04-26	16953.70
5936	2024-04-22	17918.34
5937	2023-01-09	10446.35
5938	2024-06-12	6797.60
5939	2020-09-28	17910.27
5940	2021-01-05	16270.80
5941	2021-12-10	15992.54
5942	2024-03-22	11928.27
5943	2024-09-26	8322.58
5944	2021-06-08	9619.35
5945	2024-04-17	16081.88
5946	2022-11-08	9301.76
5947	2020-02-18	14222.39
5948	2022-09-17	16260.76
5949	2020-05-13	16023.98
5950	2024-08-15	17099.70
5951	2021-09-09	11834.86
5952	2024-04-15	8924.18
5953	2023-08-20	7761.62
5954	2020-08-23	16759.57
5955	2024-08-09	7913.79
5956	2022-12-22	8230.23
5957	2022-05-18	12406.91
5958	2021-03-08	8928.67
5959	2020-11-12	8600.28
5960	2024-04-30	12335.93
5961	2022-08-27	14145.88
5962	2022-05-25	16129.06
5963	2022-04-28	17444.41
5964	2020-09-02	11068.63
5965	2024-03-18	14304.77
5966	2020-04-22	15640.46
5967	2024-10-15	12160.27
5968	2021-01-08	11948.68
5969	2023-12-26	6764.63
5970	2023-01-17	15278.00
5971	2020-08-25	12248.49
5972	2022-09-12	12765.51
5973	2023-01-14	7680.54
5974	2021-12-14	12953.37
5975	2020-06-20	12427.76
5976	2021-03-29	12455.90
5977	2020-06-27	10233.70
5978	2024-07-19	11886.00
5979	2022-02-10	12415.98
5980	2023-10-05	17978.86
5981	2020-03-27	17474.29
5982	2022-06-04	17692.76
5983	2020-03-30	17060.39
5984	2022-02-17	15705.24
5985	2021-05-21	15370.49
5986	2020-10-02	17033.15
5987	2020-08-04	17437.44
5988	2020-01-19	15643.91
5989	2024-02-24	10319.99
5990	2020-11-10	13757.46
5991	2020-05-07	15320.40
5992	2021-07-03	8498.62
5993	2021-12-18	11995.93
5994	2022-03-10	14813.45
5995	2023-11-15	15705.17
5996	2023-03-06	14225.09
5997	2024-01-08	14939.63
5998	2024-02-26	10332.61
5999	2023-08-05	11871.72
6000	2020-05-21	10032.29
6001	2022-09-21	11749.60
6002	2023-09-03	14645.93
6003	2020-04-22	13598.18
6004	2024-02-26	14084.42
6005	2022-11-24	16361.25
6006	2020-10-29	16603.21
6007	2020-06-08	15765.93
6008	2023-09-25	9980.49
6009	2024-08-30	8624.37
6010	2021-11-13	13014.00
6011	2020-07-27	13715.31
6012	2022-10-09	10388.81
6013	2023-07-30	9877.22
6014	2021-05-29	11686.07
6015	2020-11-17	17424.83
6016	2024-10-18	17567.08
6017	2020-01-28	12085.31
6018	2024-01-04	11219.62
6019	2024-01-27	16398.04
6020	2024-08-14	14863.90
6021	2021-10-22	8834.97
6022	2020-11-15	15668.63
6023	2023-01-30	13881.32
6024	2023-10-24	6752.55
6025	2024-11-02	15055.88
6026	2021-11-09	16404.94
6027	2023-12-06	11980.85
6028	2022-06-12	10415.58
6029	2023-02-03	9322.56
6030	2021-12-26	6798.23
6031	2024-01-20	12296.43
6032	2023-01-23	11124.76
6033	2023-09-14	14011.48
6034	2023-11-30	14120.80
6035	2023-01-27	15963.44
6036	2023-08-17	15551.84
6037	2022-03-20	16613.81
6038	2021-08-08	17566.42
6039	2021-04-27	17183.74
6040	2022-01-29	14324.20
6041	2023-07-06	13903.72
6042	2022-11-12	18009.16
6043	2021-02-10	12375.21
6044	2023-07-11	16274.79
6045	2021-02-09	16628.63
6046	2022-01-09	16349.23
6047	2021-10-14	12910.60
6048	2023-05-23	6726.89
6049	2021-09-11	8241.52
6050	2021-11-30	16917.81
6051	2021-12-28	8273.34
6052	2023-08-21	9327.67
6053	2022-04-02	11306.51
6054	2020-11-24	10297.12
6055	2024-06-26	17982.82
6056	2021-08-15	13295.30
6057	2022-03-05	13212.33
6058	2024-04-12	7136.81
6059	2020-12-18	15495.99
6060	2023-05-29	14762.32
6061	2023-01-01	10721.90
6062	2024-07-18	15301.71
6063	2020-10-21	13741.97
6064	2021-05-28	12886.88
6065	2020-09-03	14058.98
6066	2022-01-07	15057.89
6067	2024-04-06	10511.93
6068	2020-02-25	11238.49
6069	2020-05-12	17582.11
6070	2023-08-19	10552.37
6071	2020-12-15	8607.19
6072	2022-10-01	15347.51
6073	2024-06-24	6824.40
6074	2021-01-31	11111.67
6075	2024-05-10	16059.26
6076	2020-10-02	17807.25
6077	2023-03-18	8509.63
6078	2022-11-09	9131.46
6079	2020-03-14	12849.27
6080	2024-09-10	9701.38
6081	2022-03-20	8405.10
6082	2022-06-06	12182.50
6083	2024-05-21	13645.51
6084	2022-01-26	13031.10
6085	2023-07-10	10580.93
6086	2020-08-29	7064.14
6087	2022-02-17	6615.51
6088	2020-10-06	15071.26
6089	2022-11-09	11010.00
6090	2023-01-12	15313.71
6091	2021-11-06	6657.49
6092	2024-11-17	6959.15
6093	2020-07-10	7134.02
6094	2020-03-12	6793.76
6095	2020-06-26	16699.00
6096	2021-04-01	12920.54
6097	2020-02-18	16742.38
6098	2021-11-09	8972.80
6099	2023-12-09	16088.24
6100	2021-05-06	15138.19
6101	2020-04-06	8249.07
6102	2022-10-11	7975.78
6103	2022-12-05	13510.43
6104	2020-07-14	14167.47
6105	2023-03-11	6609.56
6106	2021-01-21	7110.08
6107	2021-12-11	13872.20
6108	2021-07-22	9983.03
6109	2024-04-17	12942.94
6110	2023-11-05	12509.84
6111	2022-07-07	14783.95
6112	2022-10-21	9792.59
6113	2022-06-13	15469.83
6114	2023-03-16	11153.22
6115	2023-03-10	16078.99
6116	2024-11-05	14111.41
6117	2020-04-23	15751.82
6118	2022-09-13	8687.39
6119	2022-07-08	14430.56
6120	2022-09-21	15465.52
6121	2024-10-03	10034.92
6122	2024-09-25	12794.84
6123	2023-01-21	17201.16
6124	2023-04-03	6847.01
6125	2021-05-19	13796.76
6126	2021-02-07	14067.36
6127	2021-02-08	7585.97
6128	2021-10-15	17198.97
6129	2023-09-01	14139.51
6130	2020-05-24	12877.70
6131	2020-06-02	13126.92
6132	2020-01-11	10026.81
6133	2023-10-18	9637.25
6134	2022-08-15	13846.48
6135	2022-03-03	13562.04
6136	2022-11-29	15438.74
6137	2023-05-27	9960.20
6138	2023-03-10	13342.80
6139	2020-10-28	7003.73
6140	2021-05-17	13680.54
6141	2024-08-16	13583.60
6142	2021-12-26	10401.03
6143	2021-07-03	13140.03
6144	2020-12-12	10389.49
6145	2024-06-22	13709.63
6146	2022-08-19	16460.69
6147	2020-04-30	17192.12
6148	2024-08-08	13721.74
6149	2024-06-16	14213.82
6150	2024-05-24	14660.65
6151	2021-07-10	8375.06
6152	2022-09-20	17452.96
6153	2023-02-08	12302.20
6154	2023-05-18	17711.17
6155	2024-08-18	13105.48
6156	2024-03-05	15544.13
6157	2021-01-30	17207.21
6158	2022-09-16	7037.00
6159	2023-05-14	16532.71
6160	2023-05-13	15750.26
6161	2021-02-22	13571.97
6162	2023-04-09	12216.39
6163	2020-06-21	7697.84
6164	2023-05-16	14172.78
6165	2020-05-24	7328.45
6166	2024-01-11	8236.16
6167	2021-07-14	11155.55
6168	2021-01-24	14031.69
6169	2020-02-20	8641.78
6170	2023-07-14	16746.12
6171	2020-02-02	8797.79
6172	2022-07-31	14379.18
6173	2021-08-18	11613.02
6174	2020-09-26	13662.70
6175	2021-03-24	7184.46
6176	2020-12-21	13442.73
6177	2024-10-12	9722.83
6178	2022-03-03	10890.60
6179	2021-06-30	13035.38
6180	2024-02-24	12189.43
6181	2021-11-02	8800.38
6182	2021-10-29	13202.56
6183	2020-03-02	14318.12
6184	2020-04-27	12892.45
6185	2023-07-20	12346.28
6186	2024-05-06	8587.15
6187	2024-04-14	7930.11
6188	2023-09-25	13614.73
6189	2021-12-16	13177.30
6190	2024-05-15	13775.43
6191	2022-05-31	7810.77
6192	2024-11-20	15262.86
6193	2021-02-06	9725.42
6194	2024-11-18	17658.03
6195	2023-09-28	15313.52
6196	2023-01-18	18058.01
6197	2024-10-02	7072.83
6198	2020-11-25	16463.03
6199	2020-09-04	12196.44
6200	2020-07-31	15087.72
6201	2023-10-01	14921.78
6202	2020-02-20	16920.33
6203	2023-04-21	16210.81
6204	2021-01-30	12793.25
6205	2022-01-22	17649.05
6206	2020-09-16	8670.82
6207	2020-12-13	10762.89
6208	2024-03-13	7614.28
6209	2021-01-13	14888.13
6210	2020-04-12	15979.15
6211	2023-07-16	12391.56
6212	2022-03-22	7919.06
6213	2024-06-06	7644.36
6214	2022-05-27	12077.46
6215	2022-05-09	10593.74
6216	2024-09-12	8040.44
6217	2022-09-21	15971.31
6218	2024-03-20	14970.54
6219	2022-07-23	16541.06
6220	2022-02-19	11481.04
6221	2022-05-24	15344.79
6222	2024-08-25	8461.65
6223	2021-12-19	13934.68
6224	2020-02-24	11581.72
6225	2021-01-16	14934.40
6226	2020-07-07	16399.02
6227	2023-05-25	14863.93
6228	2023-05-27	8587.13
6229	2022-01-09	14683.26
6230	2022-05-19	17735.99
6231	2020-01-20	7432.20
6232	2023-08-20	16963.43
6233	2021-04-18	17759.84
6234	2024-09-05	7188.87
6235	2022-10-27	14313.54
6236	2022-08-02	15941.58
6237	2020-08-26	17575.66
6238	2021-07-18	9170.67
6239	2024-11-01	16726.25
6240	2023-02-13	15293.15
6241	2023-07-18	12985.45
6242	2022-02-15	13120.33
6243	2021-02-19	11822.76
6244	2023-10-24	17435.32
6245	2022-09-05	7167.29
6246	2023-04-07	10823.90
6247	2022-05-26	11350.73
6248	2023-10-19	13815.29
6249	2023-08-30	7736.08
6250	2021-08-09	11263.48
6251	2023-08-15	14290.71
6252	2020-09-09	17954.65
6253	2020-07-18	6875.12
6254	2021-04-22	7037.37
6255	2024-11-02	9146.06
6256	2020-08-15	9071.38
6257	2022-06-26	11176.52
6258	2022-01-08	10139.19
6259	2022-11-25	7894.74
6260	2023-10-04	10840.79
6261	2024-07-19	16870.68
6262	2020-11-03	12223.62
6263	2023-01-10	10838.02
6264	2021-07-19	8300.72
6265	2023-01-03	6896.64
6266	2023-07-26	11153.94
6267	2021-02-08	7353.30
6268	2021-09-27	12547.74
6269	2022-11-28	10252.14
6270	2020-02-02	15640.52
6271	2021-10-10	8240.97
6272	2021-11-04	8372.12
6273	2021-06-13	11554.65
6274	2023-09-27	14074.44
6275	2021-04-22	13270.30
6276	2021-08-12	9772.03
6277	2024-05-07	18032.87
6278	2023-12-23	14259.76
6279	2022-10-07	13316.41
6280	2020-02-14	13582.18
6281	2024-01-07	9593.30
6282	2021-07-14	13212.21
6283	2024-08-07	11702.57
6284	2024-07-30	10662.31
6285	2022-11-15	8776.23
6286	2023-11-27	13624.10
6287	2024-06-09	9887.41
6288	2024-10-21	8416.92
6289	2020-04-28	10533.66
6290	2022-11-15	6676.20
6291	2020-10-27	10568.78
6292	2021-03-26	15393.67
6293	2023-04-06	8787.20
6294	2020-03-15	14303.56
6295	2023-01-09	8658.85
6296	2022-01-14	12589.22
6297	2021-05-28	15487.38
6298	2022-05-31	10313.44
6299	2023-08-31	9393.57
6300	2021-05-06	12091.45
6301	2021-09-02	15987.59
6302	2021-01-30	15558.71
6303	2021-12-07	11855.26
6304	2021-05-20	11550.55
6305	2023-08-31	12316.07
6306	2020-03-29	9992.97
6307	2022-11-09	7782.11
6308	2023-08-08	9551.68
6309	2020-12-27	6926.48
6310	2020-10-29	9339.29
6311	2023-05-31	7091.02
6312	2022-07-29	17283.34
6313	2020-04-16	15081.97
6314	2020-11-30	14223.64
6315	2022-04-07	6753.79
6316	2022-04-10	8749.04
6317	2021-06-04	6898.23
6318	2021-05-03	16400.03
6319	2022-02-21	14462.86
6320	2022-01-31	6919.10
6321	2021-03-29	17497.00
6322	2023-03-20	8880.69
6323	2020-02-08	17451.27
6324	2021-06-20	8729.05
6325	2021-12-18	6782.08
6326	2022-01-30	14864.60
6327	2020-07-07	18024.12
6328	2020-04-18	9585.74
6329	2020-08-11	10511.77
6330	2023-12-18	11579.73
6331	2023-04-01	12420.68
6332	2022-10-18	15130.09
6333	2020-09-24	12642.69
6334	2022-02-22	9927.45
6335	2021-11-19	10829.58
6336	2020-06-10	13566.04
6337	2021-09-18	17843.13
6338	2021-05-23	14829.35
6339	2021-01-13	9425.22
6340	2024-05-03	14390.67
6341	2024-05-02	16702.28
6342	2021-09-09	8025.69
6343	2022-04-29	11742.81
6344	2021-12-08	10645.13
6345	2024-06-13	7135.75
6346	2021-02-11	7219.12
6347	2021-01-12	7720.24
6348	2021-05-30	9247.90
6349	2021-06-03	10226.52
6350	2020-03-24	8295.35
6351	2023-07-16	15168.12
6352	2021-07-07	15816.41
6353	2024-08-12	13165.49
6354	2021-01-04	8094.74
6355	2022-06-10	15952.92
6356	2020-10-22	16128.95
6357	2021-12-07	8672.92
6358	2021-10-14	12471.53
6359	2021-09-19	7970.33
6360	2020-03-17	7669.30
6361	2024-05-31	11600.94
6362	2021-12-03	7382.92
6363	2020-08-29	10670.38
6364	2024-09-16	11758.00
6365	2020-07-22	11764.83
6366	2024-05-10	8991.80
6367	2022-06-04	11602.57
6368	2020-04-23	7265.04
6369	2020-12-20	9497.92
6370	2020-10-28	16742.46
6371	2020-09-26	13954.41
6372	2024-10-11	10877.12
6373	2024-06-21	12598.15
6374	2020-12-10	10055.84
6375	2024-03-07	7117.23
6376	2022-02-10	12953.59
6377	2023-03-22	17819.10
6378	2023-07-15	14591.74
6379	2020-07-28	7916.38
6380	2021-02-06	9085.88
6381	2023-12-07	13366.41
6382	2022-05-31	10423.60
6383	2024-10-18	17488.26
6384	2022-09-08	7905.93
6385	2021-12-17	9927.01
6386	2022-08-13	17111.66
6387	2024-09-20	13693.63
6388	2024-05-24	14425.70
6389	2020-01-02	6963.12
6390	2024-03-27	8555.22
6391	2024-09-21	13557.28
6392	2021-11-03	12123.72
6393	2022-06-06	18083.16
6394	2024-10-12	16623.78
6395	2022-10-06	9875.75
6396	2024-11-18	9059.08
6397	2024-06-27	18075.21
6398	2021-04-03	13948.87
6399	2024-07-20	10472.68
6400	2023-06-17	8850.49
6401	2024-04-24	17746.02
6402	2021-05-01	13310.11
6403	2022-04-19	13664.28
6404	2021-07-14	6840.67
6405	2021-08-22	9211.80
6406	2022-07-05	12052.83
6407	2022-10-12	16526.23
6408	2020-11-08	17090.65
6409	2023-10-03	17148.53
6410	2021-02-20	11567.55
6411	2024-09-08	7577.93
6412	2023-06-22	17730.70
6413	2021-02-12	17399.78
6414	2024-04-27	16233.59
6415	2023-10-27	16055.48
6416	2020-08-05	8183.15
6417	2022-10-29	14365.65
6418	2022-02-02	13873.40
6419	2021-02-23	11399.63
6420	2023-08-10	16680.74
6421	2024-06-23	9590.47
6422	2021-04-28	13636.65
6423	2022-04-22	7643.39
6424	2024-05-12	7179.71
6425	2024-08-15	15628.16
6426	2022-02-21	6658.13
6427	2024-07-22	11153.94
6428	2024-07-27	16026.51
6429	2022-02-27	9456.18
6430	2021-01-23	7880.97
6431	2023-11-17	9274.55
6432	2024-02-20	17482.92
6433	2024-04-23	11437.84
6434	2020-10-28	9443.11
6435	2021-08-06	14928.54
6436	2022-04-09	12776.11
6437	2023-02-14	7867.51
6438	2022-08-17	16920.75
6439	2023-09-25	6703.28
6440	2020-11-03	7647.97
6441	2020-01-22	11094.60
6442	2021-01-06	7551.79
6443	2021-04-17	14958.49
6444	2021-01-11	12834.96
6445	2020-12-24	13667.51
6446	2023-10-18	10200.28
6447	2020-02-03	12762.39
6448	2020-08-20	15332.26
6449	2021-04-22	14433.59
6450	2023-05-22	14010.88
6451	2022-12-05	13470.24
6452	2023-10-15	14274.82
6453	2021-12-13	17214.41
6454	2023-08-07	14955.72
6455	2020-09-05	8865.48
6456	2021-05-04	12158.24
6457	2023-02-06	14188.94
6458	2021-02-06	13206.04
6459	2020-09-22	11643.09
6460	2024-07-29	11558.53
6461	2020-05-15	16431.56
6462	2021-04-16	7015.26
6463	2022-12-11	16742.41
6464	2022-02-26	11520.33
6465	2024-11-14	14216.75
6466	2023-07-09	9838.58
6467	2021-08-26	9143.29
6468	2024-02-07	14106.20
6469	2021-11-07	15578.23
6470	2021-01-27	14321.11
6471	2022-06-14	15908.75
6472	2022-09-18	12205.34
6473	2024-05-26	16051.51
6474	2020-04-11	13734.99
6475	2024-01-30	7110.41
6476	2023-10-03	15207.76
6477	2022-12-28	9948.27
6478	2024-10-02	9429.96
6479	2022-04-10	16407.01
6480	2023-12-14	7844.34
6481	2024-07-05	15009.37
6482	2024-03-08	15919.32
6483	2022-12-22	10492.07
6484	2020-10-28	12610.25
6485	2022-05-24	6641.45
6486	2024-07-02	11029.46
6487	2024-02-20	16619.56
6488	2022-05-17	9134.10
6489	2024-11-15	17319.05
6490	2023-06-07	6683.33
6491	2024-05-25	12333.30
6492	2022-05-02	7472.61
6493	2024-03-08	14766.00
6494	2023-05-29	10649.37
6495	2024-02-05	7053.39
6496	2024-01-26	9231.04
6497	2024-09-26	8262.12
6498	2023-12-23	15073.41
6499	2024-02-28	13663.93
6500	2021-09-17	15924.41
6501	2023-01-28	16437.87
6502	2021-06-01	6790.68
6503	2023-08-07	15798.70
6504	2021-05-03	15055.88
6505	2022-12-01	10232.74
6506	2020-07-02	13421.29
6507	2021-05-04	13572.61
6508	2023-05-11	7302.99
6509	2021-06-12	8410.46
6510	2022-01-25	9608.32
6511	2020-10-20	11163.39
6512	2022-12-28	10305.11
6513	2020-06-07	16278.65
6514	2024-10-15	15304.43
6515	2022-01-19	9173.74
6516	2020-07-15	9607.92
6517	2022-07-04	11159.98
6518	2020-06-25	12015.39
6519	2022-04-21	15523.56
6520	2023-08-14	15054.10
6521	2024-04-13	15849.05
6522	2020-03-26	16090.34
6523	2020-01-03	9196.93
6524	2021-04-05	12339.95
6525	2021-10-02	16929.22
6526	2022-05-20	10745.39
6527	2021-07-30	14481.42
6528	2020-03-27	14097.76
6529	2021-03-06	6739.39
6530	2023-03-18	11190.39
6531	2024-10-25	10361.50
6532	2022-11-03	13272.33
6533	2021-07-21	13043.53
6534	2021-11-02	6815.91
6535	2023-10-07	14190.15
6536	2022-02-22	13895.97
6537	2020-02-12	11367.92
6538	2021-05-19	7812.93
6539	2023-12-29	13457.72
6540	2021-06-21	14046.37
6541	2023-09-17	15068.64
6542	2020-07-22	17944.02
6543	2022-12-01	8677.39
6544	2022-05-01	13296.45
6545	2020-10-27	10868.51
6546	2024-07-27	10477.33
6547	2021-06-20	9902.43
6548	2023-08-31	14437.23
6549	2023-09-20	12004.01
6550	2024-09-28	14719.02
6551	2024-06-17	13085.94
6552	2022-02-02	7019.92
6553	2023-12-22	7896.13
6554	2024-01-07	10908.75
6555	2021-11-16	11901.73
6556	2024-04-28	11915.35
6557	2020-04-22	14734.06
6558	2024-04-10	9820.83
6559	2022-06-02	14642.92
6560	2023-01-20	8512.05
6561	2023-11-06	12540.53
6562	2020-06-17	15141.30
6563	2024-11-08	12009.84
6564	2023-06-06	15891.90
6565	2020-04-19	12519.23
6566	2020-01-27	7426.09
6567	2020-02-24	12575.51
6568	2023-02-04	8664.41
6569	2020-04-13	11504.22
6570	2023-08-31	8903.67
6571	2020-04-26	7061.16
6572	2020-02-11	17085.49
6573	2021-09-23	7381.76
6574	2024-09-16	10958.65
6575	2023-10-31	9108.05
6576	2020-07-11	7235.84
6577	2024-02-04	14778.14
6578	2021-11-05	16488.22
6579	2024-05-23	16474.87
6580	2022-02-20	17712.55
6581	2024-04-11	13622.04
6582	2020-06-05	10284.64
6583	2021-02-17	14291.17
6584	2023-10-15	9431.72
6585	2024-06-21	12774.93
6586	2024-07-13	13633.43
6587	2021-10-24	15033.26
6588	2022-09-10	8205.16
6589	2022-05-20	13280.80
6590	2020-12-05	10957.25
6591	2021-10-25	9746.58
6592	2024-01-06	13626.94
6593	2021-02-11	12184.31
6594	2023-07-15	8669.98
6595	2024-08-04	11877.25
6596	2021-03-04	17549.38
6597	2022-07-21	17259.00
6598	2021-01-30	11002.07
6599	2021-02-13	14375.22
6600	2023-11-13	11939.90
6601	2022-12-04	16194.53
6602	2021-03-02	10827.37
6603	2021-10-15	6615.63
6604	2022-03-28	14595.74
6605	2024-08-23	8500.63
6606	2020-09-17	8325.48
6607	2021-11-16	16127.57
6608	2023-08-10	10496.76
6609	2020-05-15	10137.22
6610	2023-08-30	10385.38
6611	2020-06-29	14317.17
6612	2023-11-28	9889.55
6613	2023-09-25	16735.88
6614	2024-08-05	6716.85
6615	2023-07-06	17757.47
6616	2021-04-07	10792.29
6617	2024-11-01	11878.09
6618	2023-10-07	7972.26
6619	2020-11-14	7231.48
6620	2021-04-18	7123.46
6621	2021-05-30	10136.89
6622	2020-07-08	11934.30
6623	2024-11-20	8122.37
6624	2023-10-20	15837.79
6625	2024-02-24	8604.68
6626	2024-02-09	10319.38
6627	2022-04-12	12852.81
6628	2022-09-07	10670.04
6629	2021-04-04	9863.96
6630	2023-01-03	15161.65
6631	2021-08-29	8319.45
6632	2024-02-26	17719.63
6633	2024-07-04	8869.87
6634	2022-04-16	16053.12
6635	2024-08-10	18013.95
6636	2022-06-07	15166.40
6637	2023-02-20	12961.40
6638	2022-09-11	13011.47
6639	2021-02-03	17501.22
6640	2022-05-21	7265.63
6641	2021-03-03	10156.50
6642	2022-08-25	11313.28
6643	2020-06-12	9132.55
6644	2021-05-30	10580.83
6645	2021-02-14	14019.18
6646	2022-03-16	11180.48
6647	2021-10-10	8273.37
6648	2023-11-05	13705.60
6649	2021-10-13	11347.77
6650	2020-11-28	12683.69
6651	2021-07-29	9207.96
6652	2021-08-16	16220.21
6653	2024-06-19	11603.71
6654	2020-12-28	8576.80
6655	2022-08-12	15348.44
6656	2022-03-21	16889.96
6657	2022-11-13	17343.63
6658	2023-08-17	9689.95
6659	2023-05-25	13694.34
6660	2022-10-04	15812.00
6661	2022-06-29	7788.79
6662	2021-06-08	9617.57
6663	2024-05-11	15703.90
6664	2023-02-24	10094.22
6665	2021-01-18	17457.72
6666	2022-03-22	16246.11
6667	2024-02-23	11099.23
6668	2022-01-05	10233.01
6669	2020-03-04	13427.52
6670	2023-10-15	15479.66
6671	2023-01-11	7942.76
6672	2021-08-06	17270.95
6673	2020-11-25	14834.34
6674	2020-11-26	12013.89
6675	2024-04-01	14459.29
6676	2023-06-10	6784.58
6677	2024-05-23	12955.82
6678	2024-09-24	7715.37
6679	2021-10-01	7859.16
6680	2020-01-01	12391.00
6681	2023-09-26	14710.35
6682	2022-04-11	9304.15
6683	2022-02-22	17838.50
6684	2023-05-14	6738.04
6685	2023-04-17	6844.35
6686	2022-11-15	7922.32
6687	2023-06-24	12896.08
6688	2021-08-28	8472.44
6689	2023-05-27	11823.92
6690	2024-01-07	7547.54
6691	2023-06-26	9671.24
6692	2021-03-09	14983.99
6693	2024-11-23	10405.99
6694	2022-02-10	15458.02
6695	2021-08-10	9855.82
6696	2024-06-01	16336.70
6697	2024-09-02	14152.09
6698	2023-11-11	8484.90
6699	2022-02-02	6946.47
6700	2021-09-11	8454.58
6701	2021-04-02	14137.35
6702	2023-12-06	12801.53
6703	2023-05-16	9475.27
6704	2020-02-22	17490.64
6705	2022-06-15	11812.90
6706	2020-02-11	6950.25
6707	2021-12-17	14889.58
6708	2020-08-08	16865.79
6709	2023-12-11	13228.68
6710	2021-05-22	11299.15
6711	2022-04-10	14203.69
6712	2020-05-02	12031.16
6713	2023-02-26	9726.97
6714	2021-08-22	11002.29
6715	2024-02-02	14322.99
6716	2020-10-05	17689.72
6717	2023-04-21	15128.32
6718	2023-05-08	12510.02
6719	2023-03-21	17500.19
6720	2020-03-20	10010.36
6721	2020-05-24	13550.33
6722	2024-08-23	11378.00
6723	2021-03-09	8185.91
6724	2022-01-20	18030.18
6725	2021-08-01	10701.30
6726	2022-04-11	13363.90
6727	2020-10-12	10340.44
6728	2024-07-04	12808.08
6729	2020-02-12	15238.16
6730	2020-11-08	9871.31
6731	2020-11-29	10838.23
6732	2020-10-16	10132.53
6733	2021-01-03	15299.29
6734	2020-07-23	6777.00
6735	2024-09-03	12633.61
6736	2024-01-09	13095.45
6737	2023-06-01	14291.35
6738	2024-06-01	8203.96
6739	2024-03-01	17167.85
6740	2022-06-13	9026.84
6741	2021-11-20	8250.22
6742	2022-04-15	15476.13
6743	2023-08-06	15162.41
6744	2024-05-26	14741.18
6745	2022-12-13	9511.03
6746	2023-06-19	10043.47
6747	2023-10-08	16277.94
6748	2024-11-20	6656.56
6749	2024-10-14	10415.07
6750	2023-08-18	13524.67
6751	2020-02-16	13978.66
6752	2020-01-26	16768.29
6753	2022-12-13	8033.56
6754	2020-12-12	7465.60
6755	2022-08-29	15738.94
6756	2024-10-10	14759.38
6757	2021-02-19	14202.91
6758	2024-05-30	13713.77
6759	2021-07-28	8531.30
6760	2024-07-13	8800.28
6761	2021-05-24	7817.75
6762	2020-02-17	11640.26
6763	2020-08-18	9342.90
6764	2020-12-02	15563.25
6765	2024-03-05	17823.30
6766	2020-10-05	9200.49
6767	2023-08-21	13397.72
6768	2021-08-26	17449.76
6769	2022-11-09	13844.11
6770	2022-03-09	8173.36
6771	2021-11-04	11259.49
6772	2020-06-01	12243.63
6773	2024-10-20	8634.30
6774	2022-08-02	17435.65
6775	2021-12-27	8645.97
6776	2022-10-20	10932.61
6777	2020-03-10	12742.66
6778	2022-10-21	7948.86
6779	2021-11-22	16196.84
6780	2023-01-27	8101.82
6781	2024-04-08	14785.99
6782	2021-06-23	13069.04
6783	2020-02-13	16894.13
6784	2023-05-07	9833.56
6785	2021-05-16	12634.20
6786	2023-03-10	10415.87
6787	2021-04-13	9911.76
6788	2024-12-04	12313.93
6789	2023-12-02	14506.63
6790	2023-06-28	11542.78
6791	2022-07-20	15587.62
6792	2024-10-09	15495.35
6793	2021-07-04	13554.93
6794	2024-02-07	15783.64
6795	2021-06-26	12946.51
6796	2024-01-10	7420.62
6797	2020-02-04	10366.25
6798	2021-05-30	13199.49
6799	2021-05-06	13813.64
6800	2023-05-08	17295.85
6801	2024-09-01	11867.49
6802	2022-05-10	12124.18
6803	2022-02-18	13181.17
6804	2022-05-26	16257.43
6805	2022-05-21	12193.12
6806	2021-10-16	7808.82
6807	2020-07-29	13737.60
6808	2022-03-20	15651.00
6809	2024-10-28	6886.22
6810	2024-08-04	9630.90
6811	2024-02-07	10105.78
6812	2021-07-26	12374.84
6813	2021-05-11	16792.63
6814	2020-12-04	8101.57
6815	2022-12-09	14594.69
6816	2021-05-31	12674.62
6817	2023-09-22	10845.26
6818	2021-10-22	17585.51
6819	2024-01-21	16938.67
6820	2021-01-14	15948.17
6821	2024-04-14	17599.65
6822	2024-03-23	10568.53
6823	2022-03-05	13758.64
6824	2022-07-19	16684.82
6825	2022-12-21	17048.49
6826	2023-10-21	9538.57
6827	2020-11-17	9210.78
6828	2023-07-29	7985.02
6829	2024-11-25	17164.07
6830	2020-03-22	16536.65
6831	2024-03-10	14863.98
6832	2024-06-07	17937.14
6833	2021-12-14	10957.91
6834	2023-12-27	6664.06
6835	2024-04-30	7480.00
6836	2022-12-03	9436.69
6837	2020-05-02	8884.49
6838	2023-07-08	10169.34
6839	2024-01-04	10495.51
6840	2022-12-30	15340.41
6841	2020-04-26	6825.23
6842	2022-11-04	14880.89
6843	2022-05-11	18069.33
6844	2023-08-16	12840.42
6845	2021-05-20	9301.80
6846	2020-06-26	14635.90
6847	2022-07-30	8043.72
6848	2024-03-20	15999.45
6849	2022-05-08	17450.91
6850	2024-06-24	14728.63
6851	2022-12-26	7930.81
6852	2021-12-31	16944.96
6853	2023-04-06	16769.12
6854	2023-09-16	14762.45
6855	2024-11-26	12890.02
6856	2023-12-21	7622.94
6857	2020-03-03	11444.38
6858	2024-01-27	15808.77
6859	2021-09-06	7430.52
6860	2021-04-20	10041.75
6861	2021-12-05	17675.07
6862	2021-12-26	7555.87
6863	2023-10-03	8699.12
6864	2022-01-28	7931.29
6865	2024-03-05	12028.09
6866	2020-03-04	16829.39
6867	2020-05-12	12519.30
6868	2023-04-07	16838.76
6869	2020-08-02	15893.28
6870	2022-02-01	7346.19
6871	2020-03-09	11700.10
6872	2020-03-28	12798.46
6873	2023-08-06	14327.94
6874	2020-06-01	16764.30
6875	2021-10-28	8849.11
6876	2021-03-04	12328.11
6877	2022-10-12	17171.49
6878	2020-11-28	14347.21
6879	2022-01-03	9294.44
6880	2024-01-21	17820.58
6881	2023-01-03	8531.93
6882	2024-01-05	11729.33
6883	2023-05-29	13810.28
6884	2021-08-07	16740.25
6885	2023-04-10	14004.14
6886	2021-06-22	17596.45
6887	2023-10-15	9473.42
6888	2020-01-13	9726.76
6889	2022-11-08	9837.11
6890	2021-03-30	7084.47
6891	2024-05-04	8179.03
6892	2022-09-26	12976.12
6893	2021-12-10	7818.20
6894	2024-03-21	17849.75
6895	2023-07-11	12232.87
6896	2023-07-09	14922.87
6897	2022-11-24	17607.58
6898	2022-03-03	8411.57
6899	2020-01-11	12520.79
6900	2022-04-30	14567.64
6901	2023-03-21	9623.70
6902	2020-04-29	15283.96
6903	2023-05-10	12981.19
6904	2024-08-18	7815.82
6905	2022-09-21	9751.70
6906	2023-12-30	18000.55
6907	2023-07-06	7554.47
6908	2023-09-13	12392.69
6909	2022-09-18	8306.24
6910	2021-12-15	11245.75
6911	2024-04-18	13994.22
6913	2024-08-20	6758.34
6914	2023-04-29	13718.45
6915	2024-03-21	17057.12
6916	2021-03-01	11189.64
6917	2021-01-20	9879.80
6918	2024-09-07	10109.72
6919	2023-04-01	12286.75
6920	2024-08-22	16626.57
6921	2023-06-11	16972.89
6922	2022-09-16	13472.22
6923	2021-04-17	17190.37
6924	2021-09-10	9869.85
6925	2020-10-13	11132.72
6926	2020-08-30	17058.96
6927	2020-09-05	9148.18
6928	2021-11-16	10353.89
6929	2024-08-09	7184.75
6930	2022-12-11	14859.48
6931	2024-06-10	10258.65
6932	2020-10-12	17820.29
6933	2024-05-01	13666.17
6934	2024-06-11	16870.25
6935	2024-02-20	9280.12
6936	2022-01-28	12002.54
6937	2020-10-01	7146.21
6938	2022-12-18	11233.63
6939	2023-03-20	17935.42
6940	2020-05-22	13987.88
6941	2020-07-23	7499.52
6942	2022-11-17	11242.22
6943	2023-02-24	7737.01
6944	2020-10-21	8188.05
6945	2022-09-30	11273.95
6946	2020-06-28	9740.00
6947	2020-04-23	7037.95
6948	2021-10-05	7943.25
6949	2022-05-11	10243.54
6950	2023-05-01	10865.66
6951	2020-07-24	10417.12
6952	2024-09-03	13707.27
6953	2022-01-14	14238.58
6954	2022-10-01	12792.48
6955	2022-08-08	15956.53
6956	2020-06-19	10597.93
6957	2023-08-09	6747.59
6958	2022-10-21	17956.01
6959	2024-08-23	15330.82
6960	2022-03-28	7380.98
6961	2020-07-18	14194.70
6962	2020-08-21	12918.00
6963	2024-01-18	12259.22
6964	2022-02-06	10195.48
6965	2020-03-19	17026.79
6966	2024-07-05	13299.51
6967	2020-04-09	9826.34
6968	2020-05-28	6840.93
6969	2022-06-06	13365.29
6970	2021-02-19	8848.61
6971	2023-03-03	12304.28
6972	2020-07-21	8594.56
6973	2021-04-08	9854.27
6974	2022-07-09	16854.15
6975	2020-01-18	10733.59
6976	2021-12-20	7054.27
6977	2020-11-20	12225.49
6978	2022-12-05	16604.93
6979	2023-07-31	6954.34
6980	2021-10-10	7299.44
6981	2020-08-27	9871.53
6982	2020-06-21	15357.59
6983	2020-10-25	7843.98
6984	2020-01-09	13359.24
6985	2020-01-23	8490.99
6986	2024-05-16	10270.55
6987	2021-10-16	11351.22
6988	2023-08-16	6670.99
6989	2022-12-24	15488.26
6990	2024-08-22	17790.43
6991	2020-03-03	9032.22
6992	2023-02-04	8800.01
6993	2022-03-27	9425.06
6994	2022-06-09	7780.70
6995	2021-02-22	14388.76
6996	2022-12-19	17371.96
6997	2024-10-31	10765.49
6998	2021-03-23	15998.66
6999	2022-01-17	12669.35
7000	2023-04-02	13546.50
7001	2022-07-21	8247.03
7002	2022-06-06	14078.04
7003	2023-05-21	17580.76
7004	2020-04-16	15552.23
7005	2020-01-31	8797.94
7006	2020-12-08	8809.80
7007	2020-01-19	13376.28
7008	2024-07-06	11228.35
7009	2022-02-24	9939.50
7010	2024-06-22	11572.66
7011	2022-04-04	14558.88
7012	2022-01-25	10104.51
7013	2021-03-29	17411.61
7014	2023-06-28	11732.61
7015	2024-01-13	17448.46
7016	2020-12-17	16262.86
7017	2023-04-05	6951.13
7018	2020-02-22	15835.22
7019	2020-11-10	16434.07
7020	2020-07-29	12008.90
7021	2024-03-25	17262.45
7022	2023-02-05	13419.77
7023	2024-02-11	15256.29
7024	2024-02-23	13866.14
7025	2023-12-20	12148.40
7026	2021-06-13	9303.01
7027	2024-10-01	6771.37
7028	2023-12-20	14681.00
7029	2022-01-02	15814.08
7030	2024-03-24	7272.94
7031	2020-03-13	14396.04
7032	2023-10-28	15772.94
7033	2020-07-10	8125.99
7034	2020-01-16	13720.24
7035	2023-07-12	15019.26
7036	2021-12-11	14951.88
7037	2024-07-14	15682.09
7038	2021-01-09	10115.83
7039	2024-02-08	10574.96
7040	2021-03-04	14205.61
7041	2023-02-09	9785.82
7042	2020-05-07	10485.30
7043	2024-11-05	12129.11
7044	2023-09-27	8072.91
7045	2024-08-30	6677.13
7046	2024-04-25	9908.39
7047	2020-03-30	17693.99
7048	2023-04-23	11977.91
7049	2023-05-03	10300.90
7050	2022-10-03	16831.22
7051	2023-08-03	10974.92
7052	2022-08-14	11670.08
7053	2022-02-01	9479.10
7054	2020-05-24	9313.35
7055	2021-08-31	11223.37
7056	2024-02-01	10238.05
7057	2024-11-21	17558.93
7058	2024-11-22	16709.14
7059	2020-10-28	7373.19
7060	2022-05-02	11668.96
7061	2024-04-25	8134.32
7062	2022-07-28	9047.46
7063	2023-06-06	13516.08
7064	2022-08-09	9288.89
7065	2021-10-10	8012.47
7066	2022-11-07	6827.06
7067	2021-03-06	10801.72
7068	2024-04-04	15105.91
7069	2021-12-02	16232.48
7070	2022-11-30	14021.96
7071	2022-07-09	8301.53
7072	2023-09-19	14780.55
7073	2024-05-15	12963.82
7074	2020-11-28	8935.33
7075	2021-10-12	15598.85
7076	2020-05-10	11549.24
7077	2021-03-21	16827.26
7078	2023-07-17	14571.71
7079	2020-10-30	17118.39
7080	2021-06-15	7357.61
7081	2022-07-08	14650.06
7082	2021-11-13	16356.63
7083	2022-06-05	10579.12
7084	2023-08-25	13608.55
7085	2022-09-15	14614.45
7086	2021-05-28	17847.60
7087	2023-04-17	14317.28
7088	2023-01-25	12371.79
7089	2022-07-01	17531.91
7090	2022-08-07	7367.92
7091	2022-08-24	9514.48
7092	2020-07-29	16529.89
7093	2024-03-25	16167.27
7094	2021-11-28	16374.67
7095	2022-08-28	10047.07
7096	2021-11-11	10258.76
7097	2024-08-10	17691.69
7098	2020-01-18	15144.08
7099	2024-05-03	17075.58
7100	2022-04-21	8921.28
7101	2024-04-23	14967.21
7102	2023-01-02	14118.58
7103	2021-09-02	18046.03
7104	2022-09-12	9658.82
7105	2024-05-19	12338.29
7106	2023-04-13	7586.68
7107	2024-05-13	8817.10
7108	2023-08-26	8054.21
7109	2023-10-21	15480.05
7110	2021-02-02	17933.87
7111	2020-02-10	11871.25
7112	2023-08-20	16727.91
7113	2024-11-01	7282.62
7114	2021-11-12	14350.37
7115	2021-02-03	16283.64
7116	2024-01-24	8847.03
7117	2020-06-23	11802.28
7118	2024-10-14	14098.79
7119	2021-03-05	12918.82
7120	2020-03-16	13965.98
7121	2023-09-12	11896.24
7122	2022-09-10	7070.28
7123	2023-04-01	12762.32
7124	2022-05-01	6717.49
7125	2021-03-14	16138.23
7126	2023-04-15	10820.76
7127	2020-03-19	15581.82
7128	2020-08-06	14604.07
7129	2021-06-10	11240.59
7130	2021-03-29	13079.45
7131	2020-11-14	17764.67
7132	2021-05-09	6630.77
7133	2023-01-20	13298.18
7134	2023-08-31	10999.04
7135	2021-07-08	9911.01
7136	2021-07-20	12249.75
7137	2020-10-03	7239.58
7138	2022-07-14	7892.91
7139	2020-05-18	16647.99
7140	2020-04-20	6752.59
7141	2020-07-26	7704.82
7142	2022-04-14	6711.09
7143	2023-04-19	6606.74
7144	2023-09-30	8619.39
7145	2021-09-25	15581.29
7146	2020-09-12	10433.37
7147	2024-01-24	7215.67
7148	2024-01-27	9777.15
7149	2022-09-09	10550.05
7150	2020-04-03	11755.91
7151	2024-01-01	8624.68
7152	2024-02-24	17319.47
7153	2022-01-10	16905.72
7154	2022-08-21	10989.14
7155	2021-11-11	17120.97
7156	2022-10-11	16312.83
7157	2021-12-10	7205.07
7158	2020-12-06	16960.23
7159	2020-08-03	9374.87
7160	2024-07-03	8175.63
7161	2023-06-01	8567.97
7162	2023-03-12	13487.25
7163	2024-06-03	12570.13
7164	2022-02-26	6699.32
7165	2021-07-08	17538.85
7166	2023-11-29	11070.30
7167	2024-03-06	8236.20
7168	2022-07-29	17320.35
7169	2024-06-28	8866.37
7170	2021-09-22	14804.49
7171	2020-08-17	14219.69
7172	2022-05-18	14928.34
7173	2021-12-27	11776.84
7174	2024-04-04	14125.35
7175	2024-03-27	17360.92
7176	2022-03-12	6726.41
7177	2021-02-07	14652.49
7178	2024-06-26	12392.63
7179	2023-02-04	13083.22
7180	2020-11-21	14687.94
7181	2021-04-27	15219.13
7182	2022-01-18	8417.83
7183	2020-06-26	7679.59
7184	2020-01-30	10800.16
7185	2023-06-14	15033.27
7186	2023-11-01	14370.09
7187	2022-02-18	10832.47
7188	2021-05-12	15289.14
7189	2020-01-02	10669.17
7190	2021-11-08	12060.18
7191	2022-09-16	6690.06
7192	2023-07-03	16405.77
7193	2022-03-30	12387.51
7194	2023-04-26	7492.19
7195	2022-08-21	8127.50
7196	2020-04-22	10486.52
7197	2022-10-17	13068.31
7198	2021-01-13	13035.03
7199	2024-01-09	12348.43
7200	2020-04-11	11570.94
7201	2024-10-06	7496.75
7202	2020-03-06	11849.38
7203	2021-12-02	16701.66
7204	2024-07-29	13830.32
7205	2024-07-16	14997.06
7206	2021-01-18	8028.06
7207	2023-06-20	7852.76
7208	2024-11-30	8267.91
7209	2020-01-14	11268.78
7210	2024-08-05	9559.20
7211	2021-01-05	17461.31
7212	2022-09-01	16809.27
7213	2020-07-13	6672.94
7214	2021-09-28	6987.58
7215	2020-04-06	8870.74
7216	2024-05-03	7556.13
7217	2022-10-10	14201.19
7218	2021-05-09	14224.49
7219	2020-11-24	12021.65
7220	2020-08-11	10861.84
7221	2021-01-23	7079.76
7222	2024-03-15	17058.59
7223	2020-01-27	17727.90
7224	2021-11-26	16941.84
7225	2021-03-20	16140.61
7226	2022-07-12	15756.49
7227	2024-04-04	16195.51
7228	2021-09-10	15673.07
7229	2021-01-12	17434.56
7230	2022-06-21	8977.41
7231	2020-05-26	10931.58
7232	2021-12-09	7515.21
7233	2020-10-07	7004.40
7234	2023-06-03	17432.43
7235	2020-10-29	6648.93
7236	2021-03-17	7998.63
7237	2022-11-08	13567.28
7238	2020-02-17	9763.39
7239	2024-10-26	8991.57
7240	2023-12-31	7917.37
7241	2024-08-24	11898.59
7242	2021-08-28	16033.17
7243	2020-04-29	8322.71
7244	2023-12-23	15615.13
7245	2021-11-08	14228.78
7246	2020-12-25	10598.74
7247	2024-10-25	7486.85
7248	2024-07-31	15358.59
7249	2024-07-10	8421.33
7250	2020-03-22	17082.02
7251	2020-10-29	15194.17
7252	2024-05-24	17363.92
7253	2020-01-17	12727.68
7254	2023-09-21	13299.02
7255	2024-08-23	6720.96
7256	2022-11-05	12230.42
7257	2020-10-08	11750.16
7258	2021-10-01	15836.90
7259	2021-10-27	9550.51
7260	2020-08-21	11964.17
7261	2023-03-10	11548.96
7262	2024-01-08	7157.77
7263	2022-07-02	14897.84
7264	2022-02-01	11772.80
7265	2022-04-26	9545.89
7266	2020-02-11	12714.86
7267	2023-11-05	15617.66
7268	2020-07-26	16567.38
7269	2020-03-13	13275.07
7270	2021-09-14	9491.28
7271	2024-03-24	8405.71
7272	2020-06-16	10897.19
7273	2020-08-06	13958.76
7274	2020-01-12	15311.98
7275	2022-02-09	17759.79
7276	2021-12-10	13943.17
7277	2024-10-25	10001.61
7278	2023-11-09	7082.87
7279	2023-06-09	7722.42
7280	2021-10-08	15111.78
7281	2024-07-01	7069.71
7282	2020-10-15	11140.59
7283	2021-06-28	10187.79
7284	2024-11-26	9421.80
7285	2022-03-19	10819.73
7286	2020-05-05	14127.01
7287	2023-09-07	9532.72
7288	2021-06-22	14753.64
7289	2024-10-10	11316.88
7290	2020-03-31	14211.47
7291	2021-03-30	8063.96
7292	2020-10-28	14431.49
7293	2024-06-02	11605.85
7294	2020-04-24	15810.50
7295	2022-12-05	10971.50
7296	2020-10-05	13536.78
7297	2022-12-23	15045.97
7298	2022-01-04	17626.50
7299	2022-01-29	9338.88
7300	2020-01-17	13237.33
7301	2020-03-26	10790.84
7302	2021-07-31	15404.98
7303	2023-12-08	10729.91
7304	2024-05-13	12223.00
7305	2021-11-07	14928.62
7306	2021-08-26	8860.48
7307	2024-04-27	17761.49
7308	2020-05-19	14515.33
7309	2020-06-24	15887.00
7310	2022-02-01	12403.65
7311	2023-04-04	10890.27
7312	2022-12-19	17875.75
7313	2021-08-12	17777.28
7314	2024-03-10	15677.57
7315	2024-04-02	15137.90
7316	2021-02-14	9835.25
7317	2021-03-02	16772.77
7318	2022-09-08	13300.31
7319	2021-03-06	10030.84
7320	2020-10-21	7025.14
7321	2021-10-31	17021.23
7322	2023-12-10	15806.86
7323	2023-03-27	13741.49
7324	2021-12-12	15361.75
7325	2024-10-28	11679.53
7326	2021-01-12	7262.27
7327	2020-09-26	13187.98
7328	2024-10-29	13709.08
7329	2020-08-19	13652.53
7330	2024-10-11	18087.80
7331	2023-12-30	17893.15
7332	2022-12-20	17158.53
7333	2020-12-25	8641.59
7334	2021-02-12	12173.11
7335	2024-08-20	6970.56
7336	2020-06-10	12434.96
7337	2021-09-12	7731.13
7338	2020-09-04	13253.55
7339	2022-03-05	9234.48
7340	2021-08-27	12468.71
7341	2023-10-31	13541.61
7342	2022-01-19	11804.35
7343	2023-02-20	11168.00
7344	2021-07-09	17661.10
7345	2024-07-03	14484.41
7346	2022-03-14	13563.55
7347	2021-03-13	15965.05
7348	2023-04-13	11151.86
7349	2023-10-16	10834.64
7350	2024-09-14	7212.60
7351	2020-04-05	13237.07
7352	2023-07-31	7534.28
7353	2023-11-08	16629.12
7354	2022-03-17	10463.75
7355	2022-09-29	9508.21
7356	2023-11-05	13291.92
7357	2023-02-07	15094.78
7358	2021-06-11	17006.85
7359	2022-07-20	14436.77
7360	2020-02-16	16003.28
7361	2023-01-25	16831.98
7362	2021-02-22	15846.84
7363	2021-06-12	8170.29
7364	2024-07-22	17058.44
7365	2022-04-09	11669.73
7366	2020-12-10	13668.57
7367	2024-02-08	9069.28
7368	2024-08-26	12559.05
7369	2020-05-14	9109.47
7370	2020-11-14	9188.71
7371	2024-04-14	10816.00
7372	2021-03-29	7446.37
7373	2023-09-08	16212.70
7374	2022-02-25	12560.55
7375	2024-08-10	12186.73
7376	2024-02-09	17347.06
7377	2022-06-22	14575.85
7378	2023-08-02	15442.03
7379	2023-05-20	12268.47
7380	2021-01-16	9101.66
7381	2022-01-16	8977.35
7382	2021-04-26	17597.37
7383	2020-09-19	10143.45
7384	2020-04-15	11091.72
7385	2023-10-07	12032.55
7386	2020-03-01	9264.87
7387	2023-04-06	7550.00
7388	2023-09-19	17171.36
7389	2023-04-24	10107.96
7390	2022-06-26	13197.94
7391	2024-03-03	16054.78
7392	2021-05-16	6865.08
7393	2022-10-05	10086.90
7394	2022-04-25	18048.11
7395	2023-03-02	10411.21
7396	2020-07-11	16055.93
7397	2024-07-10	14709.86
7398	2020-09-23	11665.95
7399	2022-09-02	7267.81
7400	2021-09-28	9593.66
7401	2024-07-08	8920.35
7402	2021-06-15	9078.23
7403	2020-04-15	6974.98
7404	2021-10-25	12940.25
7405	2022-04-18	7951.17
7406	2022-12-13	13909.95
7407	2022-01-10	8522.37
7408	2021-10-05	13799.56
7409	2020-08-15	12719.08
7410	2020-09-27	15440.55
7411	2023-12-04	13765.20
7412	2021-07-11	14416.15
7413	2021-12-24	12465.96
7414	2024-01-04	15043.97
7415	2022-01-23	14098.14
7416	2020-06-18	13103.33
7417	2022-12-10	13118.99
7418	2021-03-25	9301.88
7419	2022-07-23	16383.44
7420	2022-06-09	13155.98
7421	2021-06-23	12804.55
7422	2020-06-23	14146.18
7423	2020-03-29	8485.82
7424	2023-05-09	10835.55
7425	2021-12-10	11498.86
7426	2023-04-21	12518.15
7427	2020-12-13	14757.97
7428	2024-11-10	17744.68
7429	2023-12-19	11051.49
7430	2020-12-01	17815.88
7431	2022-08-03	10521.54
7432	2024-09-29	10006.16
7433	2020-06-06	16653.67
7434	2023-08-06	16753.57
7435	2024-01-01	10699.58
7436	2022-07-23	15412.24
7437	2022-03-19	13245.12
7438	2022-08-25	15575.59
7439	2021-09-15	17837.47
7440	2020-02-01	6860.23
7441	2023-05-28	8105.72
7442	2023-08-19	9427.45
7443	2023-02-14	15795.41
7444	2021-10-16	17792.95
7445	2020-03-29	12967.13
7446	2022-01-30	13290.27
7447	2024-02-26	7871.50
7448	2023-01-09	15000.00
7449	2022-04-04	8692.28
7450	2020-09-12	12955.88
7451	2020-03-16	9985.58
7452	2024-08-21	17211.02
7453	2023-03-15	6775.69
7454	2021-12-24	6725.37
7455	2024-06-06	13387.75
7456	2022-02-02	15040.42
7457	2023-05-12	7740.77
7458	2020-02-02	11245.02
7459	2023-08-03	16667.01
7460	2024-08-08	16680.86
7461	2024-05-22	9141.27
7462	2023-05-31	11230.22
7463	2022-03-16	17276.36
7464	2024-11-09	12391.09
7465	2021-11-13	13389.25
7466	2021-06-26	12778.88
7467	2024-08-06	7327.20
7468	2020-05-01	11305.89
7469	2021-06-26	13915.24
7470	2023-04-26	10908.22
7471	2021-05-14	15974.13
7472	2021-01-31	12019.30
7473	2023-12-15	14293.58
7474	2024-08-10	10023.45
7475	2024-01-08	10778.80
7476	2021-06-20	16947.53
7477	2023-01-29	7045.32
7478	2020-07-17	16940.10
7479	2023-10-08	16118.14
7480	2022-03-08	12077.72
7481	2021-06-29	7024.00
7482	2023-11-22	6787.59
7483	2022-01-23	11753.85
7484	2020-10-17	12202.02
7485	2020-05-16	11727.78
7486	2023-10-19	8000.86
7487	2021-10-13	11850.74
7488	2021-02-01	12342.56
7489	2024-11-12	15448.82
7490	2021-02-17	8148.55
7491	2020-04-24	15221.50
7492	2023-05-12	17288.26
7493	2023-01-20	8222.30
7494	2022-08-30	16138.27
7495	2022-08-16	16286.27
7496	2023-07-19	13264.30
7497	2022-09-12	11636.35
7498	2021-10-07	10602.74
7499	2024-02-16	15722.97
7500	2020-06-19	12613.93
7501	2023-02-17	17660.10
7502	2020-10-21	10201.27
7503	2022-01-13	16917.05
7504	2024-04-19	11272.07
7505	2023-04-29	13139.18
7506	2021-02-22	10165.89
7507	2023-08-08	7991.94
7508	2024-05-21	6879.86
7509	2021-04-21	17203.44
7510	2023-10-05	8353.50
7511	2022-06-12	7136.10
7512	2020-11-10	17410.08
7513	2021-11-03	13956.40
7514	2021-01-28	15246.01
7515	2021-11-12	6612.37
7516	2023-06-18	13033.20
7517	2021-01-17	13580.33
7518	2022-12-18	8989.44
7519	2021-09-22	7038.76
7520	2023-04-27	14382.61
7521	2024-06-15	17240.59
7522	2022-07-01	12545.03
7523	2023-08-22	8404.48
7524	2022-10-04	11383.74
7525	2020-06-17	13181.60
7526	2021-07-20	12834.14
7527	2024-03-06	16606.84
7528	2021-06-30	8979.10
7529	2020-04-13	9815.55
7530	2021-02-03	14721.66
7531	2020-06-27	10541.74
7532	2022-12-08	7690.14
7533	2020-10-08	16108.43
7534	2020-11-23	8939.92
7535	2020-05-19	8258.51
7536	2021-03-04	8880.04
7537	2024-03-23	14296.07
7538	2021-03-25	17148.28
7539	2022-04-20	10254.19
7540	2020-09-16	16511.67
7541	2022-02-17	11902.68
7542	2020-06-14	15976.53
7543	2024-04-25	12252.98
7544	2024-05-16	12204.95
7545	2021-10-16	7514.12
7546	2022-09-12	8767.57
7547	2021-12-17	8475.41
7548	2022-03-19	10348.10
7549	2024-11-22	7491.29
7550	2022-02-18	11684.39
7551	2022-08-09	9001.07
7552	2024-09-30	15884.96
7553	2022-08-26	16862.65
7554	2020-08-27	10493.98
7555	2021-03-23	7359.22
7556	2023-01-22	15016.94
7557	2023-01-01	11780.04
7558	2022-06-09	14616.01
7559	2021-03-28	14423.01
7560	2021-05-21	12024.17
7561	2024-04-11	9441.00
7562	2021-11-15	16931.00
7563	2020-05-31	7386.73
7564	2020-05-29	16017.12
7565	2020-12-27	11684.20
7566	2022-02-20	12575.48
7567	2024-11-06	8012.10
7568	2024-10-03	14802.34
7569	2023-04-11	16077.07
7570	2024-03-26	16172.34
7571	2021-11-27	12217.67
7572	2021-09-30	12552.05
7573	2021-07-11	8382.13
7574	2021-10-19	10778.43
7575	2024-11-28	7175.99
7576	2023-06-24	16498.79
7577	2022-07-05	11189.45
7578	2024-10-26	13327.40
7579	2020-06-15	15081.99
7580	2024-04-24	10139.58
7581	2021-04-29	9595.05
7582	2021-09-21	9488.44
7583	2023-08-13	10877.22
7584	2022-09-14	12782.71
7585	2020-09-10	6793.81
7586	2021-07-07	8749.80
7587	2024-11-29	11844.81
7588	2023-08-02	12371.27
7589	2020-11-23	17233.31
7590	2022-10-21	13004.98
7591	2021-03-12	12335.55
7592	2021-06-30	17105.76
7593	2020-02-17	16032.75
7594	2020-08-30	14010.94
7595	2022-06-07	11338.16
7596	2021-12-15	17359.83
7597	2023-11-06	13994.02
7598	2023-10-12	12341.11
7599	2020-11-04	7588.78
7600	2020-08-18	15219.16
7601	2024-07-21	16089.46
7602	2022-01-16	13629.24
7603	2021-07-11	11005.52
7604	2020-06-15	9470.18
7605	2022-02-21	7642.01
7606	2022-04-11	13962.21
7607	2020-07-22	16753.95
7608	2024-07-11	11205.08
7609	2022-02-24	10077.00
7610	2023-01-23	14521.55
7611	2023-12-17	8112.93
7612	2021-09-30	7531.81
7613	2020-11-03	7878.20
7614	2024-10-12	10489.15
7615	2023-02-28	17023.83
7616	2020-05-28	17001.75
7617	2023-08-12	17411.28
7618	2023-03-16	15477.29
7619	2021-11-04	11843.09
7620	2020-06-25	12648.38
7621	2024-03-05	10618.73
7622	2023-12-25	9575.70
7623	2020-03-08	9440.54
7624	2021-11-09	16913.52
7625	2021-06-03	13896.47
7626	2023-02-05	15670.07
7627	2020-06-20	15845.93
7628	2020-12-27	11239.88
7629	2022-04-29	9895.51
7630	2024-09-25	16122.32
7631	2021-10-14	12506.39
7632	2020-05-03	15377.82
7633	2020-08-09	16452.55
7634	2023-05-03	14677.36
7635	2020-06-27	17614.74
7636	2021-11-13	13265.09
7637	2020-10-07	14368.92
7638	2023-05-14	10223.28
7639	2021-10-10	13735.32
7640	2021-06-24	16957.87
7641	2022-09-09	12000.54
7642	2020-09-13	13785.60
7643	2023-03-08	17881.61
7644	2020-11-01	9102.27
7645	2024-02-02	13775.68
7646	2021-06-12	14995.94
7647	2021-05-09	7916.85
7648	2021-07-30	9435.75
7649	2020-08-20	15687.21
7650	2024-10-18	17490.36
7651	2024-05-07	7720.54
7652	2024-03-13	7270.40
7653	2022-07-10	14525.03
7654	2022-07-23	13216.27
7655	2023-12-21	16064.72
7656	2023-08-29	7237.40
7657	2020-02-06	14555.59
7658	2023-05-28	15829.32
7659	2020-12-02	15145.17
7660	2022-01-02	12219.04
7661	2021-10-19	10257.43
7662	2024-05-03	15041.40
7663	2024-09-02	9633.89
7664	2022-07-16	15607.49
7665	2024-04-29	6629.59
7666	2021-06-25	16779.66
7667	2021-10-29	7559.93
7668	2024-08-10	11340.18
7669	2023-09-22	8070.23
7670	2021-09-21	12525.47
7671	2023-06-18	7718.06
7672	2023-07-04	8498.07
7673	2022-10-25	13669.68
7674	2021-01-08	12899.47
7675	2024-05-01	10157.94
7676	2023-12-02	9927.42
7677	2022-03-22	17085.62
7678	2023-03-07	10003.06
7679	2022-10-01	15658.21
7680	2024-10-03	6631.81
7681	2022-03-11	12884.41
7682	2023-07-17	9439.44
7683	2022-03-02	12473.89
7684	2023-01-03	7865.74
7685	2023-02-17	18005.58
7686	2021-05-25	17824.82
7687	2022-02-21	14112.11
7688	2023-04-03	15967.89
7689	2024-07-25	8401.71
7690	2021-08-26	16361.44
7691	2020-08-11	17898.84
7692	2021-07-30	8266.85
7693	2024-07-15	17193.50
7694	2022-11-09	15668.94
7695	2020-04-09	11736.37
7696	2024-11-26	14079.20
7697	2020-08-13	10623.13
7698	2023-09-13	17615.54
7699	2023-10-05	11044.86
7700	2022-04-25	11706.07
7701	2021-11-23	9551.18
7702	2021-09-18	9615.16
7703	2024-05-29	14188.75
7704	2021-08-05	12003.39
7705	2022-03-08	15083.80
7706	2024-04-18	15037.07
7707	2023-10-08	17779.25
7708	2020-10-04	11531.57
7709	2024-09-17	7662.60
7710	2023-07-18	9729.24
7711	2020-06-01	17732.52
7712	2022-06-12	7070.31
7713	2024-09-24	9718.35
7714	2022-07-29	11145.41
7715	2020-06-06	12183.66
7716	2021-12-18	11800.01
7717	2023-12-03	14644.30
7718	2022-10-20	15305.12
7719	2021-08-07	15474.87
7720	2020-04-30	7874.57
7721	2021-04-12	9885.89
7722	2020-08-09	12972.08
7723	2020-05-10	8103.11
7724	2023-09-07	15602.35
7725	2020-09-25	12988.54
7726	2020-11-04	14305.36
7727	2021-03-21	12189.85
7728	2021-05-10	10436.27
7729	2023-02-09	10861.03
7730	2021-11-10	7958.18
7731	2022-02-05	15859.03
7732	2022-06-19	18043.06
7733	2022-07-30	8940.30
7734	2024-03-15	13303.58
7735	2022-11-25	15658.70
7736	2024-01-09	17857.30
7737	2020-12-22	12304.23
7738	2021-01-22	9259.99
7739	2020-09-10	13579.22
7740	2024-04-28	15637.39
7741	2023-10-21	6746.96
7742	2023-05-19	12648.63
7743	2020-07-03	13158.58
7744	2020-02-06	8870.91
7745	2023-06-15	12185.53
7746	2020-04-29	16009.80
7747	2022-12-06	16804.87
7748	2021-07-18	7240.71
7749	2024-02-19	9380.49
7750	2020-01-24	9894.86
7751	2023-04-13	11828.32
7752	2023-05-28	14935.97
7753	2020-09-10	9144.70
7754	2020-08-19	6850.74
7755	2023-12-07	12275.56
7756	2023-09-16	10248.39
7757	2022-04-21	10274.80
7758	2024-01-25	14100.86
7759	2023-01-25	10559.73
7760	2020-11-30	9981.45
7761	2020-07-21	15401.75
7762	2024-03-20	11088.01
7763	2023-10-01	12118.80
7764	2022-08-26	13815.31
7765	2020-05-11	13428.17
7766	2022-08-27	15345.55
7767	2023-08-14	18001.91
7768	2022-06-20	9379.57
7769	2021-11-28	12045.42
7770	2022-01-24	8424.14
7771	2023-06-12	17158.33
7772	2020-11-26	10830.81
7773	2021-07-22	14208.77
7774	2023-10-16	13115.56
7775	2020-07-23	13712.79
7776	2020-08-23	8267.77
7777	2021-07-06	11389.38
7778	2023-05-29	8887.05
7779	2020-02-15	13236.32
7780	2020-05-23	15956.10
7781	2021-05-03	12951.03
7782	2020-04-21	18056.98
7783	2021-02-14	8145.85
7784	2022-05-05	17303.42
7785	2022-02-04	6899.89
7786	2021-08-04	8216.82
7787	2023-12-16	14606.39
7788	2022-08-22	10455.18
7789	2020-07-08	9069.63
7790	2020-11-11	15341.51
7791	2022-12-08	11752.79
7792	2024-05-01	16159.61
7793	2021-06-17	14072.60
7794	2021-05-08	10636.53
7795	2022-06-28	15671.24
7796	2022-02-23	12352.85
7797	2024-12-03	10827.90
7798	2020-03-29	11661.61
7799	2023-12-07	16885.70
7800	2024-07-19	14142.61
7801	2024-03-12	18012.91
7802	2022-10-09	17625.89
7803	2021-03-27	17850.16
7804	2021-10-31	16605.81
7805	2024-09-21	17256.38
7806	2022-04-13	7509.72
7807	2021-04-17	12500.72
7808	2023-07-01	12876.05
7809	2021-05-09	13714.70
7810	2022-04-27	15214.27
7811	2021-02-06	14701.20
7812	2023-01-20	11662.30
7813	2022-02-24	7420.29
7814	2023-09-15	9213.82
7815	2023-06-09	10472.45
7816	2023-12-14	14915.54
7817	2021-06-17	8675.94
7818	2021-10-05	7823.85
7819	2021-02-04	8285.99
7820	2022-09-26	12068.56
7821	2020-03-18	17991.89
7822	2021-05-02	13456.37
7823	2024-06-28	7428.74
7824	2024-05-06	14489.88
7825	2020-10-26	15227.92
7826	2023-02-17	12219.66
7827	2021-08-03	7465.25
7828	2021-05-14	9919.41
7829	2023-06-01	8068.70
7830	2024-09-03	17053.26
7831	2020-07-03	8920.80
7832	2021-11-19	7894.15
7833	2024-10-27	14547.93
7834	2022-05-16	10685.17
7835	2024-07-04	13380.75
7836	2023-10-27	13283.81
7837	2021-04-05	17483.85
7838	2022-08-07	12748.96
7839	2020-10-21	15448.10
7840	2023-04-22	12739.95
7841	2020-04-12	9266.91
7842	2020-05-07	11956.18
7843	2021-07-18	9881.40
7844	2023-11-04	14463.87
7845	2023-04-28	7690.51
7846	2022-11-24	10777.96
7847	2020-02-02	12990.79
7848	2023-09-19	10788.96
7849	2023-08-03	11431.84
7850	2023-01-29	9602.39
7851	2022-10-11	17822.08
7852	2022-09-06	8122.25
7853	2021-04-21	13634.25
7854	2022-12-03	7402.54
7855	2024-08-28	12199.80
7856	2020-10-25	13396.93
7857	2023-09-23	9086.44
7858	2023-05-01	17080.88
7859	2022-04-08	16948.46
7860	2023-05-24	16620.24
7861	2022-03-03	10327.01
7862	2023-05-03	12618.09
7863	2023-12-30	11747.48
7864	2024-10-16	8314.09
7865	2021-08-27	13049.38
7866	2024-02-22	16022.39
7867	2022-03-14	7486.56
7868	2022-01-23	16621.17
7869	2023-11-01	16971.27
7870	2024-06-12	10491.14
7871	2022-01-27	17227.25
7872	2022-07-24	9381.66
7873	2021-12-09	12589.51
7874	2021-02-09	13151.35
7875	2022-12-14	11714.80
7876	2022-02-02	16421.18
7877	2023-06-18	7416.90
7878	2020-09-01	16593.18
7879	2023-12-02	12060.31
7880	2021-08-12	9091.52
7881	2020-10-12	8684.25
7882	2022-06-13	14937.32
7883	2022-06-02	8002.15
7884	2020-04-23	8663.59
7885	2022-10-02	12676.78
7886	2022-04-08	9511.94
7887	2020-03-01	11023.08
7888	2020-03-20	9844.24
7889	2021-11-07	15145.24
7890	2021-12-31	14569.34
7891	2021-04-17	12145.52
7892	2023-03-02	17585.80
7893	2023-04-21	8404.18
7894	2023-05-01	7524.77
7895	2020-09-05	16494.93
7896	2023-04-15	11514.24
7897	2021-08-04	10556.87
7898	2023-05-09	10783.81
7899	2021-05-22	12519.19
7900	2023-06-07	17803.31
7901	2022-07-29	8172.33
7902	2021-05-16	10882.48
7903	2021-10-23	15576.05
7904	2020-08-01	8504.76
7905	2024-05-25	9057.32
7906	2023-01-07	13540.13
7907	2020-01-09	12456.14
7908	2020-06-18	12387.79
7909	2024-01-25	17563.03
7910	2023-01-14	16673.46
7911	2020-03-29	9130.35
7912	2021-12-20	8339.63
7913	2021-05-24	17710.02
7914	2024-06-14	17138.79
7915	2024-07-11	11805.86
7916	2024-05-24	6638.20
7917	2021-02-27	17052.91
7918	2023-12-28	13094.71
7919	2020-09-03	17160.93
7920	2023-03-17	12756.18
7921	2021-12-15	8508.66
7922	2021-12-19	16059.28
7923	2022-01-26	7879.13
7924	2020-08-08	17961.67
7925	2022-12-25	7110.56
7926	2021-01-14	9368.55
7927	2020-07-15	10339.51
7928	2021-09-03	8091.69
7929	2021-07-16	9360.40
7930	2024-01-01	15216.42
7931	2020-05-03	12943.59
7932	2024-01-07	6779.75
7933	2022-03-26	10635.66
7934	2022-09-29	9001.22
7935	2024-06-27	13992.16
7936	2022-08-15	11922.83
7937	2021-07-02	11653.57
7938	2020-11-19	14586.58
7939	2021-12-24	10591.59
7940	2020-06-28	9523.32
7941	2023-03-03	12487.23
7942	2020-12-11	14783.75
7943	2020-06-19	14844.05
7944	2023-06-16	16588.05
7945	2020-01-08	11156.18
7946	2021-10-26	18066.41
7947	2021-09-25	14962.16
7948	2022-07-27	14352.77
7949	2024-05-13	11853.62
7950	2023-09-05	12693.50
7951	2022-11-22	10692.41
7952	2023-11-07	8355.35
7953	2021-08-19	11484.03
7954	2020-03-25	8892.69
7955	2023-01-09	10931.43
7956	2021-05-24	10288.27
7957	2021-12-26	15139.48
7958	2023-03-14	13016.44
7959	2023-09-15	16831.05
7960	2023-08-13	10443.46
7961	2024-10-16	17238.28
7962	2020-10-12	12985.38
7963	2020-11-17	13253.23
7964	2022-01-06	12873.51
7965	2024-03-29	6666.86
7966	2023-08-24	15242.93
7967	2022-06-04	17115.19
7968	2021-09-13	8380.46
7969	2024-11-29	7268.49
7970	2022-09-15	11941.87
7971	2023-06-02	13015.13
7972	2022-07-27	17785.93
7973	2023-12-31	17648.20
7974	2024-06-18	9512.13
7975	2022-03-30	10034.60
7976	2020-06-19	10302.21
7977	2020-01-31	14058.15
7978	2023-12-03	7734.30
7979	2024-11-14	8256.01
7980	2022-02-22	12152.09
7981	2024-01-05	17374.66
7982	2020-01-12	7078.47
7983	2023-02-19	15372.99
7984	2021-11-24	11132.25
7985	2020-10-28	14393.24
7986	2020-06-14	11051.84
7987	2023-01-19	17731.37
7988	2022-09-06	10436.23
7989	2020-04-24	9633.47
7990	2024-07-21	14503.83
7991	2021-09-25	8632.52
7992	2021-01-28	12728.85
7993	2024-11-19	15317.15
7994	2023-01-22	14636.87
7995	2023-12-31	11159.93
7996	2024-11-01	10581.76
7997	2024-06-26	7041.05
7998	2021-02-17	14596.05
7999	2024-10-10	15521.35
8000	2024-06-07	14354.32
8001	2020-04-21	16590.70
8002	2024-04-17	11501.46
8003	2024-01-12	9919.34
8004	2021-10-19	11859.05
8005	2021-03-15	10963.37
8006	2023-10-19	6947.81
8007	2022-03-15	14443.60
8008	2022-02-24	17318.35
8009	2022-02-03	6751.75
8010	2022-04-06	13367.09
8011	2021-07-07	15404.29
8012	2021-07-05	17950.54
8013	2020-01-26	9448.17
8014	2020-09-28	11862.63
8015	2021-10-07	15319.12
8016	2022-10-18	13464.26
8017	2021-12-29	13074.50
8018	2021-01-05	12589.09
8019	2023-12-22	7270.03
8020	2023-08-14	12660.36
8021	2021-06-06	16786.48
8022	2023-01-27	16660.24
8023	2022-10-31	6836.14
8024	2023-07-05	16358.03
8025	2021-11-24	16646.19
8026	2024-05-24	17992.54
8027	2021-06-15	8108.28
8028	2023-07-15	8345.35
8029	2022-12-13	14407.26
8030	2023-08-03	15659.78
8031	2022-06-14	15982.86
8032	2023-05-06	8655.43
8033	2024-03-10	14269.00
8034	2023-02-17	17626.64
8035	2024-02-25	14147.07
8036	2024-05-22	7267.82
8037	2020-09-02	8173.37
8038	2020-05-02	14683.03
8039	2021-12-17	7835.41
8040	2021-12-09	12163.32
8041	2020-12-13	8871.38
8042	2023-11-11	14327.88
8043	2021-07-21	8233.04
8044	2020-10-06	9829.25
8045	2021-03-04	9717.53
8046	2022-01-07	9376.12
8047	2020-01-03	17693.33
8048	2021-03-22	7574.20
8049	2022-03-13	9129.49
8050	2022-06-17	13174.85
8051	2021-04-10	16065.68
8052	2020-02-10	7088.88
8053	2024-10-01	11619.01
8054	2022-12-27	14634.02
8055	2021-03-30	12859.73
8056	2021-01-15	16356.69
8057	2024-04-17	12203.13
8058	2023-07-15	11045.90
8059	2020-01-04	15670.84
8060	2021-10-25	8856.97
8061	2020-08-01	15343.58
8062	2024-09-17	16788.52
8063	2020-04-08	6998.57
8064	2021-05-07	12135.49
8065	2022-04-13	7810.22
8066	2021-11-28	13055.95
8067	2022-07-10	17457.78
8068	2022-01-12	7177.19
8069	2021-04-02	10048.52
8070	2021-01-07	16790.68
8071	2024-10-19	16155.86
8072	2022-11-22	11149.19
8073	2024-10-10	9705.96
8074	2023-11-04	10698.15
8075	2023-02-18	17139.93
8076	2021-10-21	14821.17
8077	2023-08-28	11451.31
8078	2023-11-11	17457.60
8079	2021-09-18	16495.03
8080	2020-06-18	11845.56
8081	2021-12-21	8194.87
8082	2021-04-30	9845.84
8083	2022-07-09	6786.09
8084	2023-10-02	10664.78
8085	2020-02-21	7186.71
8086	2020-08-19	10018.92
8087	2020-12-17	8461.23
8088	2021-08-24	7317.49
8089	2021-12-19	17300.59
8090	2024-07-11	7214.65
8091	2022-01-16	7750.03
8092	2020-06-14	11749.16
8093	2021-05-26	8944.13
8094	2020-12-28	7320.46
8095	2023-03-26	7301.81
8096	2021-07-02	13804.90
8097	2021-12-30	13269.24
8098	2024-05-27	15091.86
8099	2020-04-14	11016.15
8100	2024-01-15	17256.63
8101	2023-05-05	18021.22
8102	2022-10-25	12262.11
8103	2022-03-29	16535.14
8104	2023-06-14	13677.18
8105	2023-03-09	9266.55
8106	2020-11-13	9399.50
8107	2020-05-02	11169.88
8108	2022-03-23	10807.02
8109	2023-02-04	15846.64
8110	2023-01-02	8485.58
8111	2024-07-15	16994.78
8112	2023-02-26	17973.72
8113	2022-10-03	14025.54
8114	2024-01-02	16598.81
8115	2023-06-18	14030.11
8116	2023-03-22	10028.30
8117	2022-08-24	18014.92
8118	2020-11-27	13135.85
8119	2021-06-01	10275.32
8120	2020-11-18	9946.97
8121	2023-02-17	16695.58
8122	2020-01-24	16862.62
8123	2020-11-29	14736.38
8124	2021-08-08	14474.84
8125	2020-07-04	17293.70
8126	2021-07-01	16552.60
8127	2023-07-17	12762.11
8128	2023-06-26	9361.46
8129	2020-05-25	10913.36
8130	2020-07-30	13459.61
8131	2021-05-02	7221.90
8132	2022-05-30	13518.15
8133	2023-01-15	15224.33
8134	2024-06-10	17641.33
8135	2022-01-29	17547.75
8136	2020-12-11	11774.81
8137	2023-01-20	17839.85
8138	2024-01-28	16418.88
8139	2022-05-17	13231.18
8140	2022-08-26	12674.05
8141	2022-06-12	11082.32
8142	2021-06-30	14371.52
8143	2024-01-22	13650.26
8144	2020-06-12	11194.70
8145	2021-05-28	15810.70
8146	2021-01-07	17659.14
8147	2024-07-18	14479.62
8148	2024-07-08	17959.33
8149	2023-05-02	15652.17
8150	2020-07-05	9060.14
8151	2021-09-06	16597.09
8152	2024-11-14	17719.71
8153	2020-02-25	7313.72
8154	2021-01-18	8502.98
8155	2022-04-17	12724.12
8156	2024-08-09	6988.35
8157	2021-11-03	11086.68
8158	2022-06-25	18052.64
8159	2020-06-20	17967.34
8160	2022-02-07	14435.32
8161	2024-11-28	7235.76
8162	2023-01-17	9606.22
8163	2022-06-07	11361.81
8164	2024-04-10	14143.97
8165	2024-08-14	14742.00
8166	2022-08-01	7879.37
8167	2021-03-13	15511.94
8168	2023-02-27	8151.02
8169	2022-01-31	16964.15
8170	2024-10-11	7984.15
8171	2023-11-25	9724.81
8172	2022-05-28	9226.10
8173	2022-09-04	12562.08
8174	2021-01-24	6833.18
8175	2023-01-09	6892.59
8176	2022-07-24	12623.30
8177	2022-10-17	17315.12
8178	2023-10-09	7616.29
8179	2022-10-11	6608.61
8180	2023-01-23	12689.40
8181	2021-11-20	8290.18
8182	2022-10-01	10327.87
8183	2023-11-08	8395.76
8184	2021-12-04	8979.53
8185	2020-11-20	11379.19
8186	2024-06-15	6971.55
8187	2021-05-30	10026.23
8188	2021-06-26	11868.27
8189	2024-03-04	9408.13
8190	2022-06-19	10150.01
8191	2021-05-19	6859.82
8192	2024-03-02	15821.67
8193	2021-08-04	11307.64
8194	2022-11-02	13113.04
8195	2024-10-31	16971.60
8196	2024-05-26	7686.21
8197	2024-06-26	10571.98
8198	2020-03-12	16759.77
8199	2021-10-25	17987.96
8200	2023-07-25	8006.95
8201	2020-07-23	10678.82
8202	2024-06-21	11056.71
8203	2020-08-06	17719.88
8204	2021-04-07	6861.21
8205	2022-02-08	14895.09
8206	2022-02-08	7432.15
8207	2022-08-16	6623.86
8208	2021-10-05	11189.63
8209	2024-04-24	17419.53
8210	2021-01-25	11804.08
8211	2021-07-30	6967.06
8212	2022-09-23	7488.06
8213	2024-01-24	11190.24
8214	2024-03-14	13003.40
8215	2021-02-07	9145.02
8216	2023-10-20	7811.78
8217	2024-10-12	12915.42
8218	2022-01-01	15661.05
8219	2022-01-24	9563.42
8220	2022-03-13	7606.43
8221	2021-12-13	8714.41
8222	2022-08-19	15460.23
8223	2022-11-13	7533.98
8224	2020-11-16	12176.05
8225	2020-11-03	17316.10
8226	2022-10-02	7306.97
8227	2022-05-08	18065.03
8228	2022-07-05	11071.26
8229	2022-01-14	15910.88
8230	2022-08-05	6881.49
8231	2021-01-31	14207.16
8232	2021-04-23	11981.10
8233	2023-04-08	16910.42
8234	2020-02-26	13662.70
8235	2023-06-10	12848.94
8236	2021-10-17	15373.93
8237	2021-09-17	10226.89
8238	2023-10-07	15889.56
8239	2023-11-13	8061.47
8240	2023-05-16	11883.68
8241	2020-06-26	17121.41
8242	2024-09-21	14846.50
8243	2024-03-04	11660.94
8244	2024-09-08	14338.14
8245	2023-03-20	6686.54
8246	2024-03-15	9675.05
8247	2021-04-03	17940.42
8248	2024-09-11	10483.35
8249	2024-06-12	8460.55
8250	2024-11-05	15157.03
8251	2021-03-08	16357.34
8252	2021-10-03	14478.42
8253	2021-06-03	8637.27
8254	2020-02-23	12544.78
8255	2023-11-28	17895.34
8256	2022-12-12	9030.00
8257	2022-09-08	9854.20
8258	2024-07-23	12495.04
8259	2024-08-17	11888.14
8260	2023-10-19	8153.41
8261	2020-03-02	9520.28
8262	2022-11-05	13587.09
8263	2023-08-07	7660.93
8264	2024-05-17	17482.16
8265	2024-02-28	15243.15
8266	2023-05-31	12263.83
8267	2020-07-01	17777.29
8268	2024-03-10	13610.71
8269	2021-07-21	9447.94
8270	2020-01-06	12951.51
8271	2020-09-26	7990.93
8272	2022-04-03	11571.20
8273	2020-06-06	7996.77
8274	2023-05-15	11484.92
8275	2023-12-26	15764.72
8276	2024-09-22	10918.25
8277	2020-03-18	14875.33
8278	2021-05-17	6908.66
8279	2023-11-01	7572.93
8280	2023-03-20	9577.05
8281	2020-12-28	6697.88
8282	2022-11-20	9915.60
8283	2023-02-13	9155.45
8284	2022-04-08	13540.32
8285	2023-07-09	16685.74
8286	2022-12-31	9566.43
8287	2024-10-31	8922.53
8288	2021-07-31	15987.03
8289	2022-09-20	9545.86
8290	2020-04-25	7550.19
8291	2023-05-06	10769.92
8292	2020-02-05	17755.67
8293	2020-11-20	9384.94
8294	2022-02-07	8167.23
8295	2024-01-31	12584.72
8296	2024-10-04	16823.93
8297	2022-03-16	11087.18
8298	2020-11-21	8713.52
8299	2024-08-16	11830.85
8300	2023-03-09	14201.96
8301	2021-04-02	7023.92
8302	2020-11-19	15233.75
8303	2021-05-27	12787.45
8304	2024-10-17	14801.79
8305	2020-07-23	8087.41
8306	2020-01-15	17217.11
8307	2024-09-19	11066.86
8308	2022-03-08	13844.20
8309	2023-08-18	17191.98
8310	2020-01-24	16085.58
8311	2021-07-22	14563.88
8312	2022-11-28	8458.32
8313	2022-06-28	7347.18
8314	2023-11-28	14636.17
8315	2020-11-30	12230.71
8316	2022-12-21	10028.52
8317	2023-06-14	12474.31
8318	2022-12-19	7058.30
8319	2021-10-08	9210.32
8320	2022-01-12	13633.05
8321	2020-03-02	16979.78
8322	2022-05-26	16542.88
8323	2024-06-04	7691.93
8324	2022-10-15	9627.81
8325	2023-09-19	13960.44
8326	2020-01-30	17376.82
8327	2024-08-10	7788.08
8328	2024-02-21	15178.57
8329	2021-07-23	12237.52
8330	2024-04-27	10776.85
8331	2020-12-11	7897.91
8332	2024-01-04	10381.81
8333	2023-10-09	12486.72
8334	2022-11-24	12779.72
8335	2024-10-07	13672.69
8336	2022-05-31	18015.46
8337	2024-09-13	14338.34
8338	2022-11-06	8928.21
8339	2024-11-13	12611.57
8340	2023-04-22	11559.47
8341	2024-10-31	7461.95
8342	2020-02-28	15035.43
8343	2021-10-11	13152.79
8344	2021-11-06	12433.71
8345	2020-09-13	14588.31
8346	2024-09-12	8269.86
8347	2023-07-30	17336.60
8348	2023-08-29	17428.66
8349	2023-01-19	14924.18
8350	2023-07-24	9609.64
8351	2024-12-01	12846.14
8352	2021-06-23	9204.24
8353	2024-11-08	8426.73
8354	2024-08-17	15060.83
8355	2021-05-18	16120.52
8356	2024-11-22	9654.48
8357	2020-06-16	17969.67
8358	2024-11-15	8080.13
8359	2021-06-19	13970.23
8360	2022-01-29	15852.55
8361	2023-09-01	13475.70
8362	2021-07-17	10892.96
8363	2024-05-21	13450.73
8364	2023-04-02	13769.78
8365	2020-10-02	14539.62
8366	2022-08-25	16845.04
8367	2021-07-15	14725.63
8368	2021-03-05	9020.44
8369	2020-05-10	11604.80
8370	2022-05-05	10751.02
8371	2022-10-15	6992.10
8372	2023-10-09	6957.49
8373	2022-05-19	15004.84
8374	2020-08-30	17420.08
8375	2021-01-22	11517.29
8376	2022-10-17	7383.50
8377	2021-03-01	15935.50
8378	2020-01-31	14372.55
8379	2023-05-30	14648.53
8380	2021-02-01	14228.41
8381	2021-11-08	9955.08
8382	2022-09-25	17716.09
8383	2023-05-03	16530.90
8384	2024-06-13	7269.31
8385	2022-05-16	15136.17
8386	2021-06-25	14270.16
8387	2021-09-18	12235.70
8388	2020-04-02	11253.72
8389	2021-08-25	15881.02
8390	2024-01-21	16179.76
8391	2024-03-31	13721.62
8392	2022-09-26	10408.60
8393	2024-07-23	17084.42
8394	2023-02-18	14471.94
8395	2020-02-25	17405.25
8396	2020-12-16	7058.47
8397	2023-05-22	12362.69
8398	2024-08-05	15165.35
8399	2020-01-10	11958.47
8400	2021-12-08	9598.87
8401	2021-11-11	11479.66
8402	2023-05-21	10546.64
8403	2021-03-15	16060.30
8404	2024-09-24	13135.92
8405	2023-08-16	17443.28
8406	2022-07-19	8644.94
8407	2023-07-15	9855.90
8408	2024-02-21	16426.30
8409	2024-05-07	11204.71
8410	2024-11-04	14622.39
8411	2021-04-10	15436.71
8412	2023-11-13	17648.97
8413	2023-04-09	12429.87
8414	2021-02-23	6703.63
8415	2023-07-22	7824.28
8416	2020-09-18	8924.14
8417	2021-02-13	14246.56
8418	2023-06-19	11396.38
8419	2024-03-27	14273.80
8420	2023-03-27	9252.79
8421	2021-07-04	15456.45
8422	2022-10-08	14524.03
8423	2024-10-26	6675.60
8424	2020-06-03	15729.35
8425	2022-01-16	11051.53
8426	2022-06-19	8012.19
8427	2022-10-01	8951.84
8428	2022-01-03	17490.41
8429	2024-11-05	16421.90
8430	2022-02-13	15507.86
8431	2021-05-23	14310.89
8432	2023-03-01	13839.37
8433	2024-11-29	15793.99
8434	2022-10-17	12887.48
8435	2020-03-25	7156.22
8436	2022-08-20	9195.51
8437	2024-02-03	10691.92
8438	2020-04-02	10818.33
8439	2024-06-12	11255.17
8440	2023-12-07	11514.59
8441	2021-07-13	13689.71
8442	2023-07-07	10509.18
8443	2024-04-02	7380.51
8444	2021-06-02	8234.74
8445	2024-02-15	16699.56
8446	2022-12-15	6931.25
8447	2022-08-09	10173.04
8448	2021-04-15	16461.89
8449	2020-12-31	7150.51
8450	2024-01-22	11007.16
8451	2024-02-10	16872.29
8452	2024-02-18	8968.80
8453	2021-06-12	16424.44
8454	2023-10-05	15323.61
8455	2020-02-25	16800.55
8456	2024-06-24	8079.48
8457	2024-05-04	7037.60
8458	2023-04-29	15431.72
8459	2020-02-23	17735.17
8460	2022-12-14	11127.87
8461	2022-10-26	13436.69
8462	2020-09-24	15610.38
8463	2023-09-20	9719.94
8464	2021-11-10	7156.49
8465	2022-03-14	8754.94
8466	2024-01-12	10219.33
8467	2023-09-27	16122.58
8468	2022-09-17	12530.03
8469	2023-05-31	11030.66
8470	2024-09-15	14296.34
8471	2022-12-30	12089.28
8472	2020-03-21	11745.60
8473	2024-01-25	10368.38
8474	2021-04-20	7853.37
8475	2024-06-17	8212.82
8476	2022-04-05	15223.72
8477	2021-08-07	11249.39
8478	2020-02-01	12416.88
8479	2024-03-24	11859.27
8480	2021-06-30	7544.58
8481	2020-03-12	12979.77
8482	2022-12-19	10088.08
8483	2022-07-04	6712.61
8484	2021-07-22	7185.65
8485	2024-10-19	11517.57
8486	2021-06-20	11389.94
8487	2020-09-03	16028.60
8488	2020-08-07	10388.55
8489	2024-08-28	15022.51
8490	2021-05-05	17327.54
8491	2023-04-16	11208.36
8492	2021-03-24	15234.40
8493	2024-03-21	11216.24
8494	2023-10-16	7346.52
8495	2021-11-08	9355.37
8496	2022-06-30	11527.72
8497	2023-08-26	10786.87
8498	2022-04-25	15570.06
8499	2024-11-26	10673.82
8500	2024-07-19	16825.26
8501	2021-05-20	13116.34
8502	2020-10-12	13820.32
8503	2022-07-16	8312.21
8504	2024-09-02	17438.23
8505	2020-04-17	12638.02
8506	2021-01-01	16543.18
8507	2022-05-16	11714.19
8508	2023-07-19	7033.92
8509	2020-02-06	15870.75
8510	2020-06-24	15611.52
8511	2021-02-22	11440.83
8512	2024-07-10	10165.27
8513	2021-12-01	13393.82
8514	2020-12-06	8715.48
8515	2024-05-27	11647.27
8516	2024-09-30	8417.38
8517	2023-09-05	16603.48
8518	2021-01-19	8899.92
8519	2021-08-14	16037.38
8520	2022-04-23	10127.82
8521	2023-09-30	7194.26
8522	2023-08-18	9572.69
8523	2020-12-04	16443.98
8524	2022-10-19	16775.78
8525	2020-12-22	15037.34
8526	2022-03-18	10250.45
8527	2021-06-16	7766.08
8528	2021-05-02	16365.15
8529	2024-07-19	8564.62
8530	2023-03-28	12614.99
8531	2024-08-01	13069.29
8532	2022-10-26	10192.07
8533	2020-12-22	14839.69
8534	2024-08-09	15580.02
8535	2022-11-20	12434.43
8536	2024-05-22	9714.61
8537	2021-03-07	10722.15
8538	2020-02-20	13769.28
8539	2021-03-25	15434.90
8540	2024-03-29	9239.62
8541	2022-11-25	7852.19
8542	2021-01-31	13762.32
8543	2022-12-12	11549.08
8544	2021-11-14	7560.05
8545	2020-02-06	9150.97
8546	2022-09-26	17016.44
8547	2023-03-23	13931.96
8548	2021-06-11	16491.44
8549	2021-06-28	7021.48
8550	2020-09-13	7218.44
8551	2022-12-03	11618.12
8552	2024-02-23	11495.24
8553	2022-10-31	17839.58
8554	2020-03-23	13524.35
8555	2024-04-13	8341.94
8556	2020-11-03	14570.17
8557	2024-03-27	11368.23
8558	2020-09-10	14481.33
8559	2022-02-12	16696.04
8560	2022-08-31	15845.06
8561	2022-09-02	11930.27
8562	2023-05-13	10083.11
8563	2022-04-26	7758.80
8564	2020-11-15	14912.45
8565	2024-01-24	14934.08
8566	2022-05-27	13347.29
8567	2021-10-18	9013.54
8568	2022-12-14	17617.63
8569	2022-11-19	17654.76
8570	2023-11-26	12507.99
8571	2021-12-01	9770.42
8572	2023-01-26	12870.41
8573	2020-09-12	12718.72
8574	2021-07-05	13196.18
8575	2020-12-11	11187.91
8576	2020-11-03	10696.75
8577	2022-01-19	16072.00
8578	2023-06-08	12016.37
8579	2022-05-02	14947.67
8580	2024-01-21	6995.55
8581	2022-06-15	11944.23
8582	2020-10-06	12766.42
8583	2020-03-30	14518.57
8584	2020-07-07	8142.52
8585	2020-07-05	7692.68
8586	2021-11-26	10193.64
8587	2021-10-03	9611.72
8588	2023-05-07	11630.64
8589	2020-05-17	16926.09
8590	2024-12-05	17966.68
8591	2020-10-26	7037.47
8592	2024-02-05	9622.21
8593	2021-03-26	15022.69
8594	2024-03-22	11785.23
8595	2023-07-19	14386.38
8596	2021-11-25	9093.71
8597	2024-09-19	16127.93
8598	2022-06-13	16723.61
8599	2024-09-19	7437.44
8600	2024-09-26	16998.87
8601	2021-05-15	16703.40
8602	2023-10-14	10847.43
8603	2024-06-16	14401.09
8604	2024-10-29	17097.52
8605	2022-08-26	8872.53
8606	2023-05-02	10781.54
8607	2022-07-25	14750.62
8608	2024-02-17	10626.11
8609	2021-03-26	9468.72
8610	2023-04-08	16442.34
8611	2020-03-11	8454.50
8612	2022-06-24	7810.45
8613	2021-11-09	10498.92
8614	2020-06-11	11249.23
8615	2023-09-12	9530.65
8616	2023-02-24	12946.88
8617	2023-05-19	13317.85
8618	2021-11-16	7846.18
8619	2023-08-09	8141.50
8620	2022-05-18	10529.08
8621	2022-04-04	9892.79
8622	2022-11-21	10395.45
8623	2020-11-10	7840.21
8624	2021-06-20	7421.99
8625	2022-08-28	7279.55
8626	2020-03-05	9164.26
8627	2024-02-08	11773.92
8628	2024-04-08	17267.34
8629	2023-07-13	8453.20
8630	2020-05-18	8683.19
8631	2023-03-27	7253.98
8632	2024-01-16	9899.71
8633	2022-10-16	13332.28
8634	2020-07-08	8699.35
8635	2021-08-01	17684.14
8636	2020-09-04	10305.64
8637	2021-08-03	15599.45
8638	2023-12-10	13772.04
8639	2021-05-24	9290.32
8640	2020-08-07	10098.12
8641	2020-12-18	12057.55
8642	2020-07-14	10394.90
8643	2022-10-09	10164.35
8644	2023-02-01	14027.99
8645	2022-02-04	7395.04
8646	2022-03-30	13722.64
8647	2022-06-01	16959.66
8648	2023-11-05	11248.71
8649	2024-02-05	7826.26
8650	2024-03-05	10550.05
8651	2020-04-12	15071.71
8652	2020-07-04	13939.49
8653	2021-06-23	9550.60
8654	2021-06-28	8314.15
8655	2021-02-13	14263.45
8656	2021-12-05	15177.12
8657	2020-01-09	10007.82
8658	2021-01-13	9712.58
8659	2023-09-27	14932.57
8660	2023-08-28	9496.64
8661	2020-11-05	11128.96
8662	2023-03-23	7895.26
8663	2021-12-23	16066.93
8664	2023-03-10	7566.92
8665	2021-03-24	8537.18
8666	2023-03-03	11700.01
8667	2021-10-08	7471.19
8668	2020-05-17	14831.88
8669	2023-12-22	10344.18
8670	2023-09-17	17450.35
8671	2021-01-12	8657.89
8672	2024-08-31	7492.57
8673	2020-09-23	17594.18
8674	2022-08-24	9712.18
8675	2022-04-11	9847.52
8676	2022-07-26	8772.72
8677	2024-03-23	9207.46
8678	2020-02-14	12596.28
8679	2021-05-04	8124.18
8680	2020-11-16	11485.93
8681	2024-01-18	15822.11
8682	2024-10-08	14103.45
8683	2020-11-14	8050.91
8684	2024-10-16	11185.67
8685	2021-03-20	10339.84
8686	2022-02-18	12352.01
8687	2020-10-12	9543.95
8688	2023-08-06	12422.49
8689	2023-01-18	8168.36
8690	2020-02-29	17289.25
8691	2021-12-26	12692.29
8692	2022-10-02	12660.16
8693	2023-01-12	9388.91
8694	2023-08-16	13969.60
8695	2021-09-11	15501.16
8696	2021-11-30	17487.92
8697	2021-07-07	12192.07
8698	2024-08-14	15108.58
8699	2024-10-17	11079.50
8700	2020-06-12	7935.02
8701	2021-04-28	8516.29
8702	2024-01-23	14023.04
8703	2024-06-22	8968.59
8704	2021-08-05	15319.71
8705	2024-07-15	15555.83
8706	2022-03-04	14865.91
8707	2022-02-04	7917.60
8708	2023-11-10	15194.75
8709	2020-07-09	14653.57
8710	2020-01-29	14056.51
8711	2023-04-29	14523.50
8712	2024-04-18	10456.84
8713	2020-11-24	14337.55
8714	2021-01-03	7222.45
8715	2020-04-15	10446.65
8716	2021-11-26	7903.59
8717	2023-01-30	14301.74
8718	2020-12-26	14425.93
8719	2022-08-13	13432.71
8720	2024-12-01	16551.81
8721	2023-07-12	17968.09
8722	2024-09-28	11161.83
8723	2024-10-12	16094.13
8724	2022-03-14	15833.59
8725	2024-08-21	15615.23
8726	2023-12-26	8893.62
8727	2022-02-06	10091.01
8728	2020-10-08	15091.95
8729	2021-05-04	17988.48
8730	2022-09-10	11277.75
8731	2022-12-05	14878.26
8732	2023-11-15	8303.75
8733	2021-05-27	8149.87
8734	2020-11-08	16449.30
8735	2020-03-18	15659.20
8736	2022-01-03	15933.92
8737	2022-10-27	11734.38
8738	2024-03-20	17980.73
8739	2024-07-05	8023.67
8740	2022-08-05	8421.25
8741	2021-11-19	15130.77
8742	2022-02-23	12461.15
8743	2023-05-21	16340.47
8744	2023-12-06	16843.02
8745	2021-09-29	15582.89
8746	2024-02-18	15406.44
8747	2021-02-24	14667.01
8748	2021-10-09	10743.96
8749	2024-09-09	7559.72
8750	2024-08-17	6855.56
8751	2021-10-20	7835.81
8752	2020-10-09	16884.91
8753	2020-09-25	13393.60
8754	2024-10-26	15292.93
8755	2021-02-26	8599.93
8756	2023-09-30	11885.46
8757	2022-03-30	7174.28
8758	2020-04-21	15116.32
8759	2021-12-26	11076.32
8760	2022-07-25	7235.98
8761	2022-08-14	16857.60
8762	2020-08-31	15203.96
8763	2022-06-17	16599.48
8764	2024-02-10	12636.71
8765	2023-12-14	16570.80
8766	2020-05-19	9020.11
8767	2022-11-02	13108.09
8768	2024-10-12	13034.26
8769	2024-12-05	12715.83
8770	2021-04-27	15803.43
8771	2021-02-18	8914.69
8772	2021-04-23	7217.72
8773	2023-01-01	13403.18
8774	2020-02-17	14925.96
8775	2022-06-21	15995.03
8776	2022-06-16	15968.81
8777	2023-04-21	7470.10
8778	2021-07-01	13636.63
8779	2022-01-04	9007.89
8780	2023-08-14	10725.14
8781	2024-05-03	17430.31
8782	2021-08-15	6616.36
8783	2022-07-21	12825.85
8784	2021-05-03	11716.86
8785	2022-03-25	8439.05
8786	2021-04-20	15965.90
8787	2020-12-08	9327.44
8788	2023-02-25	10031.45
8789	2021-11-29	11971.56
8790	2023-09-01	8614.50
8791	2023-03-05	14087.81
8792	2021-12-09	10200.79
8793	2022-08-24	10829.45
8794	2024-08-06	13290.47
8795	2023-05-15	14782.96
8796	2020-01-01	7580.21
8797	2021-07-14	12557.97
8798	2020-11-03	6684.97
8799	2021-06-19	7260.92
8800	2020-02-16	7049.27
8801	2024-12-02	16918.38
8802	2024-05-22	11614.32
8803	2021-03-03	10031.09
8804	2021-12-19	8440.47
8805	2021-01-12	15603.01
8806	2022-08-13	14416.33
8807	2021-04-02	13256.24
8808	2024-05-13	11247.62
8809	2020-08-12	8264.19
8810	2023-10-10	13544.57
8811	2020-01-05	11537.20
8812	2021-11-08	13949.92
8813	2021-05-03	17213.60
8814	2020-09-26	9291.06
8815	2022-10-28	12241.90
8816	2024-10-20	12613.33
8817	2024-02-09	16527.33
8818	2024-09-11	11482.05
8819	2024-11-07	12471.72
8820	2022-12-18	8294.23
8821	2022-01-05	12342.52
8822	2020-10-05	15961.68
8823	2020-06-26	14786.48
8824	2023-11-13	14561.83
8825	2021-10-26	16915.36
8826	2021-09-12	15302.13
8827	2022-07-15	12144.19
8828	2023-03-21	11402.71
8829	2020-12-06	8338.44
8830	2023-08-14	14357.77
8831	2020-12-24	11530.52
8832	2023-08-12	16627.83
8833	2022-01-30	6767.69
8834	2022-06-07	11407.12
8835	2024-08-11	13877.67
8836	2023-06-05	8649.15
8837	2023-06-22	15245.54
8838	2024-06-22	12770.49
8839	2022-06-23	7373.39
8840	2024-10-09	7375.67
8841	2020-03-29	14560.56
8842	2024-08-13	10487.48
8843	2023-11-22	8493.22
8844	2023-03-17	15584.52
8845	2024-07-15	10128.23
8846	2022-10-10	12355.32
8847	2022-05-29	14076.84
8848	2024-08-01	12117.66
8849	2021-10-16	10141.06
8850	2023-05-15	7037.16
8851	2022-01-25	12713.51
8852	2024-01-15	17345.08
8853	2022-09-14	14713.57
8854	2024-01-30	6748.71
8855	2024-04-28	18052.59
8856	2022-10-04	9888.93
8857	2022-06-16	6712.97
8858	2022-10-23	15018.34
8859	2024-09-07	7427.12
8860	2021-10-19	15895.47
8861	2023-11-13	17740.04
8862	2021-11-09	14547.93
8863	2022-11-02	8991.62
8864	2020-11-02	8660.16
8865	2021-04-07	10908.20
8866	2021-06-05	12316.38
8867	2020-04-21	6654.04
8868	2021-04-28	13868.43
8869	2023-06-28	13731.91
8870	2023-06-07	10375.04
8871	2022-06-22	18055.92
8872	2024-06-30	12184.35
8873	2021-09-18	14900.23
8874	2020-01-04	8540.43
8875	2022-01-29	16822.88
8876	2022-12-03	10145.25
8877	2020-04-22	6678.50
8878	2022-10-31	14394.85
8879	2023-02-14	17916.47
8880	2022-11-30	17164.21
8881	2023-01-15	12263.64
8882	2021-01-30	16326.73
8883	2022-12-19	16288.86
8884	2023-03-15	14292.62
8885	2021-02-24	8279.39
8886	2022-05-06	14604.07
8887	2023-04-22	9453.52
8888	2024-04-29	11324.77
8889	2023-10-07	10966.93
8890	2024-11-18	16619.54
8891	2022-08-23	7218.48
8892	2022-04-24	7014.37
8893	2024-09-17	17272.02
8894	2023-07-14	11232.97
8895	2024-01-13	9041.68
8896	2023-10-04	13522.58
8897	2023-08-25	14048.49
8898	2022-12-09	14252.90
8899	2022-11-16	14122.41
8900	2024-06-12	14695.08
8901	2021-05-14	7410.80
8902	2023-04-21	10148.31
8903	2023-02-21	13169.55
8904	2021-03-13	12166.28
8905	2023-06-01	16201.12
8906	2020-10-02	11598.23
8907	2020-03-17	16898.33
8908	2022-04-11	10463.83
8909	2024-04-26	13212.38
8910	2022-05-01	9536.03
8911	2022-06-02	11438.02
8912	2023-10-02	13344.03
8913	2021-10-20	16721.33
8914	2024-05-25	7137.16
8915	2024-10-18	16160.09
8916	2023-06-01	14022.22
8917	2023-12-14	7467.32
8918	2023-11-25	14987.90
8919	2023-01-15	15947.85
8920	2021-06-03	12408.33
8921	2024-04-04	13931.01
8922	2020-02-20	15176.27
8923	2024-11-08	17655.63
8924	2022-10-19	9182.23
8925	2024-11-26	11542.96
8926	2022-08-07	8576.82
8927	2024-07-08	16493.90
8928	2023-08-26	8966.92
8929	2022-03-08	12416.64
8930	2024-01-04	15014.77
8931	2023-07-01	13218.92
8932	2020-06-04	14812.65
8933	2020-03-08	10604.89
8934	2021-01-22	14398.21
8935	2021-12-13	12228.80
8936	2023-06-25	15614.75
8937	2020-01-30	13797.98
8938	2021-05-22	12513.13
8939	2021-07-25	18063.36
8940	2023-05-15	16543.71
8941	2020-03-20	12477.13
8942	2024-02-05	9429.47
8943	2021-02-21	10377.06
8944	2024-03-14	8784.62
8945	2023-02-01	16768.11
8946	2020-02-14	11373.31
8947	2022-01-30	9228.64
8948	2023-01-29	10471.38
8949	2023-08-12	11652.54
8950	2020-04-22	9535.68
8951	2022-07-14	10767.66
8952	2022-04-05	13975.60
8953	2021-11-01	9382.36
8954	2023-10-24	6935.56
8955	2021-10-29	6984.55
8956	2022-07-09	9530.39
8957	2024-06-12	17090.71
8958	2021-03-10	17374.46
8959	2021-09-21	11923.03
8960	2020-05-03	7759.93
8961	2020-04-18	11759.65
8962	2020-03-15	13460.89
8963	2020-03-10	17437.98
8964	2024-04-05	14375.89
8965	2021-07-04	10727.22
8966	2023-12-18	12477.91
8967	2021-02-24	9727.87
8968	2023-07-03	12976.11
8969	2023-06-09	16372.39
8970	2020-02-26	8911.48
8971	2023-01-07	12639.89
8972	2023-06-16	15915.70
8973	2024-02-09	17228.30
8974	2022-01-29	8012.76
8975	2021-03-09	13331.59
8976	2022-07-14	15933.51
8977	2022-09-06	12728.75
8978	2021-12-15	13967.04
8979	2022-04-08	17249.63
8980	2021-05-31	11309.36
8981	2020-06-29	10124.88
8982	2024-08-23	10587.26
8983	2022-01-12	11653.04
8984	2021-01-16	14794.35
8985	2020-08-30	15978.89
8986	2023-10-31	9352.75
8987	2021-11-12	13267.56
8988	2020-09-28	11517.78
8989	2020-12-14	8409.28
8990	2020-11-04	14660.07
8991	2024-02-13	12733.85
8992	2020-06-24	17789.44
8993	2021-03-08	16461.68
8994	2024-10-29	11630.80
8995	2023-05-20	17340.85
8996	2024-08-28	17854.30
8997	2024-06-23	11099.88
8998	2022-06-03	12835.64
8999	2022-02-26	13300.32
9000	2020-10-28	14073.24
9001	2024-10-10	17081.93
9002	2020-01-11	9446.31
9003	2023-01-14	9023.09
9004	2022-11-23	9750.50
9005	2023-12-22	8934.72
9006	2020-07-12	7348.54
9007	2022-12-21	6608.00
9008	2021-03-11	14189.71
9009	2020-01-24	15363.85
9010	2024-07-12	12807.65
9011	2024-04-01	17724.12
9012	2021-04-07	13875.93
9013	2022-07-02	12347.29
9014	2021-05-31	7834.66
9015	2021-07-07	15079.02
9016	2023-09-02	12772.39
9017	2024-07-12	6796.54
9018	2024-10-20	12774.20
9019	2024-11-30	10584.66
9020	2021-06-24	7680.15
9021	2024-10-31	15958.00
9022	2022-04-29	11703.72
9023	2021-11-26	8364.95
9024	2022-10-22	15843.79
9025	2021-03-22	15054.21
9026	2023-08-18	9522.39
9027	2021-07-31	6717.08
9028	2021-01-11	8088.49
9029	2021-02-16	15564.27
9030	2023-09-27	8344.79
9031	2023-10-13	7335.76
9032	2021-05-07	10057.46
9033	2020-05-04	12007.22
9034	2022-09-29	7077.75
9035	2022-09-11	10537.63
9036	2023-12-14	11754.25
9037	2023-06-27	14108.05
9038	2022-09-03	13819.23
9039	2024-10-17	13476.60
9040	2022-07-11	9355.53
9041	2023-05-20	8387.84
9042	2023-08-08	10022.08
9043	2020-12-05	9650.31
9044	2024-04-29	8181.14
9045	2020-06-06	11481.23
9046	2023-07-19	8422.28
9047	2022-09-25	17435.95
9048	2023-08-11	11218.21
9049	2021-11-15	8586.43
9050	2023-07-04	17212.46
9051	2022-06-04	15543.89
9052	2021-01-16	14047.80
9053	2024-06-13	12504.71
9054	2020-12-15	14562.25
9055	2021-10-20	11423.66
9056	2024-06-02	7811.10
9057	2024-09-22	15595.51
9058	2020-10-28	7142.77
9059	2023-03-14	16752.56
9060	2024-07-13	15276.74
9061	2020-11-05	7588.90
9062	2020-10-30	8041.07
9063	2022-08-21	15530.66
9064	2023-03-20	7854.84
9065	2020-10-04	8399.27
9066	2020-06-01	16383.05
9067	2022-05-15	11682.29
9068	2023-12-20	17147.08
9069	2021-01-11	6643.32
9070	2021-10-17	13382.08
9071	2020-01-18	10033.99
9072	2022-05-10	15146.82
9073	2022-03-29	11788.24
9074	2024-05-05	13802.54
9075	2021-01-25	17346.80
9076	2024-07-20	13450.33
9077	2022-10-27	15888.69
9078	2020-05-18	11232.30
9079	2024-05-12	17129.48
9080	2024-09-17	15248.22
9081	2023-07-05	14369.23
9082	2021-07-31	16585.58
9083	2022-10-13	15924.48
9084	2024-03-05	13959.18
9085	2022-08-12	6633.34
9086	2022-10-02	12893.47
9087	2023-02-04	12242.83
9088	2022-11-27	13633.38
9089	2021-08-31	8208.32
9090	2020-04-06	16391.15
9091	2020-07-24	8844.79
9092	2024-06-16	8049.67
9093	2024-06-30	7880.37
9094	2024-07-11	9188.95
9095	2023-11-10	12639.22
9096	2021-03-31	17102.29
9097	2024-01-05	17820.58
9098	2022-11-19	12471.60
9099	2020-11-18	16584.22
9100	2021-11-24	6978.94
9101	2024-06-13	16155.64
9102	2020-09-28	14891.45
9103	2021-03-29	16013.46
9104	2024-07-29	8155.93
9105	2023-07-17	12725.57
9106	2020-09-15	14752.87
9107	2022-06-19	13642.10
9108	2023-07-03	13735.90
9109	2021-04-10	10146.83
9110	2020-08-13	9963.74
9111	2022-05-24	18083.09
9112	2020-08-29	7313.26
9113	2020-02-01	12775.86
9114	2024-05-03	15612.50
9115	2020-06-23	7584.98
9116	2021-12-15	14007.44
9117	2020-06-04	12138.27
9118	2023-09-27	7073.10
9119	2022-08-23	9841.77
9120	2020-01-14	13160.33
9121	2021-11-26	13995.88
9122	2021-08-30	10205.36
9123	2020-05-07	10618.03
9124	2023-03-08	18013.08
9125	2023-07-16	7900.67
9126	2023-06-16	16494.94
9127	2021-04-18	11463.13
9128	2021-12-27	11080.79
9129	2020-04-19	10765.43
9130	2021-03-02	10941.38
9131	2020-02-27	13035.66
9132	2021-11-17	14940.82
9133	2022-12-26	8587.87
9134	2021-12-10	10990.42
9135	2023-09-07	17052.02
9136	2020-08-02	11039.45
9137	2023-10-28	10872.57
9138	2024-01-21	15662.05
9139	2020-09-26	11853.25
9140	2021-09-01	8218.31
9141	2023-03-27	14710.35
9142	2024-11-06	15556.94
9143	2024-05-03	9662.46
9144	2022-02-19	9910.00
9145	2023-10-05	15854.10
9146	2022-05-06	17182.66
9147	2022-06-10	10622.79
9148	2020-02-03	12046.40
9149	2023-12-31	13242.74
9150	2021-12-04	7021.41
9151	2024-09-12	9746.75
9152	2023-03-27	17421.07
9153	2022-11-01	6930.16
9154	2021-12-25	12139.68
9155	2022-01-22	15123.86
9156	2022-10-12	16921.35
9157	2023-05-31	11774.75
9158	2021-08-12	15275.51
9159	2022-11-02	17026.20
9160	2021-10-03	11573.36
9161	2024-04-09	13110.28
9162	2021-05-08	13589.45
9163	2021-08-26	17730.54
9164	2024-11-23	17049.71
9165	2020-08-11	9566.58
9166	2020-03-26	7522.65
9167	2020-10-11	11363.30
9168	2022-02-08	12869.34
9169	2022-06-23	9453.92
9170	2023-10-29	17919.29
9171	2024-09-30	17556.51
9172	2024-05-11	14981.21
9173	2024-06-05	13718.87
9174	2020-01-04	14591.36
9175	2024-04-19	14339.60
9176	2024-08-09	9504.00
9177	2021-05-04	10195.66
9178	2023-07-17	17367.16
9179	2021-06-16	11722.87
9180	2021-11-06	12149.53
9181	2022-11-04	8018.44
9182	2024-10-13	16345.65
9183	2024-06-24	7617.02
9184	2022-01-25	14452.91
9185	2020-04-10	6649.75
9186	2020-11-20	14916.77
9187	2020-05-24	7678.44
9188	2020-03-14	15421.54
9189	2020-01-07	8029.63
9190	2022-04-28	15561.38
9191	2022-02-09	11147.88
9192	2022-01-01	11610.13
9193	2021-07-07	8495.79
9194	2020-11-28	14750.80
9195	2020-03-04	8855.66
9196	2021-06-08	17383.19
9197	2023-05-26	17920.72
9198	2021-05-20	17046.57
9199	2020-01-02	17469.76
9200	2023-01-22	11806.56
9201	2024-10-05	10525.01
9202	2022-09-29	12130.60
9203	2020-11-19	15470.76
9204	2022-04-05	7821.36
9205	2020-10-29	11165.62
9206	2022-12-16	16117.49
9207	2020-12-20	16894.32
9208	2024-02-28	16945.06
9209	2022-01-10	15038.00
9210	2020-02-13	15508.06
9211	2023-07-25	16228.84
9212	2024-06-08	16875.66
9213	2021-02-16	17082.51
9214	2020-11-08	10452.85
9215	2021-05-29	16259.68
9216	2023-12-13	10945.25
9217	2022-12-27	7463.01
9218	2023-08-23	11552.59
9219	2021-04-21	16916.28
9220	2023-03-03	17811.32
9221	2022-10-22	15122.27
9222	2023-11-04	14461.82
9223	2021-06-17	11974.34
9224	2022-02-07	8073.82
9225	2023-01-24	16379.84
9226	2024-05-16	14509.47
9227	2024-06-29	8657.40
9228	2020-05-23	14238.09
9229	2024-10-07	8007.58
9230	2022-09-20	10544.86
9231	2024-09-24	9419.41
9232	2022-12-19	17659.22
9233	2023-09-08	17617.10
9234	2023-10-28	7246.45
9235	2024-06-08	17323.07
9236	2023-12-30	7959.81
9237	2020-02-29	15324.59
9238	2024-09-10	17032.02
9239	2023-07-18	7382.77
9240	2021-04-24	10808.71
9241	2024-07-08	8269.42
9242	2021-02-13	7342.22
9243	2021-05-29	10681.95
9244	2020-02-02	6623.96
9245	2021-05-16	10546.97
9246	2022-04-22	16106.18
9247	2022-09-08	16570.99
9248	2023-02-26	8063.87
9249	2021-11-09	11075.03
9250	2024-07-15	12809.93
9251	2020-01-28	11990.27
9252	2022-09-28	15723.87
9253	2023-05-26	17085.64
9254	2023-07-31	15497.75
9255	2024-11-15	11093.72
9256	2021-11-27	16186.86
9257	2024-11-18	7399.30
9258	2023-10-30	12927.14
9259	2022-03-19	6965.78
9260	2023-05-14	13875.01
9261	2021-06-29	16056.95
9262	2023-12-02	13619.15
9263	2020-06-27	13255.83
9264	2020-01-20	11119.44
9265	2020-12-17	14435.51
9266	2024-06-17	14194.11
9267	2022-05-05	9243.70
9268	2020-09-05	7424.64
9269	2021-09-05	7093.36
9270	2024-10-24	13294.27
9271	2020-09-13	16634.90
9272	2020-08-13	12688.28
9273	2022-05-17	12663.37
9274	2020-01-14	17948.34
9275	2024-04-22	13685.33
9276	2021-03-21	6935.02
9277	2020-07-27	15693.10
9278	2024-11-26	12964.63
9279	2023-01-14	6603.03
9280	2020-06-20	11622.84
9281	2023-02-19	9593.95
9282	2023-09-08	17245.95
9283	2020-07-23	14529.44
9284	2022-08-31	15995.93
9285	2022-12-21	9235.23
9286	2020-11-26	13058.89
9287	2020-10-19	10670.40
9288	2021-08-10	7421.19
9289	2023-06-01	16850.68
9290	2021-09-02	9741.22
9291	2021-03-20	13780.79
9292	2022-03-11	13760.22
9293	2022-10-31	9697.61
9294	2020-05-28	16863.47
9295	2024-01-31	16049.17
9296	2023-08-08	13980.67
9297	2023-04-05	10631.40
9298	2023-02-24	8295.09
9299	2023-05-22	7508.75
9300	2024-04-28	14071.93
9301	2024-06-17	16991.76
9302	2021-10-28	8570.47
9303	2020-12-07	10232.90
9304	2024-01-08	10786.12
9305	2020-03-17	10561.18
9306	2020-10-15	17338.38
9307	2021-11-11	8518.40
9308	2021-06-28	16283.95
9309	2024-02-26	14478.58
9310	2024-06-04	7422.09
9311	2022-03-05	10197.42
9312	2021-01-26	7683.72
9313	2021-10-16	8494.69
9314	2020-06-19	10114.11
9315	2022-11-14	13357.37
9316	2020-12-25	12275.55
9317	2023-06-16	14914.65
9318	2021-03-30	8594.41
9319	2022-10-03	7453.91
9320	2023-04-24	14200.73
9321	2021-02-23	15999.62
9322	2023-10-02	14803.97
9323	2021-10-15	7375.56
9324	2024-11-27	10456.21
9325	2020-09-22	15410.12
9326	2020-11-30	16183.11
9327	2024-01-21	12331.19
9328	2020-03-10	7328.65
9329	2021-06-08	13805.16
9330	2022-09-26	13223.25
9331	2021-03-15	12222.57
9332	2023-07-03	15010.08
9333	2023-04-08	7500.35
9334	2022-03-09	9414.20
9335	2021-07-20	16862.05
9336	2020-04-26	8492.58
9337	2023-07-17	10527.83
9338	2024-06-09	14895.06
9339	2023-06-29	17613.39
9340	2021-07-12	15247.97
9341	2021-10-29	16725.27
9342	2021-09-23	8399.44
9343	2021-05-05	17965.18
9344	2021-04-08	12126.47
9345	2021-07-27	15197.75
9346	2020-12-03	14106.82
9347	2020-01-07	10353.10
9348	2021-01-16	10539.50
9349	2023-08-19	11887.80
9350	2022-04-11	14246.53
9351	2022-04-02	7000.21
9352	2023-12-01	8597.25
9353	2022-02-18	13867.88
9354	2021-07-30	13330.03
9355	2022-01-01	16976.41
9356	2022-10-05	7267.25
9357	2024-05-06	9747.03
9358	2021-03-26	13053.01
9359	2024-07-12	12010.51
9360	2023-07-15	17253.96
9361	2022-07-28	9687.97
9362	2021-04-22	17013.36
9363	2021-07-12	11829.28
9364	2022-04-17	16633.56
9365	2024-08-31	12035.18
9366	2022-08-24	11137.80
9367	2023-01-22	10237.87
9368	2021-08-03	15769.28
9369	2021-07-03	15937.80
9370	2022-10-05	10333.15
9371	2021-10-07	16938.62
9372	2021-11-13	6892.68
9373	2020-10-16	15545.39
9374	2020-11-13	10478.94
9375	2024-02-09	11904.75
9376	2020-06-04	10179.50
9377	2023-08-05	7645.57
9378	2022-04-15	14814.21
9379	2022-12-15	14516.06
9380	2024-05-13	13994.09
9381	2023-01-21	11884.75
9382	2024-04-24	17475.16
9383	2020-04-08	9987.89
9384	2020-10-24	13967.54
9385	2020-07-22	8578.83
9386	2023-08-26	15169.63
9387	2024-05-15	15141.11
9388	2020-07-16	7482.67
9389	2022-04-18	13776.27
9390	2022-10-20	14871.75
9391	2023-12-09	13662.89
9392	2021-05-19	7223.33
9393	2023-08-01	7442.25
9394	2022-03-06	11338.62
9395	2021-12-09	16948.92
9396	2023-02-23	16193.40
9397	2022-03-13	11847.19
9398	2022-04-06	15364.37
9399	2022-10-12	10139.74
9400	2023-10-26	6713.22
9401	2020-05-26	11376.06
9402	2022-09-24	7098.93
9403	2022-01-06	8533.34
9404	2024-08-01	16924.77
9405	2020-04-27	16214.52
9406	2020-07-10	8243.92
9407	2024-08-01	7761.69
9408	2024-02-26	13288.15
9409	2021-07-18	8055.06
9410	2024-06-06	9542.14
9411	2021-11-07	13801.90
9412	2021-01-10	16725.68
9413	2023-04-14	11749.36
9414	2024-02-10	8815.29
9415	2024-11-22	8332.78
9416	2020-05-10	6637.32
9417	2023-05-31	16456.98
9418	2024-11-14	10055.23
9419	2020-09-10	12279.53
9420	2023-08-22	7369.79
9421	2024-09-08	9629.08
9422	2021-05-17	12477.95
9423	2020-04-10	9592.47
9424	2021-06-08	9697.64
9425	2023-09-08	13087.07
9426	2022-02-25	16707.04
9427	2023-11-19	14794.09
9428	2022-06-30	12451.54
9429	2022-12-04	8261.82
9430	2021-12-05	8709.41
9431	2024-01-13	8213.22
9432	2021-03-20	8369.39
9433	2022-03-08	9457.10
9434	2022-08-19	7377.93
9435	2024-11-16	15944.77
9436	2023-03-18	12728.80
9437	2022-02-06	11862.91
9438	2023-12-08	16569.75
9439	2024-07-09	8814.95
9440	2022-11-20	10572.58
9441	2024-11-25	8797.02
9442	2022-06-29	14677.98
9443	2020-01-25	7092.07
9444	2020-08-07	11594.50
9445	2022-05-25	17573.99
9446	2022-05-27	10035.17
9447	2023-11-20	7690.05
9448	2021-07-09	14525.33
9449	2023-12-20	9542.83
9450	2021-03-04	17846.73
9451	2022-10-06	15662.90
9452	2024-10-15	11442.90
9453	2023-01-04	8306.47
9454	2020-04-04	17670.05
9455	2022-09-07	11840.35
9456	2023-03-08	14705.65
9457	2024-04-11	13301.19
9458	2021-02-28	16475.21
9459	2021-10-25	7572.98
9460	2023-05-16	8283.34
9461	2022-07-25	7788.36
9462	2023-11-20	10326.22
9463	2021-07-12	7827.95
9464	2023-01-22	15965.71
9465	2021-10-01	8566.56
9466	2022-08-21	9245.86
9467	2020-02-25	14847.03
9468	2024-06-05	9140.67
9469	2020-04-04	16294.22
9470	2021-10-01	17582.59
9471	2024-03-12	15374.61
9472	2021-06-22	12785.76
9473	2022-11-04	11543.45
9474	2022-05-04	15785.18
9475	2022-01-21	9119.09
9476	2022-07-01	17487.75
9477	2023-11-13	17725.39
9478	2021-07-03	14692.83
9479	2023-12-15	14420.38
9480	2023-08-14	15529.12
9481	2020-05-22	14467.96
9482	2023-11-17	17172.97
9483	2021-07-26	10160.04
9484	2020-06-17	10864.07
9485	2022-09-29	13114.79
9486	2023-05-03	12147.09
9487	2021-06-25	9654.66
9488	2023-01-09	14148.13
9489	2023-04-19	9921.76
9490	2024-08-28	12610.79
9491	2022-12-30	14119.89
9492	2023-12-16	17139.18
9493	2021-12-01	15969.98
9494	2024-06-25	9453.74
9495	2020-11-10	14517.65
9496	2020-01-22	16710.86
9497	2023-03-12	7955.23
9498	2020-12-31	10462.21
9499	2022-07-09	9484.87
9500	2022-05-11	17851.77
9501	2024-10-04	15864.37
9502	2020-03-26	9096.75
9503	2024-01-09	14377.84
9504	2023-06-04	10109.93
9505	2022-08-08	10151.16
9506	2021-12-04	7295.45
9507	2024-10-20	12923.58
9508	2023-05-02	7775.01
9509	2020-12-09	17863.22
9510	2023-02-22	15784.07
9511	2024-07-02	14130.33
9512	2021-12-27	10418.43
9513	2021-11-28	8644.53
9514	2020-11-04	14761.00
9515	2024-09-11	16553.44
9516	2024-04-27	10238.12
9517	2020-04-12	11588.91
9518	2022-11-12	13588.52
9519	2021-09-13	6732.96
9520	2022-09-06	8566.06
9521	2021-05-16	12084.44
9522	2024-04-06	8708.90
9523	2020-11-14	8995.47
9524	2024-06-15	9734.39
9525	2022-05-29	9969.83
9526	2024-02-25	17522.86
9527	2022-01-15	8251.91
9528	2020-12-13	9161.20
9529	2023-06-28	12180.34
9530	2024-09-09	17230.59
9531	2020-04-25	7115.66
9532	2023-12-18	15715.65
9533	2022-08-02	15516.55
9534	2024-07-14	12334.57
9535	2023-08-10	13691.67
9536	2021-02-06	8511.96
9537	2021-10-25	17763.87
9538	2024-08-11	17186.65
9539	2024-09-11	8249.61
9540	2022-06-07	10881.37
9541	2022-08-17	15124.57
9542	2020-08-08	13524.05
9543	2020-01-21	13960.97
9544	2024-06-03	12803.03
9545	2021-12-27	9950.15
9546	2024-08-31	6740.61
9547	2023-06-20	13385.96
9548	2024-02-01	6803.07
9549	2024-09-16	12318.87
9550	2022-05-12	9015.08
9551	2021-04-24	16616.32
9552	2024-02-27	7822.78
9553	2022-12-04	15257.60
9554	2023-05-13	16320.27
9555	2021-05-21	12266.58
9556	2024-08-27	6820.85
9557	2021-12-27	13124.64
9558	2021-08-15	12611.13
9559	2023-11-19	7670.12
9560	2021-02-16	12114.01
9561	2020-04-21	13580.72
9562	2022-05-22	8217.37
9563	2020-01-12	16609.23
9564	2023-01-10	15227.79
9565	2021-10-12	14711.19
9566	2021-08-19	11143.09
9567	2023-12-19	9655.46
9568	2020-12-03	14465.59
9569	2020-04-06	14267.86
9570	2021-06-08	11251.27
9571	2024-04-02	14307.81
9572	2023-06-20	16445.72
9573	2023-10-24	6681.39
9574	2023-09-09	10187.68
9575	2024-07-09	8528.52
9576	2020-08-08	9229.73
9577	2024-10-16	13779.71
9578	2021-10-08	15176.16
9579	2022-12-02	10928.32
9580	2020-05-16	13742.59
9581	2021-01-13	14554.71
9582	2024-03-21	10463.64
9583	2021-01-26	17902.96
9584	2020-05-10	6989.59
9585	2023-11-17	6600.42
9586	2020-06-22	14726.35
9587	2021-01-09	11085.32
9588	2021-11-03	14698.78
9589	2020-03-30	16137.41
9590	2021-12-03	13236.08
9591	2022-09-01	17568.40
9592	2024-05-28	16727.98
9593	2020-06-29	10675.39
9594	2023-07-02	8282.41
9595	2024-06-15	15663.01
9596	2020-06-28	12546.56
9597	2023-12-30	8596.72
9598	2023-10-13	10061.75
9599	2020-08-16	8661.31
9600	2020-06-29	16015.02
9601	2021-11-14	15084.23
9602	2024-06-28	8115.42
9603	2020-10-02	16695.73
9604	2024-01-22	6842.35
9605	2024-07-02	14113.82
9606	2023-02-27	7116.85
9607	2022-12-18	6647.25
9608	2021-05-16	9356.03
9609	2024-01-24	13753.06
9610	2024-03-11	6742.81
9611	2023-10-13	11495.76
9612	2023-04-05	17391.73
9613	2024-09-22	7266.92
9614	2021-11-17	14229.92
9615	2024-08-24	8470.52
9616	2023-07-15	18082.82
9617	2024-06-03	17852.77
9618	2024-09-12	12786.04
9619	2021-11-05	13166.09
9620	2023-09-28	11179.62
9621	2022-04-12	7376.32
9622	2023-12-27	7182.87
9623	2023-04-26	15232.03
9624	2022-08-14	8974.16
9625	2024-09-07	16948.99
9626	2021-12-03	14713.83
9627	2022-01-31	15117.38
9628	2021-02-14	11199.97
9629	2022-02-06	8816.24
9630	2022-08-24	13005.61
9631	2022-12-29	13619.97
9632	2023-09-15	7623.25
9633	2022-04-18	8999.30
9634	2020-07-09	14612.74
9635	2023-12-04	6645.75
9636	2023-02-20	7539.63
9637	2022-09-12	10763.87
9638	2024-08-21	7811.21
9639	2024-07-19	16716.72
9640	2023-02-10	9705.43
9641	2024-11-23	7918.76
9642	2021-10-07	8787.96
9643	2021-10-23	17479.56
9644	2023-01-25	13688.80
9645	2023-03-15	13793.88
9646	2020-05-12	15704.12
9647	2021-03-29	8612.45
9648	2020-09-11	14608.32
9649	2024-07-18	16519.00
9650	2024-08-06	8359.33
9651	2023-05-12	6659.19
9652	2020-09-20	12794.31
9653	2021-02-22	9393.87
9654	2020-01-06	9167.91
9655	2023-09-29	17406.64
9656	2021-09-26	12783.23
9657	2024-06-11	12886.09
9658	2022-07-30	7961.89
9659	2022-09-09	14977.50
9660	2022-02-15	17301.03
9661	2022-04-21	13198.98
9662	2024-02-27	6930.91
9663	2020-10-04	17660.79
9664	2020-08-04	7396.85
9665	2020-08-17	15357.21
9666	2020-10-01	7638.54
9667	2021-08-25	10259.04
9668	2020-09-14	11691.15
9669	2021-12-20	6752.56
9670	2020-08-06	13521.75
9671	2024-02-20	14876.84
9672	2022-12-23	14551.98
9673	2024-10-20	7190.82
9674	2020-01-20	7559.60
9675	2022-10-03	7230.70
9676	2020-06-15	13462.30
9677	2020-09-10	14454.50
9678	2022-08-06	15357.73
9679	2022-12-22	11196.16
9680	2022-07-30	12920.03
9681	2020-07-19	12893.33
9682	2024-01-24	12117.69
9683	2020-05-05	9677.86
9684	2020-05-19	11168.39
9685	2020-03-01	11762.05
9686	2021-06-19	15988.02
9687	2021-10-04	7768.27
9688	2024-01-06	13616.16
9689	2021-05-02	7516.17
9690	2022-12-13	15585.83
9691	2022-07-28	17357.01
9692	2022-07-02	11703.90
9693	2021-02-08	7792.70
9694	2024-08-12	18093.83
9695	2022-12-22	10246.40
9696	2020-03-23	12505.68
9697	2020-12-03	8547.96
9698	2020-05-20	17387.56
9699	2022-07-23	16361.21
9700	2020-02-10	10188.86
9701	2020-08-24	16516.67
9702	2022-09-18	9031.25
9703	2020-12-11	11721.60
9704	2021-07-04	10373.17
9705	2021-12-10	6701.94
9706	2023-05-20	7433.62
9707	2023-09-19	7733.32
9708	2022-05-18	9800.15
9709	2022-02-20	17489.81
9710	2021-09-15	16582.59
9711	2024-08-24	7958.66
9712	2022-07-04	6765.39
9713	2020-01-07	17644.93
9714	2024-10-11	8352.01
9715	2020-06-08	7510.78
9716	2021-04-05	10084.34
9717	2022-02-22	12287.82
9718	2020-07-14	18089.22
9719	2023-12-12	15547.37
9720	2020-06-30	17182.79
9721	2024-12-01	15350.52
9722	2023-04-27	6660.45
9723	2020-02-18	7496.13
9724	2024-09-26	9198.87
9725	2024-10-27	11855.71
9726	2021-04-18	7749.10
9727	2020-08-25	13649.75
9728	2022-07-18	12085.61
9729	2020-07-19	6943.32
9730	2021-12-01	9939.29
9731	2024-01-13	13624.85
9732	2021-04-21	14215.78
9733	2022-04-30	10006.30
9734	2022-02-28	17718.72
9735	2021-07-01	13250.47
9736	2024-08-30	6683.86
9737	2020-07-20	12832.49
9738	2021-08-08	10719.42
9739	2021-08-10	6773.13
9740	2021-03-18	16343.96
9741	2020-08-18	17414.92
9742	2024-04-20	17996.31
9743	2023-10-14	16333.52
9744	2024-12-02	9440.47
9745	2020-03-09	9656.10
9746	2022-05-27	11444.28
9747	2021-02-23	11685.95
9748	2022-05-18	12037.33
9749	2023-05-12	10498.06
9750	2023-07-09	7654.01
9751	2020-03-28	13924.99
9752	2021-03-23	9740.77
9753	2020-10-14	14996.30
9754	2020-02-28	10294.76
9755	2022-01-09	6984.11
9756	2021-09-06	7072.51
9757	2022-06-12	10787.51
9758	2020-10-19	16160.40
9759	2024-11-29	14319.78
9760	2023-12-17	12936.60
9761	2024-06-17	7779.94
9762	2024-05-02	12581.99
9763	2022-04-11	8688.08
9764	2022-04-30	17700.71
9765	2020-06-10	6844.81
9766	2023-02-18	10145.34
9767	2020-05-06	7076.36
9768	2022-06-26	7115.05
9769	2022-11-01	17563.54
9770	2020-09-04	10222.82
9771	2023-08-14	17133.04
9772	2024-02-09	14265.37
9773	2023-11-08	9032.43
9774	2023-02-18	16691.65
9775	2021-01-04	15696.76
9776	2023-06-09	8002.17
9777	2022-07-10	10653.10
9778	2022-09-24	15103.78
9779	2022-07-28	17275.13
9780	2020-02-23	15349.47
9781	2023-10-19	15091.19
9782	2023-09-08	10094.19
9783	2024-05-06	16474.17
9784	2021-07-21	9142.88
9785	2023-07-08	17158.83
9786	2024-07-13	17159.08
9787	2021-11-01	17873.71
9788	2024-10-18	14471.71
9789	2020-02-26	16915.77
9790	2023-11-30	14853.47
9791	2023-09-26	16960.29
9792	2020-08-05	13975.58
9793	2021-12-21	9531.38
9794	2020-07-28	16624.43
9795	2024-11-20	14262.07
9796	2021-03-03	15944.62
9797	2020-02-14	8146.03
9798	2021-04-27	6879.61
9799	2023-10-29	12899.89
9800	2022-10-12	11936.91
9801	2022-04-25	10212.37
9802	2022-06-04	16078.51
9803	2020-12-01	17062.99
9804	2022-03-26	11848.56
9805	2024-04-14	12590.85
9806	2024-01-26	10708.92
9807	2022-07-28	15263.96
9808	2023-01-26	10928.63
9809	2022-07-15	17218.16
9810	2020-10-16	15886.97
9811	2023-06-09	13893.33
9812	2021-06-21	9999.38
9813	2022-11-19	17011.78
9814	2022-12-21	9512.05
9815	2022-08-09	11630.25
9816	2022-11-30	14073.41
9817	2023-04-02	12544.16
9818	2022-05-28	15138.03
9819	2021-01-12	10581.51
9820	2024-05-05	11762.33
9821	2020-08-06	6750.43
9822	2022-01-12	16069.03
9823	2024-07-11	9653.68
9824	2020-08-18	11111.59
9825	2021-06-28	12169.93
9826	2022-08-20	15784.70
9827	2023-11-10	9311.94
9828	2022-11-06	13319.57
9829	2023-09-21	13546.16
9830	2023-12-08	16435.18
9831	2021-05-01	13174.19
9832	2022-09-30	17562.66
9833	2021-03-11	13411.07
9834	2021-10-25	9330.10
9835	2023-12-25	12272.08
9836	2022-01-28	13969.24
9837	2021-02-08	10621.45
9838	2020-05-22	15471.14
9839	2022-05-04	17227.69
9840	2021-09-14	7356.17
9841	2021-06-25	13253.94
9842	2020-01-14	16345.74
9843	2021-05-19	17783.75
9844	2024-10-03	11798.18
9845	2022-12-15	13121.98
9846	2021-01-18	9434.03
9847	2022-04-02	17279.22
9848	2024-07-20	6661.74
9849	2022-04-19	14226.54
9850	2022-09-10	10712.60
9851	2020-10-30	15626.07
9852	2021-05-21	15155.00
9853	2023-01-05	13522.38
9854	2023-01-11	7976.22
9855	2021-03-26	11435.39
9856	2022-01-14	15419.72
9857	2022-05-10	15619.50
9858	2023-04-16	9979.92
9859	2021-07-01	15841.23
9860	2022-12-13	6989.57
9861	2020-09-11	15724.96
9862	2021-08-25	12125.19
9863	2022-11-20	15667.84
9864	2022-01-12	13905.31
9865	2021-07-16	17566.90
9866	2021-10-26	14924.55
9867	2020-12-12	13865.24
9868	2024-01-04	13861.65
9869	2023-03-20	12504.30
9870	2020-11-22	14876.12
9871	2021-04-01	10934.95
9872	2022-02-09	7945.99
9873	2021-08-05	9951.20
9874	2024-01-05	12539.20
9875	2024-11-02	12987.25
9876	2023-12-17	9413.55
9877	2021-06-21	13563.20
9878	2023-03-10	7629.04
9879	2021-07-11	11748.48
9880	2024-10-10	13784.89
9881	2022-07-22	13076.92
9882	2020-10-24	6908.96
9883	2023-05-22	10603.65
9884	2022-04-16	12092.36
9885	2023-06-16	13158.80
9886	2020-03-07	10047.30
9887	2022-06-07	7812.07
9888	2021-09-23	8090.91
9889	2023-12-18	8210.49
9890	2024-11-13	17998.73
9891	2024-06-13	14525.32
9892	2020-03-12	6828.92
9893	2021-11-16	15889.56
9894	2021-03-19	7657.53
9895	2020-05-24	8662.15
9896	2020-11-20	13599.98
9897	2021-05-06	9704.42
9898	2022-02-15	17947.46
9899	2024-02-13	16283.13
9900	2020-02-27	15802.03
9901	2021-01-18	16724.07
9902	2024-03-25	12883.94
9903	2022-03-12	16118.67
9904	2022-10-17	13732.87
9905	2023-10-14	16725.95
9906	2023-03-12	16003.79
9907	2022-02-09	7841.23
9908	2022-08-21	10080.22
9909	2022-11-11	17890.00
9910	2024-10-16	12652.94
9911	2024-03-11	16359.04
9912	2021-07-09	17827.77
9913	2024-02-29	10940.14
9914	2021-01-08	6887.11
9915	2021-03-22	14333.92
9916	2024-06-08	10231.57
9917	2021-10-23	8704.98
9918	2020-02-16	11907.53
9919	2022-08-09	17762.80
9920	2024-01-10	15796.51
9921	2023-07-11	15653.87
9922	2020-08-05	14346.74
9923	2021-07-26	11347.50
9924	2021-02-25	12494.15
9925	2023-09-11	15881.31
9926	2020-09-26	8250.08
9927	2024-08-06	14942.40
9928	2020-12-19	15886.82
9929	2022-05-22	17617.74
9930	2020-06-15	10801.23
9931	2020-03-21	16340.77
9932	2024-03-06	9734.17
9933	2021-02-07	6731.83
9934	2020-03-31	12978.36
9935	2022-05-12	14397.51
9936	2021-08-15	16852.08
9937	2023-09-03	11121.31
9938	2020-07-23	13055.64
9939	2020-02-15	15101.93
9940	2021-01-04	17433.21
9941	2020-05-06	8282.69
9942	2021-04-23	14810.22
9943	2023-02-02	13482.39
9944	2020-07-27	15321.09
9945	2022-10-21	15425.99
9946	2021-04-01	9178.07
9947	2023-03-04	9549.57
9948	2021-12-11	13833.14
9949	2024-09-19	12788.53
9950	2022-03-23	9683.04
9951	2022-04-25	8061.10
9952	2022-11-15	15006.26
9953	2020-06-05	16516.00
9954	2022-03-15	8294.52
9955	2020-11-16	12008.74
9956	2024-10-20	17388.21
9957	2020-12-15	16472.06
9958	2021-10-05	9051.80
9959	2023-11-12	8171.99
9960	2024-07-04	10470.88
9961	2023-04-10	7427.34
9962	2022-06-22	16537.49
9963	2023-07-17	15829.35
9964	2021-12-13	6984.68
9965	2024-11-03	16725.48
9966	2021-02-06	16361.87
9967	2021-02-17	17370.76
9968	2021-08-10	16600.69
9969	2023-12-26	9395.01
9970	2022-11-13	14402.75
9971	2024-08-03	13949.95
9972	2020-04-02	7884.49
9973	2022-04-15	13970.39
9974	2023-03-20	11135.12
9975	2022-08-09	9581.05
9976	2024-11-26	8081.29
9977	2022-08-02	7708.66
9978	2023-02-28	8046.12
9979	2022-09-11	8368.99
9980	2021-05-25	16016.98
9981	2022-11-17	15879.52
9982	2024-11-20	10433.45
9983	2021-08-24	16982.24
9984	2022-01-09	14880.65
9985	2023-08-23	10989.93
9986	2020-05-11	10416.18
9987	2022-09-13	12831.91
9988	2020-06-01	8564.69
9989	2022-08-24	8223.33
9990	2020-10-16	12851.86
9991	2022-05-08	17027.26
9992	2022-07-10	15998.93
9993	2024-03-01	12001.78
9994	2022-06-08	7959.70
9995	2023-08-22	17628.74
9996	2020-10-24	7336.67
9997	2020-11-05	13445.16
9998	2020-08-09	12567.77
9999	2021-11-24	7622.01
10000	2021-08-15	17959.65
10001	2023-07-11	9799.71
10002	2020-01-28	12274.61
10003	2023-12-16	12394.52
10004	2021-04-18	16649.61
10005	2022-11-15	6898.23
10006	2021-10-22	12810.39
10007	2022-01-30	9536.78
10008	2021-02-11	11101.15
10009	2020-10-11	11122.48
10010	2023-10-14	15309.41
10011	2022-03-07	8160.99
10012	2024-06-07	8548.01
10013	2021-06-22	11496.02
10014	2022-10-24	9194.08
10015	2023-01-29	14999.99
10016	2024-04-28	14137.75
10017	2024-11-30	9826.09
10018	2023-06-01	16575.87
10019	2021-12-23	14152.31
10020	2023-07-24	7839.17
10021	2024-04-22	8821.72
10022	2023-08-08	6828.25
10023	2024-12-02	10033.69
10024	2023-07-26	6751.42
10025	2024-07-05	13329.56
10026	2022-04-01	7642.53
10027	2023-12-11	11624.56
10028	2023-09-10	8678.86
10029	2022-10-13	10321.06
10030	2024-08-05	11074.25
10031	2024-07-07	8630.44
10032	2022-10-11	8521.22
10033	2021-09-23	15111.62
10034	2023-02-20	17697.41
10035	2021-01-23	13465.06
10036	2024-09-23	8840.17
10037	2023-03-24	10834.25
10038	2022-09-04	8955.72
10039	2021-10-31	17129.96
10040	2021-01-21	17637.18
10041	2022-10-31	7445.48
10042	2024-06-15	15424.83
10043	2022-07-28	17255.12
10044	2022-09-12	7583.50
10045	2023-09-27	14561.56
10046	2022-12-05	13458.27
10047	2022-05-18	15546.57
10048	2022-03-27	9506.50
10049	2023-04-17	17674.11
10050	2020-11-14	8753.43
10051	2021-03-25	11122.38
10052	2020-08-15	12681.88
10053	2022-03-18	11774.59
10054	2020-05-01	6950.24
10055	2023-08-24	14637.17
10056	2022-10-08	16642.32
10057	2023-07-09	8970.77
10058	2020-01-26	16914.61
10059	2023-07-14	11778.10
10060	2023-09-27	14273.31
10061	2022-11-14	8844.86
10062	2023-10-04	11081.52
10063	2023-11-25	9965.33
10064	2020-02-16	8220.90
10065	2024-09-13	8510.10
10066	2022-06-07	13747.54
10067	2021-04-04	14094.23
10068	2024-08-16	9798.43
10069	2024-03-02	14363.12
10070	2023-03-30	14294.49
10071	2024-09-03	10438.54
10072	2024-05-31	13165.26
10073	2022-07-30	14149.31
10074	2023-05-21	17843.52
10075	2021-02-17	11907.38
10076	2021-07-22	8178.61
10077	2022-06-09	6628.55
10078	2022-08-01	9420.12
10079	2023-11-06	14552.59
10080	2023-05-25	8415.09
10081	2021-09-24	7879.83
10082	2021-09-13	7475.17
10083	2023-07-13	13973.28
10084	2022-07-26	8874.87
10085	2022-05-27	11506.79
10086	2021-10-09	10607.66
10087	2024-11-17	10137.15
10088	2021-05-11	17268.07
10089	2021-12-08	14726.23
10090	2022-10-07	16567.65
10091	2023-05-01	13598.98
10092	2021-11-08	15324.39
10093	2021-01-24	15427.54
10094	2023-07-10	13097.98
10095	2022-12-04	15928.49
10096	2020-04-01	17760.64
10097	2020-03-11	11668.92
10098	2023-08-06	15967.77
10099	2022-06-15	8532.61
10100	2020-06-28	12053.75
10101	2024-11-27	15710.72
10102	2023-09-06	15620.13
10103	2022-04-15	12627.87
10104	2020-09-01	8893.78
10105	2022-08-02	12327.87
10106	2021-03-29	8482.11
10107	2020-08-12	16023.99
10108	2022-03-18	17554.70
10109	2022-09-04	9540.53
10110	2023-11-17	15307.10
10111	2020-07-06	17317.73
10112	2020-04-04	10043.41
10113	2021-06-17	12810.05
10114	2021-06-09	12606.21
10115	2020-03-03	15569.77
10116	2021-03-18	8110.60
10117	2022-07-28	9447.98
10118	2022-02-24	12175.73
10119	2024-07-09	7818.15
10120	2020-02-19	12023.66
10121	2022-12-17	10612.43
10122	2020-07-14	10756.69
10123	2024-10-22	16726.26
10124	2023-12-29	13779.49
10125	2023-02-25	7124.82
10126	2022-04-24	12744.07
10127	2023-04-20	16028.02
10128	2022-02-17	12318.67
10129	2021-03-04	17053.70
10130	2022-09-08	16594.60
10131	2020-02-15	8433.42
10132	2020-03-19	14239.08
10133	2021-11-10	12739.43
10134	2021-12-08	8128.82
10135	2022-04-04	7086.80
10136	2022-02-22	10878.83
10137	2023-11-22	16891.93
10138	2021-09-03	14329.56
10139	2024-09-24	8722.41
10140	2021-07-03	16272.34
10141	2021-03-12	10084.45
10142	2023-05-01	15125.62
10143	2022-05-28	12857.96
10144	2024-10-20	17933.62
10145	2021-09-07	15723.13
10146	2022-03-14	8945.05
10147	2023-08-19	15094.58
10148	2023-06-02	10895.49
10149	2020-07-29	7322.88
10150	2020-07-05	12602.18
10151	2024-09-17	14300.28
10152	2020-04-08	17448.76
10153	2023-01-05	8270.66
10154	2023-02-11	14315.87
10155	2024-12-05	8082.75
10156	2021-02-21	8957.24
10157	2020-05-01	10393.28
10158	2023-04-18	12271.79
10159	2020-02-12	7510.75
10160	2024-11-15	9142.26
10161	2022-06-13	16581.97
10162	2021-04-10	14660.72
10163	2021-08-24	10524.26
10164	2022-09-30	6879.27
10165	2024-01-13	8631.23
10166	2024-03-08	14386.88
10167	2021-12-14	11431.50
10168	2020-11-09	17753.08
10169	2021-07-13	9176.14
10170	2024-05-01	12456.95
10171	2021-05-08	8338.35
10172	2023-04-29	15188.31
10173	2023-06-23	9898.81
10174	2021-01-17	7868.46
10175	2022-12-19	16141.07
10176	2022-06-27	10893.24
10177	2021-04-02	16455.67
10178	2023-11-18	8000.51
10179	2021-03-25	15890.28
10180	2021-09-01	8684.50
10181	2022-02-06	11815.30
10182	2020-06-27	11989.71
10183	2023-04-30	10462.10
10184	2024-08-06	11840.92
10185	2023-01-21	14067.06
10186	2022-04-23	8146.78
10187	2023-03-06	14095.15
10188	2021-05-22	6875.49
10189	2023-12-29	13361.54
10190	2021-06-28	17328.84
10191	2023-10-11	10056.98
10192	2023-08-03	15275.18
10193	2022-07-31	6873.62
10194	2023-03-01	13368.42
10195	2020-05-11	16875.94
10196	2020-08-21	13262.97
10197	2022-11-09	11873.11
10198	2024-08-06	13719.16
10199	2023-08-04	12397.14
10200	2023-11-06	9393.64
10201	2020-05-01	7305.59
10202	2024-03-21	8395.16
10203	2024-07-04	9562.47
10204	2020-04-26	9612.30
10205	2020-06-30	13987.43
10206	2024-07-20	8359.12
10207	2023-01-25	17485.97
10208	2024-09-27	13805.58
10209	2024-09-24	16826.76
10210	2023-04-08	11342.61
10211	2022-07-29	7965.94
10212	2021-12-26	13170.55
10213	2021-07-21	10797.20
10214	2024-06-23	10232.54
10215	2022-03-29	17937.69
10216	2020-09-28	16439.50
10217	2024-08-21	15084.22
10218	2022-03-24	12351.80
10219	2024-07-17	11756.61
10220	2021-04-06	9088.03
10221	2023-03-07	7516.57
10222	2022-06-19	13536.91
10223	2021-01-06	12015.67
10224	2021-09-17	17756.46
10225	2024-08-24	14476.34
10226	2024-07-05	17318.83
10227	2024-10-11	8366.97
10228	2024-02-05	8258.02
10229	2021-04-03	10802.91
10230	2022-03-30	16346.96
10231	2022-06-06	8212.82
10232	2021-11-17	10793.90
10233	2020-02-20	13612.81
10234	2021-08-09	8847.41
10235	2022-09-04	8262.63
10236	2023-06-06	7333.28
10237	2020-09-19	9178.36
10238	2024-05-14	16364.80
10239	2024-10-18	16343.83
10240	2023-05-23	11483.83
10241	2024-03-09	10601.72
10242	2021-11-14	10332.54
10243	2021-07-13	18071.01
10244	2021-01-22	15380.27
10245	2020-02-29	12327.36
10246	2024-06-04	9637.40
10247	2023-07-17	12551.12
10248	2021-10-24	10719.46
10249	2023-09-14	8004.54
10250	2023-11-11	16286.35
10251	2020-04-21	15511.40
10252	2020-09-13	9870.34
10253	2021-03-18	17652.22
10254	2024-08-22	8341.96
10255	2024-07-23	9045.46
10256	2024-04-29	14500.86
10257	2020-10-06	17291.85
10258	2021-08-13	7882.39
10259	2023-09-03	16958.62
10260	2024-05-14	7419.86
10261	2021-08-05	14625.23
10262	2021-05-07	7780.52
10263	2023-11-15	11451.79
10264	2022-11-11	6654.13
10265	2023-08-05	16608.42
10266	2022-02-28	16654.17
10267	2024-02-21	13362.01
10268	2022-04-23	7272.84
10269	2023-09-19	12918.12
10270	2022-06-11	10932.05
10271	2022-12-13	7150.45
10272	2023-02-07	11876.40
10273	2023-09-16	16349.93
10274	2020-05-19	6870.88
10275	2020-03-06	9627.66
10276	2024-01-07	14953.81
10277	2024-08-23	10414.14
10278	2023-11-07	8906.58
10279	2021-11-22	11739.13
10280	2024-06-16	14170.30
10281	2021-10-15	13875.30
10282	2024-02-08	14866.35
10283	2023-04-16	16572.95
10284	2023-11-30	17996.39
10285	2021-12-18	11326.87
10286	2020-03-20	6937.38
10287	2022-12-10	16332.11
10288	2022-10-28	18036.20
10289	2021-08-20	13619.27
10290	2022-03-17	15900.32
10291	2023-11-26	6666.86
10292	2022-12-08	15133.07
10293	2021-05-11	15588.96
10294	2020-12-17	6999.83
10295	2020-03-20	14425.42
10296	2023-02-27	15501.98
10297	2022-06-02	17625.45
10298	2023-09-04	8288.59
10299	2024-03-28	14164.86
10300	2020-05-28	9254.27
10301	2020-02-16	9377.87
10302	2020-09-06	16384.90
10303	2023-07-25	12675.00
10304	2020-06-11	10869.25
10305	2022-08-17	11118.27
10306	2022-06-22	10869.26
10307	2022-01-14	13997.97
10308	2024-10-30	16255.40
10309	2020-12-22	16148.37
10310	2022-09-29	17731.99
10311	2022-01-17	10939.47
10312	2023-06-25	17230.75
10313	2022-04-24	15124.96
10314	2021-02-28	6726.32
10315	2022-04-08	16949.55
10316	2024-01-08	14829.90
10317	2023-11-09	14919.97
10318	2021-06-14	17455.78
10319	2024-07-24	14134.17
10320	2024-10-29	14772.29
10321	2023-08-12	14975.95
10322	2020-12-23	9584.76
10323	2024-07-18	17052.12
10324	2022-05-23	13001.30
10325	2023-05-29	9467.32
10326	2020-02-23	9055.96
10327	2024-11-01	7172.70
10328	2023-02-27	7332.86
10329	2022-03-17	13851.34
10330	2021-01-29	15220.00
10331	2021-10-22	15167.16
10332	2020-11-10	10190.70
10333	2023-05-09	9724.03
10334	2020-02-17	12746.74
10335	2020-04-30	6665.17
10336	2024-04-24	17210.56
10337	2023-04-27	11369.75
10338	2021-08-03	6985.52
10339	2022-06-08	12054.79
10340	2022-12-29	11383.27
10341	2023-11-01	13663.37
10342	2020-02-08	15751.82
10343	2024-10-01	8111.79
10344	2020-09-02	15462.28
10345	2020-11-27	6637.91
10346	2024-09-10	16231.96
10347	2020-01-04	11370.26
10348	2023-05-20	14972.66
10349	2024-08-09	13677.87
10350	2023-05-01	7495.78
10351	2022-07-21	13297.57
10352	2023-02-11	14080.04
10353	2020-06-17	11105.21
10354	2024-06-13	8447.92
10355	2021-10-16	7144.68
10356	2022-09-15	15454.62
10357	2024-09-12	7434.69
10358	2020-04-30	8208.48
10359	2020-12-29	16616.79
10360	2023-03-11	11614.50
10361	2023-06-06	8055.05
10362	2020-09-26	14508.31
10363	2021-09-05	15360.59
10364	2021-12-15	8579.58
10365	2023-05-06	15103.27
10366	2022-06-14	12108.95
10367	2022-10-26	8429.49
10368	2021-08-29	13261.84
10369	2021-04-17	12763.37
10370	2021-02-01	15024.92
10371	2023-07-29	14386.26
10372	2023-07-03	8979.71
10373	2023-09-04	9414.85
10374	2024-07-08	14080.70
10375	2021-01-15	11422.22
10376	2022-04-19	17329.82
10377	2023-06-23	17452.11
10378	2021-07-30	12142.20
10379	2020-05-09	16314.36
10380	2023-06-15	12097.73
10381	2021-06-17	16067.78
10382	2023-11-10	15038.80
10383	2021-11-29	9110.60
10384	2020-07-17	12720.10
10385	2024-01-19	17726.93
10386	2023-03-02	7000.37
10387	2022-06-01	6948.90
10388	2024-11-03	16898.18
10389	2024-06-14	6776.05
10390	2021-07-10	8614.99
10391	2020-08-31	8612.05
10392	2022-07-22	12485.76
10393	2020-10-21	8862.90
10394	2023-03-22	7812.67
10395	2021-05-12	8064.84
10396	2023-02-19	14470.87
10397	2022-07-13	14417.77
10398	2022-07-19	9336.87
10399	2022-06-27	7160.51
10400	2021-07-08	9106.28
10401	2021-12-25	7009.62
10402	2024-01-16	8916.79
10403	2024-05-19	14201.52
10404	2023-07-02	17281.37
10405	2023-10-31	16041.71
10406	2023-05-30	9512.31
10407	2020-09-02	13428.55
10408	2020-03-06	16169.50
10409	2021-03-23	12431.60
10410	2021-12-06	10162.37
10411	2022-07-04	11224.98
10412	2021-08-30	12105.37
10413	2022-09-19	13463.56
10414	2021-07-17	10352.62
10415	2020-04-27	12696.55
10416	2024-10-03	14910.30
10417	2022-11-03	6771.16
10418	2022-06-16	11191.26
10419	2022-03-28	10008.24
10420	2024-07-16	15466.18
10421	2023-12-02	10965.32
10422	2021-10-26	16502.88
10423	2022-07-14	12376.73
10424	2022-08-16	15261.76
10425	2020-11-10	8697.77
10426	2022-06-24	10739.65
10427	2022-05-04	12933.61
10428	2024-07-09	10482.12
10429	2022-11-15	16627.81
10430	2020-09-14	6800.55
10431	2021-07-14	15655.90
10432	2020-01-11	14509.73
10433	2020-06-11	14815.76
10434	2021-06-10	16751.61
10435	2021-09-27	16409.93
10436	2020-11-24	15422.30
10437	2023-11-01	11774.23
10438	2022-07-12	9468.51
10439	2024-10-03	9586.53
10440	2024-10-04	8234.05
10441	2021-12-04	15768.50
10442	2020-10-14	9056.90
10443	2021-11-22	11379.37
10444	2020-06-10	8654.51
10445	2023-07-03	13165.40
10446	2021-06-24	7706.03
10447	2024-01-07	7627.62
10448	2023-03-31	9283.59
10449	2021-11-07	9132.99
10450	2020-08-13	10624.60
10451	2023-02-09	15313.97
10452	2024-06-22	15835.54
10453	2021-12-27	15783.75
10454	2021-07-31	11931.16
10455	2022-05-05	13937.10
10456	2023-04-23	16749.09
10457	2021-09-03	10066.76
10458	2022-02-23	15214.92
10459	2024-11-01	14658.48
10460	2022-12-14	12453.48
10461	2022-12-26	7475.17
10462	2023-03-14	18069.87
10463	2020-07-07	17182.40
10464	2022-07-27	10979.29
10465	2021-12-15	16932.55
10466	2020-01-05	10254.63
10467	2023-01-20	17176.67
10468	2020-03-12	12482.99
10469	2023-07-14	7794.37
10470	2023-03-28	17420.10
10471	2023-03-18	10450.98
10472	2020-12-05	12070.02
10473	2021-12-27	16149.61
10474	2022-05-15	9717.44
10475	2020-08-15	17049.96
10476	2021-07-21	10400.21
10477	2024-10-10	11111.63
10478	2022-12-17	8763.17
10479	2023-03-12	13465.77
10480	2020-08-11	8986.05
10481	2021-02-23	17543.53
10482	2023-03-10	12017.90
10483	2023-05-31	14346.92
10484	2020-07-17	15605.11
10485	2020-08-30	17988.24
10486	2022-12-16	12663.43
10487	2022-12-04	10283.77
10488	2024-10-06	6786.97
10489	2024-10-29	8689.64
10490	2023-04-12	16453.25
10491	2022-08-12	11570.53
10492	2021-08-08	9879.95
10493	2020-12-03	10785.47
10494	2021-02-24	14631.24
10495	2022-06-24	9997.32
10496	2023-12-15	10776.75
10497	2022-06-11	6633.76
10498	2023-03-18	15131.37
10499	2021-05-09	15066.28
10500	2021-05-12	14507.01
10501	2023-09-04	10265.52
10502	2022-01-14	13077.37
10503	2024-03-26	12617.74
10504	2021-10-10	7636.62
10505	2020-12-06	11346.29
10506	2021-07-05	9638.72
10507	2023-03-01	16281.23
10508	2022-05-17	8681.49
10509	2021-11-17	14234.91
10510	2020-09-04	12001.84
10511	2023-04-01	11900.71
10512	2020-10-25	7396.99
10513	2021-10-12	17166.27
10514	2021-07-07	9641.94
10515	2021-07-09	13284.20
10516	2022-10-26	14743.81
10517	2021-10-15	15799.61
10518	2023-06-28	7632.77
10519	2021-12-30	10240.59
10520	2020-12-19	11465.21
10521	2020-12-23	11355.38
10522	2022-01-09	17066.74
10523	2020-10-22	16119.19
10524	2022-04-02	17433.64
10525	2022-07-30	16714.70
10526	2024-10-08	6807.04
10527	2020-11-21	15875.48
10528	2022-03-28	8985.42
10529	2020-08-19	12847.77
10530	2022-06-28	8331.79
10531	2020-12-30	11535.26
10532	2022-05-07	11853.71
10533	2022-03-27	8280.17
10534	2021-11-06	7965.78
10535	2020-10-09	13828.63
10536	2024-09-14	14802.26
10537	2023-12-21	10864.18
10538	2020-07-05	17076.14
10539	2023-02-14	15997.39
10540	2022-04-24	15613.59
10541	2021-01-19	16776.41
10542	2020-07-22	14096.83
10543	2024-09-05	14571.93
10544	2020-05-12	6853.13
10545	2020-07-22	7661.93
10546	2021-10-16	16129.33
10547	2021-03-14	17187.05
10548	2023-02-16	8858.16
10549	2023-10-16	17261.45
10550	2023-07-12	17136.56
10551	2022-10-12	6767.28
10552	2021-10-14	14104.69
10553	2020-09-13	11926.65
10554	2024-09-08	17150.58
10555	2021-12-10	12372.16
10556	2023-07-09	8472.93
10557	2020-03-06	13882.88
10558	2022-07-25	6709.15
10559	2023-11-17	11112.52
10560	2022-02-16	17989.25
10561	2020-09-01	11459.73
10562	2024-11-21	11435.55
10563	2023-10-29	13157.48
10564	2022-10-15	15378.72
10565	2020-11-25	9933.98
10566	2020-01-20	15490.90
10567	2022-08-23	10116.77
10568	2024-04-28	16778.91
10569	2024-01-26	11442.20
10570	2022-12-23	17954.29
10571	2021-06-08	10869.60
10572	2021-02-19	15190.01
10573	2024-02-19	17517.66
10574	2020-08-25	15366.75
10575	2022-10-19	9217.03
10576	2023-08-20	7581.83
10577	2023-09-14	11858.59
10578	2024-09-03	8740.89
10579	2022-08-14	16428.72
10580	2022-10-15	9144.79
10581	2020-05-12	15338.96
10582	2021-12-02	9895.14
10583	2020-10-19	9544.56
10584	2020-03-09	7085.37
10585	2021-04-01	9905.07
10586	2023-01-11	11606.48
10587	2023-08-12	13084.02
10588	2020-11-14	15586.86
10589	2021-09-14	17821.74
10590	2020-01-22	12154.17
10591	2022-03-19	13706.33
10592	2022-03-06	9385.09
10593	2021-04-14	12425.09
10594	2024-04-09	11228.88
10595	2020-06-08	16532.07
10596	2024-02-21	13715.95
10597	2020-03-20	12474.73
10598	2020-06-16	9005.40
10599	2021-02-10	11543.28
10600	2022-12-02	15543.35
10601	2022-08-29	12975.45
10602	2021-09-16	10261.11
10603	2022-05-10	12844.66
10604	2022-07-05	9293.77
10605	2022-08-04	16320.86
10606	2022-07-03	9731.18
10607	2020-04-20	10687.37
10608	2022-02-23	14874.15
10609	2024-10-06	11948.60
10610	2022-05-16	10301.73
10611	2022-05-23	9953.08
10612	2021-05-06	7303.34
10613	2021-08-09	15206.64
10614	2021-01-20	9277.38
10615	2021-08-30	15538.46
10616	2023-12-18	8335.78
10617	2022-01-19	10956.20
10618	2021-07-30	11286.18
10619	2020-07-03	15148.04
10620	2020-02-05	10873.78
10621	2020-11-06	12028.30
10622	2023-10-10	15730.25
10623	2021-08-27	12903.47
10624	2020-04-01	11450.63
10625	2020-05-19	12854.01
10626	2020-05-22	15500.90
10627	2020-06-24	8734.16
10628	2023-01-16	14654.57
10629	2024-07-04	11933.02
10630	2023-09-11	17845.49
10631	2020-03-25	8643.59
10632	2024-08-08	11415.59
10633	2022-10-24	7581.81
10634	2020-08-27	13699.42
10635	2020-10-04	12090.79
10636	2020-11-25	12686.22
10637	2023-12-25	14511.27
10638	2024-03-17	12554.23
10639	2024-11-11	17669.60
10640	2024-10-04	8034.69
10641	2023-12-21	14440.99
10642	2021-03-11	15747.06
10643	2023-11-07	16211.14
10644	2020-08-06	8206.30
10645	2022-02-02	14224.97
10646	2022-08-27	15572.59
10647	2024-11-26	8684.54
10648	2020-06-15	11369.43
10649	2022-04-16	16267.93
10650	2022-08-11	8639.48
10651	2021-04-11	9306.15
10652	2024-03-21	10896.52
10653	2022-11-20	11306.17
10654	2023-11-28	16495.79
10655	2021-02-21	12860.98
10656	2021-12-19	8698.01
10657	2021-10-02	16023.45
10658	2020-03-28	11091.64
10659	2022-11-23	7557.39
10660	2024-03-21	17771.98
10661	2021-01-02	13790.67
10662	2023-06-24	14379.88
10663	2022-09-24	11248.81
10664	2024-04-10	17685.06
10665	2024-08-18	7613.28
10666	2021-10-04	16690.72
10667	2021-03-14	12162.98
10668	2022-11-03	7086.56
10669	2021-10-07	7282.76
10670	2023-07-24	12118.41
10671	2021-12-09	17710.99
10672	2020-07-19	16495.10
10673	2020-10-18	15711.72
10674	2022-12-18	17406.06
10675	2024-02-16	17407.12
10676	2023-09-13	15291.87
10677	2021-04-15	8820.81
10678	2024-07-21	6805.40
10679	2020-01-17	11239.92
10680	2024-04-12	16316.49
10681	2024-02-19	10036.14
10682	2020-12-26	10779.59
10683	2023-04-23	13448.75
10684	2024-07-29	14404.33
10685	2023-06-22	13132.38
10686	2024-05-05	10449.66
10687	2021-07-23	8746.38
10688	2021-03-04	16263.43
10689	2021-08-28	17453.04
10690	2024-08-01	10730.23
10691	2022-05-11	11464.94
10692	2024-07-01	9015.96
10693	2023-05-23	17670.93
10694	2022-03-19	8445.15
10695	2021-06-11	6670.64
10696	2021-05-12	15635.38
10697	2022-04-15	12621.18
10698	2020-08-27	13370.56
10699	2024-10-12	11213.86
10700	2022-12-05	13852.35
10701	2020-12-26	17603.49
10702	2023-02-06	14356.48
10703	2023-11-13	17813.31
10704	2024-06-13	12180.73
10705	2020-10-27	17648.26
10706	2022-08-02	13157.47
10707	2024-06-14	13200.80
10708	2020-11-16	7046.16
10709	2024-07-20	18004.54
10710	2020-12-22	17153.62
10711	2024-09-06	9207.19
10712	2023-05-25	8467.57
10713	2020-08-17	12249.36
10714	2023-11-25	15905.37
10715	2022-01-15	10803.90
10716	2021-03-20	13129.53
10717	2021-07-15	17189.25
10718	2022-06-04	9308.66
10719	2022-12-06	11360.50
10720	2023-08-26	10946.80
10721	2022-09-28	10867.51
10722	2023-04-30	12150.01
10723	2022-01-02	17076.27
10724	2020-10-29	16581.79
10725	2021-08-22	8145.63
10726	2020-02-13	10564.07
10727	2022-07-12	9111.05
10728	2022-01-14	16791.33
10729	2020-02-23	13541.27
10730	2022-07-19	9294.79
10731	2021-01-30	9531.75
10732	2022-04-27	12980.09
10733	2024-07-25	13422.71
10734	2020-03-26	14591.21
10735	2020-08-09	6873.51
10736	2022-03-30	6779.90
10737	2023-03-02	9301.70
10738	2022-07-02	15260.54
10739	2022-05-20	11946.23
10740	2021-02-12	7432.90
10741	2024-06-01	12138.14
10742	2020-10-15	17419.38
10743	2022-12-18	13813.26
10744	2021-08-10	16167.14
10745	2021-12-06	13337.37
10746	2020-02-13	16215.11
10747	2021-12-16	17384.36
10748	2024-07-10	6715.22
10749	2020-11-08	14856.36
10750	2024-07-07	11270.68
10751	2024-09-25	9887.01
10752	2022-02-06	15191.00
10753	2021-01-06	13468.29
10754	2020-03-31	8031.38
10755	2023-06-02	15907.58
10756	2020-08-26	9455.13
10757	2021-07-28	15302.77
10758	2021-09-18	8467.23
10759	2020-11-08	14301.28
10760	2024-10-11	17912.04
10761	2023-08-07	7393.69
10762	2021-06-15	8315.91
10763	2022-12-31	9896.20
10764	2023-01-22	14324.43
10765	2020-02-17	8170.54
10766	2021-11-25	16252.34
10767	2024-08-01	14654.21
10768	2021-12-24	9717.65
10769	2020-08-05	13051.66
10770	2023-09-04	7342.97
10771	2023-08-22	11361.29
10772	2021-06-26	12500.70
10773	2024-05-26	12630.31
10774	2023-12-13	16722.77
10775	2022-10-13	8486.38
10776	2021-02-11	16572.65
10777	2021-06-19	18050.77
10778	2024-09-24	10444.24
10779	2022-11-18	12931.07
10780	2022-08-10	10649.55
10781	2020-11-12	7330.07
10782	2020-12-09	17606.97
10783	2020-10-28	16218.33
10784	2024-09-19	10278.57
10785	2022-11-18	16624.18
10786	2023-01-06	14571.80
10787	2020-03-16	10096.24
10788	2024-09-17	10613.41
10789	2023-05-07	17813.00
10790	2022-02-08	13792.60
10791	2022-09-30	8852.19
10792	2020-09-27	12270.00
10793	2020-07-06	14805.90
10794	2021-08-03	6659.10
10795	2023-07-14	15814.47
10796	2020-12-20	14825.22
10797	2020-12-17	13057.07
10798	2023-07-02	10327.95
10799	2021-09-10	13753.39
10800	2023-01-27	9692.06
10801	2022-12-28	16886.76
10802	2022-04-27	7785.85
10803	2020-02-20	17358.58
10804	2021-04-28	8716.87
10805	2023-06-22	6862.12
10806	2021-05-14	13973.09
10807	2020-03-09	12252.70
10808	2021-09-28	17573.84
10809	2024-02-13	14225.84
10810	2020-12-27	16101.18
10811	2020-04-25	10567.88
10812	2022-09-24	15056.90
10813	2024-01-01	12853.01
10814	2020-03-02	17208.85
10815	2022-10-07	7937.21
10816	2024-10-22	18056.85
10817	2022-11-05	8237.72
10818	2021-08-07	9242.59
10819	2022-05-02	13592.30
10820	2020-09-02	10911.61
10821	2022-05-19	10108.95
10822	2021-01-22	8094.47
10823	2024-09-09	16041.90
10824	2024-09-15	17016.32
10825	2024-08-10	8371.62
10826	2022-08-14	14268.74
10827	2021-01-03	15195.04
10828	2020-11-15	11043.66
10829	2022-03-02	8886.87
10830	2024-03-04	13605.13
10831	2024-08-03	16169.77
10832	2020-12-12	15312.83
10833	2023-01-24	14216.63
10834	2023-07-01	13448.34
10835	2021-07-29	17201.14
10836	2022-05-18	7176.42
10837	2023-09-13	14032.00
10838	2020-06-13	12338.37
10839	2023-05-31	15699.84
10840	2022-03-22	17285.54
10841	2024-07-12	16777.03
10842	2021-01-13	15798.44
10843	2024-03-23	13895.09
10844	2021-08-07	6806.65
10845	2020-03-14	7695.87
10846	2024-01-04	12744.38
10847	2022-01-14	12192.38
10848	2021-11-04	15700.35
10849	2023-05-31	17279.30
10850	2021-12-30	11005.56
10851	2023-10-29	11264.73
10852	2024-03-17	12189.59
10853	2022-10-27	8562.23
10854	2023-02-23	17003.52
10855	2021-04-17	9152.96
10856	2023-12-11	12087.22
10857	2021-01-02	12132.50
10858	2024-03-30	16084.06
10859	2020-09-10	11726.78
10860	2021-07-04	6971.46
10861	2021-03-31	14408.72
10862	2021-10-20	7923.01
10863	2022-08-03	15178.00
10864	2021-08-13	17666.22
10865	2020-04-14	9856.33
10866	2022-11-06	8844.17
10867	2022-11-23	15334.41
10868	2022-12-24	16318.09
10869	2020-03-09	16739.91
10870	2023-11-24	17656.71
10871	2022-07-09	9673.96
10872	2022-02-24	7757.19
10873	2024-08-27	13202.96
10874	2022-04-18	17496.87
10875	2020-11-13	11801.35
10876	2024-11-30	17213.98
10877	2022-02-20	9954.63
10878	2021-08-14	7550.92
10879	2023-10-23	8378.05
10880	2024-05-12	7472.17
10881	2022-03-31	13526.01
10882	2020-09-04	16841.31
10883	2024-04-22	15963.49
10884	2020-02-24	14884.40
10885	2024-10-15	8820.64
10886	2023-10-16	13776.12
10887	2020-04-13	16346.60
10888	2024-02-16	9262.48
10889	2020-04-25	16289.36
10890	2022-06-22	10672.44
10891	2022-08-09	14604.15
10892	2023-12-21	12340.90
10893	2021-08-19	12544.02
10894	2021-12-20	12118.31
10895	2021-08-05	14393.71
10896	2021-12-26	15502.95
10897	2020-10-23	9925.01
10898	2022-10-27	13898.26
10899	2021-03-22	8998.26
10900	2022-11-20	18056.25
10901	2021-01-23	13531.86
10902	2020-04-19	11352.74
10903	2024-03-15	11424.76
10904	2024-05-01	6983.21
10905	2023-08-28	16374.42
10906	2023-08-11	11429.84
10907	2022-09-20	14056.33
10908	2024-04-06	11169.60
10909	2022-12-15	6800.49
10910	2023-11-22	13202.94
10911	2020-10-24	7747.86
10912	2022-10-28	10365.75
10913	2021-05-17	11250.98
10914	2020-02-29	9011.12
10915	2022-09-05	9826.70
10916	2023-03-26	17389.59
10917	2022-07-09	9711.08
10918	2021-12-17	14549.76
10919	2022-08-06	10217.74
10920	2020-11-10	9710.41
10921	2020-07-29	11083.92
10922	2022-02-08	14815.10
10923	2024-04-27	16340.84
10924	2021-06-24	13581.91
10925	2023-05-12	14719.36
10926	2021-05-15	15102.27
10927	2021-02-10	12483.91
10928	2022-08-15	7983.33
10929	2022-03-22	14179.20
10930	2021-05-04	12446.71
10931	2024-04-28	11745.62
10932	2020-11-23	17469.48
10933	2024-02-10	12202.78
10934	2022-10-03	8407.68
10935	2020-08-26	11410.76
10936	2022-04-25	10912.56
10937	2021-10-20	7711.08
10938	2024-06-11	12628.80
10939	2020-05-12	9518.15
10940	2023-07-07	8418.70
10941	2022-02-08	11754.16
10942	2020-01-11	12239.27
10943	2023-08-16	9627.57
10944	2023-02-17	7733.59
10945	2024-06-10	16925.02
10946	2023-03-06	11566.38
10947	2023-12-11	14667.18
10948	2022-08-31	15041.92
10949	2020-10-13	11855.09
10950	2022-09-12	15173.72
10951	2022-11-05	17470.72
10952	2022-04-26	11919.41
10953	2022-06-30	16501.10
10954	2024-04-13	13022.89
10955	2023-10-13	14532.76
10956	2023-07-06	15428.01
10957	2020-03-23	12238.89
10958	2022-02-17	14986.96
10959	2023-04-12	13504.88
10960	2020-08-20	17857.97
10961	2022-03-22	8939.79
10962	2022-05-27	8251.36
10963	2020-02-10	17887.85
10964	2024-10-25	13319.17
10965	2023-09-18	8740.09
10966	2021-05-15	15973.24
10967	2021-05-19	12982.80
10968	2024-04-13	12867.79
10969	2023-03-10	8628.41
10970	2021-05-26	17677.43
10971	2024-06-15	7246.72
10972	2021-01-19	16971.19
10973	2020-03-09	17510.70
10974	2022-09-20	12429.52
10975	2024-04-26	8615.71
10976	2022-11-19	16569.74
10977	2020-04-08	16731.75
10978	2021-12-15	10470.24
10979	2020-12-08	9108.32
10980	2023-05-08	13615.45
10981	2021-08-13	6990.26
10982	2023-11-10	12941.57
10983	2022-11-17	13306.46
10984	2023-06-24	15962.77
10985	2020-09-29	9640.76
10986	2023-02-13	7035.15
10987	2023-08-26	12865.14
10988	2023-04-14	12981.48
10989	2021-05-17	10460.77
10990	2020-12-21	7250.56
10991	2021-07-08	15483.45
10992	2024-10-05	12302.77
10993	2023-05-26	15076.41
10994	2021-07-22	17457.51
10995	2024-05-27	15377.74
10996	2022-01-26	14364.28
10997	2024-04-11	7936.74
10998	2020-04-06	17250.94
10999	2020-01-24	14196.50
11000	2022-01-16	16139.74
11001	2024-03-13	17900.29
11002	2020-06-05	8443.36
11003	2021-11-12	12362.06
11004	2022-04-19	16569.13
11005	2023-04-12	12891.38
11006	2021-04-07	9232.04
11007	2021-08-30	6844.31
11008	2023-09-14	12508.19
11009	2024-07-04	10035.81
11010	2020-08-27	9736.03
11011	2022-05-12	7562.89
11012	2020-12-17	12529.94
11013	2020-12-25	8263.26
11014	2022-05-26	10416.68
11015	2024-08-09	9880.29
11016	2024-09-12	8521.68
11017	2020-12-16	9729.91
11018	2021-06-03	11101.32
11019	2022-02-06	16070.34
11020	2023-08-30	13975.91
11021	2023-08-09	18047.61
11022	2023-02-07	12686.25
11023	2020-10-26	7078.44
11024	2024-10-03	11244.05
11025	2023-02-16	7220.67
11026	2022-09-16	16211.79
11027	2020-08-10	14475.68
11028	2021-10-23	12704.34
11029	2023-05-18	12287.93
11030	2022-01-24	7927.15
11031	2020-03-19	6974.83
11032	2020-02-06	9584.61
11033	2020-07-06	18019.80
11034	2022-09-02	12324.72
11035	2022-05-23	11535.67
11036	2020-07-18	7238.50
11037	2020-10-19	6969.59
11038	2020-08-29	14696.93
11039	2023-02-11	16841.08
11040	2023-03-01	13313.67
11041	2022-06-06	11340.00
11042	2023-07-03	9767.48
11043	2022-09-03	15302.54
11044	2020-10-23	15765.90
11045	2024-05-19	17694.95
11046	2024-08-17	7311.77
11047	2021-08-06	6608.50
11048	2023-05-25	14981.54
11049	2023-10-25	12965.55
11050	2022-02-08	16335.11
11051	2020-03-29	16735.99
11052	2021-02-15	9875.55
11053	2021-12-24	11996.56
11054	2022-10-02	8905.41
11055	2020-06-26	8021.00
11056	2020-04-29	10621.04
11057	2020-05-14	13976.45
11058	2022-04-21	10348.28
11059	2020-07-26	16011.89
11060	2024-11-27	14769.38
11061	2022-04-26	9923.95
11062	2023-11-05	17440.15
11063	2020-07-04	17425.61
11064	2024-11-15	16582.80
11065	2020-08-12	16555.78
11066	2022-08-17	11413.66
11067	2022-01-19	10553.34
11068	2024-11-15	7814.51
11069	2022-08-22	9496.49
11070	2022-10-25	8728.85
11071	2021-05-29	16680.50
11072	2024-01-24	6865.19
11073	2021-04-25	9494.43
11074	2020-11-01	8582.19
11075	2024-03-29	15792.11
11076	2023-01-31	9739.47
11077	2023-07-02	15544.96
11078	2022-05-06	14649.41
11079	2021-05-09	10234.74
11080	2021-02-19	13817.97
11081	2023-11-04	11971.27
11082	2021-12-22	17453.17
11083	2022-07-21	15636.02
11084	2023-07-07	9982.04
11085	2020-07-19	7997.86
11086	2023-01-09	14797.21
11087	2022-11-26	9560.51
11088	2021-04-08	13570.09
11089	2024-07-03	12303.11
11090	2024-09-23	8706.01
11091	2024-05-25	7772.31
11092	2024-03-11	16423.51
11093	2024-09-22	12020.25
11094	2022-01-30	13971.51
11095	2023-06-04	11373.07
11096	2022-08-28	16603.17
11097	2022-08-31	10566.69
11098	2020-04-16	17537.84
11099	2021-11-27	9062.53
11100	2023-09-04	8141.53
11101	2021-11-05	12935.79
11102	2024-08-21	16747.10
11103	2020-11-21	15394.66
11104	2022-11-01	14411.67
11105	2021-01-17	7268.57
11106	2022-12-15	6754.46
11107	2023-03-11	8320.33
11108	2020-07-06	7496.86
11109	2021-09-06	12114.67
11110	2024-08-31	17562.34
11111	2023-05-04	10199.21
11112	2020-09-20	13389.75
11113	2023-11-16	14331.95
11114	2021-08-18	6910.39
11115	2023-09-26	10795.03
11116	2020-06-14	8539.91
11117	2020-03-31	12815.73
11118	2021-05-02	7475.83
11119	2020-03-12	9140.87
11120	2023-09-19	17849.67
11121	2024-01-07	7100.28
11122	2020-11-12	11920.12
11123	2024-03-21	9540.49
11124	2021-09-26	12868.98
11125	2022-03-13	13596.08
11126	2024-04-10	11066.78
11127	2021-10-23	17351.10
11128	2021-12-07	10524.75
11129	2021-09-26	17162.28
11130	2022-03-05	9663.16
11131	2022-07-25	13729.42
11132	2021-08-14	13586.31
11133	2022-07-24	7783.58
11134	2024-05-25	11126.98
11135	2024-03-03	9839.27
11136	2024-09-27	8595.54
11137	2022-02-03	9234.25
11138	2024-10-12	9635.52
11139	2024-09-16	16729.77
11140	2020-03-05	13807.96
11141	2020-02-14	15396.10
11142	2023-05-23	10923.85
11143	2024-05-13	16025.05
11144	2020-05-15	17119.19
11145	2020-03-26	18005.26
11146	2023-05-23	11774.15
11147	2024-11-06	9502.04
11148	2021-12-17	8991.48
11149	2021-05-30	8855.00
11150	2023-06-18	16531.11
11151	2021-01-02	16365.01
11152	2021-08-11	9843.31
11153	2020-12-30	15701.92
11154	2024-07-31	17660.03
11155	2022-09-09	8376.48
11156	2020-02-11	12171.48
11157	2020-10-05	8174.04
11158	2022-08-30	10662.79
11159	2022-05-30	7644.55
11160	2021-11-26	17204.88
11161	2021-11-14	9000.62
11162	2021-03-17	10707.13
11163	2024-04-17	7699.22
11164	2020-08-17	16714.10
11165	2020-06-16	7010.83
11166	2020-01-03	9784.36
11167	2023-05-22	13434.14
11168	2024-07-29	14087.54
11169	2021-12-08	18004.09
11170	2022-07-23	16481.38
11171	2024-03-10	6669.33
11172	2024-08-24	8438.10
11173	2022-06-23	17162.43
11174	2022-06-12	14994.80
11175	2022-12-05	18073.04
11176	2023-10-27	13561.42
11177	2020-05-15	16017.64
11178	2021-11-18	11547.01
11179	2021-02-19	6713.96
11180	2023-05-26	12329.14
11181	2022-12-17	10881.56
11182	2024-07-20	17949.59
11183	2021-03-29	7400.73
11184	2024-08-05	10743.68
11185	2021-02-05	8496.20
11186	2021-02-02	10641.21
11187	2020-12-27	11878.48
11188	2023-11-17	15538.35
11189	2020-10-13	12962.06
11190	2023-05-04	7964.78
11191	2022-05-15	13607.35
11192	2023-06-19	13332.65
11193	2020-03-20	13198.45
11194	2021-08-21	7169.74
11195	2021-10-20	9656.13
11196	2022-10-17	6964.54
11197	2022-06-10	15351.92
11198	2023-02-11	8555.42
11199	2022-04-04	11240.30
11200	2020-08-23	10776.84
11201	2024-09-12	17177.15
11202	2023-06-23	14797.20
11203	2020-11-28	11870.01
11204	2024-08-10	8887.24
11205	2020-06-25	11127.43
11206	2023-01-17	9952.56
11207	2022-11-16	12142.80
11208	2024-08-30	6722.73
11209	2022-03-05	16369.37
11210	2024-01-25	15331.81
11211	2022-10-24	13487.09
11212	2020-12-17	10813.21
11213	2023-02-12	10904.90
11214	2020-10-08	15675.23
11215	2024-09-29	7372.06
11216	2023-04-06	9388.29
11217	2024-04-17	6787.16
11218	2023-08-07	15713.47
11219	2021-07-22	15025.17
11220	2023-05-24	6603.51
11221	2024-10-12	13580.68
11222	2021-02-18	16682.53
11223	2022-07-20	15913.18
11224	2021-09-26	14052.00
11225	2023-07-16	14201.16
11226	2020-04-30	12044.51
11227	2020-03-17	9419.14
11228	2023-11-22	10843.32
11229	2020-08-13	12429.46
11230	2020-06-05	7116.56
11231	2020-03-01	16264.81
11232	2024-07-16	14240.60
11233	2022-11-13	14899.11
11234	2021-06-08	8076.13
11235	2021-10-27	13971.94
11236	2022-12-30	16955.96
11237	2023-01-05	16428.68
11238	2023-06-20	13112.66
11239	2024-04-25	13245.11
11240	2021-08-03	17111.47
11241	2024-06-11	7752.57
11242	2021-09-30	14755.42
11243	2024-10-03	14762.02
11244	2020-01-14	13450.43
11245	2020-01-02	11790.31
11246	2022-08-06	9824.39
11247	2020-09-11	10193.49
11248	2023-01-30	16172.86
11249	2020-05-29	7857.49
11250	2022-05-02	15871.54
11251	2021-07-02	17372.10
11252	2020-03-12	7458.94
11253	2022-07-08	7311.85
11254	2024-10-10	14277.13
11255	2023-05-20	10386.52
11256	2023-10-19	11821.83
11257	2022-01-11	8987.28
11258	2024-06-17	15618.29
11259	2020-01-13	10830.39
11260	2020-03-13	14745.01
11261	2023-01-16	12852.59
11262	2024-10-08	6912.63
11263	2023-06-13	10317.20
11264	2020-09-07	14519.93
11265	2024-10-20	16788.00
11266	2023-11-27	17131.36
11267	2020-11-14	10367.08
11268	2020-03-29	13944.24
11269	2020-09-10	16631.68
11270	2024-05-18	14269.88
11271	2022-11-18	12687.47
11272	2023-01-17	7716.30
11273	2020-09-14	15368.33
11274	2022-02-03	15090.38
11275	2020-05-28	11511.35
11276	2022-05-27	9625.15
11277	2023-06-27	10981.66
11278	2021-04-07	9520.40
11279	2022-08-25	8345.33
11280	2023-04-19	12184.61
11281	2022-12-21	9476.74
11282	2022-07-20	15181.53
11283	2023-07-31	16675.57
11284	2023-08-04	15027.81
11285	2024-08-25	10605.96
11286	2022-08-26	16617.34
11287	2023-04-28	9619.60
11288	2022-03-09	18071.70
11289	2022-05-11	9570.63
11290	2021-03-20	13178.60
11291	2024-01-15	7703.41
11292	2021-03-02	11040.66
11293	2024-04-29	9177.99
11294	2020-06-27	16660.93
11295	2022-10-21	16611.54
11296	2022-04-01	15883.27
11297	2024-02-11	8283.71
11298	2021-09-25	14639.25
11299	2023-07-13	16280.54
11300	2021-10-17	13103.11
11301	2023-08-10	7400.08
11302	2021-05-14	15552.66
11303	2021-10-25	7625.39
11304	2023-12-29	10592.17
11305	2020-02-10	7673.06
11306	2022-10-28	15928.70
11307	2020-08-21	7499.54
11308	2024-11-26	15180.85
11309	2021-12-10	14456.03
11310	2023-05-06	16940.74
11311	2023-12-24	8476.66
11312	2023-09-28	12680.22
11313	2022-11-14	14738.95
11314	2023-04-05	8787.54
11315	2020-06-27	12197.40
11316	2021-11-20	9508.63
11317	2021-01-28	16593.25
11318	2020-11-07	11038.05
11319	2021-10-14	9526.35
11320	2020-09-27	12605.47
11321	2023-01-10	8262.02
11322	2021-04-13	12104.35
11323	2023-11-22	14835.76
11324	2021-07-23	11048.62
11325	2020-11-03	15426.08
11326	2024-06-25	6994.20
11327	2021-03-20	14774.53
11328	2023-05-23	10707.76
11329	2021-03-15	9323.74
11330	2024-03-14	16794.10
11331	2021-02-02	8592.55
11332	2022-08-18	11652.47
11333	2022-07-22	17429.87
11334	2021-01-08	11314.63
11335	2023-11-16	17097.17
11336	2023-02-25	14186.20
11337	2021-09-29	11066.86
11338	2021-08-20	10587.05
11339	2021-05-29	10492.61
11340	2024-04-08	14260.47
11341	2024-04-07	11356.12
11342	2020-09-29	13987.68
11343	2024-09-28	14568.56
11344	2021-09-07	7956.85
11345	2022-03-05	12094.62
11346	2022-01-07	14287.35
11347	2024-10-21	9033.52
11348	2021-07-24	17793.33
11349	2023-12-15	9356.54
11350	2020-07-05	6885.26
11351	2023-07-31	6911.84
11352	2021-09-07	8770.84
11353	2020-04-30	12058.97
11354	2021-05-23	7478.54
11355	2022-10-16	8788.35
11356	2023-03-03	8811.16
11357	2022-06-18	9416.52
11358	2021-01-15	11163.64
11359	2020-07-15	10312.62
11360	2021-03-21	11915.70
11361	2021-05-08	9470.41
11362	2024-10-29	16031.09
11363	2023-07-27	17657.73
11364	2021-09-11	9564.26
11365	2020-02-20	8703.61
11366	2023-01-30	13512.58
11367	2020-10-17	7736.86
11368	2022-11-25	8051.35
11369	2023-09-30	16634.71
11370	2023-09-21	6779.14
11371	2022-09-12	14393.09
11372	2022-04-09	11579.71
11373	2022-08-29	9410.48
11374	2021-10-31	16535.40
11375	2022-10-14	18039.13
11376	2021-07-31	16440.92
11377	2023-12-03	17733.81
11378	2020-01-13	7482.97
11379	2020-02-07	7030.87
11380	2022-12-23	7484.15
11381	2024-08-12	12760.42
11382	2021-04-07	9752.00
11383	2024-04-12	17722.43
11384	2021-01-28	12549.46
11385	2021-01-18	17420.56
11386	2021-06-24	13299.45
11387	2020-02-18	14850.83
11388	2021-09-04	15068.16
11389	2020-07-01	14802.47
11390	2021-06-19	6684.54
11391	2021-10-21	13423.22
11392	2022-11-07	10735.02
11393	2024-01-03	14099.11
11394	2023-02-27	9719.55
11395	2020-03-21	7770.32
11396	2020-07-20	11213.11
11397	2020-08-10	8744.21
11398	2020-11-17	9192.13
11399	2023-04-20	12526.00
11400	2024-03-27	7813.14
11401	2022-03-17	8010.43
11402	2020-02-09	7375.37
11403	2021-10-06	10446.26
11404	2022-03-20	11502.23
11405	2023-02-11	8642.70
11406	2022-10-24	12058.55
11407	2023-09-06	15712.22
11408	2022-07-29	9733.83
11409	2024-09-14	6815.99
11410	2020-07-20	15509.81
11411	2022-05-02	14999.29
11412	2024-01-17	13794.53
11413	2023-02-05	12325.81
11414	2022-10-25	11156.17
11415	2020-12-18	12152.62
11416	2020-07-26	12480.66
11417	2021-08-29	8894.05
11418	2024-02-23	17666.15
11419	2021-05-08	11884.32
11420	2022-03-06	10553.33
11421	2023-07-10	12712.22
11422	2024-03-31	11412.98
11423	2021-06-10	17556.51
11424	2023-09-21	8883.54
11425	2021-08-30	6622.76
11426	2020-12-11	8548.42
11427	2022-12-07	13457.56
11428	2023-05-31	15859.86
11429	2020-10-26	7164.66
11430	2023-11-07	16212.98
11431	2023-11-25	17956.25
11432	2021-04-22	7632.15
11433	2020-08-14	15594.38
11434	2022-10-12	12417.56
11435	2020-04-05	16623.56
11436	2024-06-17	16837.77
11437	2021-12-02	13711.50
11438	2023-05-25	17730.60
11439	2021-11-25	17600.64
11440	2023-02-06	12093.51
11441	2021-07-23	11215.01
11442	2022-04-16	7068.27
11443	2024-01-13	13579.82
11444	2020-02-26	7156.75
11445	2020-03-28	9876.48
11446	2024-05-25	17344.91
11447	2022-02-26	9091.89
11448	2022-08-28	17710.06
11449	2024-05-05	15826.29
11450	2021-11-30	14395.38
11451	2021-07-03	12331.42
11452	2021-03-13	11415.53
11453	2020-03-09	14942.33
11454	2022-11-07	15743.66
11455	2020-02-06	9245.10
11456	2021-08-27	14954.95
11457	2022-01-10	11803.78
11458	2020-11-05	17214.03
11459	2024-02-11	14113.68
11460	2024-03-31	7583.11
11461	2024-03-10	8515.25
11462	2024-10-16	16137.44
11463	2024-05-16	10897.44
11464	2022-09-01	9893.44
11465	2021-05-25	11064.44
11466	2023-09-05	13659.96
11467	2022-01-27	11830.73
11468	2023-07-11	10581.69
11469	2021-10-18	9911.14
11470	2020-07-22	10321.35
11471	2024-01-25	15755.60
11472	2024-06-12	9317.59
11473	2023-06-26	9118.23
11474	2022-10-30	12845.54
11475	2021-05-14	12511.84
11476	2022-12-10	14779.68
11477	2022-12-06	9359.69
11478	2020-03-26	13540.18
11479	2022-03-27	17500.26
11480	2023-08-04	15210.19
11481	2022-01-30	12220.19
11482	2023-05-16	9318.86
11483	2023-06-11	16217.45
11484	2020-05-09	13529.45
11485	2023-12-13	10913.59
11486	2023-05-04	15632.14
11487	2020-11-20	10990.51
11488	2023-11-06	17527.14
11489	2020-11-05	12706.73
11490	2023-07-09	7616.62
11491	2020-12-15	12863.56
11492	2023-12-05	7580.96
11493	2022-07-10	15566.04
11494	2024-10-09	16229.25
11495	2021-03-22	7009.76
11496	2023-07-13	17348.54
11497	2024-11-30	15150.72
11498	2021-05-10	9759.97
11499	2021-03-07	11847.33
11500	2022-01-24	9855.47
11501	2023-01-02	15440.04
11502	2021-07-04	12901.31
11503	2023-12-20	16489.13
11504	2022-01-24	13155.49
11505	2024-06-25	14762.61
11506	2021-05-07	10904.19
11507	2024-07-31	8916.74
11508	2024-10-10	8444.58
11509	2021-12-14	16839.59
11510	2024-04-08	16502.44
11511	2023-05-21	13997.55
11512	2023-03-05	12728.92
11513	2024-05-17	15898.43
11514	2020-10-31	13456.93
11515	2020-03-01	6770.62
11516	2020-11-30	14545.47
11517	2024-05-22	16463.35
11518	2022-11-22	6973.16
11519	2023-10-06	12247.99
11520	2021-12-19	8184.83
11521	2021-10-25	13764.31
11522	2022-12-25	10214.85
11523	2022-03-21	10464.41
11524	2021-03-22	13778.16
11525	2021-02-17	11609.75
11526	2020-09-29	17400.45
11527	2021-03-20	17708.23
11528	2024-11-20	17959.83
11529	2022-02-22	7677.83
11530	2022-05-11	9479.18
11531	2022-04-07	9819.05
11532	2020-12-15	14841.80
11533	2024-04-04	12189.24
11534	2020-11-21	13044.27
11535	2023-07-10	8241.37
11536	2020-12-09	13642.72
11537	2024-04-07	15546.99
11538	2024-06-22	8437.76
11539	2020-07-24	10849.05
11540	2022-06-22	9441.67
11541	2023-04-06	15924.14
11542	2022-07-12	12037.64
11543	2022-07-04	12745.52
11544	2023-01-23	15476.93
11545	2020-09-04	15808.95
11546	2024-06-16	13691.19
11547	2021-08-28	12029.85
11548	2022-08-04	14645.53
11549	2024-11-28	7660.53
11550	2021-12-26	10745.71
11551	2023-08-26	16167.79
11552	2022-06-10	11196.48
11553	2022-07-16	10763.59
11554	2022-12-31	8229.57
11555	2022-03-08	12744.30
11556	2021-03-31	8023.26
11557	2022-07-29	7989.80
11558	2022-02-05	8956.25
11559	2020-08-04	14884.34
11560	2020-01-28	13810.89
11561	2024-08-22	14681.12
11562	2023-10-28	9840.03
11563	2023-06-22	12398.03
11564	2020-09-13	17833.09
11565	2021-01-23	9666.66
11566	2024-03-29	7575.34
11567	2023-01-02	9237.24
11568	2022-06-29	11656.08
11569	2022-09-05	15424.24
11570	2021-01-01	9453.20
11571	2020-11-12	12931.35
11572	2021-06-30	14632.66
11573	2023-05-16	14027.27
11574	2020-01-23	14797.11
11575	2020-10-05	14663.71
11576	2023-08-01	14000.86
11577	2022-01-20	16467.81
11578	2023-08-10	17444.90
11579	2022-05-12	13483.95
11580	2023-02-05	8546.83
11581	2023-09-03	13199.77
11582	2022-09-17	11339.98
11583	2020-04-08	15240.89
11584	2021-06-06	11427.38
11585	2024-06-14	17723.97
11586	2022-11-06	16011.78
11587	2023-12-23	14695.12
11588	2024-08-03	10452.84
11589	2023-03-06	10352.82
11590	2022-10-09	9419.81
11591	2022-12-21	16197.77
11592	2023-08-09	8672.89
11593	2021-06-12	14257.55
11594	2023-12-11	16430.91
11595	2021-06-12	11693.65
11596	2023-09-24	13377.60
11597	2022-02-12	13272.67
11598	2022-05-22	12213.91
11599	2024-11-14	11688.86
11600	2024-05-19	13750.08
11601	2022-09-14	8854.25
11602	2020-06-24	15101.59
11603	2022-10-21	10029.97
11604	2022-07-01	9613.47
11605	2022-12-05	10014.59
11606	2024-12-05	13494.28
11607	2020-04-02	11331.51
11608	2022-04-14	15441.18
11609	2021-06-24	16816.68
11610	2020-01-19	8039.96
11611	2021-11-14	17598.52
11612	2021-04-01	9491.43
11613	2023-03-25	17632.34
11614	2021-04-22	7587.01
11615	2022-10-01	10383.91
11616	2021-04-16	15603.81
11617	2022-07-01	14592.74
11618	2023-11-11	7909.11
11619	2024-09-14	10319.63
11620	2024-10-31	9150.85
11621	2024-10-01	12026.98
11622	2020-04-22	13405.85
11623	2021-02-14	14053.49
11624	2020-08-29	16788.08
11625	2022-08-03	14093.59
11626	2024-06-27	13213.33
11627	2024-06-07	10201.41
11628	2024-12-04	10535.07
11629	2024-03-02	15052.77
11630	2022-07-10	13102.03
11631	2023-07-22	13145.70
11632	2021-12-08	9824.16
11633	2023-08-09	12382.50
11634	2021-06-04	9198.36
11635	2020-10-11	12676.04
11636	2023-10-05	7921.32
11637	2021-10-01	17513.72
11638	2024-10-18	16714.22
11639	2022-01-30	16200.71
11640	2023-05-02	7628.72
11641	2023-04-25	6913.27
11642	2023-02-04	14699.70
11643	2023-08-14	13659.70
11644	2021-04-15	14410.35
11645	2024-02-03	9030.61
11646	2024-11-24	12374.91
11647	2023-11-02	16635.60
11648	2021-08-14	16110.46
11649	2024-05-10	11652.05
11650	2022-07-19	7448.01
11651	2020-05-06	8134.30
11652	2022-09-05	10529.38
11653	2024-05-14	9647.34
11654	2020-03-13	9810.72
11655	2020-02-01	17073.94
11656	2021-07-07	11681.69
11657	2021-02-02	7279.01
11658	2023-01-25	8887.01
11659	2023-10-03	9177.52
11660	2022-02-10	7368.16
11661	2024-08-31	10483.23
11662	2022-07-01	17929.81
11663	2023-01-17	17746.56
11664	2023-09-15	16530.84
11665	2022-09-03	12149.57
11666	2022-08-19	8906.88
11667	2021-06-18	13671.62
11668	2020-12-21	9068.74
11669	2022-10-27	7405.22
11670	2022-05-27	12807.33
11671	2022-12-21	15113.33
11672	2023-03-09	17738.41
11673	2022-10-17	9537.30
11674	2024-07-08	12979.39
11675	2023-02-15	8833.15
11676	2024-03-13	14464.77
11677	2020-06-28	6771.35
11678	2021-01-11	10026.15
11679	2021-01-11	15012.96
11680	2020-12-02	8212.80
11681	2024-03-01	8518.42
11682	2024-04-15	15642.23
11683	2023-10-28	14714.42
11684	2024-06-04	8717.46
11685	2020-08-16	8685.55
11686	2024-12-04	17707.55
11687	2023-06-30	7049.79
11688	2020-07-16	9700.20
11689	2021-10-21	9076.72
11690	2023-10-06	13124.03
11691	2020-11-18	13635.94
11692	2024-10-04	14801.72
11693	2023-08-21	6642.85
11694	2020-12-25	11067.66
11695	2020-11-21	11233.38
11696	2020-10-27	13298.75
11697	2022-04-23	16354.56
11698	2021-08-08	12205.72
11699	2022-05-23	8350.05
11700	2024-08-05	15308.21
11701	2021-07-09	7668.68
11702	2020-05-08	17997.28
11703	2020-03-30	15269.56
11704	2021-11-23	17741.29
11705	2020-09-19	7826.89
11706	2022-01-24	13473.54
11707	2022-02-25	16260.54
11708	2020-01-18	15892.61
11709	2022-06-14	15034.46
11710	2020-03-27	14726.48
11711	2020-01-20	12379.52
11712	2023-02-15	8021.43
11713	2022-06-27	14827.99
11714	2021-05-12	7301.14
11715	2020-08-16	17675.47
11716	2020-04-14	13462.14
11717	2020-03-02	16792.73
11718	2023-08-19	7406.01
11719	2021-05-14	6742.94
11720	2022-12-14	11641.45
11721	2024-09-22	10154.87
11722	2022-12-20	7834.14
11723	2024-10-28	17125.09
11724	2024-05-20	14252.27
11725	2024-05-02	13124.18
11726	2020-11-25	9189.33
11727	2023-11-19	16045.76
11728	2023-09-08	16659.99
11729	2023-05-24	9818.85
11730	2021-11-14	9601.41
11731	2024-03-19	7411.33
11732	2021-05-20	10808.51
11733	2022-07-23	17555.70
11734	2020-11-18	15588.11
11735	2024-06-05	16183.28
11736	2022-10-10	9753.37
11737	2024-03-13	12655.77
11738	2021-03-10	7824.72
11739	2024-04-13	16136.50
11740	2021-10-04	12457.05
11741	2021-11-26	11432.13
11742	2023-08-19	15749.79
11743	2020-10-22	13953.81
11744	2022-05-01	11012.97
11745	2022-03-17	16066.35
11746	2020-06-20	6813.61
11747	2024-06-16	16745.19
11748	2022-01-03	9865.55
11749	2023-05-06	13626.07
11750	2024-01-23	9134.54
11751	2021-03-12	14757.12
11752	2023-04-01	13372.99
11753	2022-05-08	10677.84
11754	2020-12-15	16294.11
11755	2021-08-13	6634.36
11756	2023-03-11	15232.98
11757	2023-06-21	11981.71
11758	2020-08-11	12316.04
11759	2024-07-23	11032.76
11760	2021-02-12	16903.75
11761	2024-08-27	12698.94
11762	2023-07-05	7236.87
11763	2020-10-11	12073.90
11764	2020-10-08	14350.58
11765	2022-09-25	10270.60
11766	2024-03-01	17512.61
11767	2024-11-21	13799.79
11768	2023-01-13	8417.52
11769	2020-07-14	13260.90
11770	2020-06-21	6791.51
11771	2022-03-14	16043.45
11772	2024-02-03	12786.99
11773	2021-03-13	8796.54
11774	2021-03-05	13614.26
11775	2020-07-03	14529.50
11776	2023-11-16	15286.18
11777	2023-12-20	9017.47
11778	2020-10-03	16147.30
11779	2022-08-05	12702.70
11780	2023-10-01	17899.84
11781	2023-12-24	8507.95
11782	2023-06-17	11541.03
11783	2020-08-11	9651.96
11784	2020-07-17	14854.60
11785	2024-03-02	8661.10
11786	2024-11-16	14193.61
11787	2022-12-25	14198.99
11788	2023-05-21	17085.05
11789	2020-10-28	16239.18
11790	2021-09-08	11114.19
11791	2020-07-30	13404.43
11792	2021-11-16	14906.81
11793	2021-08-13	9310.64
11794	2020-06-20	15721.17
11795	2023-08-29	16570.45
11796	2021-05-28	13876.34
11797	2021-02-22	7649.75
11798	2021-12-16	16801.33
11799	2021-11-30	14182.15
11800	2024-01-27	17830.12
11801	2021-05-04	9816.52
11802	2021-12-13	10453.29
11803	2022-01-05	12470.38
11804	2024-06-11	11642.93
11805	2021-09-04	11838.20
11806	2023-01-28	17453.57
11807	2024-07-01	12665.96
11808	2023-07-19	8232.74
11809	2023-08-03	15405.14
11810	2022-03-30	6788.50
11811	2024-11-24	8463.51
11812	2023-03-18	6955.41
11813	2022-11-14	16643.56
11814	2024-05-27	6891.42
11815	2020-07-08	9524.17
11816	2022-07-18	13627.86
11817	2022-07-13	7904.54
11818	2022-06-19	8313.38
11819	2022-03-09	7239.30
11820	2022-06-15	12667.64
11821	2023-04-28	13956.39
11822	2023-01-17	7800.87
11823	2020-03-11	8749.07
11824	2022-09-04	7365.02
11825	2022-09-06	8636.08
11826	2024-02-12	17294.09
11827	2024-09-30	16515.98
11828	2023-07-16	12450.73
11829	2024-06-02	13267.49
11830	2022-06-29	13776.10
11831	2024-07-15	13492.91
11832	2024-03-18	17363.28
11833	2023-03-20	9359.71
11834	2024-01-26	9714.99
11835	2022-04-18	7953.95
11836	2024-07-24	11459.27
11837	2020-05-31	10494.90
11838	2020-11-27	17446.59
11839	2023-05-28	7778.76
11840	2024-03-31	8994.18
11841	2020-01-29	14401.60
11842	2022-01-10	14029.41
11843	2020-05-18	11479.71
11844	2023-02-18	10882.95
11845	2024-08-22	11977.82
11846	2024-07-29	9864.54
11847	2022-11-23	8370.74
11848	2021-09-13	8312.54
11849	2023-09-18	9026.07
11850	2023-08-22	12110.68
11851	2022-09-21	13796.89
11852	2020-07-09	12216.59
11853	2022-07-29	12613.60
11854	2021-11-26	12017.94
11855	2023-05-22	8149.68
11856	2022-03-31	16915.28
11857	2022-05-21	11567.09
11858	2024-07-21	11283.61
11859	2021-01-19	8453.04
11860	2021-07-10	7864.33
11861	2022-02-14	17842.90
11862	2022-11-04	17426.06
11863	2021-08-11	13271.77
11864	2023-03-31	12157.87
11865	2022-03-22	14369.28
11866	2024-11-16	11734.04
11867	2022-07-26	8267.69
11868	2024-05-31	15397.47
11869	2020-08-19	12532.82
11870	2021-04-30	9696.39
11871	2023-08-03	8205.72
11872	2024-02-28	8394.80
11873	2024-09-23	17276.22
11874	2023-04-07	13041.97
11875	2023-04-05	12581.28
11876	2020-01-05	10043.40
11877	2022-10-09	9478.31
11878	2024-10-28	7900.50
11879	2020-07-08	11647.06
11880	2022-04-01	11886.26
11881	2021-04-02	14075.44
11882	2024-08-05	6799.32
11883	2021-01-07	17965.14
11884	2021-09-23	6989.62
11885	2024-12-02	17050.36
11886	2021-07-01	7986.63
11887	2023-10-19	9392.31
11888	2021-07-13	13977.33
11889	2022-04-03	15169.36
11890	2024-02-22	10947.70
11891	2021-06-16	6994.37
11892	2024-11-23	9578.62
11893	2023-08-12	13032.95
11894	2023-06-24	17064.86
11895	2024-08-19	8673.77
11896	2022-09-30	8017.14
11897	2021-07-22	10223.27
11898	2022-03-10	12520.59
11899	2021-07-22	9627.44
11900	2021-08-02	6949.85
11901	2024-03-20	17320.87
11902	2020-11-06	17516.24
11903	2020-07-27	12834.80
11904	2024-03-04	9988.94
11905	2021-09-24	12039.20
11906	2024-09-07	13844.46
11907	2021-07-15	11731.03
11908	2022-02-15	16038.12
11909	2023-03-16	15673.70
11910	2020-04-20	8711.62
11911	2023-06-24	16000.49
11912	2021-09-21	9265.70
11913	2023-04-03	15621.83
11914	2023-05-30	10901.12
11915	2023-11-12	7447.93
11916	2024-07-13	17186.11
11917	2024-11-10	11000.17
11918	2024-06-28	12096.57
11919	2021-05-13	12180.83
11920	2021-11-01	18019.65
11921	2020-01-17	16142.10
11922	2022-04-17	8621.75
11923	2021-09-18	15679.38
11924	2024-06-19	6702.78
11925	2020-05-03	17911.29
11926	2020-04-17	7883.31
11927	2022-11-01	10836.72
11928	2020-01-16	15470.24
11929	2024-04-11	8942.89
11930	2024-01-01	11894.48
11931	2022-09-29	6897.24
11932	2023-02-11	14851.93
11933	2020-01-29	12996.25
11934	2021-01-02	12977.09
11935	2023-09-01	8874.64
11936	2020-06-26	10452.01
11937	2023-03-01	16402.05
11938	2022-11-17	9452.44
11939	2024-06-07	17429.85
11940	2022-11-03	12094.92
11941	2024-04-20	15953.52
11942	2023-09-23	14301.50
11943	2024-10-25	16086.14
11944	2022-01-12	11615.55
11945	2020-01-19	10355.97
11946	2022-12-07	12076.18
11947	2021-01-15	9699.74
11948	2021-01-09	10940.82
11949	2024-01-31	16585.18
11950	2021-08-02	9151.61
11951	2024-10-01	15894.39
11952	2023-10-17	15820.08
11953	2024-08-02	9750.91
11954	2020-05-06	9645.63
11955	2021-02-04	9334.65
11956	2023-11-19	7872.94
11957	2024-08-08	11473.05
11958	2020-11-21	6752.00
11959	2023-10-14	10774.07
11960	2024-10-23	10118.22
11961	2022-01-07	7584.15
11962	2021-03-18	15060.08
11963	2024-07-20	10638.45
11964	2020-11-20	13442.36
11965	2023-07-31	11401.70
11966	2021-12-17	16337.96
11967	2022-01-15	10665.96
11968	2021-02-24	15449.27
11969	2024-08-19	17126.94
11970	2023-11-04	12187.27
11971	2023-03-25	13618.22
11972	2020-10-04	13638.73
11973	2021-10-02	13205.22
11974	2023-12-09	9177.24
11975	2022-11-06	13195.01
11976	2023-02-20	16210.59
11977	2020-02-25	12019.59
11978	2023-08-05	16168.01
11979	2023-01-02	17083.43
11980	2022-03-03	14553.29
11981	2023-10-10	16683.89
11982	2024-02-27	8950.99
11983	2021-09-23	13998.89
11984	2024-04-18	8213.62
11985	2020-10-13	18082.71
11986	2020-11-30	12068.42
11987	2023-06-17	7677.87
11988	2021-03-22	9629.69
11989	2020-04-19	8418.86
11990	2020-07-24	9475.60
11991	2024-05-31	8690.80
11992	2021-08-05	13912.17
11993	2020-05-16	13321.98
11994	2020-12-21	7043.63
11995	2020-12-24	7478.51
11996	2021-09-11	7793.27
11997	2020-10-03	10914.80
11998	2022-01-31	9291.38
11999	2020-10-29	6692.41
12000	2022-01-23	15652.89
12001	2023-07-14	13740.50
12002	2020-09-19	6830.81
12003	2023-12-05	11742.97
12004	2023-08-01	13596.63
12005	2023-05-05	16087.79
12006	2023-07-06	16197.85
12007	2023-08-20	12770.30
12008	2022-12-18	12305.52
12009	2024-11-28	16144.30
12010	2024-08-22	10825.61
12011	2024-06-06	13641.20
12012	2024-11-19	12259.16
12013	2020-07-08	15034.83
12014	2021-11-07	15669.44
12015	2021-03-23	17389.24
12016	2022-05-05	16090.57
12017	2023-05-23	10156.10
12018	2022-03-12	8368.76
12019	2024-04-27	12408.84
12020	2023-03-27	15214.39
12021	2024-07-08	9580.49
12022	2022-08-01	17444.46
12023	2024-02-27	6715.60
12024	2022-07-10	11864.22
12025	2021-01-29	15896.74
12026	2021-05-09	14629.93
12027	2024-10-26	17650.17
12028	2024-01-27	9263.81
12029	2021-01-11	15023.88
12030	2024-03-27	15565.43
12031	2021-08-14	10986.96
12032	2023-12-19	9472.10
12033	2024-06-12	15450.97
12034	2021-09-12	8513.36
12035	2022-03-09	16821.73
12036	2021-07-24	9282.68
12037	2020-05-14	9499.99
12038	2023-11-28	11465.25
12039	2024-06-17	13841.49
12040	2020-12-18	6745.08
12041	2020-12-20	17288.03
12042	2022-05-29	14557.45
12043	2021-08-31	8724.92
12044	2023-05-18	17344.92
12045	2022-02-09	6840.36
12046	2024-06-13	16051.65
12047	2023-04-13	12453.68
12048	2023-06-25	8471.59
12049	2021-04-01	16490.66
12050	2023-04-26	14667.01
12051	2022-01-05	12448.39
12052	2021-07-02	15263.02
12053	2022-07-03	14369.83
12054	2023-02-13	10807.09
12055	2020-01-11	16766.98
12056	2022-01-19	7771.25
12057	2023-12-21	7321.73
12058	2024-04-07	12752.80
12059	2021-11-18	17602.27
12060	2021-04-23	8922.39
12061	2021-01-06	15132.60
12062	2022-02-13	10569.67
12063	2021-02-28	13300.63
12064	2021-04-24	16343.33
12065	2022-09-18	17558.35
12066	2023-12-22	10634.10
12067	2021-03-12	7219.92
12068	2021-03-10	7780.25
12069	2021-11-14	7620.28
12070	2023-11-01	11842.05
12071	2021-08-01	16729.22
12072	2021-08-03	13655.46
12073	2021-04-07	11998.30
12074	2024-03-11	9235.72
12075	2024-03-29	13528.71
12076	2020-10-03	14338.51
12077	2022-03-31	7360.95
12078	2022-03-28	10579.74
12079	2022-03-23	11685.78
12080	2022-09-11	9708.50
12081	2021-09-28	16154.16
12082	2022-07-29	17159.01
12083	2022-06-19	7335.61
12084	2023-08-07	13815.71
12085	2022-01-20	12322.42
12086	2020-04-28	6697.37
12087	2022-02-12	13004.03
12088	2021-09-14	17934.84
12089	2023-06-09	9230.51
12090	2021-06-14	13995.20
12091	2022-02-15	6698.72
12092	2024-03-30	11141.98
12093	2020-08-15	14220.91
12094	2024-05-22	13136.55
12095	2022-11-29	12565.94
12096	2022-12-04	18089.92
12097	2021-07-31	16028.48
12098	2020-02-17	12480.61
12099	2024-08-31	16662.48
12100	2023-09-03	12180.64
12101	2021-06-07	13337.51
12102	2024-10-01	12641.16
12103	2020-08-04	7572.66
12104	2023-06-21	9861.25
12105	2024-01-10	7583.21
12106	2024-06-20	12561.87
12107	2020-05-03	13511.07
12108	2021-01-23	15738.27
12109	2022-07-25	10390.68
12110	2021-10-18	11911.48
12111	2020-01-07	16941.42
12112	2020-07-11	9727.70
12113	2022-11-11	16278.51
12114	2021-05-27	9755.44
12115	2020-06-19	11168.55
12116	2021-01-21	15694.07
12117	2020-02-25	16226.07
12118	2020-12-05	15047.12
12119	2021-05-31	11067.41
12120	2021-01-27	14822.99
12121	2022-03-18	17005.42
12122	2022-10-27	6920.17
12123	2022-04-23	15942.04
12124	2020-10-07	16284.81
12125	2022-01-10	15112.90
12126	2021-04-12	9763.10
12127	2021-08-09	9457.63
12128	2023-01-16	12002.27
12129	2020-09-09	14871.19
12130	2020-03-08	6758.32
12131	2021-01-31	14092.55
12132	2021-01-31	9608.82
12133	2024-02-23	12077.32
12134	2022-04-09	13771.57
12135	2021-07-19	13996.78
12136	2024-07-01	7110.48
12137	2020-05-23	10657.66
12138	2022-06-24	15295.85
12139	2023-02-17	16048.89
12140	2022-01-24	16643.77
12141	2024-08-08	15463.68
12142	2020-06-10	9598.20
12143	2022-01-13	7497.52
12144	2021-07-27	16958.03
12145	2023-02-10	14461.19
12146	2020-04-24	14104.80
12147	2023-04-26	7937.39
12148	2021-03-25	8663.40
12149	2023-10-23	8697.67
12150	2020-03-20	17634.94
12151	2021-11-12	9600.21
12152	2022-08-28	17136.72
12153	2020-12-17	14253.65
12154	2023-11-26	9333.55
12155	2020-09-15	10612.16
12156	2022-05-20	13733.94
12157	2024-05-22	16089.23
12158	2021-04-18	12785.67
12159	2022-06-24	7741.08
12160	2023-06-04	17287.86
12161	2024-06-23	9188.22
12162	2022-12-30	9565.43
12163	2024-03-26	15477.73
12164	2023-02-16	7440.87
12165	2022-11-19	11826.88
12166	2021-03-14	12218.73
12167	2021-03-17	7125.78
12168	2023-02-23	11721.06
12169	2023-11-07	17009.00
12170	2022-12-02	11502.70
12171	2022-02-12	8362.51
12172	2021-08-28	10224.41
12173	2023-02-24	14262.24
12174	2021-09-21	11889.62
12175	2023-11-08	12005.80
12176	2024-11-08	15500.91
12177	2024-02-06	12789.89
12178	2023-11-05	16435.25
12179	2023-08-13	12858.41
12180	2023-12-01	15050.79
12181	2021-03-22	9589.10
12182	2023-09-09	7743.22
12183	2023-09-09	11236.66
12184	2024-03-12	17914.63
12185	2022-09-19	7488.97
12186	2023-08-05	12332.70
12187	2020-03-12	6807.97
12188	2023-10-07	12193.58
12189	2023-06-19	11082.27
12190	2022-11-05	6743.11
12191	2024-08-27	12149.90
12192	2023-08-21	14177.62
12193	2024-03-18	15285.42
12194	2022-09-05	12840.37
12195	2022-09-29	17526.19
12196	2021-02-18	10605.83
12197	2021-09-17	14518.74
12198	2022-04-26	16723.52
12199	2024-07-04	11893.09
12200	2022-06-20	9171.68
12201	2024-03-02	10382.77
12202	2022-06-20	12143.16
12203	2021-02-28	14789.99
12204	2022-10-02	17653.28
12205	2020-07-21	16627.24
12206	2021-12-03	11083.35
12207	2023-01-05	14138.84
12208	2021-09-03	16835.21
12209	2021-12-02	14585.92
12210	2024-11-14	13205.91
12211	2023-08-28	7636.32
12212	2024-09-09	11162.25
12213	2020-11-02	9077.02
12214	2020-12-03	11892.46
12215	2023-09-18	12575.62
12216	2024-03-29	14703.07
12217	2021-10-26	10786.66
12218	2023-06-20	17973.52
12219	2022-05-01	13848.97
12220	2024-08-14	9016.54
12221	2023-06-24	13197.42
12222	2023-12-29	11664.78
12223	2022-01-15	15974.68
12224	2022-05-26	8566.94
12225	2023-12-01	16182.48
12226	2024-06-12	11356.27
12227	2024-01-14	9255.97
12228	2021-07-10	10523.87
12229	2020-04-11	11141.65
12230	2024-08-24	17817.74
12231	2021-04-14	17723.49
12232	2021-10-15	17972.01
12233	2020-07-25	8490.09
12234	2020-12-31	15431.70
12235	2024-01-01	6756.03
12236	2024-02-26	10946.22
12237	2022-07-16	10718.16
12238	2020-08-28	7066.46
12239	2023-12-25	14899.27
12240	2022-07-10	10832.81
12241	2021-11-01	15524.76
12242	2022-02-16	17371.94
12243	2024-01-19	14370.60
12244	2020-03-17	17562.46
12245	2023-04-27	14542.38
12246	2020-05-07	8378.38
12247	2022-05-20	11796.82
12248	2024-10-18	12500.93
12249	2022-12-08	11835.04
12250	2021-09-30	7200.24
12251	2024-02-29	15492.35
12252	2024-01-12	8423.94
12253	2022-09-23	13796.04
12254	2024-02-06	8307.58
12255	2020-09-22	8927.40
12256	2024-05-06	11850.74
12257	2020-10-04	14109.32
12258	2020-09-21	16407.38
12259	2020-05-13	7387.53
12260	2020-11-10	11293.90
12261	2020-04-12	10158.87
12262	2022-02-25	15367.79
12263	2021-10-14	15250.47
12264	2022-04-19	17943.56
12265	2024-06-09	7163.95
12266	2022-11-10	14329.22
12267	2021-08-19	16918.41
12268	2023-01-23	9065.08
12269	2020-07-03	16197.06
12270	2022-09-25	12254.36
12271	2023-09-07	15686.55
12272	2021-12-02	11101.02
12273	2023-03-03	14214.32
12274	2024-02-13	8488.69
12275	2024-11-10	13385.27
12276	2022-02-15	17581.51
12277	2022-12-22	6947.81
12278	2024-06-20	17123.85
12279	2022-03-07	10654.14
12280	2023-08-29	12681.97
12281	2022-03-14	7293.17
12282	2020-07-21	15345.64
12283	2020-07-09	14766.69
12284	2024-01-06	9263.17
12285	2022-06-26	16538.22
12286	2020-03-14	17155.04
12287	2024-09-07	8892.77
12288	2022-03-26	15810.51
12289	2020-08-04	15831.84
12290	2022-11-26	8753.01
12291	2023-12-12	10654.38
12292	2023-08-17	10764.35
12293	2022-05-18	17141.74
12294	2020-03-30	10617.04
12295	2020-09-18	13927.16
12296	2023-07-25	10311.37
12297	2020-02-19	17477.55
12298	2020-03-09	9450.38
12299	2021-10-05	7095.62
12300	2021-07-23	15934.43
12301	2020-01-23	8639.84
12302	2021-04-30	16934.88
12303	2023-11-24	13426.81
12304	2024-07-03	9492.29
12305	2020-04-13	14602.89
12306	2024-05-16	9258.91
12307	2021-02-24	12897.10
12308	2022-06-22	12956.94
12309	2022-01-02	17936.83
12310	2022-09-05	7857.79
12311	2023-03-09	10239.05
12312	2023-08-30	13151.47
12313	2024-08-21	12257.98
12314	2020-02-01	12948.66
12315	2021-10-28	12554.87
12316	2022-11-18	17090.54
12317	2020-10-09	16729.41
12318	2020-06-05	6686.51
12319	2022-10-02	16712.37
12320	2020-12-20	9225.36
12321	2021-04-06	9729.40
12322	2022-05-20	11364.36
12323	2024-01-11	8223.67
12324	2020-06-29	8978.18
12325	2022-08-29	16065.69
12326	2022-04-09	6992.11
12327	2021-06-12	13161.45
12328	2024-05-12	10966.54
12329	2020-01-27	17202.52
12330	2020-07-30	17272.01
12331	2021-11-14	14827.37
12332	2022-12-03	14103.27
12333	2022-12-25	12962.73
12334	2023-11-08	10753.28
12335	2022-10-04	12198.59
12336	2022-08-25	11628.57
12337	2023-07-18	14531.82
12338	2020-03-06	17765.24
12339	2021-03-21	8233.38
12340	2024-10-30	12655.51
12341	2024-11-10	14420.42
12342	2021-04-08	11028.72
12343	2024-11-28	16074.89
12345	2022-02-19	13830.94
12346	2022-05-08	9699.69
12347	2021-10-27	17303.56
12348	2020-10-11	16682.30
12349	2023-01-12	8823.89
12350	2023-01-30	11947.51
12351	2023-07-11	11815.73
12352	2021-03-22	14722.03
12353	2024-09-09	6692.20
12354	2020-01-07	15593.02
12355	2020-06-21	17830.19
12356	2021-04-29	16035.70
12357	2020-03-03	10866.10
12358	2022-01-15	10503.49
12359	2021-11-11	14701.64
12360	2021-10-17	14067.24
12361	2021-09-10	12836.83
12362	2023-02-05	6872.00
12363	2022-01-16	12292.93
12364	2020-12-19	7088.00
12365	2020-08-04	17250.29
12366	2020-04-07	12914.54
12367	2022-03-04	7150.75
12368	2023-11-04	14302.77
12369	2021-03-08	9875.96
12370	2021-06-26	7583.84
12371	2020-10-20	8965.92
12372	2024-01-23	15039.06
12373	2020-07-21	15600.95
12374	2021-06-08	13321.87
12375	2020-04-15	16628.86
12376	2022-03-13	7170.18
12377	2021-02-17	9984.05
12378	2023-04-09	11617.87
12379	2020-07-14	8991.18
12380	2021-11-30	11489.65
12381	2021-11-20	7382.29
12382	2024-01-10	11332.68
12383	2024-08-21	10923.95
12384	2021-10-07	13448.32
12385	2022-05-29	16847.72
12386	2021-08-07	7178.88
12387	2023-05-06	10527.28
12388	2023-11-02	8506.99
12389	2022-08-10	14116.50
12390	2024-08-27	10242.68
12391	2022-10-27	7474.89
12392	2024-06-06	16010.36
12393	2023-04-20	8808.03
12394	2021-10-09	17231.71
12395	2022-09-13	7534.68
12396	2022-04-18	12715.40
12397	2022-03-03	9481.77
12398	2020-02-27	14476.68
12399	2024-11-25	9673.08
12400	2023-09-06	16648.96
12401	2020-11-26	7549.62
12402	2023-01-24	14169.02
12403	2024-11-06	18007.35
12404	2024-09-16	17739.17
12405	2024-01-19	13159.93
12406	2024-09-09	7185.28
12407	2024-03-13	16160.87
12408	2021-05-13	6819.61
12409	2021-06-27	17171.42
12410	2023-09-26	13353.65
12411	2021-03-31	14018.31
12412	2020-04-16	15240.33
12413	2022-08-25	14585.40
12414	2020-04-08	11278.59
12415	2024-02-05	17289.58
12416	2021-09-27	14969.48
12417	2022-02-03	15832.02
12418	2023-10-02	15406.95
12419	2024-09-16	10546.11
12420	2022-04-08	16593.56
12421	2020-05-13	9188.34
12422	2023-05-08	16336.43
12423	2022-09-14	11120.21
12424	2020-07-14	10043.32
12425	2020-02-12	7418.86
12426	2023-10-20	6609.75
12427	2023-01-04	10000.29
12428	2022-10-13	11519.02
12429	2020-08-13	12429.94
12430	2021-09-03	16509.72
12431	2020-04-10	11919.32
12432	2023-05-03	10713.08
12433	2021-01-14	12342.69
12434	2021-11-29	6903.97
12435	2021-12-15	9724.09
12436	2022-03-11	9375.78
12437	2022-10-27	9576.76
12438	2021-08-18	12564.62
12439	2022-06-01	12488.51
12440	2022-02-25	11560.01
12441	2021-06-24	16470.69
12442	2021-08-25	16925.54
12443	2023-09-07	17561.64
12444	2021-01-24	13469.29
12445	2020-10-01	15170.72
12446	2020-03-10	16395.71
12447	2020-10-12	13185.08
12448	2023-04-13	16595.30
12449	2024-05-07	8836.14
12450	2021-07-21	9553.37
12451	2024-05-08	16136.11
12452	2021-04-17	7313.04
12453	2021-10-11	16873.64
12454	2021-06-27	7838.35
12455	2022-10-09	8266.35
12456	2021-10-23	10940.49
12457	2020-08-15	9680.81
12458	2021-05-19	14114.44
12459	2023-07-24	15445.21
12460	2024-08-12	10099.91
12461	2021-02-24	10735.73
12462	2021-01-10	18078.89
12463	2021-12-28	8743.76
12464	2020-01-07	16354.90
12465	2020-06-29	10067.35
12466	2024-02-07	16521.99
12467	2024-04-09	15049.71
12468	2024-01-20	7876.99
12469	2022-10-03	17706.10
12470	2020-12-24	10585.55
12471	2021-04-06	7618.12
12472	2020-12-26	11830.49
12473	2024-11-07	8242.80
12474	2024-02-09	8444.89
12475	2024-07-14	13277.55
12476	2024-02-04	8842.77
12477	2022-10-29	13407.39
12478	2021-02-11	9531.74
12479	2021-08-20	17232.00
12480	2021-09-07	14764.84
12481	2020-09-13	10463.28
12482	2020-11-14	13572.95
12483	2020-04-10	16813.18
12484	2021-02-23	9983.05
12485	2020-02-29	9289.44
12486	2024-03-03	10900.06
12487	2023-07-01	15672.69
12488	2020-05-10	8223.93
12489	2020-08-31	9674.87
12490	2024-02-29	17238.81
12491	2024-06-10	8776.48
12492	2020-05-22	8647.54
12493	2022-02-17	13639.72
12494	2020-06-10	15407.59
12495	2021-02-22	9944.82
12496	2022-01-09	10430.01
12497	2024-01-04	13703.41
12498	2022-05-19	12319.40
12499	2021-02-27	14473.44
12500	2023-04-11	15172.98
12501	2020-12-21	13774.01
12502	2021-06-12	14976.09
12503	2020-05-02	12830.37
12504	2024-09-17	9116.76
12505	2020-12-12	17373.19
12506	2024-02-03	15701.42
12507	2021-09-18	11663.69
12508	2020-05-16	16255.54
12509	2023-09-16	12883.02
12510	2021-10-11	15683.50
12511	2021-02-05	16778.58
12512	2022-07-03	14366.42
12513	2022-06-07	12073.45
12514	2021-02-24	8297.94
12515	2022-03-17	8101.52
12516	2020-09-23	16148.38
12517	2021-01-11	13246.83
12518	2020-06-12	16258.59
12519	2020-04-24	7442.67
12520	2023-07-02	9088.21
12521	2020-04-30	10534.07
12522	2022-09-26	11772.59
12523	2023-12-29	10784.68
12524	2020-05-15	16502.69
12525	2024-06-07	12799.56
12526	2022-05-29	17537.62
12527	2020-05-25	9433.94
12528	2020-06-09	6903.78
12529	2021-02-23	17514.62
12530	2023-01-01	9705.43
12531	2020-04-30	12387.48
12532	2023-05-23	14357.46
12533	2024-08-17	10156.58
12534	2020-09-02	9930.72
12535	2023-08-29	10028.88
12536	2024-11-13	9143.73
12537	2021-08-14	11799.67
12538	2023-11-11	15751.70
12539	2024-03-05	10777.32
12540	2021-02-20	10874.79
12541	2021-05-15	8652.12
12542	2022-01-08	10508.23
12543	2024-02-14	10427.47
12544	2022-08-30	14232.34
12545	2023-08-19	11258.94
12546	2021-05-23	8985.68
12547	2020-04-23	14837.81
12548	2021-10-11	10903.27
12549	2023-01-04	11677.73
12550	2024-06-29	11197.75
12551	2024-03-05	17149.23
12552	2024-03-04	13283.87
12553	2022-09-09	14904.09
12554	2021-01-28	11300.19
12555	2023-02-09	10526.85
12556	2020-09-08	15278.96
12557	2023-07-01	17098.59
12558	2024-10-27	8196.12
12559	2022-08-22	13167.98
12560	2023-11-05	10099.64
12561	2024-05-04	7190.56
12562	2021-06-22	9618.53
12563	2023-04-26	12188.63
12564	2022-11-17	15224.44
12565	2022-03-09	9096.49
12566	2023-09-25	17886.33
12567	2023-07-07	10898.21
12568	2024-06-29	17122.64
12569	2021-05-10	13729.72
12570	2024-08-29	11805.05
12571	2021-10-28	9504.28
12572	2023-05-12	7970.22
12573	2021-05-14	8959.52
12574	2020-02-02	14730.51
12575	2024-05-08	11659.00
12576	2021-12-03	16482.62
12577	2023-08-22	15178.79
12578	2021-01-04	12131.77
12579	2020-12-03	15555.98
12580	2023-08-30	9309.14
12581	2020-05-11	12593.90
12582	2023-08-05	8775.93
12583	2024-01-04	9953.53
12584	2022-08-07	13720.31
12585	2020-09-12	8394.72
12586	2022-03-04	9387.95
12587	2020-02-22	9728.35
12588	2020-07-22	11471.08
12589	2022-11-09	13354.07
12590	2023-07-23	9045.36
12591	2023-07-29	13710.74
12592	2024-01-31	8427.06
12593	2024-05-12	16456.13
12594	2020-06-12	14869.43
12595	2024-10-28	7978.45
12596	2023-10-26	8821.87
12597	2020-07-25	16020.77
12598	2022-08-11	7201.80
12599	2021-08-13	11491.34
12600	2020-12-25	6891.31
12601	2022-04-17	8068.71
12602	2024-04-08	15607.18
12603	2021-02-28	9345.69
12604	2024-11-18	16115.36
12605	2023-06-28	9887.44
12606	2021-06-23	8465.55
12607	2020-08-01	11283.11
12608	2022-04-09	14580.14
12609	2020-12-08	16243.40
12610	2023-05-07	12209.84
12611	2024-10-15	9314.30
12612	2022-08-31	13882.33
12613	2023-07-09	14287.70
12614	2024-03-16	11141.69
12615	2023-04-06	17893.04
12616	2023-10-05	11655.91
12617	2021-03-21	12064.48
12618	2021-09-17	12296.45
12619	2021-02-05	9759.12
12620	2021-03-30	16664.75
12621	2024-05-10	10263.06
12622	2020-02-01	8182.95
12623	2020-05-23	12663.74
12624	2020-01-09	11052.13
12625	2024-03-21	8164.30
12626	2020-01-05	14402.92
12627	2024-04-02	11086.64
12628	2021-08-14	9610.16
12629	2020-01-16	12791.79
12630	2022-01-01	7160.98
12631	2020-03-18	7273.67
12632	2022-04-28	6684.92
12633	2024-05-30	9532.44
12634	2023-01-08	13474.45
12635	2021-10-11	10125.51
12636	2022-03-05	6608.34
12637	2022-08-29	15867.73
12638	2020-07-10	16686.67
12639	2020-10-11	6875.76
12640	2022-12-19	13377.04
12641	2024-04-16	12310.40
12642	2021-06-26	15925.12
12643	2022-04-12	16531.41
12644	2021-05-10	9235.66
12645	2021-07-13	9983.36
12646	2020-05-09	17905.69
12647	2023-01-17	8024.03
12648	2024-08-07	13299.29
12649	2020-02-25	7112.40
12650	2020-07-10	14211.18
12651	2023-02-24	12899.28
12652	2020-10-07	18049.59
12653	2021-01-22	15982.66
12654	2022-03-15	11065.69
12655	2024-07-10	11501.68
12656	2022-05-21	8519.96
12657	2021-03-30	6998.78
12658	2021-11-10	12723.07
12659	2020-06-13	10988.75
12660	2021-05-16	10363.10
12661	2021-10-10	9546.10
12662	2022-06-06	14452.73
12663	2020-06-27	7942.91
12664	2021-12-09	15558.94
12665	2020-03-10	10772.14
12666	2024-08-09	11898.68
12667	2023-03-13	7335.22
12668	2022-02-07	16909.60
12669	2024-03-12	14995.67
12670	2021-07-08	7839.23
12671	2024-05-29	7399.19
12672	2020-02-13	9453.46
12673	2020-11-22	10436.95
12674	2022-07-13	8051.25
12675	2021-08-18	9090.82
12676	2024-09-09	13212.83
12677	2020-10-07	7854.34
12678	2020-07-24	13889.93
12679	2021-04-14	18048.92
12680	2022-05-08	13849.98
12681	2020-10-23	14752.93
12682	2020-12-15	8139.37
12683	2021-06-25	12038.08
12684	2020-02-02	6948.60
12685	2022-07-10	11508.97
12686	2022-02-26	8698.10
12687	2021-03-22	10243.98
12688	2020-11-26	10826.53
12689	2020-03-15	12805.03
12690	2021-03-31	17397.20
12691	2024-09-12	11339.22
12692	2024-05-20	13121.88
12693	2021-08-18	16733.46
12694	2024-08-26	17874.59
12695	2021-03-14	12023.57
12696	2023-09-19	14711.88
12697	2022-08-03	14317.22
12698	2024-10-12	13249.52
12699	2022-08-29	17248.65
12700	2020-12-05	7135.41
12701	2020-11-05	14412.53
12702	2023-05-20	16254.01
12703	2022-04-11	8243.44
12704	2021-10-24	15596.02
12705	2023-11-26	17794.15
12706	2024-11-21	14462.22
12707	2020-05-06	7565.94
12708	2022-11-04	10807.59
12709	2020-05-25	17083.57
12710	2024-07-27	14247.73
12711	2024-02-10	9871.15
12712	2021-10-27	11812.09
12713	2022-05-08	11202.27
12714	2024-04-09	17501.37
12715	2020-04-18	12114.15
12716	2023-12-14	7688.03
12717	2021-03-20	9241.53
12718	2020-05-17	16613.78
12719	2022-12-29	11076.86
12720	2024-02-23	11095.13
12721	2024-04-26	13617.57
12722	2020-11-28	6683.19
12723	2020-11-08	8729.93
12724	2020-09-07	7901.41
12725	2020-01-28	14430.28
12726	2022-01-17	15407.65
12727	2023-06-23	10279.47
12728	2022-07-30	14860.04
12729	2022-03-30	15784.78
12730	2024-05-01	16717.23
12731	2023-10-01	12756.54
12732	2023-01-16	10081.95
12733	2023-06-09	6738.87
12734	2021-06-05	12908.22
12735	2021-11-07	7794.89
12736	2022-11-19	11310.50
12737	2024-03-13	10132.22
12738	2020-01-06	12524.13
12739	2022-03-06	9797.98
12740	2023-07-21	15434.80
12741	2020-12-07	9984.21
12742	2020-08-30	7339.38
12743	2022-05-29	12600.84
12744	2021-12-30	9118.75
12745	2022-08-09	9521.01
12746	2024-08-07	8785.84
12747	2023-07-22	13062.46
12748	2020-04-21	10671.99
12749	2023-12-12	7071.75
12750	2021-06-28	7887.97
12751	2021-06-23	12388.19
12752	2024-08-13	15489.71
12753	2020-12-04	8869.26
12754	2021-07-07	9477.14
12755	2020-11-30	17862.64
12756	2021-09-27	10238.07
12757	2022-03-01	16644.46
12758	2023-03-03	12917.32
12759	2022-10-20	14981.46
12760	2023-12-30	8865.10
12761	2022-06-12	10094.76
12762	2023-04-21	9247.94
12763	2021-12-14	11320.07
12764	2022-11-07	8034.49
12765	2020-03-07	15338.77
12766	2024-04-13	11858.98
12767	2022-03-06	17745.79
12768	2023-02-28	16722.28
12769	2024-12-05	9849.54
12770	2023-09-29	12072.13
12771	2024-05-26	12986.71
12772	2023-09-28	15127.66
12773	2024-04-27	14220.67
12774	2024-09-12	16506.19
12775	2022-05-05	7772.28
12776	2021-10-24	9510.15
12777	2020-01-09	13297.77
12778	2020-05-18	13007.54
12779	2024-08-28	17594.99
12780	2020-10-17	15206.27
12781	2020-04-08	16869.39
12782	2020-08-06	13324.02
12783	2024-09-26	7955.22
12784	2020-11-03	11974.83
12785	2022-08-06	12972.08
12786	2023-05-05	8368.81
12787	2024-02-27	15487.58
12788	2021-04-24	11969.74
12789	2022-12-28	7086.40
12790	2024-05-09	15016.02
12791	2020-01-19	9778.06
12792	2024-04-12	10668.82
12793	2021-01-05	6744.05
12794	2024-07-23	14825.37
12795	2021-09-13	14228.05
12796	2022-01-29	15825.98
12797	2020-08-05	13338.69
12798	2020-10-28	9025.56
12799	2020-04-21	6715.86
12800	2022-12-07	13069.65
12801	2023-12-03	13358.26
12802	2020-04-16	16444.66
12803	2020-05-30	16176.37
12804	2022-02-22	12880.18
12805	2022-09-01	12674.56
12806	2021-04-23	7524.85
12807	2023-02-23	16245.93
12808	2022-10-02	6765.16
12809	2021-10-27	12469.04
12810	2021-10-01	7128.63
12811	2020-08-12	7944.83
12812	2021-04-11	11351.60
12813	2021-11-10	14591.88
12814	2021-08-03	16608.47
12815	2021-10-23	12485.39
12816	2021-03-10	13173.42
12817	2020-12-24	12625.94
12818	2024-04-29	12927.69
12819	2022-08-12	13132.46
12820	2021-10-01	11396.69
12821	2021-02-24	9924.25
12822	2020-07-07	9234.23
12823	2020-11-09	10952.93
12824	2020-05-04	13695.33
12825	2024-10-23	16627.81
12826	2021-03-29	11706.53
12827	2024-01-29	17737.90
12828	2021-01-12	8895.63
12829	2023-05-26	11695.44
12830	2022-06-07	9263.52
12831	2024-05-16	17446.38
12832	2021-08-21	14978.16
12833	2024-09-03	14552.06
12834	2023-12-09	14159.65
12835	2020-06-19	13196.43
12836	2021-08-15	8714.68
12837	2021-01-07	17237.30
12838	2024-02-10	15439.15
12839	2021-07-02	15361.50
12840	2022-05-11	14843.08
12841	2022-11-25	8929.09
12842	2020-08-03	15817.66
12843	2021-09-23	9697.62
12844	2024-03-30	16611.52
12845	2021-01-06	7022.34
12846	2024-03-10	15372.06
12847	2021-05-10	13983.21
12848	2023-01-27	7830.07
12849	2021-04-15	9156.30
12850	2022-02-21	12515.31
12851	2021-11-24	12861.69
12852	2022-06-08	9280.14
12853	2021-11-12	9127.89
12854	2021-02-07	12362.04
12855	2021-08-26	7311.02
12856	2023-04-02	7397.55
12857	2020-06-12	15695.37
12858	2022-07-01	17184.06
12859	2024-11-13	11214.73
12860	2020-01-18	10766.31
12861	2020-07-25	10930.66
12862	2021-07-18	9667.53
12863	2023-04-28	13402.66
12864	2020-06-10	8795.17
12865	2023-05-26	13617.91
12866	2024-06-22	9131.38
12867	2022-05-10	14156.97
12868	2023-04-29	10695.37
12869	2023-05-29	11525.90
12870	2021-04-04	9101.62
12871	2020-08-26	14878.77
12872	2021-12-15	7710.98
12873	2021-10-30	12151.58
12874	2022-07-20	16918.21
12875	2024-05-31	15362.27
12876	2024-09-30	9749.02
12877	2023-12-23	9248.51
12878	2020-01-11	12302.41
12879	2023-08-25	11940.56
12880	2022-07-21	13422.29
12881	2021-09-18	9681.04
12882	2020-02-02	12052.68
12883	2021-10-03	7413.12
12884	2023-06-28	9004.71
12885	2022-05-11	9634.66
12886	2022-02-28	12905.03
12887	2021-02-10	15737.52
12888	2022-08-20	15474.00
12889	2023-01-31	8680.22
12890	2021-09-09	13691.47
12891	2021-03-11	11057.64
12892	2021-02-07	15146.89
12893	2023-08-07	18038.95
12894	2021-11-13	7961.66
12895	2022-08-14	17740.90
12896	2020-11-05	7459.32
12897	2022-09-18	11423.95
12898	2022-06-28	12838.49
12899	2022-02-03	10428.51
12900	2020-10-18	7480.66
12901	2023-07-24	9301.85
12902	2024-11-13	15333.36
12903	2020-09-04	15035.59
12904	2023-06-01	17611.18
12905	2023-11-08	15313.24
12906	2021-01-06	15558.41
12907	2022-01-23	9761.41
12908	2020-04-07	9304.92
12909	2022-11-16	11585.14
12910	2021-06-07	7829.77
12911	2024-09-08	16106.02
12912	2021-08-23	7670.38
12913	2020-11-18	12332.90
12914	2020-11-11	15267.64
12915	2023-04-18	15965.65
12916	2023-10-06	7246.16
12917	2021-02-16	10123.22
12918	2022-04-02	9697.48
12919	2021-04-30	7620.93
12920	2020-05-18	14161.16
12921	2023-01-04	17042.12
12922	2021-05-22	7007.68
12923	2023-01-06	9907.38
12924	2023-06-12	14273.56
12925	2024-01-22	11580.85
12926	2023-02-12	12284.55
12927	2024-03-19	16573.29
12928	2024-08-27	12833.15
12929	2023-01-28	13621.64
12930	2024-10-12	6884.56
12931	2022-12-01	11166.01
12932	2022-09-05	8213.14
12933	2023-03-24	10443.63
12934	2020-11-23	14447.83
12935	2023-11-18	13670.77
12936	2024-04-15	6762.26
12937	2023-03-23	17437.54
12938	2023-01-04	9143.72
12939	2022-07-20	16735.30
12940	2022-11-18	12880.24
12941	2024-11-05	16126.98
12942	2022-08-02	7545.91
12943	2023-02-28	7139.48
12944	2020-02-21	6675.52
12945	2023-10-30	12953.25
12946	2023-12-20	16320.29
12947	2020-06-24	11283.11
12948	2024-02-25	16648.50
12949	2023-01-31	10825.60
12950	2023-05-30	7134.81
12951	2020-09-26	13982.19
12952	2024-07-15	15276.58
12953	2024-01-18	12384.21
12954	2020-12-13	15385.09
12955	2024-08-20	15880.61
12956	2022-07-25	12107.16
12957	2021-02-14	10856.75
12958	2020-07-22	7023.74
12959	2021-08-24	15938.73
12960	2021-10-22	9437.37
12961	2020-08-20	16259.28
12962	2022-07-30	13805.57
12963	2022-07-03	8044.80
12964	2022-07-10	7888.83
12965	2020-03-22	10897.96
12966	2021-09-08	7043.67
12967	2022-10-15	12257.86
12968	2020-07-31	9805.22
12969	2021-12-07	7761.39
12970	2023-06-30	14047.01
12971	2023-07-15	15049.03
12972	2020-02-28	11185.51
12973	2022-04-06	6722.79
12974	2023-03-29	13211.38
12975	2021-01-02	16396.88
12976	2024-06-03	9394.91
12977	2022-06-30	13741.01
12978	2024-09-05	11768.04
12979	2021-04-25	15154.95
12980	2024-07-10	8020.06
12981	2023-10-25	8542.15
12982	2020-02-09	8784.79
12983	2020-07-09	9204.76
12984	2024-09-02	12403.22
12985	2024-03-13	10746.55
12986	2020-12-23	6649.82
12987	2020-01-30	9695.21
12988	2021-02-11	9547.02
12989	2024-04-17	13221.02
12990	2020-07-24	11349.27
12991	2024-02-23	11598.81
12992	2021-07-13	15630.00
12993	2022-12-28	10701.36
12994	2020-08-21	10317.51
12995	2023-02-11	11292.31
12996	2023-11-12	16614.34
12997	2021-10-05	17981.96
12998	2021-06-18	17188.38
12999	2022-03-09	6998.27
13000	2021-01-16	7598.29
13001	2021-06-25	7145.06
13002	2021-09-01	14375.99
13003	2022-07-19	10763.05
13004	2023-10-03	17996.41
13005	2020-12-07	9006.47
13006	2021-04-11	15249.88
13007	2021-07-15	10439.06
13008	2024-08-11	8570.03
13009	2021-08-27	7302.73
13010	2021-06-10	8661.83
13011	2024-11-22	14001.02
13012	2023-01-12	8289.35
13013	2024-09-21	10945.28
13014	2021-03-25	16934.28
13015	2021-09-20	7980.49
13016	2023-03-31	8807.19
13017	2021-03-22	15901.35
13018	2020-08-19	12534.85
13019	2022-02-13	9774.70
13020	2023-04-12	13051.48
13021	2022-09-25	16398.55
13022	2024-07-12	15147.40
13023	2023-06-07	14362.93
13024	2024-04-05	13169.10
13025	2020-06-20	12585.03
13026	2020-12-11	7322.26
13027	2022-09-14	16699.03
13028	2023-09-12	11881.09
13029	2022-03-02	8573.89
13030	2021-02-08	9306.19
13031	2021-07-28	9774.60
13032	2022-06-16	10353.25
13033	2022-05-31	7032.96
13034	2021-12-16	8610.17
13035	2020-05-26	8754.42
13036	2020-03-10	16940.71
13037	2024-08-25	9055.52
13038	2020-07-28	15998.81
13039	2020-03-09	15501.57
13040	2021-05-23	15979.13
13041	2022-04-17	11968.06
13042	2024-07-31	9092.97
13043	2021-08-30	11433.83
13044	2021-05-06	8244.44
13045	2022-01-13	17001.49
13046	2024-10-08	11041.80
13047	2022-02-04	12687.35
13048	2020-04-17	12464.86
13049	2022-08-23	15232.82
13050	2020-06-09	16958.88
13051	2024-01-16	13796.22
13052	2023-02-15	8716.79
13053	2022-12-27	17414.30
13054	2024-08-17	10927.56
13055	2021-11-02	7881.54
13056	2021-08-04	10378.40
13057	2024-10-19	18036.47
13058	2024-02-16	12417.53
13059	2021-02-06	14838.78
13060	2020-12-14	18099.80
13061	2020-10-20	8604.35
13062	2022-07-07	8681.63
13063	2020-05-27	17087.05
13064	2024-02-22	14830.67
13065	2024-09-15	11980.89
13066	2023-03-10	12260.75
13067	2024-09-30	9192.86
13068	2022-11-06	10346.11
13069	2023-08-30	13146.95
13070	2022-03-03	6782.31
13071	2023-07-24	7867.63
13072	2022-12-20	11588.04
13073	2024-06-07	17289.25
13074	2023-10-13	10579.49
13075	2020-12-02	7659.78
13076	2023-07-23	7911.50
13077	2022-10-01	9082.93
13078	2024-09-02	14958.60
13079	2022-04-26	13184.28
13080	2024-08-25	12035.45
13081	2023-12-23	9180.29
13082	2021-12-02	7881.88
13083	2024-06-11	16740.36
13084	2021-05-31	15246.73
13085	2024-01-16	15413.80
13086	2021-01-01	8570.33
13087	2020-11-14	11142.21
13088	2024-09-18	12689.45
13089	2023-12-26	7074.00
13090	2024-06-08	16456.25
13091	2020-12-12	15620.13
13092	2021-07-24	13639.44
13093	2020-03-10	16739.44
13094	2023-02-12	17912.71
13095	2022-06-10	11043.90
13096	2024-08-14	14927.46
13097	2020-09-05	6992.20
13098	2023-07-12	12061.48
13099	2022-02-01	15482.05
13100	2022-12-01	12182.83
13101	2020-07-19	17647.03
13102	2023-12-12	13315.82
13103	2021-09-06	15136.13
13104	2020-03-06	8940.84
13105	2024-08-22	17750.98
13106	2024-06-03	12758.71
13107	2020-04-07	17544.52
13108	2022-11-07	9240.81
13109	2022-07-19	10377.00
13110	2022-10-03	13362.85
13111	2024-07-07	17971.76
13112	2024-02-03	10261.40
13113	2020-05-06	14783.44
13114	2023-02-13	13011.81
13115	2021-04-28	9598.44
13116	2022-02-10	17799.15
13117	2024-04-09	6838.23
13118	2023-07-25	11980.07
13119	2021-02-15	8916.49
13120	2024-11-09	11172.14
13121	2022-09-14	14199.72
13122	2023-02-24	16160.54
13123	2022-10-18	17834.41
13124	2021-03-16	14599.02
13125	2022-09-16	17181.33
13126	2022-05-08	13197.53
13127	2020-07-30	10655.61
13128	2021-01-25	16083.06
13129	2024-10-28	7310.05
13130	2023-09-24	16040.07
13131	2022-04-06	7063.36
13132	2020-04-11	12000.22
13133	2021-07-12	13397.00
13134	2022-08-29	14559.18
13135	2020-07-24	9749.29
13136	2023-01-17	15099.21
13137	2020-01-11	13105.97
13138	2023-01-28	15885.01
13139	2024-05-13	13058.58
13140	2022-06-06	9355.34
13141	2024-08-17	7509.31
13142	2021-07-03	11053.94
13143	2021-05-02	15875.77
13144	2022-06-24	8287.13
13145	2020-05-11	14252.15
13146	2024-02-13	10181.94
13147	2020-10-29	10554.79
13148	2024-06-04	10640.11
13149	2023-05-24	11799.55
13150	2020-03-11	14252.31
13151	2022-03-22	14262.02
13152	2022-11-30	16632.42
13153	2022-03-19	8872.37
13154	2024-10-04	7077.11
13155	2022-08-21	8424.57
13156	2021-10-21	14238.12
13157	2021-06-09	16184.61
13158	2024-12-03	9336.21
13159	2023-12-02	8701.66
13160	2023-05-30	10823.01
13161	2023-10-29	12754.73
13162	2022-06-10	15019.86
13163	2023-08-19	16351.29
13164	2023-04-03	15243.63
13165	2022-02-03	16092.63
13166	2023-10-01	15890.23
13167	2021-02-01	8435.64
13168	2022-08-07	14996.93
13169	2023-08-14	16391.82
13170	2023-01-03	9579.77
13171	2023-09-21	12607.98
13172	2021-02-12	15139.15
13173	2024-09-25	14140.85
13174	2023-07-20	8754.52
13175	2024-03-24	9326.07
13176	2020-02-09	15728.12
13177	2022-05-18	14108.57
13178	2023-04-11	9224.92
13179	2024-10-06	18094.23
13180	2022-11-11	11585.72
13181	2021-03-24	10134.13
13182	2024-10-20	16845.84
13183	2023-05-08	18056.92
13184	2024-04-06	7286.00
13185	2022-12-14	15489.06
13186	2023-11-17	11078.09
13187	2020-04-23	6828.39
13188	2023-02-24	15829.30
13189	2020-05-06	12138.28
13190	2020-03-31	11769.57
13191	2020-01-01	17331.90
13192	2023-02-12	9054.14
13193	2023-05-15	16577.64
13194	2020-07-14	11084.40
13195	2024-03-25	13828.99
13196	2023-10-25	16722.08
13197	2020-01-05	17401.85
13198	2024-09-17	9145.97
13199	2020-08-28	15640.31
13200	2024-11-25	9951.61
13201	2021-10-16	8834.11
13202	2020-08-30	11903.89
13203	2024-01-03	13726.70
13204	2020-09-30	15344.36
13205	2022-01-16	8590.05
13206	2021-08-02	16067.63
13207	2022-04-03	17986.84
13208	2022-06-04	12505.49
13209	2022-10-18	16909.82
13210	2021-10-08	14353.51
13211	2020-02-16	10928.13
13212	2024-08-28	7321.03
13213	2021-07-19	16371.16
13214	2021-07-27	9359.91
13215	2022-05-15	15622.99
13216	2024-10-29	12764.81
13217	2020-05-05	10852.71
13218	2024-10-05	8243.22
13219	2021-05-12	13121.48
13220	2020-08-21	10357.06
13221	2023-12-26	8532.91
13222	2022-11-21	8919.07
13223	2024-09-25	8858.12
13224	2024-07-24	7413.91
13225	2024-10-05	15527.41
13226	2022-06-25	14295.42
13227	2022-12-09	15734.29
13228	2024-04-01	15537.28
13229	2022-08-16	8065.37
13230	2021-11-11	8076.18
13231	2024-12-02	16472.88
13232	2023-06-03	6936.98
13233	2020-05-11	8884.62
13234	2020-07-18	10623.66
13235	2021-01-14	17388.04
13236	2023-03-02	17079.93
13237	2023-05-29	9183.93
13238	2023-12-18	7445.81
13239	2024-06-09	13104.06
13240	2024-03-05	15356.80
13241	2023-02-05	11017.92
13242	2020-01-11	12020.55
13243	2023-09-01	14111.31
13244	2021-06-06	10664.47
13245	2024-04-03	13123.40
13246	2020-03-14	8466.58
13247	2022-01-31	11675.93
13248	2021-10-15	8663.19
13249	2024-03-29	15117.57
13250	2020-08-08	11556.60
13251	2024-05-29	7908.22
13252	2022-03-29	14745.66
13253	2023-12-28	8426.54
13254	2023-02-07	14711.58
13255	2023-11-03	12994.51
13256	2023-10-18	10313.27
13257	2021-02-17	7888.34
13258	2020-04-25	14736.68
13259	2020-10-15	16470.76
13260	2024-08-19	15895.68
13261	2022-07-16	14459.65
13262	2022-02-20	16618.07
13263	2024-08-08	18090.81
13264	2023-10-10	16918.59
13265	2022-04-20	9575.05
13266	2022-03-18	7846.70
13267	2022-02-21	8416.16
13268	2020-05-16	10239.45
13269	2024-08-30	11901.84
13270	2022-03-11	7521.14
13271	2023-03-03	16773.59
13272	2023-02-11	8075.75
13273	2020-01-04	15620.31
13274	2024-06-08	17882.35
13275	2024-01-06	9956.35
13276	2021-03-14	14461.71
13277	2021-05-30	11604.20
13278	2021-07-30	13594.39
13279	2022-08-31	9890.84
13280	2022-02-23	9183.53
13281	2024-05-17	7715.15
13282	2023-10-28	15971.38
13283	2022-08-29	8252.02
13284	2021-12-29	7046.40
13285	2020-12-25	11811.76
13286	2021-06-18	13896.99
13287	2024-06-01	13569.83
13288	2020-09-04	17310.94
13289	2020-09-28	9556.96
13290	2024-08-14	15631.31
13291	2024-09-24	13362.71
13292	2021-05-28	10443.08
13293	2021-07-11	7782.07
13294	2021-04-30	8651.56
13295	2022-07-12	14392.30
13296	2021-01-10	9907.63
13297	2021-08-27	10889.26
13298	2024-11-26	16482.31
13299	2024-04-15	10826.52
13300	2022-05-04	9931.44
13301	2021-12-05	8372.50
13302	2022-07-07	16591.74
13303	2022-03-21	12767.24
13304	2022-07-21	12529.20
13305	2021-07-12	8717.04
13306	2023-04-15	16921.16
13307	2023-05-29	8815.35
13308	2024-08-13	11685.97
13309	2021-05-07	17205.27
13310	2021-03-27	6995.50
13311	2020-12-14	15192.12
13312	2024-04-07	10537.67
13313	2022-10-04	10510.45
13314	2021-07-18	17028.30
13315	2020-07-28	9778.96
13316	2020-05-18	14699.18
13317	2024-02-17	13752.49
13318	2020-11-28	15084.64
13319	2021-02-27	17332.39
13320	2020-05-23	7410.55
13321	2024-06-16	14564.19
13322	2020-01-23	16876.49
13323	2020-11-27	8318.29
13324	2024-09-02	9852.36
13325	2023-07-03	15724.78
13326	2022-03-07	7896.91
13327	2023-04-25	11688.99
13328	2022-12-12	14584.95
13329	2024-08-21	11946.36
13330	2020-07-09	14146.92
13331	2021-06-15	15491.26
13332	2024-08-14	15097.56
13333	2023-02-17	9992.75
13334	2022-05-02	8478.01
13335	2020-05-01	11220.72
13337	2023-02-03	7894.57
13338	2021-09-01	8997.99
13339	2023-09-17	11740.95
13340	2022-03-04	11291.25
13341	2020-02-16	6604.92
13342	2021-03-12	9200.90
13343	2021-12-21	11829.80
13344	2024-09-02	13943.98
13345	2023-04-13	10566.56
13346	2021-09-04	10419.85
13347	2023-11-22	8446.40
13348	2024-05-21	17843.86
13349	2024-06-22	12736.69
13350	2021-11-07	8094.89
13351	2020-11-11	8274.87
13352	2021-11-24	7926.22
13353	2022-08-31	13021.89
13354	2024-09-04	17825.58
13355	2021-06-24	15512.24
13356	2024-04-04	11220.53
13357	2023-08-14	12442.96
13358	2024-07-11	13735.13
13359	2024-08-26	9835.34
13360	2022-09-21	14300.60
13361	2024-06-20	7668.89
13362	2023-06-01	7937.98
13363	2023-12-29	7579.25
13364	2020-07-07	9913.14
13365	2022-01-11	16686.31
13366	2021-09-13	8389.89
13367	2020-12-19	12659.64
13368	2021-02-21	15294.25
13369	2024-11-17	7146.36
13370	2024-06-26	13390.57
13371	2020-06-05	7283.11
13372	2024-01-26	10988.74
13373	2020-06-02	14797.28
13374	2021-07-21	17343.23
13375	2020-05-02	13331.12
13376	2021-09-05	7857.51
13377	2020-01-29	7036.64
13378	2020-09-04	14278.78
13379	2023-08-04	9060.66
13380	2021-12-03	15464.01
13381	2021-06-02	15401.94
13382	2022-06-11	17854.22
13383	2023-03-20	15575.62
13384	2021-03-20	12083.11
13385	2023-02-07	6988.22
13386	2022-11-01	11123.07
13387	2020-07-01	10575.45
13388	2024-09-03	14943.99
13389	2023-11-03	14902.19
13390	2020-10-29	9083.15
13391	2021-01-23	11234.42
13392	2021-03-20	7739.59
13393	2023-07-26	17278.12
13394	2020-10-20	13566.64
13395	2021-09-01	15359.02
13396	2021-07-17	17542.40
13397	2024-04-28	11022.15
13398	2021-09-09	8141.09
13399	2023-03-11	18082.09
13400	2024-06-08	6760.26
13401	2022-09-11	11080.58
13402	2021-05-17	14685.36
13403	2023-11-18	15216.74
13404	2024-09-13	13577.95
13405	2022-01-30	14145.59
13406	2020-10-24	8309.11
13407	2021-07-24	13832.38
13408	2021-07-13	13833.27
13409	2021-05-23	14717.39
13410	2021-10-26	16494.27
13411	2024-05-28	15894.93
13412	2024-10-11	13339.90
13413	2021-12-08	6627.07
13414	2024-02-08	8321.44
13415	2021-11-06	14788.31
13416	2024-01-02	18047.82
13417	2024-03-04	16461.28
13418	2021-09-13	7058.36
13419	2024-01-18	7740.58
13420	2020-05-11	13396.16
13421	2024-11-23	13157.36
13422	2023-03-05	13889.93
13423	2023-08-25	13773.85
13424	2020-02-25	11710.54
13425	2024-03-15	7301.47
13426	2022-06-08	10146.53
13427	2022-07-04	16390.52
13428	2024-11-25	8882.28
13429	2021-03-12	10906.94
13430	2023-10-10	15324.30
13431	2022-10-23	13947.46
13432	2023-12-31	14203.02
13433	2021-10-28	8966.67
13434	2022-11-08	18010.90
13435	2021-05-29	15302.83
13436	2024-10-25	12805.86
13437	2023-07-09	8318.56
13438	2020-02-03	10034.01
13439	2024-01-30	10563.50
13440	2022-03-19	17579.63
13441	2020-05-26	15315.66
13442	2023-04-24	12305.43
13443	2024-10-31	15285.67
13444	2022-11-25	12996.59
13445	2023-01-31	13854.05
13446	2022-12-09	15700.28
13447	2021-05-05	10275.85
13448	2022-07-08	13250.60
13449	2021-01-05	12955.88
13450	2023-03-03	7744.22
13451	2020-10-08	10244.35
13452	2024-08-22	9564.27
13453	2022-03-19	9771.95
13454	2020-06-07	7797.08
13455	2023-01-21	17913.26
13456	2020-12-03	9581.24
13457	2020-08-24	11886.07
13458	2023-02-02	13465.45
13459	2023-01-03	17705.72
13460	2023-08-09	7094.09
13461	2022-05-05	14154.63
13462	2022-02-25	12451.25
13463	2022-04-03	9576.21
13464	2024-04-16	15072.57
13465	2023-08-02	12179.63
13466	2021-03-27	16923.23
13467	2024-07-03	12172.70
13468	2023-01-06	13135.04
13469	2024-10-10	8177.64
13470	2022-11-17	6856.79
13471	2022-03-02	11262.28
13472	2022-02-19	8620.70
13473	2021-08-22	8257.94
13474	2023-02-12	9181.90
13475	2020-10-19	16911.44
13476	2024-01-22	14072.54
13477	2020-04-17	16937.03
13478	2024-04-05	11369.27
13479	2020-03-18	9302.16
13480	2023-09-15	7969.12
13481	2021-03-30	14925.59
13482	2020-10-01	14827.81
13483	2023-04-18	14750.28
13484	2023-09-13	13849.28
13485	2022-01-28	8477.06
13486	2021-03-17	9931.73
13487	2024-09-13	8428.08
13488	2024-11-04	12467.93
13489	2023-05-26	7368.88
13490	2022-01-02	14090.13
13491	2020-07-20	17811.60
13492	2020-08-27	7096.51
13493	2020-12-13	13717.51
13494	2021-12-13	6635.57
13495	2020-06-20	15811.22
13496	2021-10-11	7813.51
13497	2022-09-27	9275.64
13498	2024-12-03	17307.73
13499	2021-02-06	15951.67
13500	2021-02-19	16610.99
13501	2020-08-07	6807.41
13502	2024-02-04	15710.74
13503	2021-06-04	7775.53
13504	2023-07-11	12113.31
13505	2022-03-24	11333.54
13506	2020-08-22	11978.96
13507	2023-02-12	9950.90
13508	2022-07-29	11988.70
13509	2022-01-27	9091.27
13510	2020-06-13	8313.07
13511	2020-06-13	16391.95
13512	2024-01-06	10380.43
13513	2022-12-05	9397.56
13514	2020-12-31	15023.97
13515	2022-04-28	15022.65
13516	2020-11-17	12860.15
13517	2024-02-18	12640.78
13518	2023-05-26	9648.23
13519	2021-05-04	15171.17
13520	2021-02-23	16202.85
13521	2022-10-04	12688.54
13522	2022-03-25	12704.39
13523	2023-10-10	10335.75
13524	2022-08-12	10132.25
13525	2021-01-05	15451.12
13526	2023-12-21	11106.03
13527	2022-09-11	14535.41
13528	2020-01-24	13236.45
13529	2020-02-11	17504.58
13530	2024-03-18	12276.56
13531	2021-01-23	8920.37
13532	2022-05-25	7823.44
13533	2024-07-15	12659.16
13534	2021-06-07	11992.51
13535	2024-03-25	17808.26
13536	2021-05-20	17932.05
13537	2020-05-14	17254.89
13538	2024-11-28	12610.99
13539	2022-03-21	8143.89
13540	2023-02-09	9278.35
13541	2020-01-16	15247.63
13542	2020-10-22	16230.76
13543	2021-03-25	9229.85
13544	2022-08-22	10145.21
13545	2022-07-12	16389.78
13546	2022-01-14	12192.76
13547	2022-02-09	9050.37
13548	2024-08-18	12638.43
13549	2021-03-13	10240.30
13550	2023-02-16	15345.94
13551	2020-03-10	16930.98
13552	2024-06-14	10787.50
13553	2024-01-15	14155.99
13554	2024-02-12	12457.27
13555	2021-01-20	10608.36
13556	2020-12-21	10671.08
13557	2020-07-07	17760.64
13558	2023-12-14	6895.85
13559	2021-08-12	17903.66
13560	2021-09-09	11654.50
13561	2024-01-27	13633.83
13562	2023-05-20	17125.59
13563	2020-09-12	10184.43
13564	2020-05-07	10329.68
13565	2021-10-05	7892.94
13566	2022-03-28	12814.43
13567	2020-10-07	7999.40
13568	2022-02-28	15125.83
13569	2023-06-01	8397.75
13570	2020-09-09	6938.38
13571	2022-09-11	10011.74
13572	2020-10-05	16157.48
13573	2022-06-14	14875.24
13574	2023-11-05	6733.08
13575	2021-11-01	15508.77
13576	2022-04-15	9464.85
13577	2022-08-21	7747.45
13578	2021-06-29	8842.42
13579	2024-10-26	14443.57
13580	2022-06-29	17484.83
13581	2023-08-21	12258.90
13582	2024-08-28	12682.15
13583	2020-12-09	12325.04
13584	2024-01-04	12905.20
13585	2020-01-10	12270.53
13586	2024-10-02	7678.01
13587	2023-08-17	15612.53
13588	2024-05-12	8375.72
13589	2020-07-06	10025.49
13590	2023-04-10	7743.57
13591	2021-01-14	12061.20
13592	2022-08-15	15720.27
13593	2020-01-04	17313.56
13594	2021-05-03	11671.51
13595	2022-10-12	16014.45
13596	2021-01-23	17452.22
13597	2024-05-21	17224.31
13598	2023-05-31	11615.77
13599	2023-04-14	7647.73
13600	2024-04-29	8554.20
13601	2023-07-08	16393.74
13602	2021-09-03	16433.28
13603	2024-04-20	6872.26
13604	2023-06-27	8933.74
13605	2024-03-31	14738.80
13606	2024-05-24	17071.14
13607	2020-02-13	14272.18
13608	2023-10-16	7856.10
13609	2022-02-07	17649.35
13610	2020-03-01	7821.58
13611	2022-12-18	12326.00
13612	2024-07-24	12001.27
13613	2021-06-30	10122.44
13614	2020-09-18	14314.95
13615	2023-09-07	11909.83
13616	2024-11-16	7908.81
13617	2024-01-21	9023.17
13618	2023-10-25	12102.34
13619	2022-02-08	7823.89
13620	2020-05-14	9603.19
13621	2022-06-07	15335.88
13622	2021-09-30	10911.05
13623	2023-07-22	17521.12
13624	2023-03-18	6938.65
13625	2022-10-09	10157.51
13626	2024-08-28	9021.79
13627	2024-10-30	10807.64
13628	2020-07-01	12098.74
13629	2023-06-14	17600.79
13630	2020-01-15	10288.01
13631	2020-06-03	14638.51
13632	2021-11-10	8213.84
13633	2024-12-02	8539.99
13634	2024-11-25	11329.20
13635	2021-03-14	7584.44
13636	2021-09-16	9615.39
13637	2024-08-31	11598.73
13638	2021-06-30	14336.18
13639	2023-05-29	11495.00
13640	2024-08-11	7277.70
13641	2020-03-19	17044.63
13642	2020-02-03	12167.83
13643	2024-06-03	11127.63
13644	2022-11-01	13452.15
13645	2022-09-10	16968.06
13646	2020-07-30	12020.36
13647	2022-06-19	9537.14
13648	2021-04-17	7631.65
13649	2024-08-14	13889.43
13650	2021-07-28	8516.06
13651	2022-09-15	10154.14
13652	2024-04-17	12442.68
13653	2020-04-07	17295.31
13654	2023-11-09	7306.08
13655	2024-04-11	9251.99
13656	2023-03-16	16138.72
13657	2021-07-21	12866.40
13658	2022-08-20	13125.22
13659	2021-05-26	15465.42
13660	2021-12-06	13167.87
13661	2022-10-18	7438.48
13662	2023-08-06	13813.69
13663	2021-06-25	15758.53
13664	2023-07-10	14168.98
13665	2023-01-29	16314.31
13666	2024-10-23	13159.86
13667	2024-03-02	16733.67
13668	2020-04-28	9451.57
13669	2023-01-26	13159.92
13670	2024-10-04	14343.22
13671	2024-03-11	10955.11
13672	2024-02-14	8863.39
13673	2020-10-12	7384.05
13674	2022-11-11	9706.73
13675	2021-04-14	16614.82
13676	2020-08-19	9702.30
13677	2024-04-11	17734.01
13678	2024-10-23	8942.26
13679	2024-12-03	11956.64
13680	2021-06-12	6605.19
13681	2024-11-29	10297.74
13682	2020-04-21	7079.11
13683	2021-08-15	12931.59
13684	2022-06-28	6968.53
13685	2022-03-13	11185.72
13686	2022-09-20	11749.87
13687	2021-09-23	18043.18
13688	2022-06-22	13467.71
13689	2020-03-04	9326.41
13690	2021-07-11	15466.24
13691	2021-09-03	13438.09
13692	2023-12-31	17618.04
13693	2022-09-17	11732.34
13694	2024-07-18	15013.89
13695	2020-05-29	16770.57
13696	2022-07-16	13515.69
13697	2021-02-26	12099.10
13698	2022-05-28	8234.19
13699	2022-09-02	7845.70
13700	2022-10-05	8286.75
13701	2020-02-16	17698.50
13702	2024-02-20	13877.49
13703	2023-10-14	8623.86
13704	2020-03-28	7782.27
13705	2024-10-08	16647.70
13706	2021-09-14	12994.93
13707	2020-06-21	12787.63
13708	2020-04-21	10921.45
13709	2023-02-07	17580.72
13710	2023-12-05	16752.45
13711	2023-06-17	17834.43
13712	2023-04-24	12540.31
13713	2022-07-04	7788.87
13714	2024-10-11	8477.01
13715	2021-04-05	15892.90
13716	2023-09-14	15259.38
13717	2021-03-10	7320.02
13718	2023-10-28	13459.82
13719	2021-01-03	16120.41
13720	2020-05-26	14799.86
13721	2022-04-20	16245.44
13722	2020-02-14	17681.51
13723	2020-04-05	10217.77
13724	2021-03-19	9916.08
13725	2023-04-25	11583.02
13726	2022-03-01	15956.53
13727	2021-02-18	17265.28
13728	2022-02-12	11047.01
13729	2020-12-07	17403.75
13730	2023-03-09	16420.71
13731	2024-09-11	12261.99
13732	2023-04-16	15290.76
13733	2023-11-04	8293.09
13734	2021-12-25	14458.88
13735	2021-06-08	13690.57
13736	2020-02-17	7085.49
13737	2023-12-31	7117.62
13738	2024-10-16	11796.65
13739	2020-08-02	13974.57
13740	2023-06-22	9608.82
13741	2020-01-14	12338.31
13742	2021-02-27	16475.43
13743	2024-04-25	16516.65
13744	2022-02-28	6941.76
13745	2022-10-09	15203.28
13746	2020-09-18	7382.88
13747	2020-06-30	12553.06
13748	2024-08-08	12751.27
13749	2023-10-28	10482.79
13750	2024-10-23	13525.33
13751	2022-05-09	8834.63
13752	2022-07-12	17251.74
13753	2024-03-18	11294.17
13754	2022-03-14	8448.82
13755	2021-06-06	14925.82
13756	2021-10-29	14383.80
13757	2024-06-10	12831.55
13758	2024-03-01	11383.03
13759	2024-03-22	10241.03
13760	2023-07-20	15306.44
13761	2022-08-18	13513.06
13762	2023-01-23	14082.76
13763	2023-09-04	11847.02
13764	2021-02-13	9914.10
13765	2020-01-31	10994.29
13766	2022-03-28	8806.76
13767	2023-06-26	13733.21
13768	2023-07-19	9737.99
13769	2021-02-12	15639.33
13770	2023-08-19	16738.86
13771	2024-05-19	10558.51
13772	2021-07-02	12462.64
13773	2020-01-12	13601.25
13774	2023-11-27	8732.04
13775	2023-09-30	9295.84
13776	2022-05-24	7638.95
13777	2020-12-06	12253.08
13778	2023-10-09	11990.88
13779	2022-08-09	8033.15
13780	2021-01-12	14989.25
13781	2024-03-05	14341.61
13782	2021-08-11	14356.98
13783	2022-02-26	6844.07
13784	2022-07-22	13280.83
13785	2024-01-25	7983.69
13786	2024-09-05	9136.36
13787	2024-03-07	13359.87
13788	2020-08-03	8573.82
13789	2021-10-24	16758.17
13790	2023-09-02	9311.53
13791	2020-07-25	13616.05
13792	2021-02-17	14415.09
13793	2020-10-11	10630.07
13794	2024-03-16	18083.65
13795	2020-12-19	12621.32
13796	2020-04-14	16931.77
13797	2020-01-08	11930.93
13798	2020-10-14	12874.72
13799	2022-08-06	7639.48
13800	2024-05-22	15483.87
13801	2020-02-01	12287.49
13802	2023-05-05	8909.03
13803	2023-02-12	13636.12
13804	2020-03-02	13916.39
13805	2022-03-16	7709.03
13806	2024-07-14	8472.37
13807	2020-06-17	15299.99
13808	2020-12-28	9912.98
13809	2020-03-15	7506.97
13810	2020-02-25	10083.41
13811	2022-04-21	7049.33
13812	2023-04-05	10582.62
13813	2021-02-22	9774.70
13814	2022-02-07	11773.57
13815	2024-02-19	17816.81
13816	2021-01-24	17070.18
13817	2024-07-23	6932.65
13818	2024-05-27	13516.80
13819	2022-01-05	16017.88
13820	2021-03-31	11333.24
13821	2022-08-23	14726.85
13822	2024-12-03	8234.82
13823	2023-07-07	11872.32
13824	2024-10-07	14466.70
13825	2023-12-03	6857.89
13826	2022-10-06	17067.26
13827	2022-07-10	9833.20
13828	2020-09-08	10785.17
13829	2020-01-29	8295.45
13830	2023-04-16	14799.89
13831	2022-12-09	11805.89
13832	2024-02-29	10591.92
13833	2023-06-02	8045.52
13834	2021-10-25	11872.31
13835	2020-08-28	17735.92
13836	2022-06-30	7041.75
13837	2024-03-08	9006.96
13838	2020-12-06	14847.23
13839	2024-04-23	13851.35
13840	2023-02-22	13429.53
13841	2022-07-10	16421.58
13842	2021-03-26	9626.67
13843	2022-03-18	8210.93
13844	2020-06-24	10245.94
13845	2021-02-22	12513.27
13846	2023-09-13	9076.46
13847	2022-01-16	9778.26
13848	2021-04-22	17448.11
13849	2022-06-22	7984.96
13850	2023-05-01	6767.80
13851	2023-02-11	10441.05
13852	2020-05-23	11165.44
13853	2023-05-31	13027.03
13854	2022-07-20	8657.15
13855	2023-07-03	7408.90
13856	2022-09-20	9926.38
13857	2022-06-02	10096.47
13858	2023-12-31	17656.23
13859	2023-11-25	15672.48
13860	2024-10-04	10247.16
13861	2021-07-15	11592.19
13862	2021-08-23	14634.41
13863	2020-07-22	12427.88
13864	2021-05-29	13614.88
13865	2021-03-11	8268.17
13866	2020-10-01	9077.71
13867	2022-12-27	9916.70
13868	2023-05-22	10701.73
13869	2020-08-04	14105.95
13870	2022-08-31	7622.77
13871	2023-05-05	17325.59
13872	2021-07-14	7096.61
13873	2023-11-08	16114.66
13874	2023-03-11	14215.91
13875	2021-11-11	13981.65
13876	2023-05-10	17590.14
13877	2022-03-27	9351.57
13878	2023-04-05	16602.69
13879	2021-03-06	11547.17
13880	2020-01-14	8662.41
13881	2022-05-05	15795.15
13882	2023-10-25	9387.78
13883	2023-04-02	13669.53
13884	2021-07-31	11952.16
13885	2020-11-04	11014.25
13886	2024-06-23	17294.88
13887	2023-01-23	8599.97
13888	2024-06-06	6957.61
13889	2021-04-19	12891.03
13890	2021-10-23	7362.67
13891	2021-09-03	17066.17
13892	2021-10-04	14796.94
13893	2023-10-07	14078.29
13894	2022-09-13	7413.97
13895	2023-11-13	8973.27
13896	2024-11-29	16720.39
13897	2021-11-15	15004.10
13898	2023-04-02	13302.08
13899	2021-01-13	15624.62
13900	2021-05-15	13380.69
13901	2020-07-03	10311.76
13902	2021-01-14	9191.07
13903	2024-11-24	17556.48
13904	2024-07-27	10312.82
13905	2021-04-22	11975.72
13906	2023-01-25	12911.36
13907	2021-06-07	9989.80
13908	2023-12-28	9010.09
13909	2022-10-31	13182.98
13910	2023-07-23	16678.44
13911	2023-04-05	16598.02
13912	2022-12-14	8433.73
13913	2023-12-07	7355.21
13914	2021-02-23	17679.03
13915	2022-01-08	12127.78
13916	2024-01-22	9277.56
13917	2021-11-22	17937.76
13918	2022-04-22	11405.34
13919	2020-09-07	17809.26
13920	2020-01-04	9599.76
13921	2023-06-17	12581.64
13922	2024-03-30	7331.34
13923	2023-02-17	10051.93
13924	2022-10-17	13201.69
13925	2022-08-25	14323.10
13926	2021-03-30	14471.16
13927	2020-09-22	14665.55
13928	2022-09-02	15042.77
13929	2023-09-16	9311.57
13930	2024-10-17	16844.23
13931	2021-06-18	15716.17
13932	2020-12-31	17168.06
13933	2023-08-25	10948.06
13934	2023-03-21	9410.89
13935	2022-08-01	15758.78
13936	2023-11-03	11972.91
13937	2022-05-02	9119.20
13938	2022-12-31	11305.37
13939	2023-03-28	7658.02
13940	2022-08-07	9698.16
13941	2020-01-28	13290.78
13942	2024-04-20	12715.78
13943	2022-09-24	11179.98
13944	2021-03-05	15549.22
13945	2020-10-27	6802.47
13946	2024-05-16	8320.18
13947	2023-09-28	10572.48
13948	2021-04-28	10114.39
13949	2024-05-25	12031.08
13950	2020-04-02	13854.46
13951	2020-05-27	14586.70
13952	2021-08-20	15048.22
13953	2024-02-25	14948.26
13954	2024-02-07	12997.80
13955	2023-12-28	7554.01
13956	2022-12-24	10827.60
13957	2020-09-08	6655.34
13958	2022-05-23	11901.96
13959	2020-05-26	13180.98
13960	2022-06-09	17832.97
13961	2022-04-03	7772.34
13962	2022-11-20	16083.52
13963	2023-11-12	14918.04
13964	2020-02-18	13773.22
13965	2024-08-04	10517.81
13966	2024-03-16	7629.97
13967	2021-02-23	16764.31
13968	2022-03-20	14162.27
13969	2021-12-23	7073.10
13970	2024-03-27	9883.83
13971	2020-08-25	7970.61
13972	2022-10-20	10814.58
13973	2023-08-13	10283.74
13974	2022-10-07	16868.98
13975	2024-10-10	12428.45
13976	2020-09-06	12076.64
13977	2021-12-15	9006.21
13978	2023-12-11	15506.90
13979	2021-03-17	6834.00
13980	2022-04-28	9341.97
13981	2024-08-01	18095.78
13982	2021-01-30	12986.98
13983	2022-04-05	14148.26
13984	2020-02-12	10585.26
13985	2023-12-26	15557.36
13986	2022-12-29	9129.30
13987	2023-08-20	14161.38
13988	2021-09-22	10340.40
13989	2021-11-16	10148.76
13990	2021-03-23	13777.65
13991	2022-07-02	8519.27
13992	2020-06-02	17202.48
13993	2024-06-19	8265.43
13994	2023-11-11	17456.89
13995	2020-06-20	16190.40
13996	2023-07-25	17600.81
13997	2020-10-11	9742.69
13998	2024-01-29	8454.98
13999	2023-03-06	7445.55
14000	2022-08-26	13488.83
14001	2024-03-09	13108.02
14002	2021-06-12	12373.11
14003	2022-02-21	10637.03
14004	2023-09-04	13876.08
14005	2021-09-10	17101.08
14006	2022-06-29	6989.32
14007	2024-09-29	16542.70
14008	2020-03-16	10052.45
14009	2021-05-31	6825.84
14010	2022-07-17	7959.03
14011	2021-08-25	14959.86
14012	2022-10-06	9785.62
14013	2023-07-26	9611.16
14014	2020-12-12	16760.29
14015	2024-09-04	14952.07
14016	2022-03-16	12704.63
14017	2021-08-25	7873.60
14018	2021-09-26	7593.95
14019	2021-04-16	13105.98
14020	2020-03-28	13309.21
14021	2020-07-11	9059.54
14022	2020-11-05	15411.12
14023	2023-06-13	11892.61
14024	2021-09-18	12284.33
14025	2020-04-13	16360.35
14026	2022-04-10	14695.42
14027	2022-12-22	13630.05
14028	2022-05-07	14899.51
14029	2024-05-24	8096.63
14030	2021-01-09	16185.65
14031	2024-05-30	14019.34
14032	2020-02-29	16976.34
14033	2020-03-16	9471.93
14034	2024-03-09	16770.54
14035	2023-10-04	9941.76
14036	2024-09-16	13430.26
14037	2023-07-09	14318.51
14038	2023-09-26	8430.11
14039	2022-07-30	15436.16
14040	2020-06-21	8090.36
14041	2024-10-03	16553.91
14042	2024-05-19	10469.29
14043	2020-05-02	10588.87
14044	2020-11-15	8478.50
14045	2021-04-11	12255.54
14046	2022-12-01	7017.62
14047	2022-09-29	18000.43
14048	2024-11-30	10985.59
14049	2020-09-03	17867.15
14050	2022-07-11	14866.33
14051	2024-05-19	14240.41
14052	2021-08-23	9647.08
14053	2022-05-06	15774.44
14054	2024-06-16	15566.59
14055	2021-07-04	14191.80
14056	2023-01-14	13606.43
14057	2023-11-01	10406.59
14058	2021-04-29	15660.95
14059	2020-03-24	16759.87
14060	2023-10-26	17714.67
14061	2021-12-24	6928.21
14062	2022-10-30	16513.34
14063	2020-10-20	10701.34
14064	2024-10-30	14773.47
14065	2021-01-12	15718.25
14066	2022-09-19	9856.64
14067	2022-06-21	9982.05
14068	2022-04-01	14403.53
14069	2023-01-16	12297.11
14070	2021-05-03	12105.71
14071	2020-06-11	16576.34
14072	2023-05-26	10622.02
14073	2024-05-01	13786.18
14074	2022-07-02	11879.17
14075	2023-03-16	7798.85
14076	2020-04-05	16712.34
14077	2021-04-14	12555.87
14078	2022-08-05	8491.20
14079	2024-04-05	12024.02
14080	2023-09-05	9850.56
14081	2021-04-18	11377.04
14082	2024-10-23	10460.53
14083	2023-08-19	8122.01
14084	2023-12-15	7221.41
14085	2021-06-23	11954.41
14086	2024-09-03	14959.34
14087	2022-03-28	7869.72
14088	2021-08-22	15062.38
14089	2023-04-11	15600.45
14090	2020-11-24	8011.45
14091	2021-03-14	12303.67
14092	2021-05-07	11528.65
14093	2021-08-05	12263.59
14094	2022-01-25	9300.30
14095	2023-12-16	9573.04
14096	2020-09-18	16148.25
14097	2020-06-09	9479.12
14098	2024-09-04	13665.87
14099	2023-01-29	17384.79
14100	2023-08-07	17686.28
14101	2024-01-22	15741.78
14102	2024-08-28	17606.94
14103	2020-07-29	10018.77
14104	2020-03-14	16462.91
14105	2021-02-12	17934.59
14106	2022-12-17	11320.03
14107	2023-09-04	10807.04
14108	2021-09-28	8150.83
14109	2021-11-04	13848.77
14110	2021-11-08	8579.35
14111	2021-07-10	8132.91
14112	2022-04-04	11654.79
14113	2020-12-23	7791.70
14114	2020-01-18	9219.61
14115	2024-09-03	10792.86
14116	2021-09-24	11794.95
14117	2022-07-26	10329.05
14118	2022-04-09	15814.90
14119	2020-08-26	12517.59
14120	2021-03-28	16757.21
14121	2021-10-10	16176.43
14122	2020-03-26	18017.84
14123	2022-05-08	17378.97
14124	2022-11-11	15423.84
14125	2023-07-13	8045.30
14126	2021-02-24	9743.82
14127	2023-09-19	12975.76
14128	2024-06-20	10923.32
14129	2020-10-27	15203.69
14130	2021-01-01	8635.13
14131	2021-06-02	8507.49
14132	2022-01-30	7921.68
14133	2023-12-25	10541.90
14134	2021-07-27	14486.69
14135	2024-02-29	11661.63
14136	2022-07-02	16064.90
14137	2023-01-01	17635.20
14138	2020-07-29	7558.14
14139	2021-11-12	9268.94
14140	2021-09-08	10310.24
14141	2023-02-21	10800.23
14142	2022-09-21	17793.58
14143	2020-05-29	17449.56
14144	2024-01-09	15758.67
14145	2023-12-04	13863.19
14146	2020-05-01	10499.22
14147	2022-11-09	12547.25
14148	2023-07-11	13772.20
14149	2024-11-10	11384.89
14150	2022-06-28	12997.04
14151	2021-12-01	12759.91
14152	2024-08-03	13720.57
14153	2023-09-04	15340.43
14154	2023-09-05	14731.28
14155	2021-09-11	13204.91
14156	2024-11-14	8781.16
14157	2022-12-05	8613.72
14158	2023-03-09	15263.16
14159	2022-04-21	16771.98
14160	2022-12-27	16508.69
14161	2022-04-15	9233.28
14162	2020-07-17	16079.10
14163	2024-06-08	11865.59
14164	2021-09-16	9229.85
14165	2024-05-06	16525.44
14166	2024-10-11	9375.49
14167	2022-02-01	8377.05
14168	2023-03-17	8750.97
14169	2020-05-03	13801.77
14170	2022-12-08	16068.46
14171	2023-08-13	12870.13
14172	2022-10-16	7690.26
14173	2021-01-22	6877.61
14174	2023-05-09	14974.27
14175	2023-03-03	16727.66
14176	2020-12-18	10317.25
14177	2022-11-23	8391.82
14178	2021-08-14	13246.58
14179	2021-09-11	10077.68
14180	2021-03-19	8540.83
14181	2024-01-01	8083.70
14182	2023-10-19	6673.36
14183	2022-09-23	9779.39
14184	2023-08-02	6957.05
14185	2020-08-31	10457.89
14186	2021-02-27	9520.26
14187	2024-01-21	8111.65
14188	2022-12-27	17334.90
14189	2023-03-06	16102.57
14190	2021-03-26	12679.34
14191	2022-09-06	7925.09
14192	2023-03-30	8877.49
14193	2023-01-14	15604.13
14194	2024-03-12	12556.18
14195	2022-04-23	17110.83
14196	2022-06-13	8060.06
14197	2024-09-09	13899.62
14198	2023-03-01	10775.03
14199	2022-08-01	17819.89
14200	2020-07-24	14980.22
14201	2022-08-12	15146.75
14202	2020-03-20	15621.37
14203	2020-08-04	11460.11
14204	2020-11-06	10987.08
14205	2020-06-03	15087.78
14206	2021-03-14	7008.94
14207	2023-09-22	7350.55
14208	2021-05-23	17825.09
14209	2020-12-23	16149.54
14210	2023-02-20	16976.56
14211	2023-06-30	9840.24
14212	2023-05-02	14064.84
14213	2022-10-24	14904.09
14214	2020-05-04	14959.17
14215	2021-02-10	13038.37
14216	2021-04-28	11081.84
14217	2022-11-07	7365.19
14218	2022-01-21	12924.60
14219	2024-11-25	16716.80
14220	2023-10-24	8133.28
14221	2024-09-04	6803.93
14222	2021-04-24	15565.99
14223	2020-06-08	14281.45
14224	2024-07-16	14032.92
14225	2020-04-19	15498.28
14226	2021-12-10	8842.94
14227	2020-02-25	14393.99
14228	2023-05-27	17867.37
14229	2021-07-22	8890.24
14230	2020-02-29	9246.68
14231	2022-10-19	18037.80
14232	2021-11-28	7347.70
14233	2024-05-22	7078.58
14234	2022-07-29	8144.14
14235	2020-08-24	16522.91
14236	2024-08-01	6606.01
14237	2021-12-29	13334.92
14238	2024-08-16	9921.66
14239	2021-08-31	10490.65
14240	2021-01-29	15953.88
14241	2021-05-25	16562.65
14242	2022-03-09	13839.40
14243	2022-04-10	17210.83
14244	2020-03-04	14701.78
14245	2024-09-12	12262.62
14246	2020-10-29	12448.21
14247	2020-01-04	10944.96
14248	2023-07-29	8220.79
14249	2024-03-19	10577.11
14250	2023-09-22	8559.07
14251	2022-10-04	15464.14
14252	2024-11-26	14551.10
14253	2021-10-26	12845.22
14254	2022-11-16	11545.20
14255	2021-05-31	8513.72
14256	2022-10-17	16266.04
14257	2023-09-19	9622.52
14258	2023-04-02	8613.30
14259	2021-09-12	13530.05
14260	2021-04-07	11268.59
14261	2023-09-03	16561.91
14262	2023-04-05	14608.70
14263	2021-02-03	10880.33
14264	2022-01-07	9628.04
14265	2021-07-31	16096.50
14266	2023-03-08	13784.67
14267	2021-12-23	6988.15
14268	2022-03-07	11669.75
14269	2021-02-24	16754.47
14270	2024-08-01	17798.86
14271	2023-03-12	16942.27
14272	2024-06-27	14705.86
14273	2024-10-03	16473.30
14274	2023-08-30	8892.53
14275	2020-09-10	11654.02
14276	2021-08-27	6727.70
14277	2022-07-07	12576.83
14278	2020-02-12	7979.89
14279	2021-03-02	17830.02
14280	2020-05-25	7221.26
14281	2024-09-28	8705.72
14282	2021-04-25	8868.52
14283	2020-06-27	17091.67
14284	2020-12-21	15133.66
14285	2020-09-08	17537.01
14286	2021-12-27	8947.50
14287	2022-11-29	16566.62
14288	2020-02-17	8762.56
14289	2022-02-04	16548.37
14290	2024-10-14	13323.55
14291	2024-07-31	7120.92
14292	2022-02-11	7050.61
14293	2023-12-12	17954.80
14294	2021-11-05	9741.88
14295	2024-09-09	14249.61
14296	2020-03-06	17525.56
14297	2021-06-12	13648.85
14298	2021-08-21	10069.13
14299	2022-09-04	7804.44
14300	2024-03-06	16943.18
14301	2020-08-01	6644.33
14302	2023-07-19	9773.87
14303	2023-07-24	8886.21
14304	2023-11-19	15455.37
14305	2023-12-15	11357.72
14306	2020-07-12	12792.63
14307	2020-02-19	8764.54
14308	2024-02-29	9836.98
14309	2021-07-15	8774.96
14310	2024-09-30	12264.83
14311	2021-05-11	8669.26
14312	2024-06-12	15518.15
14313	2022-10-09	14207.53
14314	2023-11-24	11908.53
14315	2022-10-28	16670.37
14316	2023-12-01	10739.89
14317	2020-02-17	11838.35
14318	2024-07-24	13388.49
14319	2024-04-12	10612.46
14320	2022-10-13	11036.50
14321	2020-12-27	12432.15
14322	2023-01-07	15299.21
14323	2020-04-12	9856.92
14324	2022-03-09	13583.89
14325	2022-05-08	15311.88
14326	2023-08-23	17207.37
14327	2023-07-24	12367.41
14328	2024-11-25	14387.63
14329	2023-05-19	17722.65
14330	2020-10-14	15970.60
14331	2021-03-31	7874.92
14332	2022-03-22	13471.29
14333	2022-11-12	11441.06
14334	2023-03-16	7150.72
14335	2022-10-03	17101.45
14336	2021-07-30	16292.31
14337	2024-05-03	6636.72
14338	2021-03-07	15781.21
14339	2024-04-03	10281.82
14340	2021-11-23	8508.32
14341	2020-09-14	15645.11
14342	2020-10-20	16857.79
14343	2023-09-15	11188.16
14344	2021-08-11	14444.70
14345	2023-11-27	9666.45
14346	2021-08-13	14335.02
14347	2023-09-15	13935.19
14348	2022-11-19	7274.85
14349	2024-04-20	9932.54
14350	2023-08-05	10184.86
14351	2023-03-09	13232.35
14352	2022-01-23	10394.09
14353	2022-10-18	15173.02
14354	2020-01-16	6630.51
14355	2023-07-14	8981.03
14356	2024-11-22	9248.85
14357	2024-06-08	14589.02
14358	2023-11-10	7750.59
14359	2022-03-06	16551.86
14360	2021-07-10	16200.25
14361	2021-05-07	14037.02
14362	2021-04-25	14613.99
14363	2024-05-19	9000.60
14364	2022-06-25	13872.85
14365	2024-11-17	11009.57
14366	2021-12-09	14773.22
14367	2023-02-02	14677.26
14368	2024-02-17	14444.90
14369	2021-04-02	15698.52
14370	2020-09-09	9786.11
14371	2021-08-11	9260.92
14372	2020-07-30	15032.99
14373	2023-03-17	13612.18
14374	2024-05-21	9614.92
14375	2022-12-31	16534.46
14376	2023-01-15	14729.87
14377	2021-08-17	13197.60
14378	2021-09-18	9206.25
14379	2020-03-01	17566.05
14380	2024-09-22	7102.98
14381	2024-03-17	14889.37
14382	2020-12-28	17690.59
14383	2021-06-07	14202.88
14384	2021-12-19	18056.69
14385	2023-05-08	7112.35
14386	2021-08-16	9377.04
14387	2023-06-10	13681.55
14388	2020-02-05	15877.19
14389	2020-01-09	12401.27
14390	2023-05-08	13062.03
14391	2020-12-23	9991.77
14392	2023-12-04	11726.93
14393	2023-03-25	8653.73
14394	2020-11-07	8905.80
14395	2024-05-25	8631.60
14396	2021-04-11	14156.24
14397	2024-06-29	10296.28
14398	2023-12-31	16700.56
14399	2020-10-30	8347.39
14400	2023-06-03	9684.98
14401	2020-03-17	12741.25
14402	2021-05-22	10329.36
14403	2023-08-01	7601.73
14404	2023-09-12	7782.81
14405	2023-06-10	7027.98
14406	2022-07-09	17025.28
14407	2022-10-01	11349.44
14408	2021-07-18	17158.88
14409	2023-03-16	15671.20
14410	2020-09-15	10518.13
14411	2024-04-23	9120.99
14412	2022-05-03	10567.07
14413	2021-07-21	17774.30
14414	2023-04-20	8009.52
14415	2021-10-28	17787.02
14416	2021-04-15	9690.28
14417	2024-01-16	14319.30
14418	2024-05-07	10698.02
14419	2024-12-03	9276.48
14420	2021-04-14	9409.74
14421	2022-05-08	16863.89
14422	2021-12-24	10618.90
14423	2023-06-22	10157.53
14424	2024-10-23	8615.74
14425	2024-08-09	17201.41
14426	2023-08-06	9307.25
14427	2022-08-25	16453.53
14428	2020-04-04	8637.72
14429	2020-05-31	15459.45
14430	2020-09-20	6613.32
14431	2020-05-05	17201.36
14432	2023-07-25	11680.04
14433	2021-06-30	13982.32
14434	2024-10-04	12396.68
14435	2022-08-23	12247.83
14436	2024-03-08	9286.48
14437	2023-07-08	10730.44
14438	2021-06-19	8209.17
14439	2023-03-18	9131.57
14440	2022-02-10	16934.97
14441	2024-06-27	10746.95
14442	2023-05-08	10765.78
14443	2023-11-13	12315.23
14444	2021-09-08	14886.51
14445	2021-02-27	9694.25
14446	2022-11-19	14247.38
14447	2020-03-15	13122.79
14448	2021-11-06	8422.17
14449	2022-07-19	6974.28
14450	2020-04-16	7290.49
14451	2023-08-08	8921.07
14452	2023-05-13	17271.08
14453	2024-06-16	14643.68
14454	2023-03-27	10078.15
14455	2024-08-30	11538.54
14456	2020-05-30	7472.66
14457	2024-08-17	9500.36
14458	2020-10-27	7231.64
14459	2023-06-21	7952.90
14460	2024-11-19	14935.61
14461	2022-12-23	12907.63
14462	2022-02-17	8130.99
14463	2022-05-22	10230.33
14464	2020-08-19	10485.83
14465	2024-07-09	17387.72
14466	2024-02-01	11605.43
14467	2020-01-03	14261.02
14468	2020-01-31	15061.82
14469	2024-02-09	8614.46
14470	2024-05-08	16554.31
14471	2024-07-27	15549.91
14472	2022-01-29	10918.57
14473	2022-12-19	16474.29
14474	2021-10-22	11660.06
14475	2024-11-23	6917.18
14476	2021-02-21	7346.62
14477	2021-03-25	15592.53
14478	2024-10-26	12030.93
14479	2023-08-22	17331.12
14480	2021-11-07	12630.82
14481	2022-08-25	7675.29
14482	2022-10-06	15927.93
14483	2023-11-04	12319.54
14484	2020-02-06	7014.02
14485	2022-06-18	14628.36
14486	2023-06-05	10609.09
14487	2023-09-15	8912.46
14488	2021-01-28	17161.91
14489	2023-07-10	7895.45
14490	2024-04-22	14114.18
14491	2021-02-18	17107.44
14492	2022-05-25	10450.64
14493	2023-07-19	11437.49
14494	2021-02-13	14704.38
14495	2020-01-25	12296.68
14496	2022-08-22	17062.47
14497	2020-05-20	13386.37
14498	2020-10-18	11039.97
14499	2024-01-25	16858.34
14500	2024-09-09	11238.38
14501	2020-08-17	10094.69
14502	2022-05-26	15846.20
14503	2020-03-04	17063.46
14504	2024-09-26	12651.71
14505	2021-08-15	11982.23
14506	2022-05-22	10489.90
14507	2024-02-20	17495.54
14508	2023-08-11	17241.29
14509	2021-04-20	7015.49
14510	2021-07-07	11495.46
14511	2021-11-14	6725.04
14512	2021-03-22	16070.35
14513	2024-05-06	12371.34
14514	2021-03-27	14145.73
14515	2021-02-19	16457.37
14516	2023-12-20	10614.68
14517	2024-11-26	16032.69
14518	2024-01-01	11305.47
14519	2021-06-30	17839.55
14520	2021-12-11	15428.32
14521	2020-11-15	8405.48
14522	2021-01-23	16992.40
14523	2022-07-24	14075.22
14524	2024-01-26	6949.22
14525	2021-02-13	17961.27
14526	2021-01-13	12691.73
14527	2023-01-07	9983.97
14528	2020-10-14	13995.22
14529	2020-11-11	17835.87
14530	2020-01-29	13935.64
14531	2020-11-03	9277.21
14532	2024-08-10	17466.95
14533	2023-05-12	12602.91
14534	2020-02-06	15136.64
14535	2022-07-14	14065.12
14536	2023-01-10	15523.82
14537	2020-09-02	11593.53
14538	2024-07-24	7473.42
14539	2020-06-04	7479.46
14540	2023-09-24	17325.01
14541	2021-12-02	16055.36
14542	2022-09-30	8110.94
14543	2023-05-14	16716.33
14544	2022-12-13	6724.16
14545	2024-05-16	7408.87
14546	2022-12-26	10087.64
14547	2020-12-10	8997.34
14548	2023-06-07	17177.26
14549	2022-10-11	7115.27
14550	2022-09-13	14641.46
14551	2021-10-12	12946.38
14552	2020-03-03	17551.21
14553	2022-12-29	14900.58
14554	2023-05-17	13085.16
14555	2024-03-06	13099.50
14556	2023-10-13	12374.61
14557	2020-02-19	14096.95
14558	2022-05-15	16922.65
14559	2020-04-06	11194.99
14560	2022-08-12	14373.70
14561	2023-10-17	8516.59
14562	2020-01-15	12392.92
14563	2023-11-05	10002.08
14564	2023-12-14	8381.89
14565	2022-02-12	17528.43
14566	2023-03-30	14371.26
14567	2022-04-22	14379.04
14568	2023-05-27	16944.22
14569	2022-06-21	14900.33
14570	2020-01-30	8407.18
14571	2021-08-07	16807.48
14572	2022-05-04	10961.82
14573	2021-11-25	8460.65
14574	2022-09-09	12780.72
14575	2022-05-11	9836.79
14576	2022-06-20	8673.83
14577	2024-08-22	16551.62
14578	2024-04-18	13031.63
14579	2024-03-25	11831.38
14580	2022-06-16	14077.40
14581	2023-01-22	11364.59
14582	2022-09-14	17294.05
14583	2023-05-28	15957.13
14584	2023-07-12	16598.23
14585	2020-06-15	15246.48
14586	2021-01-14	17984.07
14587	2022-04-16	8488.82
14588	2024-08-13	16662.29
14589	2024-03-21	13234.42
14590	2021-03-17	7960.71
14591	2020-11-07	10959.77
14592	2022-01-10	8929.55
14593	2023-04-06	14095.10
14594	2024-05-13	10009.94
14595	2023-07-27	10579.89
14596	2024-05-10	17184.25
14597	2021-08-19	13610.66
14598	2023-04-06	17441.81
14599	2022-01-31	11781.34
14600	2020-11-30	9517.49
14601	2024-05-16	16156.36
14602	2020-05-30	11218.55
14603	2021-09-30	6654.00
14604	2023-04-07	12936.37
14605	2022-09-04	10959.13
14606	2022-09-07	15870.14
14607	2021-02-02	16872.64
14608	2020-06-01	8651.58
14609	2023-10-29	13574.71
14610	2022-09-05	15100.93
14611	2022-10-09	16157.23
14612	2022-02-03	12711.90
14613	2021-02-10	14602.70
14614	2023-06-15	17268.96
14615	2020-05-21	14686.22
14616	2021-04-13	16281.21
14617	2023-01-14	17562.52
14618	2024-05-22	12492.79
14619	2022-08-14	9101.13
14620	2023-11-13	12201.17
14621	2022-05-19	11243.05
14622	2022-12-07	9072.07
14623	2021-07-22	7523.19
14624	2022-02-19	7499.08
14625	2022-03-05	7437.30
14626	2022-01-09	7560.24
14627	2022-02-06	15095.29
14628	2021-04-02	10785.51
14629	2023-01-29	16740.88
14630	2023-07-29	14128.95
14631	2023-06-29	15949.74
14632	2022-09-15	15402.08
14633	2022-09-10	13263.56
14634	2021-09-05	9499.16
14635	2023-07-21	15146.36
14636	2024-05-21	14472.57
14637	2024-10-09	12636.02
14638	2023-05-13	13847.33
14639	2023-09-29	13660.50
14640	2020-03-09	8261.09
14641	2021-09-04	15285.79
14642	2022-11-22	15821.68
14643	2023-01-03	12601.89
14644	2023-09-08	10134.82
14645	2021-05-07	7479.75
14646	2020-02-11	10289.91
14647	2020-06-12	15254.67
14648	2020-07-08	8991.57
14649	2021-02-22	14573.58
14650	2020-02-11	9765.02
14651	2023-10-26	12605.27
14652	2020-02-15	11941.47
14653	2022-06-05	11019.95
14654	2022-04-02	9955.38
14655	2024-06-15	15046.38
14656	2022-04-07	17970.14
14657	2023-12-04	13068.95
14658	2020-11-23	16690.61
14659	2020-05-23	17083.78
14660	2024-06-19	10667.14
14661	2024-05-21	13906.24
14662	2022-06-13	13688.45
14663	2020-07-25	17629.19
14664	2024-01-02	7769.80
14665	2020-02-25	10109.59
14666	2021-07-14	14700.12
14667	2023-02-23	6653.08
14668	2020-07-08	14679.65
14669	2020-06-28	17704.22
14670	2024-03-09	9331.17
14671	2020-05-31	7435.03
14672	2020-12-20	10513.75
14673	2021-10-26	16593.42
14674	2022-03-26	8982.24
14675	2024-04-12	7657.05
14676	2021-12-23	7837.16
14677	2020-05-22	8200.14
14678	2024-10-16	16664.09
14679	2020-06-29	12461.06
14680	2024-04-20	17989.98
14681	2022-10-29	9491.23
14682	2023-08-18	16942.09
14683	2020-12-31	16038.15
14684	2021-12-07	17795.33
14685	2021-05-19	6608.73
14686	2020-01-27	8080.80
14687	2021-05-12	7700.04
14688	2021-02-25	17108.12
14689	2021-03-01	10180.28
14690	2022-07-27	17473.69
14691	2020-11-20	7499.48
14692	2020-01-01	7151.14
14693	2024-02-14	17654.91
14694	2023-09-27	7615.60
14695	2023-09-18	13401.79
14696	2021-10-02	11983.02
14697	2024-07-16	16929.84
14698	2020-11-02	17551.15
14699	2022-02-06	6665.17
14700	2020-02-29	7033.88
14701	2024-11-22	17377.39
14702	2023-06-11	10909.38
14703	2021-05-18	9684.15
14704	2023-04-18	11957.85
14705	2024-03-08	9500.16
14706	2023-08-26	8478.80
14707	2021-06-01	10394.41
14708	2022-04-04	17693.91
14709	2024-09-17	16184.71
14710	2024-06-24	9969.21
14711	2024-08-19	14192.42
14712	2020-02-15	10429.31
14713	2022-06-02	14924.65
14714	2020-08-17	9935.33
14715	2020-11-15	10088.49
14716	2024-03-07	17192.79
14717	2021-03-13	13718.99
14718	2020-04-04	10082.69
14719	2022-11-17	16635.89
14720	2022-03-25	10060.25
14721	2024-10-16	9691.42
14722	2022-09-01	16404.04
14723	2021-07-30	12876.96
14724	2022-09-22	13051.83
14725	2021-01-11	13064.59
14726	2020-01-27	8573.70
14727	2020-02-13	7064.77
14728	2022-07-20	16322.63
14729	2022-08-12	16349.13
14730	2023-06-18	7023.73
14731	2023-04-04	13642.47
14732	2022-06-26	6951.54
14733	2022-04-03	9519.11
14734	2020-05-28	10879.16
14735	2020-02-28	7886.60
14736	2021-01-26	18001.32
14737	2023-07-13	11681.77
14738	2020-07-04	6796.49
14739	2020-11-17	15182.35
14740	2020-01-26	8864.61
14741	2021-04-21	7881.06
14742	2021-07-20	11182.46
14743	2022-06-26	14313.32
14744	2024-05-14	17629.58
14745	2022-11-15	13248.14
14746	2020-03-08	16992.23
14747	2023-07-14	15000.72
14748	2021-01-20	16121.20
14749	2023-01-20	8551.88
14750	2022-06-16	7362.52
14751	2021-01-01	11999.88
14752	2021-09-25	16846.54
14753	2022-04-26	17929.93
14754	2022-06-10	9350.09
14755	2021-07-14	17441.89
14756	2024-01-10	8525.78
14757	2022-06-07	11497.82
14758	2020-08-13	17749.98
14759	2024-04-17	10169.75
14760	2021-07-20	10967.97
14761	2020-01-25	7310.17
14762	2023-11-04	14968.58
14763	2024-03-08	10427.88
14764	2023-02-12	16778.87
14765	2020-09-17	7564.27
14766	2022-12-19	9555.60
14767	2022-11-19	8688.21
14768	2023-08-06	16502.02
14769	2020-07-09	15611.57
14770	2022-09-14	13164.63
14771	2024-02-20	11991.66
14772	2023-10-06	17118.89
14773	2021-01-24	16985.09
14774	2024-06-30	12526.91
14775	2023-04-10	6698.85
14776	2024-02-04	9216.24
14777	2020-07-03	11959.49
14778	2022-06-04	17814.81
14779	2020-04-22	15971.41
14780	2023-02-14	17331.52
14781	2021-04-02	8558.06
14782	2022-08-09	14652.32
14783	2024-03-16	14629.49
14784	2024-05-25	6999.24
14785	2023-07-17	16307.22
14786	2022-02-03	16395.97
14787	2022-07-29	11850.41
14788	2023-06-01	11608.21
14789	2020-04-16	14142.35
14790	2023-05-28	7031.52
14791	2020-10-21	12904.22
14792	2021-01-01	16851.35
14793	2020-02-17	16910.90
14794	2020-05-12	15031.79
14795	2021-10-22	16293.08
14796	2024-02-01	17117.17
14797	2023-04-16	17995.52
14798	2021-09-26	9229.33
14799	2023-12-23	16325.25
14800	2021-11-10	14233.09
14801	2020-07-31	12572.55
14802	2024-09-19	8549.06
14803	2020-11-11	15575.14
14804	2022-08-21	15841.88
14805	2024-06-15	12977.69
14806	2021-11-06	17836.98
14807	2024-05-06	7134.05
14808	2021-05-07	11391.07
14809	2022-08-15	16467.73
14810	2022-06-26	8495.04
14811	2023-06-25	12353.86
14812	2022-06-26	15563.21
14813	2022-02-02	15046.59
14814	2024-02-07	11356.54
14815	2022-07-09	17878.44
14816	2022-02-13	13337.95
14817	2024-11-29	17724.56
14818	2024-10-17	7909.73
14819	2024-02-09	9006.48
14820	2021-05-14	14895.51
14821	2020-09-09	10768.84
14822	2024-08-03	10327.54
14823	2020-07-31	10985.32
14824	2021-08-29	16099.99
14825	2021-11-24	13024.58
14826	2020-03-28	10548.99
14827	2022-08-09	15019.83
14828	2022-03-06	8982.20
14829	2023-02-18	12683.83
14830	2023-06-19	17060.08
14831	2022-05-02	16397.48
14832	2024-02-07	6882.04
14833	2024-07-29	11436.18
14834	2020-07-10	6901.82
14835	2021-11-10	16823.54
14836	2020-02-28	8872.37
14837	2021-06-19	16614.57
14838	2024-02-18	9190.97
14839	2023-05-14	8895.13
14840	2021-12-08	14988.96
14841	2022-10-03	17827.56
14842	2024-04-08	15681.83
14843	2020-06-10	12085.37
14844	2023-04-03	15499.25
14845	2022-05-11	10379.31
14846	2023-07-20	14708.27
14847	2024-05-06	17227.82
14848	2020-12-11	15382.02
14849	2020-10-22	13041.29
14850	2021-09-09	9916.98
14851	2021-12-08	6874.52
14852	2020-04-30	10193.29
14853	2021-08-01	7520.21
14854	2020-10-23	15197.50
14855	2022-05-13	9378.87
14856	2024-10-17	16272.72
14857	2024-05-28	8537.13
14858	2024-04-19	9982.66
14859	2020-06-27	11910.83
14860	2021-07-06	11010.93
14861	2023-10-29	9495.30
14862	2021-02-17	12641.58
14863	2022-05-17	8268.53
14864	2023-11-05	15516.66
14865	2024-10-06	17854.00
14866	2024-11-17	7278.05
14867	2024-07-23	7465.24
14868	2022-02-28	11339.61
14869	2024-07-31	8776.22
14870	2024-05-17	12709.53
14871	2024-06-12	15608.07
14872	2024-10-05	6624.09
14873	2024-10-02	12170.28
14874	2024-09-17	6800.56
14875	2020-05-13	8181.10
14876	2022-11-30	17312.03
14877	2022-10-25	10926.64
14878	2021-10-11	12672.13
14879	2023-12-19	12455.40
14880	2023-11-23	15265.19
14881	2020-05-07	11811.98
14882	2021-03-30	12006.89
14883	2020-01-17	12208.65
14884	2022-10-26	7404.22
14885	2021-10-12	7068.64
14886	2023-11-25	6836.38
14887	2020-01-09	8432.51
14888	2020-05-06	12195.41
14889	2023-07-08	14045.88
14890	2021-06-18	11962.22
14891	2020-04-03	14030.44
14892	2022-02-13	14420.14
14893	2023-10-04	13777.23
14894	2023-01-05	10982.19
14895	2024-06-26	8111.60
14896	2021-05-23	17904.33
14897	2020-11-04	9849.64
14898	2022-12-19	9891.18
14899	2024-09-19	15054.89
14900	2021-04-23	11252.93
14901	2022-08-27	17030.93
14902	2022-06-02	15447.62
14903	2024-02-04	9488.81
14904	2023-10-30	15814.03
14905	2020-07-10	16517.23
14906	2020-11-10	7060.76
14907	2020-04-08	16503.55
14908	2020-04-21	17405.96
14909	2024-04-10	11402.81
14910	2020-09-15	14313.94
14911	2024-08-25	12400.01
14912	2023-08-24	10195.14
14913	2020-04-15	8746.84
14914	2020-10-07	8521.53
14915	2021-01-28	16103.06
14916	2022-08-11	7001.75
14917	2021-06-20	8971.66
14918	2020-05-15	7906.76
14919	2024-02-04	12923.89
14920	2021-06-23	8059.38
14921	2021-04-05	7737.13
14922	2021-07-01	7890.08
14923	2023-11-24	7692.34
14924	2023-01-15	7067.72
14925	2020-03-16	9816.15
14926	2021-02-03	13931.20
14927	2021-02-18	13298.73
14928	2021-09-20	9642.12
14929	2022-01-22	9317.26
14930	2021-09-26	9340.00
14931	2021-02-10	14440.31
14932	2022-11-13	7005.61
14933	2023-04-08	11277.48
14934	2020-08-07	9602.11
14935	2021-03-31	12576.45
14936	2022-08-31	14859.98
14937	2020-08-16	6653.50
14938	2022-12-14	15283.05
14939	2021-01-03	9968.36
14940	2024-03-14	10691.71
14941	2022-05-13	8363.46
14942	2021-07-20	9165.95
14943	2020-11-06	11791.11
14944	2024-02-06	9312.76
14945	2020-03-16	14511.08
14946	2021-05-24	7807.34
14947	2024-09-21	10579.26
14948	2023-09-12	16606.24
14949	2023-11-13	11126.19
14950	2023-03-15	17942.68
14951	2020-09-24	15335.65
14952	2024-04-02	10629.22
14953	2021-01-21	16880.74
14954	2024-02-13	10483.25
14955	2024-11-26	7086.09
14956	2023-07-13	13046.60
14957	2022-02-25	13445.23
14958	2023-05-29	10611.08
14959	2024-07-09	16911.33
14960	2020-01-20	12045.33
14961	2022-05-14	15148.05
14962	2020-08-11	7981.29
14963	2022-03-03	8603.65
14964	2024-11-06	10732.70
14965	2023-10-09	13029.17
14966	2024-11-18	16849.95
14967	2024-03-03	14448.28
14968	2021-01-25	16227.69
14969	2020-08-10	7587.29
14970	2022-12-19	11074.11
14971	2021-05-01	10056.37
14972	2020-06-03	12228.93
14973	2020-03-15	12552.05
14974	2023-04-24	9155.65
14975	2024-03-11	12833.64
14976	2020-12-02	9592.25
14977	2020-12-26	17036.89
14978	2023-08-19	7404.71
14979	2022-11-28	11348.66
14980	2024-04-24	12239.86
14981	2020-12-11	10552.54
14982	2023-11-22	8254.38
14983	2024-06-02	17055.98
14984	2020-01-02	11164.15
14985	2024-04-12	16199.24
14986	2020-05-22	13387.89
14987	2022-06-06	18070.26
14988	2022-01-02	7788.32
14989	2020-08-18	12510.80
14990	2020-12-16	13833.87
14991	2020-05-27	12397.11
14992	2022-02-03	14329.15
14993	2021-06-13	8685.91
14994	2021-04-28	7631.00
14995	2023-07-24	8725.59
14996	2022-07-12	15182.00
14997	2022-12-10	8974.20
14998	2020-10-03	10169.24
14999	2021-02-24	14880.93
15000	2023-01-17	15709.65
15001	2020-09-06	13653.54
15002	2023-04-18	12400.79
15003	2023-01-31	8723.59
15004	2020-09-22	8591.46
15005	2020-02-23	7164.64
15006	2021-12-22	9204.61
15007	2020-02-17	17490.36
15008	2024-05-03	8418.55
15009	2021-07-26	11076.66
15010	2024-06-13	7974.08
15011	2022-12-26	10731.65
15012	2021-03-10	10353.23
15013	2024-07-11	17696.62
15014	2020-11-27	13122.37
15015	2020-03-10	16285.38
15016	2022-10-18	11344.39
15017	2022-10-15	11792.90
15018	2021-07-24	17406.81
15019	2020-04-01	7998.65
15020	2024-05-18	15626.24
15021	2021-10-20	11454.92
15022	2021-03-08	14907.42
15023	2022-07-28	14429.96
15024	2021-06-07	17956.27
15025	2023-07-23	8362.66
15026	2021-04-29	10549.36
15027	2022-09-18	15940.36
15028	2023-11-26	9135.15
15029	2022-11-17	17315.27
15030	2022-12-13	8146.59
15031	2023-03-21	17021.48
15032	2024-11-29	16750.92
15033	2023-04-01	14750.48
15034	2024-10-09	14594.12
15035	2023-11-08	12937.93
15036	2023-05-17	9505.55
15037	2020-08-26	7436.83
15038	2023-10-09	14477.45
15039	2023-07-11	6939.77
15040	2020-03-24	8590.85
15041	2022-09-20	9890.19
15042	2020-03-15	17847.68
15043	2023-05-19	10289.52
15044	2023-06-29	14241.43
15045	2020-03-25	12779.27
15046	2022-05-30	12906.16
15047	2022-08-31	9910.80
15048	2021-06-14	17960.06
15049	2020-11-24	10499.99
15050	2022-03-30	17989.69
15051	2023-12-21	8734.21
15052	2020-12-01	11056.47
15053	2020-08-18	11631.06
15054	2024-04-17	8399.52
15055	2024-07-02	7458.55
15056	2021-09-09	11585.33
15057	2020-11-28	7710.78
15058	2021-11-24	15610.85
15059	2021-06-23	9362.04
15060	2024-06-18	13326.00
15061	2021-05-16	7162.44
15062	2024-03-07	8084.43
15063	2020-03-06	13079.01
15064	2023-01-12	16047.92
15065	2022-08-01	7685.75
15066	2024-08-11	9270.02
15067	2022-09-29	13162.05
15068	2022-01-18	17560.75
15069	2023-11-22	15543.36
15070	2021-06-07	13216.13
15071	2021-03-08	16483.11
15072	2020-09-12	11956.03
15073	2020-05-14	11182.10
15074	2023-07-28	12649.63
15075	2024-05-01	13464.43
15076	2021-09-24	10057.76
15077	2021-03-07	13238.79
15078	2020-12-17	15189.58
15079	2023-11-19	7621.95
15080	2020-05-22	10455.11
15081	2022-10-09	8603.48
15082	2023-01-28	9408.24
15083	2020-11-30	8377.79
15084	2021-12-14	18071.05
15085	2021-07-09	9301.91
15086	2024-08-20	10532.15
15087	2022-12-26	9572.56
15088	2020-06-07	17561.52
15089	2020-03-06	9223.19
15090	2024-08-12	15359.63
15091	2021-02-27	7503.88
15092	2020-05-27	8491.07
15093	2024-10-22	17703.38
15094	2023-01-09	12280.41
15095	2022-11-20	17538.88
15096	2024-11-04	13209.81
15097	2020-09-04	17319.31
15098	2022-03-06	9409.23
15099	2020-05-05	7187.73
15100	2023-10-06	13075.62
15101	2022-04-30	10763.49
15102	2021-11-19	9639.24
15103	2024-06-10	8247.73
15104	2020-04-29	11704.40
15105	2023-08-25	13895.22
15106	2023-04-01	12795.98
15107	2023-06-13	11337.48
15108	2022-09-08	14830.92
15109	2022-04-03	12571.27
15110	2023-05-04	12686.48
15111	2021-02-26	7366.16
15112	2024-09-21	10899.18
15113	2021-07-26	12321.48
15114	2021-01-16	15314.74
15115	2022-07-01	7143.60
15116	2022-08-21	15951.45
15117	2022-08-03	14930.05
15118	2022-10-22	10748.62
15119	2020-10-12	11561.93
15120	2020-05-12	13804.59
15121	2021-04-02	17696.27
15122	2024-02-28	9866.35
15123	2023-09-06	7326.91
15124	2021-10-19	11738.90
15125	2022-12-22	9063.60
15126	2021-03-06	17705.98
15127	2022-11-24	9321.44
15128	2021-05-22	17054.95
15129	2020-08-29	9292.39
15130	2024-02-01	15706.64
15131	2021-12-23	16576.76
15132	2023-07-29	10158.20
15133	2023-07-07	7682.61
15134	2020-08-24	9568.57
15135	2024-06-15	13236.53
15136	2022-11-28	8020.82
15137	2020-08-28	13892.09
15138	2020-01-26	17722.88
15139	2021-06-28	9209.89
15140	2024-03-30	7982.17
15141	2022-09-17	7827.71
15142	2022-02-22	13145.71
15143	2021-01-06	12815.18
15144	2024-04-19	10901.60
15145	2022-08-19	14676.21
15146	2023-04-05	17793.03
15147	2023-07-05	7000.89
15148	2021-08-23	16167.65
15149	2020-07-14	17614.60
15150	2020-02-04	7988.68
15151	2020-05-06	8820.70
15152	2024-10-03	16496.98
15153	2023-05-08	10689.53
15154	2022-09-24	12498.62
15155	2021-05-21	18005.22
15156	2020-02-20	7017.10
15157	2020-10-24	14334.02
15158	2022-11-01	10617.43
15159	2020-05-05	14675.59
15160	2024-07-15	15288.72
15161	2024-02-04	6781.10
15162	2023-09-18	13621.28
15163	2022-01-09	8244.72
15164	2024-05-20	15964.11
15165	2021-11-25	14100.45
15166	2022-11-20	13555.21
15167	2020-11-15	8476.61
15168	2020-11-04	7031.55
15169	2024-06-07	16167.55
15170	2024-02-24	7127.74
15171	2022-04-15	6869.74
15172	2024-04-28	8267.11
15173	2023-05-14	10583.82
15174	2024-03-24	11637.60
15175	2021-11-05	13501.58
15176	2023-01-02	7656.80
15177	2021-06-15	9119.84
15178	2022-09-23	16813.20
15179	2021-12-29	12553.77
15180	2020-05-04	11709.16
15181	2023-06-25	6754.06
15182	2020-12-02	17045.48
15183	2023-03-09	7775.38
15184	2022-08-18	11150.14
15185	2022-03-08	7181.83
15186	2023-01-11	7936.72
15187	2021-04-14	9134.99
15188	2021-10-14	14014.70
15189	2023-06-28	11495.79
15190	2020-09-21	8785.41
15191	2022-10-11	17896.24
15192	2020-08-31	6990.68
15193	2022-06-24	12744.85
15194	2022-02-04	7376.73
15195	2023-05-13	14175.89
15196	2020-06-14	16895.39
15197	2022-06-03	12306.00
15198	2024-04-22	17856.16
15199	2020-04-30	15444.84
15200	2023-11-29	16339.19
15201	2024-11-16	13820.49
15202	2021-12-23	15058.86
15203	2022-03-18	10305.59
15204	2022-03-16	13117.71
15205	2021-08-04	12328.22
15206	2021-04-20	10132.83
15207	2020-02-14	12123.64
15208	2023-10-07	12071.14
15209	2023-04-23	7365.93
15210	2023-01-08	16063.20
15211	2023-10-28	17435.65
15212	2023-08-28	16570.71
15213	2023-11-10	12197.35
15214	2024-05-23	15462.40
15215	2021-06-27	17375.95
15216	2024-06-17	13240.79
15217	2024-06-19	12571.92
15218	2021-12-20	7112.60
15219	2023-09-28	17176.63
15220	2023-12-09	16518.66
15221	2020-02-23	12389.27
15222	2023-11-04	11139.47
15223	2021-08-24	12212.73
15224	2021-02-12	8812.40
15225	2021-05-09	10616.17
15226	2022-05-17	13543.50
15227	2020-04-12	7241.32
15228	2021-08-03	10383.24
15229	2023-12-09	15189.62
15230	2022-01-26	16747.77
15231	2021-06-16	8794.58
15232	2024-02-06	16274.49
15233	2021-11-20	7115.35
15234	2021-03-19	8885.07
15235	2024-10-24	7646.73
15236	2022-08-26	16852.33
15237	2020-01-16	8748.54
15238	2024-05-23	15279.78
15239	2024-10-29	9919.42
15240	2022-09-18	17051.53
15241	2024-05-14	17813.10
15242	2021-11-16	6982.71
15243	2020-06-12	14927.90
15244	2021-11-03	14151.56
15245	2020-08-23	12062.86
15246	2020-04-28	8124.99
15247	2021-01-23	7108.79
15248	2023-11-14	16105.32
15249	2024-02-14	11781.53
15250	2023-06-07	7756.03
15251	2023-12-29	12809.64
15252	2022-05-15	9797.19
15253	2023-12-29	14044.63
15254	2022-04-01	14175.38
15255	2023-12-21	10458.44
15256	2021-12-23	17404.82
15257	2023-04-16	10552.75
15258	2020-03-03	8303.40
15259	2022-03-14	9335.65
15260	2021-09-24	14461.45
15261	2020-08-23	11532.95
15262	2024-10-02	13961.69
15263	2022-12-14	8750.80
15264	2021-11-05	16018.75
15265	2020-05-08	16138.02
15266	2021-08-15	8375.00
15267	2020-10-07	8045.30
15268	2021-07-31	12709.35
15269	2023-02-16	10947.15
15270	2021-08-14	15832.03
15271	2021-02-15	10668.59
15272	2021-05-15	13130.92
15273	2023-08-22	14124.20
15274	2020-09-18	17970.65
15275	2020-08-14	13113.20
15276	2021-06-06	13598.90
15277	2020-11-11	10384.62
15278	2023-03-05	16538.60
15279	2023-04-18	16505.05
15280	2024-05-09	16910.49
15281	2020-01-31	12818.90
15282	2021-03-13	13574.54
15283	2023-05-17	9197.37
15284	2022-08-25	17844.40
15285	2020-06-05	9356.25
15286	2023-03-28	12510.90
15287	2022-09-16	15382.15
15288	2024-09-10	17157.20
15289	2022-11-29	10257.13
15290	2023-02-11	16885.31
15291	2023-03-29	18034.00
15292	2023-07-25	11222.97
15293	2024-09-02	13289.03
15294	2024-06-15	17451.26
15295	2021-12-25	17198.06
15296	2023-10-17	12036.15
15297	2023-01-07	10400.97
15298	2023-08-06	11900.45
15299	2023-06-05	8931.82
15300	2020-06-14	14954.59
15301	2020-06-28	9542.96
15302	2022-06-15	7670.34
15303	2023-10-23	16273.42
15304	2023-09-17	18012.85
15305	2021-02-12	16605.71
15306	2022-01-24	12013.83
15307	2024-07-21	14658.91
15308	2021-12-06	12944.13
15309	2023-05-29	9164.34
15310	2024-05-30	7859.65
15311	2020-10-25	17626.68
15312	2024-06-26	16686.58
15313	2022-10-19	6913.20
15314	2020-05-30	12559.57
15315	2021-12-05	16021.44
15316	2021-07-14	12155.87
15317	2020-07-14	8338.23
15318	2022-04-26	16149.23
15319	2024-04-05	17576.63
15320	2024-07-15	10973.87
15321	2020-01-20	15678.47
15322	2020-07-29	14915.81
15323	2023-12-24	9819.43
15324	2020-11-24	9564.02
15325	2021-03-11	14531.41
15326	2020-08-06	11498.25
15327	2021-11-20	14487.12
15328	2024-05-19	12294.03
15329	2020-11-17	12583.34
15330	2024-07-13	7499.86
15331	2022-06-04	12332.84
15332	2024-01-23	15658.96
15333	2023-10-30	9463.47
15334	2022-06-16	15353.00
15335	2024-10-20	12482.47
15336	2024-11-05	13721.70
15337	2022-06-17	7579.57
15338	2022-09-27	14561.39
15339	2021-10-12	9426.43
15340	2023-04-30	13714.16
15341	2020-05-22	7671.48
15342	2020-08-14	9019.05
15343	2023-10-11	13832.08
15344	2020-05-23	9545.70
15345	2024-05-26	15100.59
15346	2022-07-01	15898.00
15347	2021-12-20	18074.19
15348	2022-12-17	17847.01
15349	2020-02-10	11468.01
15350	2023-01-23	12558.94
15351	2023-05-11	6779.42
15352	2022-06-24	13008.76
15353	2021-10-16	15806.45
15354	2021-10-28	14359.40
15355	2020-10-30	12965.97
15356	2023-08-24	13950.36
15357	2020-04-09	13881.00
15358	2022-05-15	13195.80
15359	2024-03-12	11529.55
15360	2022-05-15	7704.79
15361	2022-05-10	12173.23
15362	2022-03-31	11181.60
15363	2023-02-20	6979.49
15364	2021-06-28	10240.25
15365	2022-10-24	11018.78
15366	2021-06-30	10735.96
15367	2022-03-02	10459.08
15368	2020-09-19	10976.26
15369	2023-11-02	12847.16
15370	2024-09-14	10178.84
15371	2022-06-09	7955.51
15372	2020-02-28	7610.55
15373	2020-10-23	15462.83
15374	2021-10-09	12708.70
15375	2022-06-20	10685.23
15376	2024-06-13	11168.24
15377	2023-12-17	10710.62
15378	2022-11-26	7400.93
15379	2024-10-13	10905.98
15380	2022-05-26	15221.31
15381	2023-10-31	11414.83
15382	2022-07-16	16170.13
15383	2022-04-25	14422.54
15384	2022-05-01	17616.87
15385	2021-10-01	15373.74
15386	2020-10-01	8514.18
15387	2021-11-05	7485.59
15388	2024-11-10	7709.81
15389	2022-12-26	13879.30
15390	2020-03-31	17449.15
15391	2022-02-16	10679.36
15392	2023-10-23	14656.51
15393	2021-03-10	10691.50
15394	2020-03-31	17750.52
15395	2022-07-18	13145.38
15396	2020-05-21	11300.46
15397	2020-02-01	8209.91
15398	2022-08-24	9733.67
15399	2022-08-07	10297.32
15400	2024-12-03	7371.58
15401	2023-03-21	9952.47
15402	2021-10-17	9075.46
15403	2020-03-31	12282.70
15404	2020-04-15	11934.00
15405	2024-11-06	7303.82
15406	2022-09-13	11497.67
15407	2021-11-04	11905.39
15408	2023-09-29	12078.78
15409	2024-06-19	10040.33
15410	2021-09-28	10730.33
15411	2020-04-21	13351.82
15412	2022-12-01	15723.08
15413	2024-10-21	15889.43
15414	2020-08-28	17583.67
15415	2021-10-17	15667.76
15416	2020-01-26	13155.94
15417	2024-08-17	7226.77
15418	2021-05-10	10033.61
15419	2021-09-13	15757.01
15420	2021-02-14	7304.46
15421	2020-08-27	16246.97
15422	2024-03-08	8933.48
15423	2021-12-27	11853.54
15424	2022-11-06	12996.59
15425	2022-06-26	16998.61
15426	2023-06-12	9176.12
15427	2024-09-25	14109.49
15428	2021-03-10	10108.60
15429	2024-08-31	12602.78
15430	2020-02-05	15346.93
15431	2023-05-15	16047.77
15432	2024-04-20	13864.54
15433	2020-02-16	17949.46
15434	2023-06-05	17793.11
15435	2024-01-20	16246.37
15436	2022-07-04	13648.20
15437	2021-04-03	14928.31
15438	2023-01-08	11538.57
15439	2023-06-13	16222.97
15440	2022-12-14	7365.20
15441	2022-08-11	17540.19
15442	2020-08-05	14600.49
15443	2023-04-06	14161.49
15444	2022-11-02	13945.65
15445	2024-02-13	14020.34
15446	2022-04-15	14932.04
15447	2023-02-25	15376.88
15448	2022-02-21	10607.90
15449	2021-05-05	6638.57
15450	2022-12-07	10771.31
15451	2023-07-03	15216.40
15452	2024-11-01	11794.95
15453	2020-12-03	13930.76
15454	2023-08-22	11695.65
15455	2022-04-06	9153.09
15456	2023-07-26	14087.49
15457	2023-03-29	9585.44
15458	2021-06-20	15116.26
15459	2023-05-28	8248.56
15460	2020-07-26	15128.33
15461	2023-05-11	7934.16
15462	2023-04-30	15409.23
15463	2022-09-02	7638.56
15464	2020-08-20	10711.12
15465	2022-07-06	9926.30
15466	2024-10-05	16006.51
15467	2022-01-28	14264.05
15468	2023-10-02	8260.91
15469	2022-08-12	8541.42
15470	2021-08-13	10021.46
15471	2020-10-28	17244.60
15472	2023-11-26	13068.24
15473	2024-09-24	14573.75
15474	2020-03-19	12683.77
15475	2023-12-17	12581.57
15476	2023-08-21	7125.74
15477	2020-11-26	16383.76
15478	2024-01-22	14754.70
15479	2024-12-04	7686.98
15480	2022-03-24	6622.04
15481	2023-11-21	17851.87
15482	2021-08-17	9116.77
15483	2020-09-05	11363.55
15484	2024-06-17	16293.87
15485	2024-04-18	18072.65
15486	2020-06-19	7635.05
15487	2021-05-28	17407.35
15488	2020-11-08	11878.84
15489	2021-02-28	9848.39
15490	2021-01-23	14119.49
15491	2020-11-26	9982.79
15492	2022-01-19	13102.15
15493	2024-04-26	12170.44
15494	2022-08-24	7343.63
15495	2021-02-07	17689.71
15496	2023-07-27	9757.34
15497	2020-06-15	17808.53
15498	2023-07-30	14331.10
15499	2024-09-11	12050.53
15500	2024-01-04	16768.18
15501	2023-01-22	11880.73
15502	2020-01-31	14619.95
15503	2020-03-19	11015.24
15504	2021-12-15	6876.79
15505	2021-01-16	10862.68
15506	2022-08-08	7978.89
15507	2020-01-25	6868.42
15508	2020-09-17	13964.68
15509	2024-05-27	9118.29
15510	2020-09-01	17494.94
15511	2021-06-15	8303.45
15512	2023-02-24	14260.87
15513	2023-12-08	17488.27
15514	2024-07-21	10587.87
15515	2020-02-15	10165.30
15516	2024-10-17	13298.29
15517	2020-10-29	10725.31
15518	2022-12-24	15282.60
15519	2024-05-05	17779.66
15520	2021-02-02	7098.06
15521	2023-09-26	11101.63
15522	2021-04-02	11284.91
15523	2023-09-17	6680.27
15524	2020-09-21	6684.74
15525	2024-10-24	7721.14
15526	2022-06-28	15019.94
15527	2020-07-26	7701.57
15528	2023-05-22	7869.28
15529	2020-10-11	11896.08
15530	2021-04-21	15909.53
15531	2021-08-28	13614.38
15532	2020-01-09	12642.25
15533	2021-12-11	9895.42
15534	2020-03-12	14703.73
15535	2023-01-30	14042.45
15536	2024-06-22	8795.01
15537	2023-09-23	11547.69
15538	2020-02-23	12000.24
15539	2024-08-17	8594.31
15540	2020-10-04	16235.12
15541	2022-09-05	13991.54
15542	2023-05-06	13151.63
15543	2020-06-22	12252.11
15544	2024-10-09	16354.19
15545	2020-07-21	11481.46
15546	2021-09-29	6621.12
15547	2021-10-08	15482.33
15548	2023-05-27	13338.70
15549	2020-05-29	9809.31
15550	2020-08-15	7360.25
15551	2021-06-24	10371.33
15552	2022-03-25	7055.23
15553	2020-10-10	11713.00
15554	2024-07-15	7868.75
15555	2024-08-23	10058.25
15556	2021-11-15	10758.70
15557	2020-03-03	17571.66
15558	2024-06-12	14220.30
15559	2020-01-04	7043.97
15560	2020-07-26	12270.05
15561	2020-04-17	13761.32
15562	2020-10-10	15957.67
15563	2022-03-10	17609.84
15564	2022-03-28	8541.86
15565	2023-10-03	8089.11
15566	2024-01-28	11683.59
15567	2023-10-19	12911.45
15568	2022-10-03	15152.29
15569	2024-11-26	13101.61
15570	2024-07-25	9133.39
15571	2022-09-21	12392.59
15572	2022-12-15	14704.19
15573	2021-04-24	17650.17
15574	2020-01-09	15885.17
15575	2021-06-20	9398.88
15576	2020-11-13	8444.11
15577	2024-05-13	14851.21
15578	2020-11-29	14337.42
15579	2021-01-05	9375.58
15580	2020-02-12	14405.90
15581	2023-12-11	12388.95
15582	2023-07-17	11925.58
15583	2021-05-10	15667.51
15584	2020-04-06	8512.01
15585	2021-03-13	16156.59
15586	2021-06-14	10167.28
15587	2021-05-25	12304.93
15588	2023-04-28	7345.88
15589	2021-08-09	16309.45
15590	2020-08-14	16237.58
15591	2020-11-21	7242.24
15592	2024-10-19	16410.62
15593	2021-12-19	7925.20
15594	2020-08-19	7206.05
15595	2021-12-21	16635.18
15596	2020-04-04	16844.69
15597	2021-01-31	11057.35
15598	2020-09-24	12367.55
15599	2022-03-08	12663.31
15600	2020-08-27	15867.88
15601	2020-02-17	17089.45
15602	2022-02-18	16974.97
15603	2022-04-14	15708.97
15604	2020-11-14	12399.77
15605	2024-10-10	8640.69
15606	2020-03-09	15454.85
15607	2024-11-27	10367.89
15608	2021-06-16	11748.61
15609	2021-09-29	10140.52
15610	2021-08-18	9298.11
15611	2021-06-07	17176.26
15612	2023-07-06	17779.60
15613	2023-01-12	7078.88
15614	2024-06-20	11758.31
15615	2020-05-07	12999.05
15616	2020-08-20	9430.99
15617	2020-08-19	8937.93
15618	2024-09-12	15420.14
15619	2024-05-15	12717.36
15620	2024-08-11	15280.76
15621	2021-06-07	11464.73
15622	2023-10-16	15537.61
15623	2022-05-10	14183.07
15624	2022-09-18	6886.07
15625	2022-05-04	15016.85
15626	2022-04-05	9007.07
15627	2020-12-08	15509.22
15628	2020-05-14	10612.60
15629	2021-02-22	9144.97
15630	2024-09-21	6670.26
15631	2022-12-22	8205.72
15632	2021-09-01	12058.97
15633	2020-08-29	6837.03
15634	2020-10-12	9059.04
15635	2021-06-15	10322.28
15636	2024-05-25	7931.92
15637	2022-05-22	9094.61
15638	2020-03-17	16117.09
15639	2022-01-10	17916.62
15640	2022-03-26	16927.76
15641	2024-07-07	11777.33
15642	2023-07-22	16872.84
15643	2023-07-12	8640.92
15644	2024-01-28	7726.82
15645	2021-06-09	8381.30
15646	2020-06-11	9377.45
15647	2022-06-23	10811.51
15648	2020-10-18	15577.99
15649	2023-11-22	16006.86
15650	2021-03-19	10188.42
15651	2024-08-10	16824.46
15652	2024-09-09	12875.91
15653	2024-05-28	9917.05
15654	2022-08-20	17766.03
15655	2022-05-23	10266.24
15656	2024-06-22	17330.98
15657	2020-03-12	7194.62
15658	2022-03-16	12154.69
15659	2023-12-24	13082.65
15660	2023-03-10	16622.09
15661	2023-07-24	9620.57
15662	2023-10-28	16169.24
15663	2022-10-30	12979.47
15664	2021-01-17	11699.79
15665	2020-03-13	15492.18
15666	2020-01-11	7043.44
15667	2023-01-02	7945.45
15668	2020-02-27	7461.26
15669	2021-05-06	14678.82
15670	2022-12-06	8664.39
15671	2023-01-16	17388.32
15672	2021-07-21	13989.66
15673	2023-01-20	14459.32
15674	2020-06-21	7907.53
15675	2022-10-20	16687.51
15676	2023-05-22	7673.39
15677	2021-12-03	15635.79
15678	2023-11-02	14703.52
15679	2022-10-20	11157.91
15680	2022-07-17	10976.18
15681	2023-12-28	11276.29
15682	2023-03-04	15673.78
15683	2022-10-06	15818.12
15684	2023-03-25	12036.46
15685	2020-08-17	10299.50
15686	2020-01-22	9929.61
15687	2020-07-07	10581.58
15688	2021-01-18	7433.55
15689	2024-01-05	11342.54
15690	2023-11-02	10757.11
15691	2023-04-29	11195.45
15692	2022-09-19	17290.45
15693	2021-07-13	16637.76
15694	2021-05-27	8956.57
15695	2020-01-12	13060.69
15696	2023-06-24	16926.63
15697	2023-06-10	17259.84
15698	2021-05-30	7318.58
15699	2021-09-22	16990.37
15700	2022-07-15	11518.13
15701	2021-01-19	10878.93
15702	2020-05-26	14266.64
15703	2022-05-30	15543.60
15704	2021-07-23	16826.54
15705	2021-08-04	17217.46
15706	2023-01-12	12133.65
15707	2021-10-15	7733.04
15708	2021-09-21	17406.98
15709	2023-06-05	7753.34
15710	2022-04-06	18027.08
15711	2022-10-27	13434.66
15712	2024-02-19	7386.56
15713	2020-03-05	15143.09
15714	2022-06-25	12380.08
15715	2022-09-28	11529.65
15716	2024-01-01	9265.30
15717	2023-06-27	9074.96
15718	2024-01-09	9285.92
15719	2023-11-21	11312.93
15720	2023-04-16	8104.97
15721	2021-02-08	17087.75
15722	2020-08-03	14625.95
15723	2022-05-26	13991.02
15724	2024-02-12	7305.68
15725	2021-06-01	15366.03
15726	2020-09-19	16005.02
15727	2020-10-15	11152.24
15728	2023-10-16	14103.48
15729	2020-09-27	13139.43
15730	2022-08-22	8185.18
15731	2024-02-19	15962.36
15732	2021-04-04	16965.64
15733	2023-09-05	18012.87
15734	2024-04-15	12001.09
15735	2020-03-07	12518.75
15736	2024-05-28	13141.94
15737	2024-09-21	14314.50
15738	2020-04-28	15609.38
15739	2024-07-02	8983.73
15740	2021-04-15	15656.50
15741	2022-01-28	9612.59
15742	2022-03-27	9441.95
15743	2020-01-23	8531.09
15744	2024-07-22	6950.78
15745	2022-08-25	14105.89
15746	2021-12-16	17171.02
15747	2022-07-30	10088.26
15748	2021-10-06	12195.67
15749	2024-04-15	14304.84
15750	2024-08-22	10069.17
15751	2022-03-24	12953.49
15752	2021-05-10	8031.24
15753	2020-06-16	11700.40
15754	2023-09-12	17188.24
15755	2021-11-16	17081.88
15756	2020-05-03	10311.06
15757	2022-10-02	12241.81
15758	2024-05-26	18070.66
15759	2021-07-30	16090.70
15760	2020-04-30	14034.83
15761	2020-01-03	12354.12
15762	2021-10-09	14188.62
15763	2022-07-16	10428.15
15764	2021-07-28	9576.71
15765	2021-03-28	8526.22
15766	2020-07-01	13554.67
15767	2020-12-05	12733.08
15768	2021-01-24	17678.37
15769	2024-03-24	6926.51
15770	2020-08-26	7883.47
15771	2022-09-24	15333.84
15772	2023-06-19	17552.55
15773	2021-03-20	17168.13
15774	2024-12-03	17850.36
15775	2020-08-29	10295.67
15776	2021-02-27	13205.05
15777	2024-02-11	16558.26
15778	2022-02-23	15675.47
15779	2020-03-16	15543.91
15780	2020-03-22	11031.75
15781	2022-02-10	16293.49
15782	2023-04-24	14942.59
15783	2023-10-12	15166.91
15784	2021-06-02	17452.51
15785	2022-11-20	16475.01
15786	2024-12-03	17404.92
15787	2023-02-23	12968.64
15788	2020-04-18	10800.58
15789	2020-03-13	13189.51
15790	2023-08-26	9894.88
15791	2024-05-24	13620.64
15792	2023-12-13	16312.46
15793	2022-04-20	11745.01
15794	2023-02-18	10473.36
15795	2020-07-29	8054.91
15796	2024-07-19	10606.56
15797	2020-02-20	13842.20
15798	2023-06-13	16039.14
15799	2023-07-12	11057.68
15800	2021-04-10	12668.70
15801	2022-11-17	9581.30
15802	2021-03-16	13406.55
15803	2020-03-18	7356.88
15804	2024-04-30	9971.93
15805	2024-10-24	10519.08
15806	2021-03-15	10522.75
15807	2021-01-14	14306.01
15808	2023-12-20	15688.80
15809	2024-11-04	14185.12
15810	2021-03-18	17807.56
15811	2020-01-05	9201.91
15812	2020-12-25	8366.48
15813	2024-09-20	10760.80
15814	2022-11-12	17514.59
15815	2024-08-20	17366.99
15816	2020-09-18	11822.27
15817	2024-02-01	12591.41
15818	2021-09-12	12124.81
15819	2022-05-27	12927.65
15820	2020-01-10	10237.48
15821	2022-06-21	14941.82
15822	2021-11-19	10621.62
15823	2021-07-06	10070.18
15824	2021-03-07	16264.05
15825	2023-03-29	13807.29
15826	2023-10-08	8531.45
15827	2020-10-27	8292.77
15828	2023-06-07	7702.42
15829	2024-11-21	6830.53
15830	2021-06-08	7617.42
15831	2022-05-04	7714.16
15832	2022-09-19	11071.30
15833	2022-12-24	10688.27
15834	2023-11-08	17477.78
15835	2024-01-07	17866.49
15836	2022-12-25	13271.82
15837	2022-09-14	11316.16
15838	2023-07-23	7179.83
15839	2021-12-16	15278.63
15840	2020-07-21	15594.95
15841	2022-11-02	15513.84
15842	2024-03-28	14809.04
15843	2021-07-31	13809.96
15844	2020-02-26	14829.53
15845	2020-11-10	11192.62
15846	2021-05-24	9522.28
15847	2020-01-19	9759.26
15848	2024-01-30	17034.10
15849	2023-02-20	13591.93
15850	2023-11-26	13011.43
15851	2022-06-14	11888.19
15852	2022-06-29	9479.98
15853	2021-08-15	8055.35
15854	2020-10-14	15310.31
15855	2022-02-21	14075.70
15856	2022-03-20	18006.59
15857	2021-02-09	10435.47
15858	2020-05-13	15080.27
15859	2021-08-06	17599.57
15860	2023-09-21	17632.59
15861	2024-06-16	9953.71
15862	2021-05-28	7652.01
15863	2023-04-05	9417.87
15864	2021-12-31	11767.69
15865	2021-01-03	16852.20
15866	2023-11-26	7534.23
15867	2021-04-03	13342.90
15868	2023-10-31	11908.70
15869	2024-05-22	16886.78
15870	2024-05-16	17939.70
15871	2020-04-10	17722.94
15872	2020-08-20	12929.23
15873	2020-06-07	17294.74
15874	2021-06-23	6624.82
15875	2020-09-12	15447.67
15876	2022-01-21	7447.41
15877	2024-10-26	17272.61
15878	2022-02-24	8152.21
15879	2023-10-12	15043.42
15880	2022-01-13	9133.28
15881	2023-10-10	16989.16
15882	2024-02-20	8569.59
15883	2023-07-21	11187.02
15884	2024-10-31	13111.37
15885	2020-08-21	9057.91
15886	2023-10-29	10268.86
15887	2021-11-09	12277.57
15888	2020-12-16	7647.59
15889	2020-08-11	7983.31
15890	2022-11-06	13755.81
15891	2024-11-26	9051.83
15892	2023-07-17	7643.44
15893	2024-08-22	7016.02
15894	2023-03-12	16613.00
15895	2020-06-08	15301.75
15896	2021-09-10	12098.96
15897	2023-10-30	13617.08
15898	2022-01-27	12247.86
15899	2021-02-10	16451.04
15900	2023-12-23	9880.75
15901	2022-08-31	12947.42
15902	2020-07-02	12862.67
15903	2022-05-29	10513.35
15904	2023-11-07	8709.72
15905	2020-05-04	14150.27
15906	2021-07-06	16436.31
15907	2024-09-15	13402.79
15908	2024-07-01	14912.05
15909	2022-06-17	7161.39
15910	2023-10-10	10625.06
15911	2020-05-30	6622.98
15912	2021-04-19	14534.61
15913	2023-10-27	12224.69
15914	2021-10-28	7499.88
15915	2024-07-29	17726.85
15916	2021-07-21	9872.84
15917	2023-08-15	11774.24
15918	2024-08-20	13257.74
15919	2024-05-27	16132.51
15920	2023-11-26	12244.77
15921	2020-10-18	14764.77
15922	2020-12-04	6603.24
15923	2020-03-25	17438.41
15924	2021-10-11	13317.36
15925	2021-07-17	14563.16
15926	2020-02-21	9848.01
15927	2023-04-07	14001.29
15928	2023-11-24	11254.70
15929	2021-06-19	16887.43
15930	2023-08-19	14975.65
15931	2024-01-20	6877.21
15932	2023-12-29	15022.09
15933	2021-05-16	10651.52
15934	2020-04-21	17122.17
15935	2021-04-14	10878.19
15936	2023-07-24	16571.28
15937	2020-12-22	7042.26
15938	2020-11-17	16611.53
15939	2022-07-06	15693.20
15940	2021-10-25	14622.72
15941	2023-03-26	13697.30
15942	2024-07-07	8514.13
15943	2020-10-23	16364.53
15944	2023-12-06	16506.19
15945	2023-04-21	9422.49
15946	2023-08-03	15041.43
15947	2024-10-29	12184.77
15948	2023-04-15	11261.78
15949	2020-12-22	9339.05
15950	2023-07-07	11507.55
15951	2020-10-27	17596.56
15952	2022-06-02	9935.90
15953	2021-03-30	8779.13
15954	2023-09-12	18034.44
15955	2020-06-29	11700.44
15956	2020-10-05	8994.01
15957	2022-05-31	17152.95
15958	2020-04-27	13412.54
15959	2022-08-19	9043.47
15960	2021-03-28	7048.63
15961	2022-04-04	7646.75
15962	2022-04-04	14151.87
15963	2024-07-16	10342.52
15964	2023-11-05	11946.45
15965	2024-05-01	13439.72
15966	2022-05-06	8243.09
15967	2022-06-02	9561.29
15968	2022-07-23	14818.81
15969	2022-05-30	9644.16
15970	2022-07-27	15601.25
15971	2023-12-19	13065.26
15972	2024-01-19	17118.36
15973	2021-12-08	14965.62
15974	2024-11-09	8838.19
15975	2021-11-22	13776.43
15976	2021-01-23	15491.65
15977	2020-02-26	7087.43
15978	2020-03-02	9607.87
15979	2022-09-23	11934.46
15980	2020-02-13	13320.81
15981	2024-03-03	9432.42
15982	2022-02-10	17757.71
15983	2023-03-22	17939.06
15984	2023-01-02	7227.93
15985	2024-07-02	8463.49
15986	2022-11-27	8284.03
15987	2022-10-02	10928.50
15988	2024-03-20	10756.72
15989	2021-04-19	13538.24
15990	2021-04-25	6932.00
15991	2024-06-15	16730.50
15992	2024-03-31	11640.40
15993	2021-05-30	7877.77
15994	2021-03-30	9912.15
15995	2021-11-18	9660.56
15996	2021-08-24	11473.91
15997	2022-06-18	13353.58
15998	2020-04-07	14177.65
15999	2022-05-25	15901.15
16000	2020-02-11	15514.11
16001	2020-11-28	14947.19
16002	2024-03-24	14530.30
16003	2023-04-01	14914.14
16004	2020-11-02	9953.82
16005	2024-02-09	12273.78
16006	2021-05-15	11238.99
16007	2020-08-26	17979.99
16008	2024-02-01	15333.45
16009	2022-11-25	15481.02
16010	2020-10-30	15079.70
16011	2020-01-23	11794.71
16012	2020-04-20	12177.82
16013	2021-09-21	15124.26
16014	2021-10-01	13882.26
16015	2024-07-16	8307.20
16016	2020-01-22	11138.37
16017	2022-08-29	15594.04
16018	2024-08-06	8830.62
16019	2023-12-14	9582.90
16020	2021-11-04	12595.62
16021	2022-07-22	13784.18
16022	2021-05-07	6723.69
16023	2023-09-11	11954.34
16024	2023-10-28	10566.76
16025	2024-08-19	15515.90
16026	2021-01-03	8220.31
16027	2022-09-25	18044.11
16028	2021-06-26	17338.94
16029	2020-11-14	13974.04
16030	2020-12-18	9758.39
16031	2022-12-03	13191.69
16032	2022-01-19	15420.19
16033	2024-09-27	14531.54
16034	2020-03-16	12060.47
16035	2021-06-12	16553.05
16036	2023-03-25	17800.23
16037	2024-08-09	10779.38
16038	2021-05-31	8243.52
16039	2024-05-26	7866.80
16040	2020-04-03	8290.40
16041	2022-05-29	12175.86
16042	2024-03-18	9574.97
16043	2020-06-20	16557.05
16044	2020-01-27	11055.44
16045	2023-11-26	8684.95
16046	2021-01-17	15063.93
16047	2023-08-24	15042.19
16048	2023-09-09	14338.65
16049	2022-12-29	17614.32
16050	2022-09-02	10696.36
16051	2022-02-07	10209.67
16052	2023-01-26	16335.99
16053	2020-01-04	13166.18
16054	2023-12-29	17211.12
16055	2020-11-13	7373.06
16056	2024-09-05	10152.86
16057	2024-09-29	11493.29
16058	2020-02-11	8295.59
16059	2022-06-09	10789.30
16060	2023-06-11	15042.13
16061	2020-02-04	12576.60
16062	2024-09-12	11438.04
16063	2022-07-22	11183.86
16064	2024-09-06	16737.74
16065	2020-05-14	7085.40
16066	2022-03-18	10465.45
16067	2024-01-17	14632.35
16068	2021-07-11	9540.90
16069	2021-06-08	12733.95
16070	2024-01-17	14889.46
16071	2023-08-21	16385.40
16072	2023-12-10	14327.60
16073	2020-02-18	11843.82
16074	2020-07-18	9971.09
16075	2021-09-27	17137.88
16076	2020-07-17	17624.95
16077	2023-11-03	10732.59
16078	2023-01-31	7210.59
16079	2021-09-02	9297.25
16080	2023-09-25	16208.26
16081	2020-05-12	16025.55
16082	2023-12-20	12743.10
16083	2024-03-15	7508.46
16084	2021-09-14	9312.44
16085	2020-01-23	7572.60
16086	2024-01-20	14794.21
16087	2022-04-14	16995.82
16088	2021-09-05	9592.96
16089	2020-05-07	16429.11
16090	2023-11-28	9011.10
16091	2024-05-17	8898.87
16092	2021-12-15	12174.12
16093	2024-02-07	8464.27
16094	2024-09-30	11161.97
16095	2020-04-12	12082.16
16096	2020-04-02	11208.01
16097	2020-11-24	8298.08
16098	2021-04-29	17662.25
16099	2020-01-05	17029.78
16100	2023-02-25	16519.16
16101	2023-01-26	16674.82
16102	2023-08-12	10385.08
16103	2021-08-27	15745.40
16104	2020-02-22	16418.32
16105	2024-01-02	12493.90
16106	2023-02-06	7854.02
16107	2024-11-16	9064.69
16108	2024-11-03	8613.68
16109	2020-10-12	12110.04
16110	2024-03-09	18095.68
16111	2020-09-26	15213.51
16112	2024-11-06	15622.76
16113	2024-03-24	13858.10
16114	2022-01-13	14360.95
16115	2021-07-10	9435.26
16116	2024-04-28	16638.53
16117	2022-10-25	17584.59
16118	2020-05-03	11059.56
16119	2021-04-25	15704.02
16120	2021-02-06	10522.85
16121	2023-11-28	9917.53
16122	2021-09-11	7280.57
16123	2020-03-25	6949.29
16124	2020-12-20	11951.53
16125	2020-05-17	11567.08
16126	2022-07-25	8052.27
16127	2023-07-02	17867.53
16128	2023-04-21	18015.24
16129	2024-11-22	10733.37
16130	2023-03-06	17621.91
16131	2020-08-11	16405.64
16132	2024-03-21	17535.30
16133	2022-12-18	9310.87
16134	2023-10-14	16012.99
16135	2022-09-18	13608.44
16136	2020-04-06	8835.72
16137	2021-04-29	7139.09
16138	2024-05-20	6855.15
16139	2020-07-22	9703.40
16140	2022-02-02	9233.96
16141	2023-03-25	16879.59
16142	2023-04-22	10837.19
16143	2023-07-27	17607.63
16144	2022-10-20	9820.06
16145	2023-05-15	11851.88
16146	2024-10-03	14151.43
16147	2022-07-23	14644.46
16148	2023-12-21	17615.23
16149	2020-06-11	16743.58
16150	2024-01-08	6741.93
16151	2022-02-24	17147.01
16152	2024-06-11	16669.63
16153	2022-09-02	13463.23
16154	2021-05-01	17637.74
16155	2020-05-01	13171.42
16156	2022-07-20	9397.41
16157	2022-07-22	13344.16
16158	2023-09-12	11643.77
16159	2024-07-01	13917.79
16160	2021-04-23	8294.48
16161	2020-12-30	11553.98
16162	2024-09-23	13386.00
16163	2023-12-11	17573.90
16164	2020-06-30	10650.53
16165	2021-07-02	8477.87
16166	2021-10-16	13516.41
16167	2024-03-28	13114.35
16168	2021-12-19	6764.42
16169	2022-08-19	8519.69
16170	2020-06-18	7095.96
16171	2021-06-01	7340.25
16172	2021-09-01	8367.86
16173	2024-07-16	15367.16
16174	2024-11-18	10139.87
16175	2024-04-17	12458.29
16176	2024-06-29	8235.61
16177	2022-11-25	9143.50
16178	2020-02-15	15681.54
16179	2023-12-12	10242.87
16180	2024-08-20	10541.80
16181	2023-08-28	10468.80
16182	2023-04-08	15107.00
16183	2023-08-20	9409.43
16184	2023-09-30	15743.12
16185	2024-02-09	11649.83
16186	2021-09-21	16450.86
16187	2023-09-23	8611.87
16188	2020-09-07	14197.53
16189	2020-05-19	10989.46
16190	2020-03-24	8957.29
16191	2020-01-20	17142.05
16192	2020-08-02	17946.09
16193	2023-05-19	12842.54
16194	2021-10-30	14383.07
16195	2024-08-02	18041.09
16196	2020-06-11	9125.82
16197	2022-09-14	17093.20
16198	2020-09-02	12667.80
16199	2021-03-13	17421.81
16200	2023-10-28	14115.70
16201	2021-01-15	14581.84
16202	2023-04-17	11548.41
16203	2021-03-06	14797.51
16204	2020-05-01	15552.17
16205	2022-09-27	10210.50
16206	2021-09-17	9459.00
16207	2024-02-28	10428.58
16208	2020-02-09	9796.46
16209	2024-05-27	10677.18
16210	2021-01-22	14399.52
16211	2022-04-05	9022.45
16212	2020-07-27	15123.16
16213	2022-11-30	10118.20
16214	2020-08-06	16883.76
16215	2020-01-27	14739.94
16216	2022-09-17	9589.74
16217	2022-06-10	15374.91
16218	2021-12-31	8043.63
16219	2024-05-24	14908.68
16220	2023-09-02	14814.30
16221	2021-08-26	15759.81
16222	2024-07-23	13858.84
16223	2023-05-03	17417.91
16224	2020-11-25	12515.44
16225	2021-02-20	14188.82
16226	2024-08-01	13909.72
16227	2022-04-29	15131.47
16228	2024-09-17	7425.46
16229	2022-01-06	14293.67
16230	2024-10-04	11160.81
16231	2022-11-26	10217.21
16232	2024-03-09	17555.14
16233	2020-08-28	12187.31
16234	2022-05-28	13276.65
16235	2022-09-02	15604.77
16236	2020-11-26	13793.94
16237	2022-07-19	12066.81
16238	2023-07-23	17960.65
16239	2023-08-30	9054.80
16240	2022-07-24	13707.66
16241	2022-10-30	9338.44
16242	2021-12-13	17861.82
16243	2023-09-11	13305.89
16244	2020-03-20	15038.17
16245	2023-06-28	11018.43
16246	2023-06-10	8949.68
16247	2022-08-27	16407.52
16248	2022-04-22	13158.15
16249	2024-09-15	17362.39
16250	2022-03-21	11683.08
16251	2021-01-10	6628.90
16252	2021-05-27	14686.41
16253	2021-04-03	13490.71
16254	2021-03-30	7682.92
16255	2023-11-27	10983.92
16256	2020-07-08	9225.30
16257	2023-09-01	16500.39
16258	2022-05-22	8003.06
16259	2024-04-23	11050.78
16260	2023-11-22	11932.45
16261	2024-04-03	14330.62
16262	2021-02-23	7155.04
16263	2022-02-10	16871.02
16264	2022-09-06	10308.48
16265	2024-04-26	12656.27
16266	2020-01-20	16709.84
16267	2023-09-15	17767.20
16268	2022-04-01	11889.13
16269	2021-05-25	17187.46
16270	2024-10-26	10962.85
16271	2024-03-06	10423.82
16272	2024-03-10	16773.44
16273	2022-11-28	13502.32
16274	2021-02-01	9167.83
16275	2023-03-02	15878.03
16276	2024-05-19	7712.82
16277	2023-07-31	14862.03
16278	2020-12-20	8473.16
16279	2021-03-23	11360.59
16280	2020-03-30	7347.07
16281	2022-06-05	12975.60
16282	2020-11-26	7125.65
16283	2023-08-14	9365.33
16284	2020-11-22	17808.04
16285	2024-03-12	6780.21
16286	2020-08-26	9217.06
16287	2020-03-07	9955.62
16288	2021-07-14	17500.21
16289	2021-02-02	16845.53
16290	2020-01-03	15754.46
16291	2022-03-31	11346.51
16292	2023-06-04	16791.04
16293	2020-11-15	10829.70
16294	2020-05-26	12159.40
16295	2021-05-15	16929.84
16296	2020-03-27	13016.61
16297	2023-06-01	17104.84
16298	2021-12-01	14457.00
16299	2021-04-16	12164.63
16300	2022-06-13	14971.59
16301	2024-04-06	17431.20
16302	2020-10-15	17769.09
16303	2023-02-16	14748.24
16304	2024-07-02	11576.37
16305	2021-12-29	15212.38
16306	2023-02-27	15720.91
16307	2024-05-14	9928.24
16308	2024-09-30	10685.52
16309	2023-09-25	13195.27
16310	2024-08-11	8160.17
16311	2022-01-05	12894.74
16312	2020-07-06	16385.61
16313	2024-03-01	16866.33
16314	2022-04-07	12308.48
16315	2024-06-08	17711.01
16316	2022-03-04	9470.24
16317	2020-02-01	17746.82
16318	2023-01-26	10021.54
16319	2021-08-10	9553.97
16320	2021-11-10	16088.41
16321	2024-02-20	13127.56
16322	2021-01-17	9982.40
16323	2022-01-29	7199.02
16324	2022-04-17	7589.66
16325	2024-11-07	14981.26
16326	2022-02-11	15298.97
16327	2020-02-05	14570.11
16328	2024-02-27	13655.58
16329	2020-12-06	10535.93
16330	2021-10-11	9297.14
16331	2021-10-03	6928.90
16332	2022-01-05	7013.04
16333	2024-04-21	16633.60
16334	2020-11-20	17632.30
16335	2022-08-16	9805.05
16336	2020-09-24	7674.91
16337	2020-05-21	15205.93
16338	2024-03-02	12033.06
16339	2023-08-27	14108.65
16340	2022-10-19	15805.03
16341	2023-03-31	12656.42
16342	2024-09-25	16518.26
16343	2023-10-18	8791.93
16344	2023-10-29	8124.00
16345	2024-07-01	17880.86
16346	2022-09-01	12440.60
16347	2021-06-21	10166.82
16348	2022-05-06	12913.80
16349	2020-04-15	6678.23
16350	2022-08-12	16396.93
16351	2020-02-14	7337.69
16352	2021-10-24	8695.97
16353	2020-05-03	9096.24
16354	2022-03-08	13625.39
16355	2024-02-08	12327.48
16356	2022-06-05	15774.23
16357	2024-06-06	15404.27
16358	2021-09-23	16830.47
16359	2020-04-17	9835.52
16360	2022-12-26	16114.53
16361	2024-02-05	11382.82
16362	2020-08-23	13088.55
16363	2020-03-19	16280.48
16364	2024-09-18	9994.21
16365	2023-04-14	14513.76
16366	2021-09-28	11728.41
16367	2021-09-18	12165.81
16368	2022-12-27	12675.35
16369	2024-10-22	14766.99
16370	2021-04-19	17802.95
16371	2022-11-06	13956.93
16372	2024-03-15	7459.78
16373	2021-05-10	9036.10
16374	2022-03-06	6769.68
16375	2021-12-07	10289.12
16376	2022-11-05	10665.88
16377	2021-08-09	9220.06
16378	2023-03-24	14896.80
16379	2022-10-03	12713.99
16380	2021-09-17	16969.69
16381	2023-03-30	8796.83
16382	2020-10-30	7257.17
16383	2022-07-25	16367.01
16384	2024-01-12	8876.05
16385	2021-04-16	11491.11
16386	2020-04-27	13261.59
16387	2024-02-03	17748.75
16388	2020-02-10	14719.74
16389	2024-09-02	6854.30
16390	2021-05-09	7223.37
16391	2022-02-17	12739.88
16392	2022-02-17	17887.10
16393	2022-04-29	12962.38
16394	2021-02-04	14002.67
16395	2022-03-28	13813.08
16396	2022-09-05	17199.43
16397	2024-05-03	12231.73
16398	2020-03-12	15415.36
16399	2022-11-27	16459.97
16400	2022-05-30	13447.69
16401	2020-04-14	7510.98
16402	2021-09-23	13346.42
16403	2021-10-01	8865.61
16404	2021-12-18	9431.28
16405	2022-12-08	15502.91
16406	2023-07-30	16348.14
16407	2020-10-29	6739.99
16408	2020-05-13	9483.19
16409	2020-02-18	8848.20
16410	2022-07-01	13875.77
16411	2021-02-04	8605.50
16412	2022-08-20	8409.34
16413	2022-06-01	10829.17
16414	2023-01-18	8170.99
16415	2022-12-28	6994.52
16416	2020-03-31	13768.43
16417	2024-07-17	8951.04
16418	2021-09-11	8055.61
16419	2023-04-07	15658.55
16420	2023-09-23	13295.90
16421	2023-08-17	15220.97
16422	2024-06-02	15788.73
16423	2020-03-12	11760.41
16424	2020-08-16	13073.19
16425	2022-04-12	10570.91
16426	2024-02-17	10261.76
16427	2023-07-10	15887.71
16428	2020-04-29	15125.31
16429	2020-11-28	11895.25
16430	2024-06-15	6839.03
16431	2023-03-01	16891.27
16432	2023-10-12	7162.60
16433	2020-10-09	8307.35
16434	2021-12-26	13689.36
16435	2024-01-24	7787.73
16436	2023-02-14	8268.91
16437	2024-03-25	15225.52
16438	2024-08-27	17375.26
16439	2024-04-16	15502.67
16440	2021-09-18	8889.78
16441	2021-02-06	9439.48
16442	2020-11-28	17548.91
16443	2022-02-14	16289.09
16444	2022-01-19	10699.90
16445	2021-11-21	15325.36
16446	2022-01-18	10685.99
16447	2020-05-14	7277.61
16448	2024-07-08	10623.17
16449	2023-08-28	9711.71
16450	2023-07-22	10457.22
16451	2023-09-23	15096.61
16452	2023-04-02	17433.37
16453	2021-11-18	10329.83
16454	2020-10-01	15158.20
16455	2023-10-21	12640.44
16456	2020-08-05	16449.52
16457	2024-06-18	8227.12
16458	2021-08-28	16837.78
16459	2020-12-14	12014.28
16460	2023-08-15	17928.95
16461	2021-08-20	15348.70
16462	2022-03-20	7877.20
16463	2022-12-27	11224.09
16464	2022-12-15	10115.75
16465	2020-01-23	13717.14
16466	2022-07-09	12415.03
16467	2021-11-15	17448.01
16468	2022-08-03	10107.76
16469	2020-08-10	13845.05
16470	2022-03-17	9259.44
16471	2024-06-30	13896.97
16472	2021-09-27	17382.61
16473	2020-09-23	10614.53
16474	2021-03-04	7619.09
16475	2023-03-31	12754.20
16476	2024-05-24	13250.85
16477	2021-07-30	17007.48
16478	2021-09-16	16290.16
16479	2024-10-24	10631.70
16480	2022-06-29	12794.53
16481	2024-01-29	12436.28
16482	2024-06-16	13432.66
16483	2022-11-27	17345.79
16484	2020-04-08	14620.55
16485	2021-11-16	10578.14
16486	2020-04-08	10125.39
16487	2022-02-12	10172.88
16488	2023-03-09	13713.83
16489	2021-02-09	14731.03
16490	2023-09-03	7134.15
16491	2024-06-28	15820.49
16492	2020-01-21	6610.83
16493	2022-08-25	14828.63
16494	2020-09-28	6799.38
16495	2020-08-21	17582.96
16496	2023-02-18	15421.83
16497	2020-08-17	13785.59
16498	2021-01-18	7026.74
16499	2021-10-05	7479.81
16500	2021-01-08	14405.11
16501	2022-02-14	12881.06
16502	2021-01-13	13809.34
16503	2022-03-13	16735.44
16504	2024-10-05	14852.19
16505	2020-02-05	12811.36
16506	2020-12-14	8456.64
16507	2024-09-08	7131.74
16508	2020-10-02	12949.32
16509	2022-04-04	10720.59
16510	2023-10-15	8741.24
16511	2022-10-13	13696.22
16512	2022-04-14	8666.19
16513	2022-10-24	15358.99
16514	2023-02-14	16327.55
16515	2021-11-23	11679.06
16516	2020-06-24	10977.34
16517	2023-08-22	8300.04
16518	2024-02-26	10513.95
16519	2024-04-27	16285.89
16520	2022-07-10	17770.71
16521	2021-05-28	10882.43
16522	2020-10-26	15082.71
16523	2020-06-23	11135.37
16524	2020-10-23	17661.95
16525	2022-10-28	7514.31
16526	2021-12-07	15349.67
16527	2024-05-17	13633.48
16528	2023-09-06	17458.76
16529	2020-02-28	14718.81
16530	2024-07-08	16254.77
16531	2020-02-16	14960.24
16532	2024-09-06	8464.92
16533	2022-07-28	15235.00
16534	2022-02-12	14927.83
16535	2024-08-27	14445.56
16536	2021-09-12	16905.79
16537	2024-11-08	8558.89
16538	2022-12-12	12947.61
16539	2020-03-20	13029.98
16540	2022-03-07	7739.08
16541	2020-05-16	15914.56
16542	2022-07-06	10375.53
16543	2023-04-22	14552.04
16544	2023-08-03	8731.05
16545	2022-11-20	7981.03
16546	2021-09-07	17175.92
16547	2021-05-14	11470.67
16548	2024-07-26	8305.63
16549	2022-08-05	7099.93
16550	2023-08-24	14739.20
16551	2022-05-24	9846.74
16552	2024-11-16	6984.50
16553	2021-10-08	17087.86
16554	2024-07-23	9358.48
16555	2023-04-17	8150.75
16556	2023-12-08	9005.85
16557	2024-05-20	15552.98
16558	2021-07-18	11366.22
16559	2020-10-28	9313.54
16560	2023-05-17	14288.78
16561	2020-10-29	7008.82
16562	2024-09-26	6934.05
16563	2023-02-08	8936.77
16564	2022-07-01	9846.11
16565	2022-02-13	13045.23
16566	2024-11-09	11421.74
16567	2020-04-12	14893.83
16568	2023-01-24	8630.20
16569	2022-07-18	14072.60
16570	2022-05-08	13980.58
16571	2023-09-27	10756.07
16572	2021-05-12	8117.99
16573	2024-06-03	13481.07
16574	2020-08-09	12999.28
16575	2023-11-14	12674.37
16576	2023-07-30	12561.64
16577	2020-02-20	9559.77
16578	2020-06-15	17535.47
16579	2020-04-14	12277.06
16580	2020-09-01	14271.05
16581	2022-03-23	10345.95
16582	2020-01-22	9718.88
16583	2021-04-03	10572.68
16584	2022-10-09	7941.59
16585	2020-07-08	13558.35
16586	2023-05-31	9723.21
16587	2020-04-08	14675.95
16588	2021-12-27	9308.89
16589	2023-10-02	12862.74
16590	2023-11-16	16133.15
16591	2022-05-26	6654.94
16592	2023-10-20	12348.03
16593	2024-01-12	12018.52
16594	2021-02-04	8687.50
16595	2020-02-23	9231.58
16596	2020-04-03	14942.76
16597	2020-08-15	17811.73
16598	2021-11-06	6853.96
16599	2023-11-19	7473.48
16600	2024-10-15	9064.33
16601	2020-07-26	7799.69
16602	2022-02-05	12798.30
16603	2024-07-07	17419.62
16604	2021-02-22	6953.14
16605	2021-07-09	8717.24
16606	2021-05-12	9326.25
16607	2021-09-11	14567.79
16608	2020-02-01	15973.37
16609	2020-08-21	10847.73
16610	2020-04-26	12654.06
16611	2021-08-13	15144.19
16612	2020-02-26	17754.08
16613	2020-11-12	16842.82
16614	2020-09-17	7732.67
16615	2024-05-31	18073.97
16616	2024-01-21	17471.42
16617	2021-02-19	8580.39
16618	2021-11-23	15741.67
16619	2024-10-10	10177.44
16620	2021-07-23	12532.22
16621	2022-04-23	8697.34
16622	2022-02-05	15515.66
16623	2020-10-09	12786.96
16624	2024-05-04	6885.36
16625	2024-03-18	11567.05
16626	2021-11-19	6601.94
16627	2022-10-02	17833.57
16628	2024-02-24	13598.18
16629	2022-08-13	8570.45
16630	2023-12-27	12945.78
16631	2023-06-20	12791.14
16632	2022-02-15	10536.46
16633	2021-06-16	9012.19
16634	2022-06-14	15707.61
16635	2022-01-01	14897.84
16636	2020-08-29	11600.90
16637	2021-07-14	14891.67
16638	2020-06-29	12440.89
16639	2022-11-08	12277.50
16640	2022-03-01	15626.61
16641	2021-12-01	15495.85
16642	2022-11-20	9929.51
16643	2023-01-06	6762.61
16644	2022-06-25	14366.60
16645	2023-04-30	16973.15
16646	2022-12-25	14061.43
16647	2022-05-30	13545.07
16648	2021-04-01	9877.18
16649	2023-05-18	7663.76
16650	2021-08-11	16727.71
16651	2022-07-01	11788.87
16652	2022-01-03	14624.67
16653	2020-11-02	15448.38
16654	2021-09-10	11943.51
16655	2022-03-02	12990.67
16656	2023-11-12	13250.65
16657	2021-07-05	7253.25
16658	2020-02-14	12704.65
16659	2024-11-10	10020.20
16660	2023-11-09	8046.26
16661	2022-10-12	8794.31
16662	2021-08-03	14336.73
16663	2021-01-17	16930.24
16664	2020-12-20	12785.02
16665	2022-09-11	17372.87
16666	2024-02-22	12652.08
16667	2022-03-10	7567.97
16668	2021-12-20	16868.83
16669	2022-03-10	10133.33
16670	2021-01-03	10846.08
16671	2023-11-22	7048.96
16672	2021-10-30	7627.30
16673	2021-01-15	14225.98
16674	2024-04-21	6735.55
16675	2022-04-22	7856.15
16676	2021-08-09	11099.81
16677	2021-07-02	8692.58
16678	2021-08-18	11368.08
16679	2023-09-21	12922.67
16680	2021-01-07	7279.04
16681	2024-11-24	17734.89
16682	2021-05-29	11688.47
16683	2023-12-18	12460.04
16684	2021-07-27	8889.74
16685	2020-10-02	7220.80
16686	2022-07-21	17552.24
16687	2024-03-14	12897.45
16688	2020-10-10	8629.23
16689	2021-06-12	6802.84
16690	2020-08-10	9904.59
16691	2021-06-28	11465.75
16692	2023-05-07	7531.73
16693	2024-02-01	16931.46
16694	2022-07-28	7239.26
16695	2024-05-18	11787.23
16696	2021-09-24	13183.24
16697	2024-04-03	10846.40
16698	2023-11-17	7339.05
16699	2021-02-01	11193.73
16700	2022-02-01	17112.17
16701	2022-10-18	17806.76
16702	2023-08-27	9028.27
16703	2023-04-12	16043.53
16704	2024-01-19	7531.66
16705	2020-05-08	17595.96
16706	2020-02-09	15614.18
16707	2023-04-15	12477.50
16708	2024-09-25	16924.19
16709	2023-10-24	8946.13
16710	2020-09-09	8578.81
16711	2022-11-27	17651.26
16712	2021-07-13	13848.58
16713	2023-02-19	13079.39
16714	2020-11-21	9797.91
16715	2024-08-15	9409.72
16716	2021-03-03	14494.88
16717	2023-04-30	8998.97
16718	2024-11-02	14256.33
16719	2020-06-26	12985.26
16720	2022-03-05	11699.66
16721	2023-04-20	13039.32
16722	2023-09-03	18056.20
16723	2022-09-15	6961.80
16724	2020-07-22	10113.56
16725	2020-01-21	6620.90
16726	2021-05-27	10565.46
16727	2023-05-15	6910.98
16728	2024-05-06	7885.26
16729	2023-02-04	13769.73
16730	2020-06-27	7206.92
16731	2024-08-01	17010.01
16732	2020-12-06	12960.50
16733	2021-05-31	11471.61
16734	2022-08-27	11688.07
16735	2023-10-21	10966.37
16736	2023-08-03	11103.07
16737	2023-07-10	16890.93
16738	2020-01-14	18058.11
16739	2021-03-09	17608.28
16740	2022-11-21	11865.89
16741	2023-04-23	15859.11
16742	2021-09-12	7273.77
16743	2020-05-24	14057.26
16744	2023-04-13	16761.25
16745	2021-09-28	11939.63
16746	2020-01-27	11125.17
16747	2024-11-17	12907.39
16748	2020-04-05	7039.81
16749	2023-07-25	8705.56
16750	2020-01-19	14544.53
16751	2023-05-10	13346.94
16752	2023-02-05	18074.43
16753	2022-12-30	12585.52
16754	2024-02-23	10806.92
16755	2020-05-29	8302.49
16756	2023-03-19	10950.52
16757	2022-07-09	7752.31
16758	2024-07-10	11368.44
16759	2024-06-06	9207.61
16760	2020-12-17	13095.29
16761	2024-05-02	14106.49
16762	2024-05-14	13974.10
16763	2022-05-19	12703.14
16764	2024-08-12	6682.13
16765	2023-06-28	14591.51
16766	2022-09-09	8527.41
16767	2023-03-27	13602.68
16768	2021-03-21	10118.42
16769	2023-06-11	11043.27
16770	2021-07-28	7735.96
16771	2020-04-18	7554.69
16772	2022-09-09	12546.11
16773	2021-12-07	13173.96
16774	2022-03-14	15630.84
16775	2020-09-08	6983.95
16776	2024-03-20	16311.04
16777	2021-12-13	10210.10
16778	2021-05-17	15243.74
16779	2020-05-04	6766.41
16780	2022-02-16	15728.73
16781	2022-03-06	9870.52
16782	2020-10-06	11871.50
16783	2023-09-27	8471.03
16784	2024-02-24	13909.06
16785	2021-04-25	15803.39
16786	2021-03-23	10267.99
16787	2022-05-12	16764.54
16788	2023-05-10	9162.50
16789	2024-04-08	11584.11
16790	2021-12-24	16510.58
16791	2021-11-22	7335.96
16792	2021-04-04	11412.41
16793	2024-10-09	16458.63
16794	2020-07-14	10062.17
16795	2024-10-08	10734.07
16797	2021-06-13	16105.59
16798	2023-06-26	14891.21
16799	2022-03-31	11078.07
16800	2021-08-11	9045.02
16801	2023-01-12	7313.41
16802	2024-05-18	14794.95
16803	2020-09-24	11139.32
16804	2023-10-21	12604.28
16805	2022-07-08	17921.32
16806	2021-07-28	10580.14
16807	2022-07-29	7417.59
16808	2023-10-16	13798.86
16809	2023-07-21	16305.52
16810	2022-06-22	17321.97
16811	2022-12-31	15328.51
16812	2024-04-16	7747.43
16813	2020-07-01	9740.94
16814	2020-05-05	10224.74
16815	2020-04-27	10048.47
16816	2021-01-12	17970.98
16817	2021-07-31	9032.45
16818	2021-12-13	17584.84
16819	2023-03-05	11531.50
16820	2022-06-29	16276.44
16821	2021-07-27	17199.61
16822	2020-08-13	12016.04
16823	2020-02-12	8192.18
16824	2023-08-02	15850.81
16825	2024-08-07	12726.82
16826	2023-02-13	15726.82
16827	2022-11-14	17602.49
16828	2022-03-03	9830.53
16829	2023-10-28	13551.19
16830	2021-09-22	7483.16
16831	2023-03-24	7273.25
16832	2020-07-18	11366.39
16833	2020-03-25	11539.50
16834	2021-01-09	12021.29
16835	2022-02-22	12200.67
16836	2021-02-28	15981.65
16837	2021-06-20	9644.65
16838	2021-07-04	10034.37
16839	2020-06-05	11201.39
16840	2020-06-22	8693.48
16841	2024-10-14	10113.39
16842	2022-01-18	10099.54
16843	2023-07-12	18056.47
16844	2020-12-15	12513.52
16845	2020-04-15	17418.10
16846	2023-01-31	12241.06
16847	2021-06-04	8916.91
16848	2021-08-28	14048.07
16849	2020-05-01	10061.39
16850	2020-11-29	17728.14
16851	2022-01-06	7957.43
16852	2022-11-18	7023.38
16853	2023-09-10	14870.19
16854	2023-11-02	11888.35
16855	2022-09-19	8144.45
16856	2021-06-14	13811.32
16857	2023-07-04	16602.04
16858	2024-06-24	8595.31
16859	2022-12-31	17897.32
16860	2021-09-01	11555.70
16861	2021-08-04	13630.03
16862	2022-09-15	7809.63
16863	2024-01-29	7507.54
16864	2020-10-17	17043.81
16865	2021-06-06	7776.06
16866	2021-03-23	13364.63
16867	2021-04-20	12149.19
16868	2020-04-10	7879.71
16869	2024-03-23	13843.35
16870	2024-06-29	8811.20
16871	2024-10-22	9960.52
16872	2023-05-28	13804.47
16873	2020-03-02	9063.68
16874	2021-07-02	6678.15
16875	2020-06-11	12824.78
16876	2023-01-06	12764.03
16877	2024-09-03	16434.19
16878	2023-10-17	6844.88
16879	2024-02-18	14703.86
16880	2023-12-22	14201.79
16881	2020-05-26	11214.43
16882	2021-12-27	9618.59
16883	2023-05-25	16824.14
16884	2020-01-17	12048.00
16885	2023-05-18	13772.53
16886	2023-10-28	8785.04
16887	2022-06-09	8379.40
16888	2020-02-25	7434.57
16889	2020-09-03	13821.52
16890	2024-04-18	15192.26
16891	2024-06-29	6681.51
16892	2021-06-15	10787.08
16893	2022-03-03	13923.98
16894	2020-06-19	17485.41
16895	2020-05-14	15033.60
16896	2020-11-27	17274.60
16897	2020-04-23	9475.29
16898	2022-03-13	10239.82
16899	2021-03-10	14917.24
16900	2020-01-23	17148.44
16901	2020-09-13	11796.87
16902	2022-08-09	10052.62
16903	2023-07-04	17083.34
16904	2020-08-24	12398.45
16905	2024-02-13	14448.65
16906	2022-09-19	16690.45
16907	2023-08-02	15856.83
16908	2022-10-01	12610.88
16909	2024-09-27	12195.53
16910	2020-10-16	9085.32
16911	2022-10-08	11528.46
16912	2021-02-02	6964.24
16913	2023-03-08	8506.49
16914	2024-05-10	11173.26
16915	2024-12-05	9530.90
16916	2022-08-23	13852.33
16917	2022-11-29	15052.48
16918	2023-10-10	13638.96
16919	2023-06-10	15350.99
16920	2022-05-20	13239.68
16921	2020-03-11	8758.21
16922	2020-09-22	11652.14
16923	2024-06-20	15214.20
16924	2023-04-15	13021.14
16925	2020-02-28	6735.46
16926	2022-12-13	15726.07
16927	2020-04-12	12169.48
16928	2022-09-16	12971.63
16929	2021-06-10	12821.27
16930	2020-01-09	14676.23
16931	2020-06-11	16988.03
16932	2020-01-20	10920.17
16933	2021-03-20	12236.25
16934	2023-12-23	10567.61
16935	2022-12-25	9518.88
16936	2021-09-29	10646.35
16937	2022-12-09	15577.90
16938	2020-12-15	11477.67
16939	2020-02-21	12865.18
16940	2021-08-23	16488.27
16941	2020-07-06	16202.45
16942	2021-07-31	17060.30
16943	2022-12-28	15715.29
16944	2023-10-11	16165.45
16945	2021-10-12	11213.92
16946	2024-03-06	11750.17
16947	2020-09-03	17861.64
16948	2022-08-20	10258.21
16949	2022-08-04	15933.32
16950	2020-10-01	7082.35
16951	2021-11-12	8193.50
16952	2022-04-25	9027.36
16953	2021-11-25	11654.94
16954	2021-09-22	18026.71
16955	2021-04-14	10922.33
16956	2021-11-16	8090.17
16957	2021-11-30	9048.48
16958	2024-07-02	10619.47
16959	2022-01-16	15397.21
16960	2024-11-27	15136.22
16961	2020-05-18	17033.40
16962	2021-07-11	15379.05
16963	2024-06-03	7326.08
16964	2021-10-03	16714.60
16965	2022-10-29	10701.97
16966	2022-03-13	12885.80
16967	2023-08-03	18075.70
16968	2023-06-09	15213.62
16969	2023-03-22	8262.67
16970	2024-01-04	15055.49
16971	2024-10-06	14659.21
16972	2021-03-30	9555.25
16973	2023-08-14	14645.16
16974	2020-01-06	17447.31
16975	2022-07-25	15869.06
16976	2020-10-28	17912.32
16977	2023-07-30	15014.80
16978	2021-10-21	12887.10
16979	2021-08-28	9967.80
16980	2020-06-05	16167.27
16981	2021-07-23	14614.25
16982	2024-04-07	9125.78
16983	2023-02-16	14940.95
16984	2023-09-22	13116.40
16985	2022-02-12	7404.33
16986	2022-12-05	12881.31
16987	2022-12-25	17078.69
16988	2024-04-07	11217.67
16989	2023-11-18	7258.99
16990	2021-08-05	15301.56
16991	2022-07-19	6611.60
16992	2023-04-23	11625.20
16993	2020-06-19	8346.24
16994	2023-12-16	14263.72
16995	2021-03-13	15405.43
16996	2024-03-14	15369.64
16997	2022-09-11	16939.81
16998	2024-01-07	7944.34
16999	2023-04-15	12046.96
17000	2024-10-22	14386.49
17001	2021-01-14	17678.15
17002	2020-08-19	11817.45
17003	2022-01-30	14938.26
17004	2021-09-28	8933.96
17005	2021-11-04	13239.93
17006	2023-01-05	6819.92
17007	2021-10-20	14900.95
17008	2020-10-31	9363.37
17009	2023-06-09	7266.52
17010	2024-06-25	12205.88
17011	2021-07-18	9004.94
17012	2020-09-29	10750.57
17013	2022-05-08	11888.22
17014	2023-10-18	8056.81
17015	2023-08-28	15149.65
17016	2022-07-12	16335.80
17017	2023-10-22	14358.23
17018	2020-04-07	8765.17
17019	2021-04-08	11406.67
17020	2020-05-01	9964.88
17021	2024-10-09	13828.66
17022	2021-12-01	9589.92
17023	2023-12-23	11805.59
17024	2021-12-10	12486.18
17025	2020-08-22	13039.04
17026	2023-05-22	10875.14
17027	2022-04-03	6604.70
17028	2022-03-08	15748.86
17029	2022-11-03	8945.16
17030	2022-03-14	16990.30
17031	2020-09-23	7273.24
17032	2020-05-13	11219.82
17033	2021-06-01	10754.17
17034	2022-09-05	8369.04
17035	2021-07-26	14634.20
17036	2021-11-02	16913.43
17037	2022-02-01	10261.02
17038	2020-09-21	10438.82
17039	2020-06-26	18055.28
17040	2024-10-17	9789.48
17041	2020-11-18	7861.99
17042	2021-09-25	8764.73
17043	2021-11-25	9603.52
17044	2021-08-20	9121.06
17045	2021-05-20	8092.07
17046	2023-09-02	10644.57
17047	2021-06-01	16214.16
17048	2021-10-30	9578.24
17049	2023-04-10	12898.57
17050	2021-03-04	7627.79
17051	2024-10-01	8104.02
17052	2020-03-31	13974.73
17053	2024-05-02	14011.31
17054	2022-06-12	8482.24
17055	2022-04-25	8247.82
17056	2020-04-14	8344.44
17057	2021-06-30	16196.71
17058	2024-08-05	8861.41
17059	2022-04-02	10694.17
17060	2024-04-16	11578.23
17061	2020-03-20	10442.62
17062	2024-10-23	11594.61
17063	2021-06-06	9632.39
17064	2020-03-05	11359.64
17065	2024-10-24	17929.76
17066	2022-09-12	11539.70
17067	2021-08-19	9738.57
17068	2021-02-07	7161.88
17069	2021-04-18	10162.46
17070	2023-04-25	11882.44
17071	2022-03-05	9410.91
17072	2020-05-11	6628.95
17073	2021-12-07	17251.25
17074	2020-02-23	7663.44
17075	2021-11-06	14943.09
17076	2020-07-18	8784.22
17077	2023-05-23	8099.09
17078	2024-03-17	9504.94
17079	2023-05-11	11980.69
17080	2022-06-09	11857.46
17081	2024-11-15	11988.95
17082	2023-03-15	11976.52
17083	2021-04-21	11470.68
17084	2020-10-12	10285.52
17085	2024-02-28	15193.92
17086	2023-03-02	12172.08
17087	2022-09-12	7455.98
17088	2021-10-17	17133.02
17089	2024-08-13	10163.99
17090	2023-12-14	8140.35
17091	2021-01-07	17747.75
17092	2023-08-27	14036.82
17093	2024-11-13	18028.55
17094	2020-11-14	15332.25
17095	2021-08-23	7184.31
17096	2024-07-05	13720.96
17097	2023-01-26	15553.65
17098	2022-03-16	8771.69
17099	2022-09-23	7304.62
17100	2020-10-24	14358.40
17101	2022-09-06	12895.62
17102	2020-10-08	16342.49
17103	2021-05-11	12525.15
17104	2021-06-26	12310.81
17105	2023-04-14	6937.98
17106	2024-07-25	17496.99
17107	2020-10-12	13993.60
17108	2023-08-16	14540.40
17109	2022-06-20	8625.81
17110	2023-06-01	13268.48
17111	2020-05-02	17676.42
17112	2024-10-24	11792.39
17113	2022-08-30	14001.50
17114	2024-09-04	10888.65
17115	2024-07-03	11175.94
17116	2024-10-18	11325.71
17117	2022-02-04	14712.75
17118	2020-07-29	7817.72
17119	2020-07-26	10732.90
17120	2020-10-05	13358.17
17121	2020-07-22	17443.66
17122	2023-04-03	12893.39
17123	2021-08-23	7922.95
17124	2020-03-12	11115.99
17126	2022-08-30	10701.15
17127	2022-08-12	9527.36
17128	2021-09-09	8141.54
17129	2023-07-12	9269.41
17130	2023-12-20	6949.23
17131	2021-11-05	15421.24
17132	2024-02-16	8919.11
17133	2022-03-19	17930.20
17134	2021-10-05	17856.56
17135	2022-11-24	14943.43
17136	2020-06-12	17498.86
17137	2020-10-05	10615.50
17138	2024-01-17	14513.32
17139	2023-08-17	10077.85
17140	2020-08-25	12232.63
17141	2023-06-22	10780.28
17142	2020-11-04	9900.20
17143	2022-04-07	9863.34
17144	2020-01-16	15218.93
17145	2023-03-18	15172.26
17146	2021-03-04	8753.38
17147	2022-08-10	11586.24
17148	2020-02-25	17738.27
17149	2021-01-13	9353.09
17150	2023-10-08	10086.07
17151	2022-05-23	17387.81
17152	2023-02-10	6603.36
17153	2024-08-09	16270.93
17154	2022-06-20	15016.15
17155	2020-02-25	15672.43
17156	2020-04-03	12644.56
17157	2020-08-10	6666.44
17158	2021-05-05	13120.18
17159	2023-02-10	11766.12
17160	2023-09-29	6847.18
17161	2024-07-07	14681.27
17162	2023-05-01	8254.81
17163	2023-03-25	17871.18
17164	2022-03-06	17352.26
17165	2021-02-19	14702.27
17166	2023-03-22	7806.36
17167	2024-01-15	9254.08
17168	2022-04-18	13817.80
17169	2021-05-11	8964.11
17170	2021-05-15	15975.36
17171	2023-06-26	15407.64
17172	2024-10-04	17561.66
17173	2021-03-04	16144.86
17174	2021-04-27	14419.45
17175	2023-06-13	13647.49
17176	2023-06-13	10156.64
17177	2022-12-12	9826.94
17178	2022-11-14	17190.45
17179	2023-05-14	14694.39
17180	2023-04-12	9360.49
17181	2020-10-24	14130.48
17182	2023-04-22	17113.96
17183	2023-02-10	15733.42
17184	2021-04-27	8415.42
17185	2021-03-15	10730.40
17186	2022-08-26	8572.00
17187	2022-05-20	11886.51
17188	2022-12-17	12252.17
17189	2023-11-14	16162.72
17190	2020-11-15	17008.52
17191	2021-08-22	9013.42
17192	2024-07-31	14513.62
17193	2022-04-03	10643.57
17194	2022-02-04	15963.47
17195	2022-04-14	11936.75
17196	2021-11-15	9307.63
17197	2021-03-17	7000.82
17198	2020-06-22	11169.45
17199	2020-03-05	14373.47
17200	2023-10-05	12538.39
17201	2024-11-26	9821.57
17202	2023-01-15	13051.48
17203	2024-04-25	15535.63
17204	2021-09-30	10441.54
17205	2024-05-16	12958.73
17206	2021-10-06	9715.56
17207	2024-09-03	12588.15
17208	2024-04-05	15682.33
17209	2024-06-30	8098.11
17210	2020-02-20	7677.32
17211	2024-05-30	14827.37
17212	2021-06-21	15784.95
17213	2024-08-24	11910.65
17214	2024-03-29	17741.85
17215	2022-12-14	10090.83
17216	2024-05-30	6617.55
17217	2021-12-17	11934.03
17218	2020-02-07	10864.25
17219	2022-09-26	8419.31
17220	2022-11-16	15451.73
17221	2021-02-22	9116.45
17222	2024-07-14	10484.23
17223	2022-08-12	16904.65
17224	2022-12-03	12621.96
17225	2020-03-09	16296.99
17226	2020-01-13	10120.51
17227	2020-06-23	12717.67
17228	2023-03-11	12489.95
17229	2020-11-17	14871.90
17230	2021-04-09	10888.20
17231	2023-08-26	8221.11
17232	2024-03-01	9809.15
17233	2022-08-05	13714.69
17234	2020-12-10	7540.55
17235	2021-10-03	17832.48
17236	2020-04-08	8011.33
17237	2023-09-19	13871.05
17238	2021-07-01	11867.29
17239	2020-01-04	14746.75
17240	2024-01-20	12617.24
17241	2021-08-22	14059.68
17242	2024-04-23	13865.17
17243	2022-04-03	10531.85
17244	2024-08-08	7017.69
17245	2023-08-09	14568.56
17246	2021-05-12	7182.21
17247	2024-03-22	10228.88
17248	2022-10-09	9912.89
17249	2021-11-04	14442.52
17250	2020-07-28	10915.90
17251	2020-01-08	16334.02
17252	2023-12-09	16837.91
17253	2023-05-04	15345.99
17254	2022-04-10	17136.04
17255	2022-01-13	8596.04
17256	2021-12-15	13909.79
17257	2021-04-20	6627.51
17258	2024-01-28	9779.24
17259	2024-07-31	14641.47
17260	2021-04-10	11704.47
17261	2023-10-03	14510.80
17262	2021-06-02	14691.38
17263	2020-11-03	16457.19
17264	2024-08-05	17145.96
17265	2023-04-11	15370.10
17266	2022-07-30	9989.03
17267	2021-01-19	10988.13
17268	2022-05-21	15840.38
17269	2021-03-29	14402.20
17270	2021-08-26	10267.09
17271	2021-08-09	15240.32
17272	2020-07-18	13789.24
17273	2020-01-13	12813.16
17274	2020-09-03	15598.07
17275	2022-01-19	10253.59
17276	2023-05-09	8960.68
17277	2020-02-02	13993.68
17278	2021-12-23	15500.46
17279	2021-08-27	8506.39
17280	2020-09-13	8087.45
17281	2024-10-20	17134.80
17282	2022-05-29	7763.12
17283	2024-11-16	13892.71
17284	2022-08-26	14872.67
17285	2024-09-18	8815.63
17286	2023-05-10	7586.35
17287	2021-10-01	18054.41
17288	2024-11-20	10315.68
17290	2021-10-04	10686.82
17291	2022-12-31	17839.01
17292	2022-07-28	17097.37
17293	2021-07-18	8023.67
17294	2021-08-07	8650.35
17295	2023-11-15	15689.46
17296	2022-12-05	8601.14
17297	2021-01-05	10902.37
17298	2020-03-14	15088.96
17299	2024-11-13	12271.57
17300	2020-11-13	13892.13
17301	2020-07-01	8486.10
17302	2024-11-26	7376.28
17303	2023-10-29	8392.76
17304	2022-03-25	7746.04
17305	2023-01-01	16585.55
17306	2021-04-30	16225.15
17307	2024-04-09	15596.72
17308	2024-05-26	7055.31
17309	2024-04-05	10358.82
17310	2020-08-13	12182.68
17311	2024-01-21	10867.95
17312	2020-12-30	16092.12
17313	2021-07-29	12138.56
17314	2024-07-01	17510.72
17315	2023-05-13	17638.47
17316	2024-09-28	7445.07
17317	2021-01-06	13720.83
17318	2022-07-01	17773.88
17319	2024-10-03	16685.76
17320	2020-02-11	10366.28
17321	2024-07-03	17233.59
17322	2022-08-09	15890.76
17323	2024-07-27	17498.76
17324	2023-10-14	8303.97
17325	2021-12-06	6710.96
17326	2023-04-16	15774.06
17327	2020-02-08	8230.30
17328	2021-01-19	11359.78
17329	2022-01-07	8804.99
17330	2022-04-21	14211.73
17331	2020-06-01	8966.04
17332	2022-03-21	14383.88
17333	2024-11-18	10809.70
17334	2023-10-13	11753.40
17335	2023-04-25	17104.80
17336	2020-10-11	7005.62
17337	2021-08-19	16821.90
17338	2020-08-01	10725.50
17339	2020-10-24	15600.79
17340	2022-11-19	10466.86
17341	2020-06-24	6625.85
17342	2024-09-21	11369.14
17343	2021-04-26	7872.85
17344	2024-08-10	17481.31
17345	2020-09-30	16474.94
17346	2023-07-17	7379.48
17347	2020-06-16	14127.48
17348	2021-02-12	15221.56
17349	2023-12-10	8481.31
17350	2024-11-13	6916.43
17351	2020-09-01	17813.84
17352	2024-10-15	13794.88
17353	2020-08-11	8049.12
17354	2021-05-15	15494.68
17355	2022-01-19	17959.58
17356	2022-08-10	11126.05
17357	2022-12-28	15050.03
17358	2021-01-11	10176.16
17359	2023-08-07	13222.92
17360	2024-06-09	16616.84
17361	2020-12-20	6824.31
17362	2020-11-30	10563.09
17363	2023-02-08	16110.06
17364	2022-12-25	18033.63
17365	2023-09-11	8494.92
17366	2021-10-03	11099.50
17367	2021-03-27	13985.61
17368	2023-05-07	6668.06
17369	2020-10-12	12794.82
17370	2023-03-27	17067.98
17371	2021-07-03	10146.64
17372	2024-11-16	6838.02
17373	2023-02-11	13612.92
17374	2022-01-10	13410.34
17375	2022-03-23	13946.21
17376	2020-02-14	14301.68
17377	2020-05-21	13858.81
17378	2024-01-28	12004.60
17379	2023-09-11	17977.72
17380	2021-09-06	11877.33
17381	2024-05-26	17774.78
17382	2023-09-28	11714.78
17383	2022-05-30	7535.02
17384	2021-07-30	8809.22
17385	2021-05-09	14812.14
17386	2021-09-24	15481.07
17387	2020-11-24	15023.64
17388	2024-05-26	7053.27
17389	2023-07-15	17287.69
17390	2024-10-11	17311.28
17391	2023-03-03	10681.91
17392	2022-10-20	16056.20
17393	2022-09-01	9189.23
17394	2022-04-10	15803.43
17395	2024-02-14	13989.36
17396	2020-09-18	17675.45
17397	2021-08-29	14979.37
17398	2021-01-01	10797.27
17399	2024-08-11	6757.53
17400	2020-08-22	16550.56
17401	2022-03-13	17625.00
17402	2022-08-11	16564.06
17403	2023-12-11	14096.56
17404	2020-11-16	10669.35
17405	2022-10-21	14647.74
17406	2021-04-08	15717.20
17407	2023-01-20	8918.76
17408	2020-08-15	17153.61
17409	2022-06-15	10564.78
17410	2020-12-21	17961.13
17411	2023-01-02	11777.98
17412	2024-08-12	16237.00
17413	2022-12-01	6946.83
17414	2022-01-17	15595.12
17415	2024-09-23	17309.28
17416	2023-05-30	15023.69
17417	2023-06-06	8242.27
17418	2022-09-04	16828.32
17419	2021-07-20	11224.46
17420	2021-07-11	15858.47
17421	2020-07-11	10069.96
17422	2021-10-11	16941.48
17423	2022-11-09	8010.76
17424	2021-11-28	13780.11
17425	2021-03-10	11212.15
17426	2020-08-07	11415.91
17427	2020-12-26	17002.14
17428	2023-11-18	8321.47
17429	2021-04-04	14361.05
17430	2021-04-26	11042.55
17431	2023-08-03	8670.07
17432	2020-12-12	14400.27
17433	2022-05-28	9762.81
17434	2021-12-23	10171.62
17435	2021-08-13	10604.85
17436	2022-12-11	8536.43
17437	2024-11-27	10356.81
17438	2020-05-23	16192.91
17439	2020-07-06	10378.88
17440	2020-06-27	11690.73
17441	2020-08-18	8701.01
17442	2021-12-05	16229.61
17443	2023-07-28	13830.43
17444	2024-06-05	14633.43
17445	2020-02-26	16195.06
17446	2021-07-26	8055.53
17447	2023-12-06	15888.38
17448	2022-09-05	13439.69
17449	2022-05-29	15536.43
17450	2024-06-04	12886.10
17451	2023-12-01	14719.20
17452	2022-05-24	11234.77
17453	2024-03-16	9201.63
17454	2024-04-18	10623.19
17455	2023-06-30	10770.98
17456	2021-12-30	14239.67
17457	2023-03-15	7146.59
17458	2021-01-20	12592.14
17459	2022-01-30	14948.62
17460	2024-04-11	8003.80
17461	2023-02-02	15961.83
17462	2020-09-04	15834.77
17463	2023-06-06	15302.37
17464	2021-09-29	8311.13
17465	2023-11-05	15708.71
17466	2024-11-13	9555.07
17467	2022-01-30	9257.64
17468	2022-09-02	7603.20
17469	2021-05-09	10077.51
17470	2021-08-10	6947.36
17471	2020-05-20	12484.61
17472	2024-09-06	10614.27
17473	2024-02-10	8296.07
17474	2020-12-08	11911.61
17475	2023-05-20	11083.01
17476	2020-06-07	9169.22
17477	2023-07-07	17711.92
17478	2020-08-07	8198.19
17479	2023-01-01	9802.42
17480	2023-08-09	11897.01
17481	2023-12-20	16258.89
17482	2023-06-06	6729.25
17483	2020-05-14	9815.16
17484	2021-12-02	16220.59
17485	2023-11-17	8214.00
17486	2023-10-13	13802.08
17487	2021-04-07	16012.11
17488	2023-06-08	6670.36
17489	2024-02-23	14842.55
17490	2020-09-06	16596.53
17491	2021-01-09	14762.89
17492	2024-01-15	14889.81
17493	2022-04-17	10986.76
17494	2024-04-20	15345.47
17495	2023-07-24	7174.42
17496	2022-07-18	15563.45
17497	2024-10-03	16268.60
17498	2022-12-27	12295.21
17499	2021-02-22	13593.40
17500	2021-04-25	17094.93
17501	2023-05-29	12849.98
17502	2023-01-26	8980.22
17503	2022-12-22	7407.50
17504	2021-08-08	7358.67
17505	2023-12-19	7848.95
17506	2021-11-17	10868.28
17507	2021-11-13	14879.29
17508	2023-05-13	16123.16
17509	2023-10-20	16356.11
17510	2022-03-12	7858.64
17511	2022-12-04	12898.66
17512	2022-10-19	7205.98
17513	2020-11-08	16228.88
17514	2020-07-19	10273.48
17515	2020-09-03	10881.41
17516	2024-02-07	16648.78
17517	2020-02-26	8890.86
17518	2022-10-14	11111.96
17519	2021-11-29	10146.83
17520	2021-12-01	10902.82
17521	2020-08-21	8235.53
17522	2024-05-05	10054.63
17523	2023-09-10	17911.21
17524	2024-05-24	9689.36
17525	2020-04-16	7058.95
17526	2024-05-01	12017.66
17527	2022-10-18	12419.77
17528	2024-08-13	8684.97
17529	2023-01-04	7563.25
17530	2021-07-30	17395.49
17531	2022-06-16	7506.29
17532	2020-05-05	11468.71
17533	2024-05-15	14748.17
17534	2021-07-24	16499.27
17535	2022-08-27	12081.38
17536	2021-11-22	17095.86
17537	2020-02-14	13378.25
17538	2020-12-02	15749.75
17539	2020-03-31	10802.47
17540	2022-10-25	13831.17
17541	2021-09-03	9810.24
17542	2024-02-16	6691.77
17543	2022-04-26	17496.83
17544	2021-02-11	9517.20
17545	2021-02-23	17885.60
17546	2020-04-01	15196.04
17547	2021-01-22	15354.45
17548	2020-05-12	9372.01
17549	2023-04-15	17865.30
17550	2022-06-27	12395.33
17551	2022-04-14	15756.47
17552	2021-01-03	15931.22
17553	2024-05-14	16059.29
17554	2021-10-26	15810.40
17555	2023-08-13	14192.90
17556	2022-11-05	12592.29
17557	2022-12-29	15883.48
17558	2021-12-21	9896.48
17559	2023-05-09	15374.04
17560	2023-10-08	16777.26
17561	2021-05-28	11296.15
17562	2021-01-30	16814.57
17563	2020-10-20	15437.17
17564	2020-02-21	8101.90
17565	2022-03-18	15826.30
17566	2024-04-16	16592.40
17567	2021-08-09	8620.95
17568	2023-09-27	7986.30
17569	2023-08-09	8211.01
17570	2021-03-22	12101.57
17571	2020-05-01	10452.06
17572	2022-10-22	17242.55
17573	2020-10-07	11103.01
17574	2022-11-04	10246.39
17575	2020-11-05	11402.38
17576	2022-01-24	13364.53
17577	2021-12-09	7092.91
17578	2021-04-10	8806.66
17579	2022-11-04	17166.24
17580	2022-12-15	12943.40
17581	2023-10-31	11423.58
17582	2022-02-10	14546.08
17583	2023-11-07	12394.32
17584	2021-07-06	16974.91
17585	2020-06-02	15336.60
17586	2020-01-13	11074.33
17587	2020-10-10	8249.30
17588	2020-01-15	14202.82
17589	2023-03-09	10274.26
17590	2023-02-04	16827.83
17591	2020-06-26	15409.19
17592	2021-02-14	11027.22
17593	2022-06-01	13430.63
17594	2023-03-13	9183.06
17595	2022-01-13	13548.42
17596	2023-04-03	16239.47
17597	2024-04-01	8166.07
17598	2020-07-31	17302.41
17599	2023-02-17	17212.40
17600	2022-06-07	8297.51
17601	2021-10-11	14723.74
17602	2023-10-04	12307.22
17603	2022-08-31	10088.61
17604	2021-01-31	17010.35
17605	2024-04-25	8856.11
17606	2023-10-27	11125.32
17607	2024-04-12	12062.16
17608	2023-08-18	15162.18
17609	2020-03-06	13841.77
17610	2022-05-20	12554.81
17611	2023-04-12	11883.48
17612	2021-07-01	15372.33
17613	2023-11-24	15098.91
17614	2023-11-18	9321.83
17615	2024-05-12	14579.53
17616	2022-10-29	7490.75
17617	2020-05-01	12127.92
17618	2021-09-10	12367.58
17619	2024-07-18	17843.21
17620	2023-04-28	12452.72
17621	2022-03-01	11838.85
17622	2023-10-29	7505.35
17623	2020-11-15	15869.66
17624	2020-09-21	13375.03
17625	2020-11-20	15547.98
17626	2022-07-03	11999.15
17627	2022-08-29	10385.33
17628	2021-07-25	12424.15
17629	2020-07-01	14327.04
17630	2020-09-25	14245.81
17631	2022-09-23	15837.60
17632	2020-10-14	16010.53
17633	2023-11-16	14363.04
17634	2023-05-01	7011.96
17635	2022-03-04	12098.27
17636	2022-10-15	14056.75
17637	2024-04-27	15496.73
17638	2022-04-11	13426.31
17639	2024-01-01	11358.60
17640	2020-03-14	7835.54
17641	2023-04-23	9155.68
17642	2023-01-23	13024.59
17643	2020-08-03	10651.60
17644	2021-09-08	12375.53
17645	2020-01-28	12842.13
17646	2023-09-02	13568.78
17647	2020-01-01	6720.02
17648	2023-09-18	15117.22
17649	2022-08-08	14270.22
17650	2021-01-14	11507.79
17651	2023-08-09	6770.46
17652	2022-06-15	13707.79
17653	2023-10-24	9391.62
17654	2021-11-02	7058.04
17655	2022-10-10	7090.69
17656	2020-06-03	6860.28
17657	2021-06-18	16169.59
17658	2021-02-25	15206.66
17659	2021-09-22	15124.45
17660	2023-06-01	6932.60
17661	2020-09-27	11424.05
17662	2022-05-06	8307.13
17663	2024-07-23	14285.05
17664	2020-05-29	9049.56
17665	2022-12-19	8821.28
17666	2020-05-28	13938.88
17667	2021-01-15	10972.54
17668	2023-12-11	15830.10
17669	2024-08-29	17790.70
17670	2020-05-31	16495.52
17671	2021-05-06	8038.75
17672	2020-09-17	10026.28
17673	2022-06-11	11397.27
17674	2024-05-20	13458.29
17675	2024-03-06	12772.23
17676	2021-10-25	9619.65
17677	2023-02-15	17272.66
17678	2021-12-13	12658.10
17679	2023-12-22	14714.40
17680	2024-10-05	14608.21
17681	2021-09-08	9270.76
17682	2020-12-09	7764.26
17683	2022-01-23	13487.48
17684	2023-06-02	17873.56
17685	2020-12-30	12487.03
17686	2020-12-23	18043.84
17687	2020-12-25	15651.38
17688	2021-11-02	16626.88
17689	2020-07-06	15346.42
17690	2022-02-21	16087.96
17691	2023-10-12	10431.19
17692	2024-11-04	16595.52
17693	2020-07-24	13661.59
17694	2023-06-15	9215.58
17695	2022-05-03	14821.87
17696	2022-04-29	12732.51
17697	2022-07-23	9149.59
17698	2022-01-29	7382.24
17699	2023-11-30	7488.61
17700	2024-02-07	12225.79
17701	2021-03-15	14764.22
17702	2021-11-17	12001.02
17703	2023-05-15	6761.09
17704	2021-03-15	10311.67
17705	2023-07-09	11799.41
17706	2021-11-13	11693.68
17707	2020-06-13	17358.05
17708	2021-01-08	11719.12
17709	2023-09-14	12629.13
17710	2024-09-02	15574.09
17711	2024-06-04	11613.28
17712	2022-01-10	9296.79
17713	2023-11-09	16632.18
17714	2021-08-17	11627.37
17715	2024-05-05	8408.50
17716	2024-11-05	10279.81
17717	2021-04-01	7755.61
17718	2021-10-09	12198.96
17719	2021-10-25	10737.31
17720	2020-12-31	7605.10
17721	2021-10-27	15017.18
17722	2022-07-19	17204.22
17723	2021-08-09	7267.43
17724	2023-03-11	13169.72
17725	2023-12-24	16432.32
17726	2022-09-26	7122.30
17727	2022-10-06	9517.98
17728	2021-05-02	10646.25
17729	2022-12-07	7410.75
17730	2020-02-19	16406.62
17731	2020-11-27	10569.58
17732	2023-05-06	9076.92
17733	2020-07-14	11379.80
17734	2024-05-02	11110.78
17735	2020-10-18	13913.17
17736	2024-09-17	15803.36
17737	2024-01-24	10980.06
17738	2020-10-01	8672.76
17739	2022-06-05	17115.22
17740	2020-05-21	12960.42
17741	2021-07-02	15380.61
17742	2022-09-25	10108.94
17743	2022-07-21	7115.72
17744	2020-03-20	7743.57
17745	2022-10-11	7086.98
17746	2022-11-18	8981.74
17747	2024-08-24	6794.85
17748	2021-11-25	6637.56
17749	2023-02-06	15559.77
17750	2023-12-17	13565.72
17751	2023-02-25	8461.65
17752	2023-09-12	9499.97
17753	2020-10-25	13939.51
17754	2022-07-16	10415.89
17755	2021-09-09	11829.19
17756	2022-06-16	10601.33
17757	2020-08-31	14853.87
17758	2022-10-22	9725.88
17759	2022-08-19	16396.35
17760	2020-08-11	15452.93
17761	2023-06-22	12926.45
17762	2023-05-02	11481.96
17763	2020-07-27	13192.33
17764	2024-04-04	11708.49
17765	2024-02-26	11383.36
17766	2023-01-16	6980.84
17767	2023-09-22	11285.76
17768	2020-05-15	6881.50
17769	2021-07-02	7421.64
17770	2023-10-08	15945.35
17771	2021-06-03	7758.50
17772	2021-07-24	6970.10
17773	2020-09-29	10263.32
17774	2023-07-24	9606.49
17775	2021-05-11	13205.49
17776	2022-07-27	7897.86
17777	2021-06-28	16552.48
17778	2020-04-09	11366.29
17779	2022-02-13	9949.19
17780	2021-02-06	7259.39
17781	2020-02-16	15476.47
17782	2020-03-25	7205.08
17783	2020-04-27	13859.61
17784	2020-12-11	11262.47
17785	2022-09-09	15806.17
17786	2023-03-20	10432.97
17787	2021-06-05	10023.94
17788	2024-04-20	11045.81
17789	2023-12-03	15547.77
17790	2021-05-30	7852.70
17791	2020-08-29	12221.69
17792	2020-06-08	11920.81
17793	2022-09-09	14703.56
17794	2024-11-23	17245.62
17795	2024-10-13	15426.29
17796	2022-04-19	17440.66
17797	2020-11-14	17937.97
17798	2021-11-12	10759.53
17799	2023-06-08	8767.36
17800	2023-07-17	7065.07
17801	2022-04-17	13541.21
17802	2021-05-29	15173.87
17803	2022-08-26	8252.26
17804	2022-10-01	7866.86
17805	2023-08-15	12449.34
17806	2024-02-02	14236.89
17807	2020-11-09	16807.88
17808	2023-10-16	17926.35
17809	2023-01-03	17033.72
17810	2021-12-20	9707.22
17811	2023-12-01	14724.19
17812	2023-07-29	17722.24
17813	2023-08-17	8015.61
17814	2023-04-04	12623.03
17815	2021-12-24	15553.38
17816	2023-03-31	11504.68
17817	2020-08-23	15802.56
17818	2020-12-13	17270.71
17819	2020-03-29	10946.12
17820	2024-02-23	9343.18
17821	2024-02-08	7062.49
17822	2023-10-13	16364.24
17823	2020-09-24	8070.27
17824	2020-11-14	17846.15
17825	2020-12-04	9147.25
17826	2023-07-21	13245.13
17827	2024-07-15	17712.82
17828	2022-01-04	15480.56
17829	2020-09-17	15078.71
17830	2023-12-12	10842.48
17831	2020-10-10	13829.36
17832	2020-03-06	11420.82
17833	2023-07-29	14931.24
17834	2023-04-02	12067.05
17835	2021-02-27	7515.86
17836	2023-07-06	12114.90
17837	2021-07-27	12249.80
17838	2020-01-28	14287.55
17839	2023-10-12	16069.96
17840	2021-02-24	7160.94
17841	2022-06-16	13874.57
17842	2023-04-22	15475.77
17843	2021-08-16	9542.47
17844	2022-08-29	12059.74
17845	2020-01-12	8192.62
17846	2024-10-24	7434.49
17847	2020-08-05	16947.89
17848	2022-02-10	15914.53
17849	2021-11-24	12744.08
17850	2020-08-28	16062.72
17851	2023-01-27	15425.40
17852	2022-05-07	11692.28
17853	2024-08-29	17717.27
17854	2020-05-12	6761.21
17855	2023-05-26	10248.18
17856	2023-04-23	8590.65
17857	2020-06-15	7115.41
17858	2022-09-03	7367.22
17859	2021-03-16	8932.55
17860	2022-04-12	6710.07
17861	2023-10-06	8027.05
17862	2023-01-31	12315.32
17863	2022-10-04	10567.41
17864	2023-02-06	13822.61
17865	2022-05-12	16065.45
17866	2023-03-06	12213.52
17867	2023-10-19	6906.01
17868	2022-11-11	17897.81
17869	2023-02-28	14758.57
17870	2022-01-22	17862.03
17871	2021-07-17	8289.55
17872	2023-10-07	14704.05
17873	2023-03-26	15626.66
17874	2020-06-19	12263.46
17875	2023-07-08	15485.13
17876	2020-05-27	16425.63
17877	2023-03-22	16818.45
17878	2024-04-02	15595.75
17879	2020-05-13	13304.28
17880	2024-10-29	9321.86
17881	2020-05-04	9859.26
17882	2022-04-25	15797.82
17883	2021-11-10	6808.78
17884	2020-06-22	13309.83
17885	2021-09-11	15439.17
17886	2023-07-21	9272.23
17887	2021-05-17	7814.22
17888	2020-05-10	16496.71
17889	2020-08-16	10763.89
17890	2024-03-28	8678.58
17891	2020-08-28	10731.05
17892	2024-06-25	15601.31
17893	2021-06-10	16962.74
17894	2023-06-29	7686.27
17895	2022-12-18	12807.74
17896	2020-05-06	13327.23
17897	2023-09-13	12318.92
17898	2024-10-12	16676.57
17899	2020-02-12	16092.88
17900	2021-07-27	12644.73
17901	2021-02-03	12059.25
17902	2022-11-16	13659.41
17903	2022-03-21	7311.37
17904	2020-01-05	7121.81
17905	2022-06-14	9057.49
17906	2022-05-21	13347.29
17907	2022-12-10	13464.35
17908	2021-03-11	8942.70
17909	2024-07-25	7487.83
17910	2020-06-29	10530.18
17911	2024-03-03	13319.19
17912	2023-07-13	7350.80
17913	2021-10-12	14655.44
17914	2021-12-10	16612.83
17915	2020-02-20	9980.78
17916	2024-02-04	15952.02
17917	2023-12-14	12051.60
17918	2021-02-11	9859.79
17919	2023-10-10	17607.03
17920	2023-08-10	12384.95
17921	2022-06-05	10423.41
17922	2022-10-28	16571.82
17923	2020-07-09	10834.94
17924	2021-01-25	9699.09
17925	2022-08-28	12608.72
17926	2024-01-22	7940.51
17927	2021-09-08	8119.61
17928	2024-04-04	14404.80
17929	2021-10-11	9929.68
17930	2023-01-16	13210.86
17931	2020-04-20	9588.20
17932	2020-02-11	8110.53
17933	2020-12-20	13912.24
17934	2021-03-07	10010.54
17935	2023-06-01	9893.26
17936	2022-05-01	8815.91
17937	2020-07-17	11548.82
17938	2024-09-21	8820.38
17939	2023-01-24	10582.89
17940	2022-10-22	11195.83
17941	2020-10-23	14238.53
17942	2024-04-25	15143.34
17943	2021-01-23	16047.09
17944	2020-12-24	15482.56
17945	2022-02-25	16271.50
17946	2023-11-11	9271.70
17947	2021-03-11	6667.69
17948	2022-11-15	8043.26
17949	2021-12-06	17692.24
17950	2023-10-07	11289.95
17951	2020-03-03	17530.68
17952	2024-11-07	11270.24
17953	2021-10-18	10916.59
17954	2022-06-05	8819.58
17955	2022-05-27	8477.49
17956	2023-07-17	13104.85
17957	2021-11-08	16445.42
17958	2021-04-19	16698.86
17959	2021-01-22	8438.43
17960	2022-03-12	8351.95
17961	2024-10-06	14197.16
17962	2023-05-06	15984.99
17963	2020-03-18	8023.18
17964	2020-03-03	7894.57
17965	2020-01-02	16989.81
17966	2023-07-15	9773.42
17967	2021-12-25	17835.14
17968	2020-03-15	9519.77
17969	2020-09-18	12342.06
17970	2024-09-24	13277.69
17971	2020-08-15	9346.38
17972	2020-08-16	8034.34
17973	2021-10-24	16156.76
17974	2020-01-11	15879.31
17975	2020-07-17	13978.89
17976	2020-06-23	14519.18
17977	2021-02-19	15597.79
17978	2022-10-11	7648.08
17979	2022-03-15	13108.84
17980	2024-02-08	7645.55
17981	2021-04-14	13316.80
17982	2024-01-16	12571.87
17983	2024-09-11	10691.46
17984	2021-09-28	13343.53
17985	2020-06-29	13795.29
17986	2023-04-08	9382.72
17987	2020-06-18	11087.66
17988	2023-06-09	12419.81
17989	2023-05-05	8568.34
17990	2022-10-17	15247.63
17991	2022-03-14	12579.95
17992	2023-10-22	9667.49
17993	2022-07-11	7632.43
17994	2022-09-19	13758.44
17995	2022-05-14	10586.08
17996	2024-10-31	15027.25
17997	2022-02-23	9308.83
17998	2021-02-05	6844.92
17999	2023-07-11	8704.71
18000	2022-08-27	11345.01
18001	2020-11-18	15572.10
18002	2023-09-08	11782.40
18003	2024-03-04	14894.02
18004	2023-05-22	14525.70
18005	2020-12-14	15977.64
18006	2024-03-23	13145.44
18007	2021-08-10	8047.42
18008	2024-01-30	11894.75
18009	2022-09-28	7804.60
18010	2020-12-25	16911.11
18011	2020-05-15	8780.92
18012	2024-07-25	12236.30
18013	2024-06-12	11209.18
18014	2022-10-24	12932.56
18015	2020-12-23	8044.37
18016	2023-09-06	9601.70
18017	2022-07-18	15634.10
18018	2021-11-02	13541.59
18019	2023-04-20	6838.52
18020	2023-10-10	8379.63
18021	2020-08-20	9631.15
18022	2021-04-23	9928.10
18023	2024-03-16	7414.12
18024	2021-05-17	6762.44
18025	2023-12-15	6740.25
18026	2020-01-27	9618.36
18027	2020-12-13	11880.11
18028	2023-08-21	17436.05
18029	2023-05-28	9551.84
18030	2020-07-05	16765.88
18031	2020-06-28	8306.75
18032	2020-12-03	10768.37
18033	2022-06-10	11443.02
18034	2021-07-30	14624.00
18035	2024-03-26	9524.47
18036	2024-09-23	13206.38
18037	2020-06-09	6810.82
18038	2021-12-13	15754.51
18039	2020-11-19	16501.26
18040	2022-12-26	8901.05
18041	2021-10-13	10138.09
18042	2021-07-26	11062.16
18043	2021-03-23	11973.86
18044	2024-02-09	11200.42
18045	2022-11-24	8664.87
18046	2021-10-24	9024.55
18047	2022-03-16	12909.24
18048	2024-09-24	9513.64
18049	2022-01-06	17976.52
18050	2020-08-26	9863.98
18051	2021-08-09	7067.43
18052	2022-12-24	11590.81
18053	2020-07-05	17737.81
18054	2022-11-09	8723.95
18055	2020-07-22	14365.67
18056	2024-09-30	6925.79
18057	2021-06-13	7271.68
18058	2023-06-14	12127.23
18059	2022-05-23	12972.90
18060	2023-06-04	11512.59
18061	2020-12-10	17072.00
18062	2024-05-29	14702.49
18063	2021-06-27	16044.35
18064	2023-07-12	8800.26
18065	2022-12-13	9263.47
18066	2020-12-23	11816.71
18067	2021-12-02	14503.54
18068	2021-07-29	14174.11
18069	2024-03-14	8348.98
18070	2022-08-09	11921.90
18071	2022-05-25	12016.48
18072	2023-10-27	13563.35
18073	2022-04-18	7002.89
18074	2020-10-27	7412.16
18075	2021-10-15	17467.75
18076	2023-07-10	9183.92
18077	2020-08-03	12034.69
18078	2023-02-13	11291.03
18079	2024-11-14	8663.47
18080	2020-03-05	14924.70
18081	2023-09-22	17589.90
18082	2024-04-27	13505.82
18083	2024-08-26	16789.78
18084	2023-12-06	14817.41
18085	2023-12-21	14563.88
18086	2020-04-05	15505.80
18087	2021-05-06	17739.17
18088	2024-07-05	16183.60
18089	2021-04-01	12124.42
18090	2021-11-20	10802.09
18091	2021-09-13	8708.43
18092	2023-07-04	15098.49
18093	2024-10-25	11352.17
18094	2023-02-07	10368.52
18095	2023-02-12	6761.82
18096	2021-04-12	11567.86
18097	2024-07-07	15832.75
18098	2020-06-12	15283.01
18099	2022-10-20	13864.79
18100	2020-07-30	15122.13
18101	2024-02-15	7489.03
18102	2022-09-25	13291.01
18103	2023-12-11	10628.45
18104	2024-01-15	15013.93
18105	2024-01-30	17044.70
18106	2022-11-28	13770.41
18107	2023-09-05	9129.79
18108	2020-04-12	12575.07
18109	2021-12-26	8816.57
18110	2023-02-19	17295.58
18111	2020-08-08	9371.69
18112	2022-02-18	13500.02
18113	2020-07-08	7335.53
18114	2021-04-08	14574.61
18115	2024-12-05	7406.14
18116	2024-09-23	7667.49
18117	2024-02-27	17645.53
18118	2021-06-17	10404.48
18119	2021-06-13	14235.46
18120	2022-08-12	14205.73
18121	2020-02-21	15153.62
18122	2020-01-21	9136.99
18123	2024-04-26	12685.00
18124	2023-04-05	6801.85
18125	2020-04-22	9383.69
18126	2023-09-02	13234.96
18127	2020-04-13	16079.15
18128	2020-07-06	7621.59
18129	2022-09-15	9425.15
18130	2024-02-18	16649.37
18131	2024-03-09	12549.96
18132	2024-05-20	9962.23
18133	2022-01-10	11783.36
18134	2021-08-24	15536.93
18135	2024-02-20	13511.20
18136	2023-03-17	10970.55
18137	2021-10-16	9921.37
18138	2023-01-27	7507.44
18139	2023-05-25	14020.77
18140	2022-01-08	13300.59
18141	2022-06-17	7718.53
18142	2022-03-21	15243.33
18143	2020-03-22	17158.27
18144	2024-03-02	14654.38
18145	2021-08-14	10826.28
18146	2023-01-11	15538.81
18147	2021-04-02	12003.46
18148	2022-08-16	13474.75
18149	2024-06-22	7510.75
18150	2021-11-11	7799.09
18151	2024-04-29	17436.23
18152	2023-02-26	11030.87
18153	2020-03-07	7293.37
18154	2021-09-16	7540.39
18155	2021-12-09	9728.34
18156	2022-04-16	12105.53
18157	2023-09-29	11565.65
18158	2022-11-29	17030.45
18159	2023-06-23	13679.91
18160	2023-07-13	7068.96
18161	2023-03-01	12368.69
18162	2021-08-28	11640.97
18163	2023-12-11	13959.29
18164	2024-05-18	7724.22
18165	2024-01-15	12851.35
18166	2024-09-23	14801.70
18167	2023-10-01	12180.99
18168	2020-07-08	14802.46
18169	2022-07-21	13280.56
18170	2024-08-12	8343.88
18171	2020-02-02	6901.81
18172	2021-09-30	16348.32
18173	2020-01-11	10508.51
18174	2020-02-08	11199.19
18175	2021-10-16	10286.92
18176	2022-08-07	12202.78
18177	2021-01-18	7977.11
18178	2020-04-11	13577.61
18179	2022-12-05	7848.88
18180	2020-11-23	10338.28
18181	2023-04-19	14529.08
18182	2020-12-09	8063.45
18183	2023-07-29	14231.60
18184	2022-05-25	15353.46
18185	2020-07-07	11317.70
18186	2020-07-25	7004.60
18187	2023-12-12	11124.45
18188	2022-04-08	12370.36
18189	2024-01-03	15157.79
18190	2024-06-04	9008.33
18191	2022-05-30	14702.53
18192	2021-10-23	11976.32
18193	2021-02-09	10794.00
18194	2023-04-30	7067.35
18195	2024-06-24	12278.27
18196	2022-11-10	14604.38
18197	2023-04-18	9010.22
18198	2024-07-21	11123.54
18199	2023-06-15	12461.48
18200	2024-07-13	11653.73
18201	2022-07-13	17966.04
18202	2020-08-02	11656.92
18203	2020-02-16	11543.87
18204	2022-08-21	12961.03
18205	2022-04-03	7144.12
18206	2024-08-06	7100.88
18207	2022-10-27	8737.21
18208	2021-12-12	7993.49
18209	2023-07-14	8738.54
18210	2020-04-16	15434.72
18211	2022-04-28	8334.33
18212	2024-01-08	13259.99
18213	2022-08-06	14608.76
18214	2022-03-23	13574.48
18215	2021-11-13	14358.02
18216	2022-06-01	12715.29
18217	2020-04-10	8245.34
18218	2024-03-30	9319.12
18219	2022-11-18	16429.05
18220	2021-10-21	15425.40
18221	2021-01-22	13627.26
18222	2023-10-19	11806.09
18223	2021-01-26	13820.90
18224	2023-06-19	9102.98
18225	2022-03-17	16876.77
18226	2023-11-23	14303.17
18227	2024-08-09	13725.06
18228	2020-08-10	8670.43
18229	2024-09-25	11691.46
18230	2022-07-20	13885.59
18231	2021-06-06	11435.64
18232	2020-12-17	9255.14
18233	2021-03-19	7717.53
18234	2020-01-18	11288.30
18235	2021-01-31	17408.51
18236	2020-12-06	14217.23
18237	2020-10-21	12699.75
18238	2022-11-29	17596.88
18239	2022-07-19	15160.90
18240	2021-09-07	11430.28
18241	2023-10-01	8683.26
18242	2021-11-09	9627.16
18243	2024-07-15	12775.12
18244	2022-11-03	12749.47
18245	2023-03-30	11327.89
18246	2024-08-27	15517.43
18247	2020-10-14	13174.98
18248	2022-07-20	11282.97
18249	2022-04-18	12511.16
18250	2021-09-16	10226.12
18251	2022-06-13	8798.42
18252	2024-03-05	7396.20
18253	2020-09-19	18002.24
18254	2023-12-18	17592.47
18255	2023-06-22	14415.83
18256	2022-05-30	16537.67
18257	2023-03-10	6762.57
18258	2023-11-28	7356.37
18259	2023-05-01	8346.42
18260	2021-01-23	10898.58
18261	2021-03-12	6967.36
18262	2020-05-03	12421.01
18263	2023-01-01	14126.71
18264	2021-03-21	7506.81
18265	2022-05-04	11638.53
18266	2020-12-06	16632.84
18267	2022-12-27	12770.92
18268	2024-01-06	6869.99
18269	2022-01-30	14502.35
18270	2024-11-26	9982.64
18271	2022-01-25	12202.98
18272	2024-08-11	10765.42
18273	2023-10-12	8135.59
18274	2024-09-19	10138.11
18275	2020-06-19	9133.73
18276	2022-03-22	17848.41
18277	2023-06-17	7424.51
18278	2022-01-07	13448.07
18279	2020-07-26	15922.86
18280	2023-10-03	13748.90
18281	2024-07-07	15331.10
18282	2023-07-01	13813.05
18283	2022-07-13	7006.22
18284	2022-02-10	9801.00
18285	2021-10-29	8763.54
18286	2023-10-08	13216.96
18287	2022-07-12	13731.90
18288	2021-02-01	10598.72
18289	2021-12-03	7669.55
18290	2023-12-24	12233.15
18291	2022-11-07	16578.47
18292	2022-11-02	7488.23
18293	2023-07-25	11238.11
18294	2020-04-10	8011.64
18295	2023-09-24	11583.11
18296	2020-08-07	15366.37
18297	2023-01-03	15633.72
18298	2022-01-20	11590.46
18299	2023-05-13	16061.35
18300	2024-04-18	17549.48
18301	2020-08-16	13635.39
18302	2024-06-03	17254.63
18303	2022-08-02	7553.95
18304	2020-10-21	17288.94
18305	2022-04-23	15727.17
18306	2020-02-29	13155.39
18307	2024-02-10	17416.70
18308	2020-09-12	17345.40
18309	2024-04-11	6971.48
18310	2024-10-14	17495.80
18311	2023-09-13	15527.85
18312	2020-09-25	9892.54
18313	2021-05-12	14076.82
18314	2023-03-09	13976.07
18315	2022-01-09	7152.41
18316	2023-06-14	12867.25
18317	2024-01-14	14632.61
18318	2021-12-23	7861.12
18319	2024-10-03	9089.13
18320	2024-07-23	10150.26
18321	2020-04-03	15597.30
18322	2022-11-08	13715.99
18323	2023-10-04	11844.66
18324	2023-09-07	6981.40
18325	2024-08-09	9642.25
18326	2022-03-02	12166.19
18327	2024-11-01	11634.33
18328	2021-10-02	8315.53
18329	2021-01-10	17857.62
18330	2021-05-27	11563.59
18331	2024-08-17	10783.73
18332	2020-12-29	7958.18
18333	2023-09-19	10261.75
18334	2022-10-20	16956.60
18335	2021-11-06	14822.69
18336	2021-07-15	12133.59
18337	2023-02-14	13371.41
18338	2022-05-02	15749.54
18339	2021-01-18	7775.43
18340	2024-06-17	10316.19
18341	2022-06-28	16238.75
18342	2021-06-30	16094.48
18343	2024-07-30	16868.32
18344	2021-03-02	16872.40
18345	2022-04-29	15367.06
18346	2021-07-06	13328.40
18347	2020-02-18	11125.17
18348	2023-03-09	12744.64
18349	2021-06-17	16101.90
18350	2024-04-25	16374.98
18351	2024-08-20	10719.84
18352	2022-01-02	11597.19
18353	2024-07-22	14660.60
18354	2020-03-24	17543.27
18355	2023-01-19	9884.91
18356	2022-11-25	15290.00
18357	2023-12-28	7224.97
18358	2024-07-29	11821.12
18359	2020-10-15	10098.21
18360	2024-06-04	8858.21
18361	2021-11-11	17013.60
18362	2022-01-29	8586.70
18363	2023-07-30	15592.01
18364	2020-10-26	8783.95
18365	2020-02-04	15501.95
18366	2024-07-20	15974.04
18367	2023-05-19	6907.63
18368	2021-07-15	6899.68
18369	2021-08-02	7849.77
18370	2021-02-12	8848.59
18371	2022-11-03	9909.37
18372	2020-08-16	7763.54
18373	2022-04-23	12356.99
18374	2022-09-26	6846.17
18375	2020-02-11	16677.78
18376	2024-04-24	8969.41
18377	2022-05-11	14061.25
18378	2023-05-16	8388.55
18379	2021-10-06	10028.51
18380	2024-03-15	10986.27
18381	2023-11-23	11432.61
18382	2024-06-22	9142.86
18383	2021-10-13	15646.19
18384	2024-04-25	17508.98
18385	2023-11-27	11692.82
18386	2023-05-08	17902.79
18387	2023-10-09	8418.89
18388	2020-02-05	16499.24
18389	2024-04-17	7691.97
18390	2024-07-13	15773.37
18391	2023-07-11	11882.99
18392	2022-12-25	15287.56
18393	2024-04-29	10634.22
18394	2022-10-18	9382.54
18395	2020-06-18	8063.76
18396	2023-08-17	16531.00
18397	2023-05-02	7799.29
18398	2022-05-24	7336.58
18399	2023-07-20	15152.84
18400	2024-02-22	18077.48
18401	2024-01-15	7922.48
18402	2020-07-07	13618.08
18403	2020-12-04	9693.57
18404	2022-11-30	13752.19
18405	2022-11-04	13686.03
18406	2024-01-05	11804.28
18407	2021-12-18	9251.88
18408	2024-02-19	15264.20
18409	2024-06-21	11497.15
18410	2020-03-06	15895.14
18411	2021-01-06	9588.44
18412	2020-01-12	14767.85
18413	2020-08-05	9187.52
18414	2023-02-06	14843.47
18415	2024-09-19	16834.95
18416	2023-08-11	12758.21
18417	2021-08-07	12066.74
18418	2023-09-23	14732.56
18419	2021-11-16	15681.42
18420	2021-10-23	9446.07
18421	2021-12-13	8013.40
18422	2020-10-15	14159.46
18423	2022-08-27	15476.43
18424	2020-12-02	12686.25
18425	2020-01-23	13961.18
18426	2021-06-18	14127.60
18427	2023-07-23	8693.57
18428	2021-10-28	13336.55
18429	2020-11-05	6641.28
18430	2023-07-13	7339.15
18431	2022-04-30	16372.37
18432	2024-02-18	9468.78
18433	2022-07-15	13717.34
18434	2022-02-17	10457.75
18435	2024-12-05	16304.19
18436	2024-01-27	9374.95
18437	2022-07-05	11618.03
18438	2024-03-09	16099.94
18439	2023-10-07	17068.29
18440	2020-04-12	16606.07
18441	2021-07-08	14702.25
18442	2020-12-28	13485.60
18443	2020-08-16	16901.67
18444	2020-07-16	6988.14
18445	2021-08-21	8481.69
18446	2020-08-22	7581.84
18447	2024-07-26	9900.57
18448	2024-01-27	7148.35
18449	2022-08-28	7093.82
18450	2024-03-19	10091.01
18451	2022-08-28	10934.61
18452	2020-12-05	14118.02
18453	2020-04-12	9612.82
18454	2021-12-21	15150.79
18455	2020-09-21	13800.65
18456	2022-01-04	16493.21
18457	2024-11-08	12942.08
18458	2024-09-30	15984.98
18459	2021-12-31	12413.14
18460	2024-10-05	17040.36
18461	2022-04-22	16207.24
18462	2022-04-28	9140.92
18463	2020-03-25	12890.47
18464	2022-05-12	9530.96
18465	2021-06-30	15550.56
18466	2023-08-11	8267.15
18467	2024-06-22	12470.34
18468	2020-10-29	13065.85
18469	2022-09-28	17248.78
18470	2021-08-11	17348.58
18471	2020-01-03	13819.15
18472	2023-09-26	7604.22
18473	2024-01-15	13187.88
18474	2020-09-19	13715.71
18475	2024-02-12	11509.28
18476	2022-05-02	11764.44
18477	2022-09-15	12006.10
18478	2021-03-20	17678.09
18479	2022-06-12	16942.14
18480	2023-02-17	9162.34
18481	2023-09-29	12081.47
18482	2022-04-21	9542.31
18483	2023-04-24	15578.55
18484	2023-04-04	8562.75
18485	2021-12-16	14820.10
18486	2023-12-19	13881.50
18487	2022-12-05	15257.67
18488	2021-11-02	14914.47
18489	2020-09-09	13705.21
18490	2020-02-18	7417.40
18491	2021-08-11	7818.51
18492	2024-04-12	13798.60
18493	2024-04-06	7465.52
18494	2023-04-21	13228.42
18495	2020-12-16	8194.69
18496	2022-01-05	12335.55
18497	2022-01-16	6897.40
18498	2020-11-05	10698.45
18499	2024-09-12	6605.94
18500	2022-02-07	12192.43
18501	2024-07-16	17974.82
18502	2024-06-27	14256.74
18503	2023-04-18	12468.91
18504	2020-02-10	10883.20
18505	2021-11-30	9882.77
18506	2021-02-14	13396.53
18507	2023-01-12	12344.01
18508	2022-03-14	13866.40
18509	2024-10-05	10058.47
18510	2020-12-05	11083.64
18511	2022-07-13	8777.97
18512	2022-03-07	17631.41
18513	2020-11-02	14529.49
18514	2023-06-07	10387.47
18515	2020-05-24	15196.43
18516	2023-06-26	12645.44
18517	2024-01-06	11309.00
18518	2021-02-27	17651.56
18519	2024-06-13	12691.53
18520	2024-01-20	17169.74
18521	2022-04-20	14458.58
18522	2020-07-02	17776.56
18523	2020-02-02	16749.85
18524	2021-02-21	15491.48
18525	2022-06-19	11809.91
18526	2023-08-23	15989.28
18527	2020-01-22	10411.80
18528	2021-04-16	17938.42
18529	2020-06-07	15919.21
18530	2024-05-14	14222.25
18531	2021-12-28	7115.65
18532	2021-12-29	15722.51
18533	2023-01-09	14019.53
18534	2021-09-10	14456.29
18535	2022-05-29	9835.71
18536	2020-11-12	12621.80
18537	2024-08-09	7976.12
18538	2023-10-07	16298.79
18539	2022-08-17	13594.99
18540	2021-01-04	9826.42
18541	2020-03-20	13714.43
18542	2020-09-25	17691.54
18543	2024-07-25	7325.19
18544	2023-06-07	15353.99
18545	2021-01-17	8941.30
18546	2020-09-10	12793.66
18547	2021-02-18	11485.65
18548	2021-07-22	8584.81
18549	2024-04-16	17096.32
18550	2023-10-24	9267.98
18551	2021-12-16	7738.14
18552	2020-01-03	7222.20
18553	2021-02-10	13244.52
18554	2020-02-04	17231.27
18555	2024-08-15	14502.26
18556	2023-03-23	10298.92
18557	2023-06-26	13432.57
18558	2022-01-24	16866.34
18559	2024-09-13	12303.08
18560	2024-08-12	11724.04
18561	2021-06-14	12432.98
18562	2022-02-08	16055.69
18563	2023-11-21	8589.98
18564	2024-11-19	16556.68
18565	2022-10-01	8169.44
18566	2023-03-03	15945.97
18567	2024-05-10	11341.76
18568	2021-02-01	7759.43
18569	2021-10-12	12372.12
18570	2024-08-30	8162.61
18571	2020-07-01	15402.88
18572	2022-03-17	7552.81
18573	2020-05-18	9671.49
18574	2021-01-24	12466.89
18575	2021-01-18	15409.82
18576	2023-10-14	11740.49
18577	2022-06-20	6604.16
18578	2024-03-17	11866.28
18579	2024-11-29	12970.16
18580	2022-01-21	17860.65
18581	2022-06-13	14135.36
18582	2021-12-07	15464.96
18583	2022-06-15	16431.40
18584	2023-01-01	8866.44
18585	2023-06-08	11984.51
18586	2021-07-28	7637.49
18587	2021-10-27	6755.15
18588	2023-06-03	9535.32
18589	2021-11-30	10503.93
18590	2020-12-30	7812.23
18591	2022-12-01	12445.81
18592	2021-12-10	12613.46
18593	2021-09-12	9917.90
18594	2022-07-06	15103.58
18595	2024-05-12	12618.24
18596	2023-05-27	17820.31
18597	2020-05-14	15858.70
18598	2020-09-13	11989.42
18599	2020-07-07	17489.70
18600	2023-03-04	17449.92
18601	2023-03-02	15470.53
18602	2020-09-21	14914.28
18603	2022-09-03	6819.22
18604	2023-03-18	16125.31
18605	2024-07-20	12164.52
18606	2020-07-19	15385.79
18607	2024-10-31	12666.09
18608	2021-04-10	9799.27
18609	2020-11-11	12274.80
18610	2023-04-29	12410.78
18611	2023-04-18	11666.70
18612	2021-01-14	17600.15
18613	2023-06-16	11883.71
18614	2022-08-31	8666.31
18615	2024-05-12	8232.23
18616	2022-01-02	11464.56
18617	2023-07-23	15839.97
18618	2021-07-15	9138.16
18619	2022-06-15	17090.40
18620	2024-03-11	17154.16
18621	2021-08-30	10634.12
18622	2020-07-05	16187.30
18623	2022-10-15	15736.09
18624	2020-08-06	16600.08
18625	2021-10-10	7704.48
18626	2022-08-14	12230.62
18627	2022-03-25	10009.30
18628	2024-10-25	15463.45
18629	2022-01-16	9814.64
18630	2024-08-29	7627.45
18631	2022-06-02	14823.21
18632	2020-06-09	12216.10
18633	2022-08-29	12377.54
18634	2022-06-18	11569.32
18635	2020-04-12	13632.61
18636	2023-10-24	10279.74
18637	2024-06-19	17376.10
18638	2020-09-20	14601.18
18639	2023-03-04	16269.42
18640	2021-09-18	12559.21
18641	2023-05-03	10606.95
18642	2023-03-28	11795.07
18643	2020-07-05	13360.88
18644	2022-12-08	13523.52
18645	2022-10-10	8299.37
18646	2022-04-27	10015.42
18647	2020-06-02	16416.38
18648	2021-08-27	17991.72
18649	2022-12-10	9508.76
18650	2021-01-14	16265.10
18651	2022-06-24	10874.46
18652	2023-04-09	10723.63
18653	2021-07-02	13255.02
18654	2021-01-01	6724.07
18655	2024-06-05	15877.45
18656	2023-01-26	15913.03
18657	2021-05-17	14563.24
18658	2023-08-12	11088.22
18659	2022-03-13	7283.25
18660	2023-07-19	10539.59
18661	2024-07-02	12305.32
18662	2020-04-06	9413.83
18663	2024-04-19	15032.40
18664	2023-04-22	16759.86
18665	2023-05-29	14543.54
18666	2023-09-08	12489.03
18667	2021-06-27	11175.20
18668	2020-05-16	14124.82
18669	2023-09-09	14072.92
18670	2022-03-11	9972.06
18671	2024-04-08	8978.22
18672	2023-03-08	16624.34
18673	2024-11-12	11860.42
18674	2022-03-17	11333.41
18675	2024-04-15	13079.11
18676	2020-01-04	12991.44
18677	2022-02-27	15372.70
18678	2022-07-07	12189.41
18679	2024-11-18	11170.12
18680	2024-08-09	12903.43
18681	2023-06-18	6858.12
18682	2021-05-30	8253.34
18683	2022-11-24	15368.65
18684	2024-06-11	12764.37
18685	2023-11-13	8183.77
18686	2023-08-09	10699.61
18687	2023-03-16	10322.37
18688	2023-04-13	11731.94
18689	2020-09-30	9324.14
18690	2020-03-04	8485.58
18691	2024-02-14	14398.66
18692	2021-08-05	13197.85
18693	2022-12-09	17744.96
18694	2020-04-29	17056.98
18695	2023-04-17	10690.32
18696	2024-07-07	8910.71
18697	2020-06-05	16212.86
18698	2021-03-22	11866.74
18699	2020-04-06	12510.10
18700	2023-12-30	9507.30
18701	2024-05-19	17475.73
18702	2020-11-15	7678.21
18703	2021-04-03	13374.13
18704	2022-10-08	16210.72
18705	2021-09-08	10855.90
18706	2020-01-20	10502.13
18707	2023-05-09	11251.59
18708	2021-11-21	9285.37
18709	2022-06-02	9171.72
18710	2020-02-09	10354.10
18711	2023-11-22	15743.01
18712	2023-09-27	10330.10
18713	2022-07-11	12067.19
18714	2024-03-11	13250.60
18715	2022-05-30	9068.43
18716	2022-06-24	10470.31
18717	2020-07-24	11804.91
18718	2024-06-27	10800.41
18719	2023-04-28	7756.03
18720	2020-03-27	9337.85
18721	2020-09-09	14167.11
18722	2023-12-15	11139.74
18723	2023-07-23	12674.16
18724	2024-02-17	17239.46
18725	2022-11-13	18088.12
18726	2022-08-22	8934.10
18727	2023-05-01	17248.72
18728	2022-08-27	11323.10
18729	2021-04-01	16069.71
18730	2023-02-03	10138.76
18731	2024-06-10	11139.68
18732	2022-12-16	6609.52
18733	2021-07-04	14744.60
18734	2023-12-09	14073.77
18735	2024-07-30	14004.63
18736	2021-10-20	11779.32
18737	2024-04-30	8070.73
18738	2022-10-25	14097.64
18739	2020-11-10	12562.54
18740	2020-08-15	13054.79
18741	2024-05-29	14261.48
18742	2024-02-06	8904.05
18743	2024-09-10	13214.28
18744	2023-04-26	7372.51
18745	2020-09-12	10011.95
18746	2020-07-12	12758.85
18747	2024-10-22	14862.99
18748	2024-03-28	7650.64
18749	2021-04-12	8073.76
18750	2022-01-18	13091.37
18751	2024-01-23	16194.45
18752	2023-01-21	16964.55
18753	2023-09-04	12041.87
18754	2023-09-10	8971.92
18755	2022-05-07	7229.56
18756	2022-05-27	14943.00
18757	2024-01-17	14596.20
18758	2022-03-12	17195.99
18759	2022-10-14	17380.67
18760	2021-11-24	15526.47
18761	2020-04-19	12448.13
18762	2020-12-03	15180.86
18763	2020-06-24	14159.51
18764	2023-11-09	14985.80
18765	2024-04-07	16246.37
18766	2023-12-31	17907.65
18767	2022-05-22	13388.08
18768	2020-01-16	13715.49
18769	2022-06-23	11218.90
18770	2022-03-09	12412.10
18771	2020-11-20	15057.74
18772	2022-04-16	15794.67
18773	2022-09-06	6623.24
18774	2022-03-06	10184.95
18775	2021-01-05	9963.15
18776	2022-01-27	9354.67
18777	2024-02-21	9291.24
18778	2024-04-08	17867.86
18779	2020-10-05	13509.97
18780	2022-01-25	14671.36
18781	2022-09-12	12358.07
18782	2020-06-18	16588.29
18783	2022-05-29	13229.54
18784	2021-11-29	12760.58
18785	2024-06-23	16056.92
18786	2022-03-11	16423.26
18787	2021-12-07	8153.49
18788	2023-07-27	8347.92
18789	2024-09-15	9000.90
18790	2022-05-27	13056.48
18791	2022-01-05	13024.26
18792	2023-05-08	12217.95
18793	2023-07-14	11906.11
18794	2022-09-24	10861.59
18795	2021-09-17	6825.98
18796	2024-01-15	9965.75
18797	2024-08-07	11780.84
18798	2020-07-10	7645.48
18799	2022-02-17	12502.48
18800	2020-05-17	17572.44
18801	2024-11-25	14755.37
18802	2024-01-13	7513.66
18803	2020-06-30	15623.29
18804	2021-08-03	16330.82
18805	2020-03-10	13683.62
18806	2023-12-25	13921.19
18807	2024-11-07	6843.93
18808	2024-07-07	8139.86
18809	2022-02-28	17283.06
18810	2023-12-11	8194.10
18811	2022-12-09	8103.75
18812	2023-06-22	16526.55
18813	2020-06-29	14460.57
18814	2020-01-04	14048.14
18815	2022-05-07	17325.38
18816	2022-08-22	7269.13
18817	2020-09-05	7633.90
18818	2024-02-03	12378.45
18819	2023-12-31	13334.63
18820	2022-05-20	7282.44
18821	2024-08-07	15750.81
18822	2024-04-18	6683.40
18823	2021-01-22	11389.79
18824	2020-08-25	13664.07
18825	2022-03-15	11626.31
18826	2024-09-08	10635.22
18827	2023-09-29	13434.98
18828	2022-09-22	12049.13
18829	2023-07-28	9564.79
18830	2022-11-03	8816.35
18831	2022-01-01	6891.36
18832	2021-02-15	6831.79
18833	2023-12-16	8897.95
18834	2021-07-31	17551.59
18835	2020-10-01	17907.67
18836	2022-02-13	12153.69
18837	2022-02-05	13067.35
18838	2021-03-15	8421.50
18839	2024-03-29	12817.99
18840	2020-03-14	13775.63
18841	2023-10-18	15486.61
18842	2021-05-08	13409.78
18843	2021-01-04	16455.38
18844	2023-12-11	17959.21
18845	2023-06-04	16624.72
18846	2020-11-11	8972.83
18847	2021-11-15	14736.92
18848	2022-06-24	6932.87
18849	2021-03-19	6646.99
18850	2020-07-01	17607.00
18851	2021-12-29	10749.40
18852	2023-06-13	10303.27
18853	2020-03-11	10536.47
18854	2023-12-01	16618.52
18855	2021-07-21	17106.20
18856	2021-12-10	9623.33
18857	2023-06-17	17248.37
18858	2023-09-19	18048.36
18859	2020-06-18	8736.57
18860	2021-07-23	12755.34
18861	2021-09-09	13907.93
18862	2022-02-22	7135.43
18863	2024-06-21	14954.92
18864	2022-02-02	17765.53
18865	2023-03-02	14735.21
18866	2020-11-21	9577.48
18867	2024-02-18	16687.15
18868	2022-09-03	11270.60
18869	2020-05-05	8978.64
18870	2023-11-17	9184.13
18871	2021-01-30	13474.56
18872	2022-05-10	7880.46
18873	2024-11-29	9374.98
18874	2023-05-30	10956.46
18875	2024-04-25	14697.03
18876	2022-09-11	6715.20
18877	2024-08-19	7660.91
18878	2023-06-18	17891.75
18879	2022-09-25	9940.17
18880	2023-06-12	11622.58
18881	2021-10-04	16598.64
18882	2021-10-09	7338.49
18883	2022-08-28	17208.56
18884	2023-08-06	10810.37
18885	2023-06-13	8491.88
18886	2020-08-25	8671.01
18887	2022-12-22	17195.49
18888	2021-09-15	7009.64
18889	2022-05-14	14553.53
18890	2020-08-28	7980.84
18891	2022-11-25	17879.34
18892	2024-07-10	15010.83
18893	2023-09-10	10886.38
18894	2020-08-22	8965.16
18895	2021-11-09	15470.67
18896	2021-08-15	17739.02
18897	2024-11-28	14923.49
18898	2021-12-16	7092.22
18899	2023-09-16	17048.69
18900	2024-09-27	14349.61
18901	2023-12-05	12983.24
18902	2023-05-23	16832.19
18903	2022-09-25	7676.29
18904	2024-07-21	8099.68
18905	2023-07-04	11570.61
18906	2022-10-16	13394.69
18907	2021-07-10	12496.18
18908	2024-08-24	16248.42
18909	2020-11-12	9152.89
18910	2023-07-16	10370.58
18911	2024-04-02	6628.48
18912	2020-09-05	12116.57
18913	2020-05-09	11664.53
18914	2022-07-29	17313.20
18915	2023-04-12	13373.36
18916	2021-12-09	16518.37
18917	2020-01-02	7529.15
18918	2024-07-27	12146.03
18919	2023-12-10	14376.83
18920	2023-06-27	12748.68
18921	2020-01-10	6759.96
18922	2021-05-21	13969.99
18923	2020-06-08	8422.09
18924	2020-10-20	10629.37
18925	2022-01-13	11329.81
18926	2023-05-21	9607.51
18927	2023-01-28	14557.10
18928	2022-04-24	14048.30
18929	2023-10-01	14362.80
18930	2023-02-25	17269.90
18931	2020-04-17	17369.74
18932	2023-07-19	11697.58
18933	2020-06-02	13990.21
18934	2022-04-13	7432.49
18935	2024-10-05	7172.91
18936	2024-12-04	8875.78
18937	2020-01-09	8216.09
18938	2020-03-31	12841.02
18939	2024-04-01	9736.38
18940	2023-12-18	14398.43
18941	2020-03-31	9907.09
18942	2024-03-06	10241.78
18943	2020-07-29	15159.43
18944	2023-05-24	15549.26
18945	2021-09-24	16436.68
18946	2023-09-02	10988.59
18947	2022-03-02	10192.34
18948	2022-01-06	11418.92
18949	2022-05-01	12538.21
18950	2022-03-26	13589.48
18951	2021-01-27	9161.49
18952	2020-06-13	11496.77
18953	2023-02-27	16998.46
18954	2021-06-02	8188.29
18955	2022-02-05	6987.05
18956	2022-11-29	15298.55
18957	2020-07-14	15815.43
18958	2023-06-07	14362.48
18959	2020-05-08	12790.62
18960	2024-11-07	8604.25
18961	2021-06-28	11884.92
18962	2023-11-27	7174.52
18963	2021-03-06	7861.89
18964	2022-02-25	17501.73
18965	2021-08-18	14246.48
18966	2022-04-27	7042.09
18967	2024-06-20	7393.65
18968	2023-09-25	17122.46
18969	2023-12-07	11923.69
18970	2021-05-24	8377.61
18971	2021-03-18	7836.75
18972	2022-07-30	6996.56
18973	2024-05-12	15876.63
18974	2022-02-24	13228.67
18975	2023-06-21	17109.16
18976	2020-07-16	14214.79
18977	2021-04-11	18066.35
18978	2020-08-28	7786.86
18979	2022-11-02	12390.78
18980	2020-10-08	9868.84
18981	2023-07-18	14296.61
18982	2022-03-22	13790.64
18983	2022-08-03	13630.41
18984	2024-06-06	13662.89
18985	2020-07-19	10031.68
18986	2023-06-14	17701.05
18987	2021-02-06	16820.54
18988	2020-01-07	6875.36
18989	2024-07-16	17061.20
18990	2020-10-16	15084.14
18991	2023-04-07	17030.55
18992	2023-01-14	10935.01
18993	2020-07-09	12392.18
18994	2024-02-20	6668.03
18995	2022-02-24	11604.53
18996	2024-07-28	8085.11
18997	2021-07-29	8769.38
18998	2024-04-13	8396.61
18999	2023-01-04	17574.93
19000	2024-09-26	14684.89
19001	2021-03-07	12058.50
19002	2020-02-01	16366.69
19003	2022-10-19	15217.94
19004	2021-06-09	16407.84
19005	2020-11-17	12852.11
19006	2020-09-13	13040.21
19007	2022-11-19	15510.55
19008	2023-09-09	7310.01
19009	2020-01-05	6681.48
19010	2024-09-13	17772.96
19011	2023-07-15	13698.92
19012	2020-04-10	7820.57
19013	2020-01-04	14485.41
19014	2024-06-22	10995.77
19015	2020-03-31	11398.37
19016	2021-03-16	16733.65
19017	2021-09-30	16780.89
19018	2022-01-29	15910.47
19019	2020-12-31	7871.96
19020	2021-03-26	9681.87
19021	2021-10-01	7852.41
19022	2022-02-03	10355.55
19023	2024-05-12	17242.25
19024	2020-03-07	15695.49
19025	2021-06-08	12918.41
19026	2020-11-21	13433.82
19027	2024-07-03	11743.36
19028	2024-03-26	15182.84
19029	2022-06-14	7899.33
19030	2023-08-06	11142.20
19031	2020-04-06	14180.49
19032	2020-01-22	7790.34
19033	2024-11-12	14280.60
19034	2024-10-15	6662.79
19035	2020-08-24	10329.23
19036	2021-06-21	17360.93
19037	2023-04-09	13429.66
19038	2020-02-12	7951.48
19039	2021-06-21	17704.22
19040	2023-09-09	8865.13
19041	2021-07-25	17273.81
19042	2021-02-18	8143.47
19043	2022-01-14	8040.36
19044	2021-08-30	17347.56
19045	2023-12-29	10617.57
19046	2022-11-07	12623.61
19047	2021-03-30	8782.65
19048	2024-03-29	7819.67
19049	2024-10-01	8512.03
19050	2022-03-19	9293.97
19051	2020-07-22	13517.84
19052	2023-02-09	12100.99
19053	2022-07-30	15018.39
19054	2021-08-13	17374.58
19055	2024-09-05	14751.71
19056	2023-07-09	11033.74
19057	2020-02-10	11569.45
19058	2020-05-12	11807.31
19059	2022-11-03	10401.09
19060	2024-11-22	14302.31
19061	2020-12-21	11553.29
19062	2022-03-29	8936.17
19063	2024-06-19	12797.25
19064	2023-09-26	7566.55
19065	2020-01-01	11387.78
19066	2023-10-21	14547.52
19067	2020-08-04	7825.06
19068	2021-04-16	12179.92
19069	2020-05-30	7342.22
19070	2022-05-09	6790.52
19071	2022-02-13	17897.57
19072	2024-07-31	9295.45
19073	2020-02-16	15879.38
19074	2023-09-20	8476.49
19075	2021-05-31	8666.94
19076	2021-05-09	14952.67
19077	2023-03-05	13863.61
19078	2023-11-30	13748.57
19079	2021-03-22	16981.28
19080	2020-05-04	6886.34
19081	2024-10-11	16628.11
19082	2021-08-03	13098.54
19083	2024-06-01	7959.60
19084	2020-11-22	8982.05
19085	2020-01-31	11542.52
19086	2022-01-01	13004.95
19087	2020-08-10	15337.45
19088	2024-10-27	7270.72
19089	2021-03-28	8649.41
19090	2024-05-23	16319.40
19091	2021-10-08	8462.40
19092	2024-02-13	7688.64
19093	2020-07-07	7368.78
19094	2024-04-28	10195.98
19095	2023-06-12	12760.64
19096	2023-09-22	10548.60
19097	2022-12-18	11771.16
19098	2022-09-02	9369.54
19099	2021-10-04	18096.66
19100	2020-09-15	10213.07
19101	2020-03-03	11867.96
19102	2023-12-04	16480.36
19103	2021-12-25	17988.69
19104	2024-01-01	14548.11
19105	2023-04-22	11607.79
19106	2020-09-18	17350.90
19107	2024-04-12	15245.99
19108	2022-06-16	15716.01
19109	2022-12-27	13815.11
19110	2022-11-03	11191.93
19111	2023-11-27	11760.75
19112	2024-11-08	17872.73
19113	2023-03-04	10426.67
19115	2023-05-04	17263.60
19116	2022-05-31	14038.41
19117	2022-10-09	7262.90
19118	2022-04-04	8056.96
19119	2022-02-04	15904.46
19120	2022-05-27	16376.32
19121	2022-10-12	7858.88
19122	2021-08-26	10511.90
19123	2023-08-13	10255.30
19124	2023-07-10	15646.72
19125	2020-04-12	18066.34
19126	2020-07-29	6945.46
19127	2020-09-27	13813.91
19128	2021-11-23	13818.29
19129	2022-09-12	17287.38
19130	2024-04-24	11504.24
19131	2020-09-15	8870.11
19132	2021-07-27	14153.07
19133	2021-05-17	13993.02
19134	2020-04-15	17662.30
19135	2024-08-24	17700.07
19136	2021-07-11	12106.31
19137	2021-03-04	10760.87
19138	2024-06-02	13958.26
19139	2024-07-04	11435.35
19140	2021-06-26	16050.19
19141	2022-08-22	10549.09
19142	2021-02-02	7029.24
19143	2022-08-13	8183.67
19144	2024-10-23	15459.39
19145	2021-07-16	16385.51
19146	2022-06-15	17778.05
19147	2020-03-30	13883.23
19148	2021-05-16	7262.90
19149	2022-01-29	11570.43
19150	2024-07-19	15238.30
19151	2021-05-30	14822.67
19152	2020-09-20	8754.32
19153	2023-01-30	9215.05
19154	2024-10-27	7722.27
19155	2023-08-20	13553.98
19156	2023-09-21	11841.33
19157	2023-09-13	14440.52
19158	2022-02-06	17940.71
19159	2021-10-15	12450.36
19160	2023-05-16	13300.23
19161	2021-07-10	13848.17
19162	2023-01-19	16506.34
19163	2021-10-27	12975.26
19164	2023-12-22	10235.69
19165	2022-03-14	13480.51
19166	2021-05-09	17205.78
19167	2022-03-12	6944.92
19168	2021-03-06	11629.68
19169	2024-02-21	11444.35
19170	2023-06-02	12707.00
19171	2024-04-01	10795.62
19172	2022-02-16	10088.56
19173	2023-08-01	17006.09
19174	2022-03-13	16509.15
19175	2021-06-03	15575.34
19176	2020-07-16	7131.95
19177	2022-04-15	10743.26
19178	2022-08-25	16094.06
19179	2023-04-06	10253.34
19180	2024-08-30	12961.70
19181	2022-01-26	12036.15
19182	2022-01-02	12867.63
19183	2021-02-04	10927.46
19184	2024-06-20	16136.21
19185	2024-09-14	11902.84
19186	2023-10-31	12116.35
19187	2021-01-21	10162.12
19188	2020-07-15	12216.86
19189	2020-01-16	11746.04
19190	2021-10-30	6930.33
19191	2022-08-15	11516.42
19192	2023-09-24	8391.28
19193	2023-10-04	13385.60
19194	2023-08-10	15349.92
19195	2022-10-13	15637.20
19196	2022-06-05	14482.77
19197	2023-09-25	17132.23
19198	2023-08-02	11759.80
19199	2023-12-16	11416.86
19200	2022-03-13	10193.08
19201	2021-08-06	11342.04
19202	2022-07-26	11596.17
19203	2020-10-30	12793.28
19204	2020-09-16	12108.70
19205	2021-09-28	17394.72
19206	2022-08-13	17358.78
19207	2021-03-18	8491.25
19208	2024-05-26	16127.82
19209	2023-05-29	9419.05
19210	2023-02-01	13922.09
19211	2022-07-25	16309.47
19212	2021-10-11	15198.07
19213	2024-03-23	17127.96
19214	2024-08-21	14219.85
19215	2023-09-11	7715.49
19216	2024-01-22	16222.21
19217	2024-11-13	9373.80
19218	2023-08-30	16250.85
19219	2022-12-06	10104.79
19220	2022-12-08	9022.33
19221	2020-04-08	9224.96
19222	2020-12-21	18008.88
19223	2024-11-16	13235.82
19224	2023-02-25	14429.51
19225	2022-05-23	16436.17
19226	2021-10-29	14052.66
19227	2021-04-02	12437.24
19228	2020-07-29	16823.89
19229	2022-01-22	16563.97
19230	2022-03-12	9042.63
19231	2024-11-05	13378.03
19232	2022-05-11	8672.01
19233	2023-11-22	15974.75
19234	2020-03-17	15204.60
19235	2022-11-21	13138.18
19236	2021-12-22	11757.78
19237	2023-02-11	9741.07
19238	2023-09-30	16495.41
19239	2024-08-24	9559.81
19240	2023-04-29	7039.85
19241	2022-05-08	6856.89
19242	2024-02-23	8564.38
19243	2021-08-14	7584.86
19244	2021-11-16	8245.55
19245	2023-03-07	14299.93
19246	2021-02-19	11797.79
19247	2023-04-05	6855.59
19248	2023-03-11	13524.27
19249	2023-09-02	16878.93
19250	2022-02-17	7443.25
19251	2022-09-29	10688.37
19252	2024-06-13	12123.44
19253	2024-05-14	11890.46
19254	2021-02-19	7146.10
19255	2022-08-17	12855.36
19256	2020-12-02	15780.20
19257	2024-06-04	12079.41
19258	2024-05-14	15423.98
19259	2021-03-27	6702.17
19260	2021-01-10	10021.03
19261	2022-08-28	14892.21
19262	2023-11-24	13937.92
19263	2022-04-19	9072.22
19264	2023-02-20	8710.47
19265	2024-01-03	15025.05
19266	2020-11-04	11200.21
19267	2022-06-14	10958.96
19268	2022-11-26	16654.07
19269	2021-07-26	9741.97
19270	2023-08-13	12979.19
19271	2020-03-24	15868.00
19272	2020-10-24	11857.52
19273	2021-10-19	17275.03
19274	2023-07-11	14949.63
19275	2020-11-05	9058.09
19276	2020-08-20	14843.53
19277	2023-10-26	6737.53
19278	2024-10-25	11549.56
19279	2021-12-14	17495.17
19280	2022-04-24	7430.96
19281	2022-04-05	12739.17
19282	2020-10-04	12274.48
19283	2022-06-14	14650.49
19284	2022-12-24	7231.07
19285	2022-10-14	15798.13
19286	2022-07-29	10641.67
19287	2022-11-26	16414.21
19288	2024-02-17	10319.15
19289	2021-06-19	16271.33
19290	2022-03-03	15239.05
19291	2023-04-01	9633.47
19292	2022-11-11	10917.22
19293	2023-05-24	8064.41
19294	2022-04-10	12328.66
19295	2020-11-26	12379.34
19296	2024-03-30	14578.36
19297	2023-10-18	17338.62
19298	2020-08-13	10407.30
19299	2021-09-10	8250.47
19300	2021-04-09	11309.32
19301	2022-03-12	14760.80
19302	2020-09-02	12683.61
19303	2023-07-01	14443.09
19304	2021-01-10	8614.39
19305	2024-04-10	14322.80
19306	2024-02-18	14320.47
19307	2021-05-30	11917.31
19308	2022-07-15	8041.74
19309	2021-09-28	12226.08
19310	2022-09-12	14752.25
19311	2024-05-05	15471.86
19312	2024-05-02	17441.10
19313	2023-10-04	7059.26
19314	2022-11-13	16231.30
19315	2021-05-26	13299.01
19316	2022-09-20	10187.36
19317	2023-04-22	9206.73
19318	2023-04-27	9944.44
19319	2021-05-25	10754.12
19320	2023-12-23	15376.30
19321	2021-01-08	7543.08
19322	2023-11-11	6892.06
19323	2023-01-22	18034.82
19324	2020-12-19	6892.62
19325	2020-05-09	10361.17
19326	2024-04-07	14105.65
19327	2022-05-10	13473.41
19328	2024-03-03	15682.91
19329	2023-08-27	13830.72
19330	2022-12-20	14550.05
19331	2020-02-16	14227.61
19332	2023-10-14	12596.46
19333	2020-08-22	13025.15
19334	2022-12-22	8049.14
19335	2022-01-30	13560.74
19336	2022-12-10	13223.32
19337	2021-08-31	12792.41
19338	2022-04-22	13729.87
19339	2020-01-18	17621.31
19340	2022-09-20	7142.82
19341	2021-10-09	10983.88
19342	2022-05-05	12294.28
19343	2024-09-16	8979.19
19344	2021-06-28	10065.06
19345	2021-02-22	14853.73
19346	2021-11-13	8934.53
19347	2020-04-09	17494.59
19348	2023-07-06	14478.79
19349	2021-04-23	7701.92
19350	2024-04-20	16852.72
19351	2023-03-10	11365.94
19352	2024-03-05	16392.80
19353	2020-03-16	12740.17
19354	2020-09-09	11586.84
19355	2024-06-30	10341.50
19356	2023-06-10	8553.12
19357	2024-06-23	9601.50
19358	2023-12-13	14799.74
19359	2023-12-14	7126.55
19360	2021-01-04	10843.38
19361	2024-02-18	15131.18
19362	2023-11-30	9080.60
19363	2024-04-01	13546.32
19364	2022-08-08	10842.68
19365	2024-06-13	12496.98
19366	2021-04-17	9940.78
19367	2023-09-14	10977.46
19368	2024-02-26	9316.73
19369	2024-10-02	12046.69
19370	2021-07-20	6608.60
19371	2024-11-23	7308.02
19372	2020-06-24	7299.86
19373	2024-10-14	12600.79
19374	2022-01-08	13045.59
19375	2022-05-13	11878.40
19376	2024-11-03	12054.40
19377	2022-05-16	16707.20
19378	2023-10-21	11561.20
19379	2023-05-10	7700.41
19380	2021-06-03	7193.75
19381	2023-01-09	11365.97
19382	2021-08-09	16990.16
19383	2023-10-02	16434.15
19384	2022-03-24	7429.80
19385	2022-10-22	6995.82
19386	2024-07-26	17037.10
19387	2024-07-24	13801.06
19388	2020-05-19	16656.14
19389	2020-01-14	11234.88
19390	2024-11-05	9025.19
19391	2020-02-02	12678.60
19392	2024-04-22	10354.77
19393	2024-11-14	16571.33
19394	2023-10-16	10869.25
19395	2021-05-19	11824.14
19396	2022-12-21	14464.86
19397	2020-06-07	8879.52
19398	2022-06-03	15099.22
19399	2023-01-14	13786.15
19400	2024-06-04	7987.16
19401	2020-05-25	8730.92
19402	2024-11-24	10658.58
19403	2020-05-03	16834.40
19404	2023-01-16	10122.49
19405	2023-10-09	13378.02
19406	2020-10-09	10707.27
19407	2023-09-29	11231.83
19408	2023-05-17	17669.61
19409	2024-05-30	11714.93
19410	2020-09-23	9012.43
19411	2020-10-19	16919.77
19412	2024-07-01	15131.45
19413	2021-12-18	12514.75
19414	2020-10-27	14313.89
19415	2022-06-17	9161.08
19416	2020-05-19	6826.18
19417	2023-03-10	6892.12
19418	2024-03-22	13224.26
19419	2021-12-05	13051.67
19420	2020-08-18	16669.46
19421	2024-09-29	9268.67
19422	2021-04-28	17404.39
19423	2023-01-13	13488.88
19424	2022-12-18	14964.13
19425	2023-08-06	11283.89
19426	2021-07-31	6942.53
19427	2020-07-27	17121.21
19428	2022-12-24	12699.73
19429	2023-02-28	14428.84
19430	2023-06-15	9170.11
19431	2024-03-16	15855.42
19432	2023-08-17	8080.17
19433	2022-08-28	9331.56
19434	2021-03-20	9660.36
19435	2022-04-03	17389.62
19436	2023-10-16	14034.59
19437	2021-04-21	12348.60
19438	2020-02-23	10153.81
19439	2022-02-08	14183.55
19440	2022-03-23	10320.37
19441	2021-10-28	16623.71
19442	2022-07-16	16889.93
19443	2024-10-17	10456.78
19444	2024-05-22	14914.45
19445	2024-01-24	7064.90
19446	2021-07-07	6737.13
19447	2023-12-31	6801.08
19448	2024-08-18	16272.17
19449	2021-04-12	9396.20
19450	2023-03-22	8840.98
19451	2021-01-17	17480.55
19452	2024-08-30	12358.82
19453	2021-03-09	8442.76
19454	2021-07-29	10110.96
19455	2023-05-07	9118.35
19456	2021-02-19	7914.73
19457	2023-05-30	15260.15
19458	2021-09-05	17587.97
19459	2024-02-12	16819.12
19460	2021-08-25	14409.16
19461	2020-06-22	7596.45
19462	2023-10-01	9274.49
19463	2021-01-28	14090.10
19464	2023-04-05	6620.15
19465	2021-01-23	9289.13
19466	2022-07-31	11425.07
19467	2020-08-20	17318.91
19468	2024-03-06	12400.44
19469	2024-10-17	9929.48
19470	2020-05-17	17024.08
19471	2022-11-23	6706.77
19472	2020-04-11	15264.42
19473	2023-03-11	12292.12
19474	2023-08-21	13202.38
19475	2023-01-04	7014.11
19476	2020-09-20	9252.22
19477	2023-03-06	11560.49
19478	2020-03-10	16572.25
19479	2020-03-04	18071.01
19480	2022-11-10	10295.18
19481	2023-07-07	8951.11
19482	2020-03-11	16695.82
19483	2024-04-20	15797.60
19484	2021-02-17	11602.64
19485	2021-10-26	7324.01
19486	2022-12-20	10422.05
19487	2020-06-22	16001.06
19488	2020-02-09	7974.96
19489	2020-05-13	15283.80
19490	2022-07-20	10005.27
19491	2022-02-07	11442.70
19492	2020-11-05	7241.62
19493	2024-09-22	15799.96
19494	2024-07-13	17484.03
19495	2020-10-02	16168.36
19496	2022-11-08	10886.28
19497	2023-06-20	17309.38
19498	2024-11-10	8396.25
19499	2022-11-07	14229.16
19500	2023-08-17	16091.78
19501	2022-04-26	11640.14
19502	2022-12-07	14637.25
19503	2023-08-15	10922.00
19504	2021-01-31	12063.97
19505	2023-03-25	9974.79
19506	2023-11-05	12431.80
19507	2020-10-29	11588.96
19508	2024-07-19	11742.19
19509	2022-10-28	15760.95
19510	2024-01-15	10271.62
19511	2023-03-22	8028.97
19512	2021-02-28	11203.47
19513	2021-12-18	7650.95
19514	2024-06-17	8644.05
19515	2020-08-16	7329.09
19516	2023-01-07	11272.74
19517	2023-12-24	13558.25
19518	2023-06-10	16115.07
19519	2022-04-12	12561.10
19520	2021-09-01	14356.29
19521	2020-01-09	8555.69
19522	2023-04-21	16989.91
19523	2022-04-02	14640.31
19524	2020-07-12	9224.69
19525	2022-08-13	11159.73
19526	2023-10-05	7403.91
19527	2021-12-04	8431.85
19528	2021-02-23	16319.11
19529	2021-12-07	16331.10
19530	2023-08-26	17560.57
19531	2021-11-01	10393.96
19532	2022-04-02	16065.51
19533	2023-05-06	11481.91
19534	2024-09-20	7904.47
19535	2020-10-11	14662.92
19536	2024-08-11	6667.40
19537	2024-04-14	12914.13
19538	2022-01-25	6776.05
19539	2022-04-22	12809.15
19540	2020-01-16	14843.97
19541	2022-06-02	10015.99
19542	2021-01-28	12731.68
19543	2021-11-27	14599.48
19544	2022-12-10	11137.38
19545	2024-05-12	7213.42
19546	2021-11-07	13099.43
19547	2022-01-31	14333.03
19548	2023-06-18	15611.95
19549	2021-02-08	15938.98
19550	2022-11-09	16959.77
19551	2024-08-06	16263.85
19552	2020-12-13	8094.63
19553	2023-01-15	8011.74
19554	2021-01-12	13709.60
19555	2023-12-09	17567.00
19556	2020-03-30	10712.40
19557	2022-12-13	12197.25
19558	2023-04-13	10410.80
19559	2024-08-19	17163.29
19560	2021-07-15	9178.93
19561	2024-12-02	10725.47
19562	2022-03-09	10801.44
19563	2023-10-15	7542.23
19564	2020-11-15	12600.11
19565	2020-11-09	17002.00
19566	2021-09-16	18011.94
19567	2024-03-28	11305.01
19568	2020-10-10	17763.05
19569	2023-06-27	7190.37
19570	2022-11-05	13841.93
19571	2021-12-29	11978.71
19572	2020-07-17	16147.47
19573	2023-04-29	11484.75
19574	2021-07-08	16105.39
19575	2024-11-09	17556.77
19576	2023-11-05	8340.85
19577	2021-03-31	8017.93
19578	2021-08-20	12224.96
19579	2022-04-05	10845.01
19580	2021-11-28	13119.17
19581	2021-06-25	13668.77
19582	2024-03-08	13576.04
19583	2023-07-21	17617.42
19584	2021-06-02	6694.15
19585	2022-11-29	9280.91
19586	2021-12-08	7144.44
19587	2021-10-18	8182.36
19588	2024-04-16	17333.12
19589	2021-12-19	14769.71
19590	2023-08-03	11997.82
19591	2021-12-25	17135.47
19592	2023-12-07	9533.48
19593	2024-09-16	14769.28
19594	2021-03-23	7078.97
19595	2024-11-21	16947.22
19596	2023-05-15	14627.58
19597	2024-08-25	13978.44
19598	2022-02-16	12550.91
19599	2023-10-15	14102.60
19600	2020-12-12	12401.19
19601	2020-06-11	8399.02
19602	2024-10-21	12672.32
19603	2022-08-30	9709.13
19604	2024-10-18	10060.60
19605	2022-08-24	9112.13
19606	2023-04-04	11896.03
19607	2023-06-08	13663.25
19608	2022-08-04	14693.83
19609	2023-12-15	9744.28
19610	2020-10-19	15480.26
19611	2020-04-01	12156.57
19612	2021-03-05	7886.87
19613	2020-10-06	13509.43
19614	2023-05-04	6858.12
19615	2020-11-05	12955.04
19616	2022-11-24	11226.88
19617	2022-10-29	8489.76
19618	2020-10-09	7545.74
19619	2022-03-16	10651.57
19620	2023-11-08	16547.35
19621	2023-08-12	15136.69
19622	2024-05-21	15068.30
19623	2021-08-08	16232.08
19624	2020-03-16	11055.05
19625	2020-09-23	11681.57
19626	2020-07-17	9907.59
19627	2023-01-07	12837.95
19628	2023-07-26	7495.39
19629	2020-04-11	10765.05
19630	2023-05-02	17272.56
19631	2023-08-14	15958.25
19632	2023-10-10	6682.81
19633	2022-06-13	10725.14
19634	2020-08-02	16017.09
19635	2021-12-24	13832.22
19636	2021-11-28	15090.02
19637	2020-07-05	12492.04
19638	2024-04-06	10364.15
19639	2024-09-24	18046.46
19640	2021-04-29	7322.75
19641	2020-12-13	11616.33
19642	2023-02-07	10986.62
19643	2023-12-12	7123.25
19644	2023-07-07	14794.36
19645	2022-05-26	7612.19
19646	2023-05-25	11091.90
19647	2020-10-09	7149.39
19648	2023-11-04	8262.33
19649	2021-01-10	8602.79
19650	2020-12-06	17738.85
19651	2023-10-26	16759.00
19652	2024-02-26	13057.36
19653	2024-04-26	9670.87
19654	2023-06-25	8845.13
19655	2020-11-17	11199.44
19656	2020-05-02	9369.34
19657	2024-03-07	11968.57
19658	2023-04-01	10895.10
19659	2024-03-16	16949.91
19660	2024-02-21	8054.17
19661	2024-07-12	11990.10
19662	2022-04-08	8167.26
19663	2021-06-25	6736.58
19664	2023-04-21	7081.49
19665	2022-03-01	17883.85
19666	2020-10-18	17000.65
19667	2023-06-26	15246.42
19668	2021-10-28	7011.96
19669	2020-07-15	17761.17
19670	2022-06-25	10851.89
19671	2022-08-02	7769.56
19672	2022-11-23	9291.73
19673	2023-07-09	7122.70
19674	2023-07-02	8942.09
19675	2023-09-14	12083.70
19676	2024-04-12	11850.19
19677	2023-01-22	13591.13
19678	2022-07-06	7970.03
19679	2023-02-28	9609.84
19680	2020-06-03	16135.48
19681	2023-01-02	12613.32
19682	2020-04-11	12150.17
19683	2022-02-16	13028.30
19684	2024-02-09	12835.00
19685	2024-06-12	12301.01
19686	2021-05-06	17074.56
19687	2024-04-24	18098.48
19688	2024-07-23	8852.40
19689	2022-06-20	16325.35
19690	2022-01-15	17055.51
19691	2024-09-03	14632.64
19692	2023-05-08	16878.00
19693	2021-09-09	15385.41
19694	2023-03-03	14870.59
19695	2021-04-18	10982.88
19696	2021-07-02	16464.59
19697	2022-12-14	7001.21
19698	2024-09-24	14016.95
19699	2022-06-20	17363.52
19700	2023-11-04	11878.07
19701	2024-01-22	16180.51
19702	2020-12-18	13487.08
19703	2023-06-21	8222.93
19704	2024-09-08	7584.12
19705	2022-02-23	16106.41
19706	2021-07-13	11593.10
19707	2020-09-10	11044.37
19708	2020-11-26	7215.13
19709	2021-02-10	13832.41
19710	2020-05-08	9748.54
19711	2022-02-17	12673.33
19712	2021-06-06	6720.51
19713	2020-10-05	10234.23
19714	2022-07-03	14066.47
19715	2023-08-28	11320.60
19716	2023-07-19	15976.58
19717	2022-06-11	11081.70
19718	2020-02-29	16414.88
19719	2021-08-01	17971.72
19720	2020-01-31	6665.33
19721	2023-07-11	12939.55
19722	2022-12-09	7017.16
19723	2021-01-12	14714.27
19724	2023-11-10	12065.81
19725	2021-03-22	9624.42
19726	2023-08-23	8931.77
19727	2020-07-27	9646.88
19728	2022-03-20	12147.06
19729	2020-03-23	11251.87
19730	2021-07-02	10899.57
19731	2021-01-03	17380.72
19732	2022-05-27	12777.49
19733	2023-11-18	14386.06
19734	2021-09-10	8230.12
19735	2024-10-03	14367.63
19736	2022-02-07	11846.91
19737	2020-12-20	17394.66
19738	2021-08-17	9111.96
19739	2022-02-20	8302.47
19740	2022-01-28	14224.49
19741	2022-03-10	6762.56
19742	2020-11-25	7126.80
19743	2023-09-30	17681.19
19744	2023-02-23	8639.42
19745	2022-03-10	11079.15
19746	2021-02-12	8135.91
19747	2023-05-10	14818.77
19748	2022-10-05	14437.09
19749	2021-10-24	11832.60
19750	2022-06-30	15231.39
19751	2021-05-01	17234.12
19752	2020-11-18	14609.32
19753	2021-01-31	11941.89
19754	2024-11-03	14090.23
19755	2022-08-03	16795.73
19756	2021-09-15	16266.01
19757	2022-01-17	11204.15
19758	2022-08-13	9052.66
19759	2022-06-27	14680.92
19760	2022-01-07	16864.29
19761	2024-08-07	13200.42
19762	2023-09-26	14487.93
19763	2023-10-30	12842.96
19764	2020-12-25	14289.87
19765	2023-04-02	9306.65
19766	2022-01-04	15999.87
19767	2020-09-30	12622.69
19768	2024-01-12	10074.25
19769	2020-09-02	17580.01
19770	2021-05-30	8265.59
19771	2024-03-15	6624.18
19772	2022-05-17	12254.12
19773	2020-10-07	9006.91
19774	2024-10-10	13745.36
19775	2023-06-08	15924.49
19776	2023-09-27	16886.75
19777	2022-12-20	17956.06
19778	2020-03-30	17357.64
19779	2020-03-29	7873.80
19780	2024-09-04	16212.16
19781	2023-02-18	8001.41
19782	2023-09-17	11553.59
19783	2024-04-16	6974.09
19784	2022-11-23	13965.01
19785	2020-12-13	16016.73
19786	2024-03-24	9688.65
19787	2024-05-02	11962.41
19788	2021-05-21	12362.22
19789	2020-11-15	12242.78
19790	2024-03-23	17409.60
19791	2023-05-05	17342.23
19792	2020-03-08	7586.08
19793	2023-01-03	16603.07
19794	2020-11-22	15803.36
19795	2023-11-17	11945.39
19796	2023-08-10	14657.56
19797	2021-03-05	18037.71
19798	2021-11-23	16372.31
19799	2023-11-27	17207.06
19800	2022-04-16	12540.19
19801	2020-12-23	10841.57
19802	2021-07-06	12626.73
19803	2024-09-15	17670.89
19804	2020-11-19	10033.61
19805	2023-10-25	10621.25
19806	2024-07-25	14013.65
19807	2020-02-14	13295.01
19808	2024-01-31	13045.05
19809	2023-12-23	15603.85
19810	2022-05-05	8954.41
19811	2023-05-06	11771.27
19812	2022-05-29	9855.31
19813	2020-10-10	9886.04
19814	2021-12-30	7721.66
19815	2024-01-12	9950.55
19816	2020-11-25	10658.81
19817	2024-01-26	14331.63
19818	2024-02-04	17944.87
19819	2024-02-22	14957.49
19820	2024-12-01	7467.61
19821	2020-03-31	16190.72
19822	2023-06-26	10466.18
19823	2020-08-02	16406.43
19824	2020-04-27	7457.97
19825	2022-05-20	7976.16
19826	2023-03-03	6600.61
19827	2020-01-28	13781.97
19828	2024-08-12	17085.02
19829	2021-01-01	17089.14
19830	2020-10-11	12753.76
19831	2021-12-08	7495.24
19832	2020-12-01	11161.95
19833	2020-10-05	16243.14
19834	2024-06-27	8769.44
19835	2020-10-16	11661.92
19836	2024-08-22	14893.40
19837	2020-03-02	15075.46
19838	2022-01-03	14842.30
19839	2020-06-05	6987.13
19840	2020-06-01	17167.34
19841	2021-08-20	15271.60
19842	2021-05-22	7916.31
19843	2023-01-18	15845.82
19844	2020-01-04	8770.94
19845	2020-03-06	13422.86
19846	2023-07-16	16973.21
19847	2024-10-08	12243.33
19848	2023-07-15	17955.59
19849	2022-10-17	6977.88
19850	2021-03-01	8781.75
19851	2021-01-04	12536.46
19852	2023-07-06	8067.87
19853	2021-07-04	16340.58
19854	2021-04-03	9219.46
19855	2020-12-30	10275.67
19856	2020-03-09	15720.76
19857	2024-07-12	14184.38
19858	2022-05-30	10390.16
19859	2022-04-20	9693.80
19860	2020-08-21	16732.15
19861	2023-12-18	11907.50
19862	2023-05-08	17284.35
19863	2020-02-04	17673.98
19864	2023-11-15	9489.58
19865	2020-10-18	7189.20
19866	2020-08-01	15102.75
19867	2023-04-15	11358.16
19868	2021-08-12	13571.95
19869	2023-02-26	8940.19
19870	2021-05-13	15103.18
19871	2021-08-18	14547.94
19872	2021-06-07	15266.77
19873	2024-06-27	8294.16
19874	2020-10-08	15390.17
19875	2020-10-11	7186.68
19876	2023-06-16	13510.13
19877	2023-01-20	11029.76
19878	2023-08-24	13221.66
19879	2021-10-15	16088.73
19880	2024-05-05	15972.72
19881	2020-05-02	13739.76
19882	2021-11-18	15979.55
19883	2023-03-07	9627.86
19884	2020-03-25	11195.24
19885	2021-08-23	17506.61
19886	2024-06-13	7499.53
19887	2021-12-12	11697.56
19888	2021-02-01	7113.16
19889	2020-09-22	14835.31
19890	2022-05-04	8512.73
19891	2020-07-01	8147.40
19892	2022-01-12	6668.23
19893	2022-10-24	7276.10
19894	2023-04-04	15249.60
19895	2020-07-20	7428.43
19896	2023-08-09	16758.46
19897	2021-10-27	7127.27
19898	2021-07-08	7055.62
19899	2023-10-21	7004.87
19900	2024-09-22	16645.02
19901	2024-06-14	7895.89
19902	2020-07-18	15548.50
19903	2021-08-18	11438.59
19904	2023-07-05	10343.04
19905	2023-12-17	10265.95
19906	2021-12-04	8544.43
19907	2023-01-25	6865.11
19908	2021-07-08	16716.47
19909	2021-08-07	8999.58
19910	2021-04-21	10837.34
19911	2024-04-20	8440.71
19912	2024-03-20	12153.52
19913	2020-06-12	9387.66
19914	2020-12-18	16630.61
19915	2023-08-15	7457.52
19916	2021-03-15	11190.44
19917	2022-06-12	6903.79
19918	2020-09-17	6900.03
19919	2023-10-24	11482.33
19920	2024-04-17	12383.97
19921	2024-08-20	9745.80
19922	2020-08-15	6727.21
19923	2022-03-07	13540.38
19924	2023-11-19	15396.53
19925	2021-02-09	11497.35
19926	2022-03-03	17521.89
19927	2021-08-05	17900.42
19928	2022-12-17	10772.13
19929	2024-02-11	13939.64
19930	2023-08-02	15142.10
19931	2023-02-14	8067.85
19932	2023-06-12	12124.57
19933	2023-11-01	17726.59
19934	2024-04-30	10165.22
19935	2024-05-26	17778.22
19936	2022-03-29	13357.93
19937	2022-03-02	10355.04
19938	2023-02-20	15490.53
19939	2023-08-05	16029.63
19940	2021-11-07	15468.05
19941	2021-01-18	10105.97
19942	2021-05-14	14044.57
19943	2022-01-03	8165.93
19944	2023-06-24	12680.16
19945	2021-07-21	13243.48
19946	2020-10-07	10433.69
19947	2023-06-20	11755.52
19948	2021-08-10	10561.92
19949	2024-07-20	11362.12
19950	2024-02-23	12899.67
19951	2022-01-22	15982.08
19952	2021-02-02	8498.30
19953	2023-08-07	11720.09
19954	2020-11-12	6937.94
19955	2024-01-19	10502.25
19956	2024-12-02	12709.10
19957	2020-01-06	9589.94
19958	2020-02-20	9046.45
19959	2022-08-05	14376.15
19960	2020-09-27	18039.77
19961	2020-11-17	15282.11
19962	2024-06-30	17774.98
19963	2021-08-27	13705.14
19964	2023-08-08	12669.97
19965	2023-05-08	8179.29
19966	2023-04-04	7009.55
19967	2021-01-28	17424.48
19968	2021-07-23	13404.53
19969	2020-04-12	15435.05
19970	2022-07-15	9588.43
19971	2022-01-14	14391.21
19972	2024-03-15	10818.86
19973	2023-07-29	13725.20
19974	2024-03-22	7322.25
19975	2021-12-22	6965.94
19976	2023-07-18	11599.65
19977	2023-05-11	16105.28
19978	2022-03-24	11154.56
19979	2024-09-19	17932.28
19980	2022-08-27	16253.54
19981	2023-12-16	16393.83
19982	2024-07-07	14549.12
19983	2022-11-12	11870.45
19984	2022-04-15	7766.88
19985	2021-11-02	15452.76
19986	2021-01-09	13404.99
19987	2020-07-01	11887.51
19988	2023-09-20	17591.16
19989	2021-09-03	8092.99
19990	2023-04-25	9800.84
19991	2021-01-13	10221.85
19992	2020-11-23	10671.21
19993	2021-09-23	12688.75
19994	2024-08-13	6613.64
19995	2023-04-03	14139.78
19996	2020-09-14	12337.50
19997	2022-02-21	13345.24
19998	2022-09-18	14003.46
19999	2022-03-12	10527.20
20000	2020-02-26	11354.27
2	2021-06-10	9423.77
4	2020-12-12	15045.06
6	2022-05-11	15773.04
7	2022-04-19	9748.11
8	2022-10-29	18174.22
11	2023-07-22	13513.50
13	2022-09-27	11769.28
14	2022-10-08	13937.87
15	2022-08-21	18245.42
16	2021-05-07	15758.56
17	2021-03-07	7552.79
18	2023-09-15	17228.11
19	2023-03-07	18812.27
20	2022-08-03	13659.29
21	2020-06-10	12240.47
26	2023-09-05	15508.21
28	2020-03-03	13907.34
30	2023-12-22	10606.66
31	2023-12-20	16655.25
33	2023-12-31	17675.15
34	2023-04-01	8775.10
36	2020-01-02	9233.30
41	2021-01-04	8160.72
42	2023-05-19	14861.07
47	2023-04-30	14480.92
48	2022-12-03	14960.00
49	2022-12-09	14593.86
50	2020-03-22	10266.45
52	2020-06-13	16014.25
54	2020-04-27	11320.53
56	2020-04-18	12433.12
57	2021-03-23	10324.71
58	2023-04-10	12782.05
59	2021-04-02	13724.11
60	2021-05-05	19045.76
61	2021-11-08	16254.03
63	2022-12-22	11821.11
64	2020-06-27	11519.07
67	2023-04-17	9046.03
73	2023-03-27	12760.64
74	2020-09-18	12145.23
75	2022-01-16	12835.11
77	2022-07-05	8658.95
81	2023-01-22	11072.25
82	2020-01-03	12229.11
83	2020-05-20	16781.82
84	2021-08-19	11959.21
85	2023-05-23	12298.38
86	2023-01-28	19230.66
87	2023-03-10	12004.55
90	2021-10-03	12203.91
91	2023-10-15	10339.52
92	2023-09-16	11791.02
93	2022-03-04	7773.13
97	2021-04-02	10052.72
98	2022-06-11	19859.95
100	2020-12-19	10034.27
101	2020-06-21	13267.29
102	2023-07-10	9798.57
103	2021-04-05	15261.98
108	2023-04-16	10713.91
111	2020-07-23	18640.35
113	2023-01-23	16756.00
115	2022-12-31	7691.80
116	2021-10-11	14296.12
120	2021-11-04	8736.60
121	2023-08-01	17060.68
122	2021-03-25	18948.54
123	2023-02-07	9904.12
124	2023-04-12	19758.42
127	2020-10-13	10596.46
128	2023-07-27	11077.14
129	2020-01-03	13871.38
130	2022-08-09	11888.39
131	2020-02-08	18547.22
132	2023-01-19	7355.77
135	2020-05-22	17121.04
136	2020-12-14	19360.96
137	2022-12-10	18216.52
146	2023-10-13	8917.42
149	2022-08-10	12904.46
153	2020-01-21	15300.15
154	2020-09-15	10771.08
157	2021-06-11	8576.41
158	2022-09-06	12858.64
159	2021-09-27	10330.13
160	2021-10-07	16953.84
162	2022-09-10	15091.77
163	2023-10-20	16567.94
164	2023-12-30	7513.67
166	2022-05-04	11322.83
167	2020-08-18	16066.32
168	2023-06-27	9424.99
170	2020-03-20	9114.36
171	2021-02-03	17586.36
174	2020-10-24	10737.43
177	2021-08-01	14136.70
179	2021-11-04	16817.62
182	2021-08-06	18004.89
184	2020-10-13	16765.94
189	2020-04-26	11716.83
191	2020-11-29	18187.63
194	2020-07-27	14372.50
196	2020-05-15	18435.78
197	2023-04-08	12133.19
199	2020-11-02	12257.77
201	2022-03-19	12859.24
206	2023-03-12	9738.67
207	2023-04-29	11042.53
208	2021-06-16	13028.65
209	2021-07-18	19007.44
210	2023-02-11	19295.28
211	2021-01-19	18128.14
216	2021-01-27	7766.76
217	2023-06-03	7297.42
219	2023-12-17	10469.17
220	2021-10-27	13001.78
222	2020-10-29	10159.98
223	2021-03-24	8145.05
224	2023-04-27	19833.74
226	2021-06-18	18592.02
227	2022-04-12	13009.08
228	2022-12-28	17796.56
229	2021-08-23	10016.01
230	2020-06-11	16764.41
232	2022-02-09	15770.73
233	2023-11-08	18825.06
234	2023-04-04	11491.19
236	2023-01-27	8610.44
242	2023-02-25	17244.73
243	2023-08-11	11821.09
246	2022-08-24	16971.60
247	2022-05-18	9273.21
248	2020-08-25	19011.57
249	2020-06-03	10206.33
252	2020-07-18	16108.84
253	2023-11-07	18254.86
254	2022-08-31	10641.14
258	2022-12-28	12703.20
260	2023-09-05	18164.48
262	2021-12-31	16022.72
265	2021-01-12	13898.17
267	2023-07-20	8034.56
268	2022-12-07	14279.52
270	2023-09-12	18653.40
274	2020-06-19	15474.92
276	2020-01-23	16196.31
285	2023-06-21	15939.96
287	2022-03-26	17185.48
288	2021-02-16	9030.82
289	2022-07-19	18991.74
291	2021-04-09	7918.40
292	2022-05-15	18849.16
293	2023-02-09	13546.19
294	2022-07-22	17712.12
295	2020-06-06	17918.93
296	2023-01-22	17937.45
301	2023-01-12	19670.29
302	2023-01-11	18420.56
306	2022-04-21	16104.63
308	2022-06-19	8412.85
309	2023-01-15	8051.10
310	2021-12-19	9038.50
311	2021-10-16	19054.08
312	2020-05-10	18628.41
313	2022-09-27	16107.74
314	2022-11-20	18139.71
315	2020-11-15	17426.42
319	2023-01-11	11473.36
321	2022-01-24	19015.07
323	2022-04-12	13820.39
325	2022-05-26	7876.69
327	2023-11-28	13678.74
328	2020-08-14	17909.45
331	2023-04-08	9043.18
332	2020-03-25	15107.26
336	2020-03-06	7991.90
338	2020-02-15	12129.36
340	2023-02-06	11033.51
342	2020-02-13	15570.88
346	2020-03-03	7855.21
347	2021-10-21	16235.82
349	2020-08-25	8205.30
350	2020-06-26	12248.24
351	2023-08-07	9048.57
352	2021-12-14	13332.95
355	2021-10-18	12060.26
356	2021-03-19	17217.93
359	2021-05-21	7598.30
360	2023-09-06	16735.08
361	2020-08-16	9040.89
364	2022-02-25	10899.58
366	2021-05-27	13045.63
368	2021-11-21	12884.60
377	2022-11-02	9011.66
379	2021-01-22	13664.13
380	2022-11-02	17925.82
381	2023-07-03	11855.84
383	2021-07-16	10982.41
386	2021-03-10	18086.89
388	2021-01-04	16261.61
393	2021-08-21	18426.12
394	2021-12-24	13498.65
395	2023-09-25	8020.56
396	2022-05-18	11728.45
399	2021-09-03	13474.00
400	2023-03-07	8787.39
401	2020-07-12	11725.06
402	2023-03-10	7989.07
403	2020-06-24	11343.94
404	2023-12-10	17055.26
406	2020-04-06	15078.26
407	2020-07-23	13398.38
411	2020-01-08	13656.66
416	2021-05-15	8282.76
417	2022-01-06	12332.42
418	2022-06-17	14074.71
419	2022-08-01	17659.34
420	2021-04-29	14810.93
423	2020-09-11	16149.23
424	2021-03-18	19342.30
425	2023-01-25	11858.93
426	2023-10-06	18259.90
427	2022-12-01	16525.37
430	2023-02-20	19725.22
431	2020-10-29	14736.27
435	2023-10-27	19293.90
437	2022-11-29	15710.73
438	2023-08-01	17003.44
440	2021-09-30	10889.22
446	2023-02-04	17067.90
447	2022-09-30	13700.99
448	2023-11-24	9044.74
449	2022-11-06	14538.56
450	2021-10-22	9726.93
451	2021-06-22	8042.13
456	2022-04-14	16081.80
462	2021-12-14	11511.42
464	2020-03-16	18306.40
467	2020-10-08	15423.17
468	2022-03-31	13611.81
473	2020-05-23	16586.05
474	2021-12-19	13301.09
476	2020-12-17	9456.80
478	2020-06-30	18989.04
479	2021-12-27	12056.38
480	2022-05-20	8091.80
485	2020-02-11	15790.60
486	2021-09-03	10967.68
488	2021-06-19	18897.57
489	2023-05-31	17894.25
494	2022-02-02	8685.90
495	2022-03-08	8527.24
\.


--
-- TOC entry 3408 (class 0 OID 24825)
-- Dependencies: 221
-- Data for Name: office; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.office (office_id, office_name, department_id, office_location) FROM stdin;
1	Pine Ridge Office	192	\N
2	Meadowbrook Office	326	\N
3	Maple Leaf Office	28	\N
4	Pine Ridge Office	230	\N
5	Sunset Office	61	\N
6	Pine Ridge Office	140	\N
7	Pine Ridge Office	491	\N
8	Golden Gate Office	93	\N
9	Cityscape Office	312	\N
10	Meadowbrook Office	191	\N
11	Sunset Office	366	\N
12	Sunset Office	230	\N
13	Cityscape Office	101	\N
14	Maple Leaf Office	299	\N
15	Harborview Office	83	\N
16	Riverfront Office	261	\N
17	Cityscape Office	260	\N
18	Meadowbrook Office	77	\N
19	Mountain Peak Office	311	\N
20	Pine Ridge Office	166	\N
21	Sunset Office	254	\N
22	Golden Gate Office	115	\N
23	Maple Leaf Office	151	\N
24	Ocean View Office	265	\N
25	Golden Gate Office	268	\N
26	Riverfront Office	371	\N
27	Cityscape Office	411	\N
28	Golden Gate Office	400	\N
29	Pine Ridge Office	202	\N
30	Cityscape Office	354	\N
31	Cityscape Office	115	\N
32	Ocean View Office	103	\N
33	Harborview Office	403	\N
34	Harborview Office	209	\N
35	Harborview Office	479	\N
36	Harborview Office	43	\N
37	Maple Leaf Office	99	\N
38	Meadowbrook Office	484	\N
39	Meadowbrook Office	386	\N
40	Riverfront Office	410	\N
41	Cityscape Office	337	\N
42	Riverfront Office	40	\N
43	Cityscape Office	197	\N
44	Harborview Office	436	\N
45	Mountain Peak Office	486	\N
46	Golden Gate Office	48	\N
47	Meadowbrook Office	100	\N
48	Cityscape Office	48	\N
49	Sunset Office	271	\N
50	Maple Leaf Office	144	\N
51	Riverfront Office	180	\N
52	Ocean View Office	493	\N
53	Meadowbrook Office	394	\N
54	Cityscape Office	299	\N
55	Harborview Office	424	\N
56	Riverfront Office	263	\N
57	Meadowbrook Office	382	\N
58	Maple Leaf Office	443	\N
59	Golden Gate Office	364	\N
60	Golden Gate Office	307	\N
61	Cityscape Office	499	\N
62	Harborview Office	210	\N
63	Golden Gate Office	371	\N
64	Cityscape Office	262	\N
65	Golden Gate Office	417	\N
66	Sunset Office	234	\N
67	Meadowbrook Office	187	\N
68	Riverfront Office	96	\N
69	Pine Ridge Office	299	\N
70	Golden Gate Office	170	\N
71	Harborview Office	41	\N
72	Pine Ridge Office	56	\N
73	Pine Ridge Office	128	\N
74	Sunset Office	470	\N
75	Ocean View Office	306	\N
76	Sunset Office	230	\N
77	Maple Leaf Office	482	\N
78	Maple Leaf Office	301	\N
79	Maple Leaf Office	409	\N
80	Pine Ridge Office	294	\N
81	Sunset Office	6	\N
82	Ocean View Office	18	\N
83	Cityscape Office	168	\N
84	Harborview Office	187	\N
85	Maple Leaf Office	147	\N
86	Ocean View Office	35	\N
87	Golden Gate Office	185	\N
88	Meadowbrook Office	280	\N
89	Maple Leaf Office	101	\N
90	Cityscape Office	357	\N
91	Harborview Office	416	\N
92	Riverfront Office	97	\N
93	Pine Ridge Office	322	\N
94	Cityscape Office	102	\N
95	Sunset Office	215	\N
96	Cityscape Office	377	\N
97	Pine Ridge Office	451	\N
98	Golden Gate Office	249	\N
99	Harborview Office	13	\N
100	Pine Ridge Office	35	\N
101	Ocean View Office	74	\N
102	Ocean View Office	255	\N
103	Ocean View Office	494	\N
104	Maple Leaf Office	251	\N
105	Meadowbrook Office	410	\N
106	Harborview Office	352	\N
107	Riverfront Office	103	\N
108	Pine Ridge Office	84	\N
109	Riverfront Office	410	\N
110	Maple Leaf Office	100	\N
111	Cityscape Office	473	\N
112	Pine Ridge Office	18	\N
113	Pine Ridge Office	488	\N
114	Ocean View Office	92	\N
115	Maple Leaf Office	74	\N
116	Ocean View Office	275	\N
117	Harborview Office	229	\N
118	Mountain Peak Office	469	\N
119	Riverfront Office	7	\N
120	Sunset Office	352	\N
121	Meadowbrook Office	33	\N
122	Harborview Office	245	\N
123	Pine Ridge Office	212	\N
124	Sunset Office	27	\N
125	Riverfront Office	74	\N
126	Harborview Office	126	\N
127	Riverfront Office	371	\N
129	Mountain Peak Office	326	\N
130	Golden Gate Office	202	\N
131	Ocean View Office	380	\N
132	Meadowbrook Office	266	\N
133	Meadowbrook Office	394	\N
134	Harborview Office	320	\N
135	Riverfront Office	227	\N
136	Sunset Office	257	\N
137	Harborview Office	118	\N
138	Maple Leaf Office	411	\N
139	Maple Leaf Office	120	\N
140	Golden Gate Office	321	\N
141	Meadowbrook Office	493	\N
142	Golden Gate Office	303	\N
143	Cityscape Office	468	\N
144	Harborview Office	407	\N
145	Maple Leaf Office	334	\N
146	Mountain Peak Office	370	\N
147	Maple Leaf Office	17	\N
148	Maple Leaf Office	249	\N
149	Maple Leaf Office	230	\N
150	Maple Leaf Office	379	\N
151	Harborview Office	372	\N
152	Pine Ridge Office	236	\N
153	Meadowbrook Office	331	\N
154	Golden Gate Office	360	\N
155	Sunset Office	215	\N
156	Riverfront Office	464	\N
157	Pine Ridge Office	3	\N
158	Meadowbrook Office	265	\N
159	Riverfront Office	293	\N
160	Sunset Office	321	\N
161	Cityscape Office	394	\N
162	Meadowbrook Office	490	\N
163	Golden Gate Office	181	\N
164	Harborview Office	262	\N
165	Riverfront Office	88	\N
166	Cityscape Office	370	\N
167	Golden Gate Office	24	\N
168	Riverfront Office	79	\N
169	Sunset Office	382	\N
170	Pine Ridge Office	248	\N
171	Sunset Office	469	\N
172	Ocean View Office	267	\N
173	Golden Gate Office	399	\N
174	Sunset Office	343	\N
175	Harborview Office	253	\N
176	Cityscape Office	164	\N
177	Pine Ridge Office	277	\N
178	Golden Gate Office	18	\N
179	Sunset Office	51	\N
180	Maple Leaf Office	239	\N
181	Mountain Peak Office	209	\N
182	Maple Leaf Office	196	\N
183	Sunset Office	435	\N
184	Meadowbrook Office	308	\N
185	Ocean View Office	104	\N
186	Cityscape Office	443	\N
187	Maple Leaf Office	459	\N
188	Cityscape Office	301	\N
189	Harborview Office	205	\N
190	Mountain Peak Office	453	\N
191	Riverfront Office	149	\N
192	Golden Gate Office	58	\N
193	Cityscape Office	314	\N
194	Riverfront Office	457	\N
195	Cityscape Office	96	\N
196	Maple Leaf Office	428	\N
197	Cityscape Office	346	\N
198	Ocean View Office	444	\N
199	Mountain Peak Office	207	\N
200	Cityscape Office	41	\N
201	Mountain Peak Office	44	\N
202	Cityscape Office	440	\N
203	Harborview Office	171	\N
204	Pine Ridge Office	245	\N
205	Mountain Peak Office	199	\N
206	Cityscape Office	33	\N
207	Harborview Office	35	\N
208	Harborview Office	279	\N
209	Ocean View Office	108	\N
210	Pine Ridge Office	455	\N
211	Ocean View Office	317	\N
212	Harborview Office	450	\N
213	Sunset Office	446	\N
214	Ocean View Office	42	\N
215	Maple Leaf Office	89	\N
216	Golden Gate Office	21	\N
217	Riverfront Office	175	\N
218	Mountain Peak Office	347	\N
219	Ocean View Office	250	\N
220	Sunset Office	494	\N
221	Pine Ridge Office	274	\N
222	Harborview Office	224	\N
223	Riverfront Office	37	\N
224	Sunset Office	475	\N
225	Maple Leaf Office	496	\N
226	Golden Gate Office	355	\N
227	Meadowbrook Office	9	\N
228	Riverfront Office	185	\N
229	Meadowbrook Office	216	\N
230	Pine Ridge Office	114	\N
231	Pine Ridge Office	332	\N
232	Meadowbrook Office	187	\N
233	Riverfront Office	398	\N
234	Golden Gate Office	39	\N
235	Pine Ridge Office	167	\N
236	Maple Leaf Office	144	\N
237	Harborview Office	265	\N
238	Meadowbrook Office	469	\N
239	Mountain Peak Office	455	\N
240	Mountain Peak Office	60	\N
241	Maple Leaf Office	173	\N
242	Sunset Office	105	\N
243	Cityscape Office	310	\N
244	Mountain Peak Office	67	\N
245	Meadowbrook Office	480	\N
246	Meadowbrook Office	373	\N
247	Cityscape Office	313	\N
248	Maple Leaf Office	348	\N
249	Meadowbrook Office	77	\N
250	Cityscape Office	9	\N
251	Pine Ridge Office	412	\N
252	Ocean View Office	44	\N
253	Golden Gate Office	138	\N
254	Meadowbrook Office	142	\N
255	Maple Leaf Office	74	\N
256	Maple Leaf Office	317	\N
257	Maple Leaf Office	262	\N
258	Harborview Office	16	\N
259	Cityscape Office	108	\N
260	Mountain Peak Office	282	\N
261	Ocean View Office	482	\N
262	Pine Ridge Office	12	\N
263	Ocean View Office	121	\N
264	Ocean View Office	203	\N
265	Riverfront Office	217	\N
266	Riverfront Office	140	\N
267	Cityscape Office	95	\N
268	Pine Ridge Office	74	\N
269	Meadowbrook Office	17	\N
270	Mountain Peak Office	127	\N
271	Golden Gate Office	183	\N
272	Ocean View Office	364	\N
273	Maple Leaf Office	25	\N
274	Harborview Office	262	\N
275	Ocean View Office	313	\N
276	Ocean View Office	113	\N
277	Maple Leaf Office	380	\N
278	Riverfront Office	425	\N
279	Golden Gate Office	261	\N
280	Mountain Peak Office	390	\N
281	Pine Ridge Office	233	\N
282	Cityscape Office	366	\N
283	Pine Ridge Office	205	\N
284	Cityscape Office	276	\N
285	Pine Ridge Office	219	\N
286	Harborview Office	161	\N
287	Meadowbrook Office	5	\N
288	Harborview Office	439	\N
289	Cityscape Office	85	\N
290	Cityscape Office	278	\N
291	Harborview Office	445	\N
292	Sunset Office	225	\N
293	Golden Gate Office	242	\N
294	Ocean View Office	241	\N
295	Pine Ridge Office	389	\N
296	Golden Gate Office	100	\N
297	Pine Ridge Office	302	\N
298	Sunset Office	376	\N
299	Harborview Office	84	\N
300	Maple Leaf Office	267	\N
301	Ocean View Office	115	\N
302	Mountain Peak Office	281	\N
303	Ocean View Office	53	\N
304	Cityscape Office	12	\N
305	Sunset Office	31	\N
306	Ocean View Office	224	\N
307	Pine Ridge Office	378	\N
308	Golden Gate Office	211	\N
309	Meadowbrook Office	190	\N
310	Meadowbrook Office	246	\N
311	Golden Gate Office	245	\N
312	Meadowbrook Office	31	\N
313	Mountain Peak Office	319	\N
314	Meadowbrook Office	85	\N
315	Riverfront Office	47	\N
316	Mountain Peak Office	373	\N
317	Riverfront Office	372	\N
318	Harborview Office	261	\N
319	Pine Ridge Office	93	\N
320	Meadowbrook Office	465	\N
321	Maple Leaf Office	480	\N
322	Ocean View Office	188	\N
323	Golden Gate Office	312	\N
324	Meadowbrook Office	387	\N
325	Harborview Office	205	\N
326	Sunset Office	70	\N
327	Cityscape Office	480	\N
328	Maple Leaf Office	173	\N
329	Pine Ridge Office	210	\N
330	Riverfront Office	357	\N
331	Cityscape Office	32	\N
332	Meadowbrook Office	19	\N
333	Mountain Peak Office	325	\N
334	Harborview Office	349	\N
335	Mountain Peak Office	376	\N
336	Pine Ridge Office	207	\N
337	Golden Gate Office	447	\N
338	Maple Leaf Office	137	\N
339	Pine Ridge Office	100	\N
340	Maple Leaf Office	163	\N
341	Maple Leaf Office	291	\N
342	Maple Leaf Office	497	\N
343	Pine Ridge Office	316	\N
344	Cityscape Office	366	\N
345	Ocean View Office	174	\N
346	Ocean View Office	50	\N
347	Pine Ridge Office	403	\N
348	Meadowbrook Office	221	\N
349	Ocean View Office	274	\N
350	Riverfront Office	281	\N
351	Riverfront Office	329	\N
352	Sunset Office	117	\N
353	Mountain Peak Office	468	\N
354	Harborview Office	363	\N
355	Pine Ridge Office	402	\N
356	Maple Leaf Office	429	\N
357	Harborview Office	32	\N
358	Mountain Peak Office	362	\N
359	Sunset Office	274	\N
360	Golden Gate Office	53	\N
361	Sunset Office	151	\N
362	Pine Ridge Office	399	\N
363	Cityscape Office	368	\N
364	Golden Gate Office	479	\N
365	Golden Gate Office	124	\N
366	Harborview Office	194	\N
367	Harborview Office	235	\N
368	Sunset Office	67	\N
369	Pine Ridge Office	112	\N
370	Cityscape Office	361	\N
371	Harborview Office	453	\N
372	Meadowbrook Office	500	\N
373	Golden Gate Office	39	\N
374	Sunset Office	366	\N
375	Cityscape Office	260	\N
376	Pine Ridge Office	102	\N
377	Ocean View Office	315	\N
378	Maple Leaf Office	468	\N
379	Mountain Peak Office	244	\N
380	Ocean View Office	92	\N
381	Meadowbrook Office	223	\N
382	Cityscape Office	386	\N
383	Maple Leaf Office	7	\N
384	Golden Gate Office	491	\N
385	Sunset Office	414	\N
386	Riverfront Office	329	\N
387	Cityscape Office	185	\N
388	Cityscape Office	102	\N
389	Sunset Office	388	\N
390	Sunset Office	22	\N
391	Golden Gate Office	303	\N
392	Riverfront Office	192	\N
393	Maple Leaf Office	73	\N
394	Maple Leaf Office	402	\N
395	Sunset Office	154	\N
396	Meadowbrook Office	485	\N
397	Riverfront Office	400	\N
398	Golden Gate Office	51	\N
399	Riverfront Office	55	\N
400	Ocean View Office	483	\N
401	Meadowbrook Office	106	\N
402	Meadowbrook Office	197	\N
403	Golden Gate Office	16	\N
404	Sunset Office	366	\N
405	Maple Leaf Office	26	\N
406	Mountain Peak Office	293	\N
407	Sunset Office	34	\N
408	Pine Ridge Office	490	\N
409	Meadowbrook Office	58	\N
410	Pine Ridge Office	53	\N
411	Ocean View Office	317	\N
412	Golden Gate Office	446	\N
413	Cityscape Office	331	\N
414	Sunset Office	107	\N
415	Cityscape Office	59	\N
416	Cityscape Office	88	\N
417	Maple Leaf Office	259	\N
418	Mountain Peak Office	377	\N
419	Cityscape Office	215	\N
420	Sunset Office	271	\N
421	Mountain Peak Office	499	\N
422	Maple Leaf Office	4	\N
423	Maple Leaf Office	112	\N
424	Cityscape Office	370	\N
425	Cityscape Office	328	\N
426	Riverfront Office	316	\N
427	Riverfront Office	232	\N
428	Cityscape Office	417	\N
429	Riverfront Office	213	\N
430	Meadowbrook Office	302	\N
431	Cityscape Office	371	\N
432	Ocean View Office	267	\N
433	Meadowbrook Office	355	\N
434	Sunset Office	418	\N
435	Meadowbrook Office	98	\N
436	Mountain Peak Office	235	\N
438	Sunset Office	265	\N
439	Maple Leaf Office	242	\N
440	Golden Gate Office	352	\N
441	Harborview Office	291	\N
442	Sunset Office	398	\N
443	Golden Gate Office	42	\N
444	Sunset Office	183	\N
445	Meadowbrook Office	234	\N
446	Sunset Office	273	\N
447	Ocean View Office	477	\N
448	Harborview Office	4	\N
449	Pine Ridge Office	402	\N
450	Maple Leaf Office	124	\N
451	Ocean View Office	30	\N
452	Riverfront Office	216	\N
453	Golden Gate Office	298	\N
454	Harborview Office	158	\N
455	Riverfront Office	309	\N
456	Golden Gate Office	468	\N
457	Pine Ridge Office	52	\N
458	Cityscape Office	273	\N
459	Sunset Office	467	\N
460	Meadowbrook Office	199	\N
461	Cityscape Office	381	\N
462	Meadowbrook Office	190	\N
463	Maple Leaf Office	338	\N
464	Maple Leaf Office	48	\N
465	Pine Ridge Office	167	\N
466	Maple Leaf Office	317	\N
467	Pine Ridge Office	410	\N
468	Maple Leaf Office	162	\N
469	Meadowbrook Office	30	\N
470	Pine Ridge Office	312	\N
471	Meadowbrook Office	212	\N
472	Golden Gate Office	334	\N
473	Golden Gate Office	90	\N
474	Harborview Office	355	\N
475	Harborview Office	84	\N
476	Cityscape Office	338	\N
477	Pine Ridge Office	465	\N
478	Harborview Office	49	\N
479	Pine Ridge Office	463	\N
480	Cityscape Office	77	\N
481	Ocean View Office	394	\N
482	Cityscape Office	203	\N
483	Cityscape Office	307	\N
484	Sunset Office	8	\N
485	Riverfront Office	463	\N
486	Mountain Peak Office	376	\N
487	Golden Gate Office	239	\N
488	Pine Ridge Office	162	\N
489	Ocean View Office	53	\N
490	Mountain Peak Office	315	\N
491	Ocean View Office	216	\N
492	Cityscape Office	17	\N
493	Mountain Peak Office	156	\N
494	Harborview Office	322	\N
495	Sunset Office	358	\N
496	Pine Ridge Office	294	\N
497	Cityscape Office	188	\N
498	Riverfront Office	135	\N
499	Sunset Office	418	\N
500	Maple Leaf Office	238	\N
128	Riverfront Office	1	North Wing - Level 2
437	Riverfront Office	1	North Wing - Level 2
\.


--
-- TOC entry 3405 (class 0 OID 24795)
-- Dependencies: 218
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.role (role_id, role_title) FROM stdin;
1	Manager
2	Veterinarian
3	Veterinarian
\.


--
-- TOC entry 3409 (class 0 OID 24835)
-- Dependencies: 222
-- Data for Name: shift; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.shift (shift_id, shift_type, start_time) FROM stdin;
1	Morning	00:55:00
2	Morning	16:58:00
3	Evening	17:04:00
4	Morning	17:17:00
5	Evening	16:00:00
6	Evening	10:51:00
7	Evening	23:49:00
8	Night	12:41:00
9	Evening	08:00:00
10	Morning	23:11:00
11	Morning	21:34:00
12	Night	04:27:00
13	Evening	08:20:00
14	Morning	01:46:00
15	Morning	17:47:00
16	Morning	14:33:00
17	Evening	17:08:00
18	Evening	09:41:00
19	Night	12:38:00
20	Morning	13:13:00
21	Night	10:15:00
22	Night	02:51:00
23	Evening	08:49:00
24	Night	22:18:00
25	Night	11:56:00
26	Night	01:13:00
27	Evening	03:45:00
28	Morning	00:09:00
29	Evening	08:27:00
30	Night	23:24:00
31	Evening	05:52:00
32	Morning	00:34:00
33	Evening	23:58:00
34	Evening	05:29:00
35	Evening	20:03:00
36	Evening	17:04:00
37	Night	00:09:00
38	Morning	10:52:00
39	Evening	05:46:00
40	Evening	09:30:00
41	Evening	15:52:00
42	Evening	06:36:00
43	Morning	15:05:00
44	Evening	16:07:00
45	Evening	18:22:00
46	Evening	07:18:00
47	Evening	08:18:00
48	Night	23:43:00
49	Morning	23:48:00
50	Morning	18:14:00
51	Night	10:35:00
52	Evening	07:37:00
53	Night	17:25:00
54	Night	12:08:00
55	Evening	18:53:00
56	Night	19:05:00
57	Night	09:55:00
58	Morning	17:39:00
59	Morning	19:13:00
60	Evening	22:46:00
61	Evening	01:30:00
62	Night	07:44:00
63	Morning	21:16:00
64	Night	16:34:00
65	Evening	02:46:00
66	Evening	00:50:00
67	Morning	21:34:00
68	Evening	04:56:00
69	Evening	21:21:00
70	Morning	16:24:00
71	Evening	14:21:00
72	Night	00:31:00
73	Morning	09:29:00
74	Morning	19:48:00
75	Night	00:13:00
76	Night	13:56:00
77	Evening	20:46:00
78	Evening	17:53:00
79	Morning	09:54:00
80	Morning	22:03:00
81	Evening	13:27:00
82	Evening	09:27:00
83	Evening	13:34:00
84	Morning	18:44:00
85	Night	17:59:00
86	Night	03:32:00
87	Evening	18:06:00
88	Morning	21:44:00
89	Evening	11:19:00
90	Morning	19:40:00
91	Night	21:23:00
92	Morning	16:34:00
93	Morning	15:25:00
94	Evening	04:18:00
95	Morning	06:31:00
96	Night	14:53:00
97	Evening	00:37:00
98	Evening	17:58:00
99	Night	15:49:00
100	Evening	09:07:00
101	Morning	08:42:00
102	Evening	18:26:00
103	Night	12:44:00
104	Evening	16:41:00
105	Night	14:59:00
106	Morning	02:12:00
107	Evening	09:31:00
108	Evening	03:37:00
109	Morning	19:02:00
110	Morning	09:01:00
111	Night	22:27:00
112	Evening	23:39:00
113	Evening	00:17:00
114	Evening	15:35:00
115	Evening	05:02:00
116	Evening	00:25:00
117	Night	04:04:00
118	Morning	14:32:00
119	Evening	00:38:00
120	Night	11:15:00
121	Night	18:12:00
122	Morning	10:39:00
123	Evening	20:30:00
124	Night	19:44:00
125	Night	05:29:00
126	Night	16:34:00
127	Night	15:29:00
128	Morning	01:04:00
129	Evening	01:22:00
130	Night	18:16:00
131	Morning	20:38:00
132	Evening	18:02:00
133	Morning	22:54:00
134	Morning	00:06:00
135	Morning	23:22:00
136	Evening	13:47:00
137	Night	22:29:00
138	Morning	15:21:00
139	Morning	16:58:00
140	Morning	15:20:00
141	Morning	20:58:00
142	Evening	21:23:00
143	Evening	18:29:00
144	Night	15:00:00
145	Morning	17:00:00
146	Evening	20:23:00
147	Morning	10:26:00
148	Morning	08:15:00
149	Night	06:50:00
150	Night	23:26:00
151	Evening	05:38:00
152	Night	02:22:00
153	Night	15:44:00
154	Evening	09:13:00
155	Evening	23:06:00
156	Morning	15:33:00
157	Evening	03:19:00
158	Morning	01:52:00
159	Morning	16:45:00
160	Morning	01:12:00
161	Evening	08:26:00
162	Morning	01:10:00
163	Evening	16:52:00
164	Night	05:59:00
165	Night	17:44:00
166	Evening	13:10:00
167	Night	13:33:00
168	Morning	04:50:00
169	Evening	18:51:00
170	Evening	18:48:00
171	Evening	19:55:00
172	Morning	04:27:00
173	Morning	03:52:00
174	Morning	22:12:00
175	Morning	13:09:00
176	Evening	12:04:00
177	Morning	15:06:00
178	Morning	08:39:00
179	Morning	17:59:00
180	Evening	23:13:00
181	Evening	14:07:00
182	Night	01:44:00
183	Morning	17:04:00
184	Night	03:12:00
185	Evening	17:33:00
186	Night	01:07:00
187	Evening	05:48:00
188	Night	11:54:00
189	Evening	09:27:00
190	Morning	07:40:00
191	Morning	17:56:00
192	Morning	20:46:00
193	Evening	07:17:00
194	Night	05:38:00
195	Evening	02:47:00
196	Night	20:10:00
197	Evening	02:48:00
198	Evening	18:05:00
199	Night	05:35:00
200	Evening	08:55:00
201	Evening	23:07:00
202	Morning	16:15:00
203	Evening	01:44:00
204	Morning	12:29:00
205	Night	19:18:00
206	Night	08:35:00
207	Night	06:57:00
208	Night	18:43:00
209	Evening	02:51:00
210	Morning	05:44:00
211	Morning	07:12:00
212	Evening	10:30:00
213	Night	00:47:00
214	Night	17:08:00
215	Night	08:11:00
216	Evening	01:07:00
217	Night	05:19:00
218	Night	08:29:00
219	Evening	11:38:00
220	Morning	09:49:00
221	Morning	01:03:00
222	Morning	03:47:00
223	Morning	08:58:00
224	Morning	07:10:00
225	Evening	12:33:00
226	Morning	10:10:00
227	Evening	23:35:00
228	Evening	03:09:00
229	Morning	19:29:00
230	Night	21:29:00
231	Night	20:02:00
232	Morning	01:13:00
233	Evening	12:51:00
234	Night	01:30:00
235	Morning	20:24:00
236	Morning	12:04:00
237	Evening	23:12:00
238	Evening	00:42:00
239	Evening	19:47:00
240	Night	14:49:00
241	Evening	13:37:00
242	Night	15:01:00
243	Morning	03:24:00
244	Evening	04:17:00
245	Night	19:01:00
246	Morning	04:05:00
247	Morning	01:15:00
248	Night	11:37:00
249	Night	08:19:00
250	Evening	14:03:00
251	Night	01:05:00
252	Evening	04:21:00
253	Night	09:28:00
254	Evening	23:44:00
255	Morning	22:57:00
256	Evening	04:44:00
257	Night	23:40:00
258	Night	12:55:00
259	Night	10:53:00
260	Evening	23:26:00
261	Night	20:53:00
262	Night	05:52:00
263	Morning	11:21:00
264	Morning	08:27:00
265	Evening	08:01:00
266	Evening	02:17:00
267	Morning	14:02:00
268	Night	09:57:00
269	Morning	19:55:00
270	Morning	16:29:00
271	Morning	18:14:00
272	Evening	04:41:00
273	Morning	08:01:00
274	Morning	11:44:00
275	Night	19:04:00
276	Night	00:02:00
277	Evening	19:20:00
278	Evening	20:56:00
279	Night	08:31:00
280	Night	06:23:00
281	Evening	03:36:00
282	Evening	21:04:00
283	Evening	00:03:00
284	Morning	21:37:00
285	Night	11:46:00
286	Morning	05:28:00
287	Morning	03:26:00
288	Evening	15:41:00
289	Evening	05:36:00
290	Night	13:26:00
291	Morning	16:53:00
292	Morning	05:01:00
293	Night	21:23:00
294	Evening	07:52:00
295	Morning	06:29:00
296	Morning	21:20:00
297	Night	01:56:00
298	Night	10:53:00
299	Night	02:40:00
300	Night	01:02:00
301	Evening	00:56:00
302	Evening	10:29:00
303	Evening	15:34:00
304	Night	04:26:00
305	Evening	05:37:00
306	Morning	17:57:00
307	Morning	18:37:00
308	Morning	19:42:00
309	Morning	07:54:00
310	Evening	23:46:00
311	Evening	11:51:00
312	Morning	22:25:00
313	Night	20:53:00
314	Morning	14:10:00
315	Night	14:22:00
316	Evening	23:17:00
317	Night	17:16:00
318	Night	16:24:00
319	Morning	01:01:00
320	Morning	23:30:00
321	Morning	00:08:00
322	Evening	16:05:00
323	Evening	07:25:00
324	Evening	21:12:00
325	Morning	04:21:00
326	Evening	15:00:00
327	Evening	02:53:00
328	Night	06:28:00
329	Night	19:49:00
330	Night	20:44:00
331	Night	05:20:00
332	Evening	09:57:00
333	Morning	21:29:00
334	Morning	02:33:00
335	Evening	22:27:00
336	Morning	16:08:00
337	Night	20:50:00
338	Evening	03:53:00
339	Night	05:05:00
340	Morning	21:31:00
341	Evening	15:19:00
342	Night	12:06:00
343	Evening	10:10:00
344	Morning	08:59:00
345	Morning	01:19:00
346	Evening	14:23:00
347	Evening	14:52:00
348	Morning	22:49:00
349	Night	00:00:00
350	Evening	07:13:00
351	Morning	20:33:00
352	Morning	04:49:00
353	Evening	13:36:00
354	Morning	14:51:00
355	Evening	22:05:00
356	Evening	13:56:00
357	Night	04:10:00
358	Evening	20:48:00
359	Evening	12:09:00
360	Evening	22:30:00
361	Night	13:47:00
362	Morning	12:53:00
363	Morning	17:10:00
364	Night	01:46:00
365	Night	12:30:00
366	Night	06:16:00
367	Evening	18:19:00
368	Evening	01:15:00
369	Evening	03:23:00
370	Evening	11:27:00
371	Morning	22:36:00
372	Evening	20:10:00
373	Morning	02:12:00
374	Night	11:54:00
375	Evening	17:39:00
376	Evening	20:18:00
377	Morning	10:27:00
378	Night	07:17:00
379	Evening	18:27:00
380	Morning	06:10:00
381	Morning	02:14:00
382	Evening	13:01:00
383	Evening	08:27:00
384	Morning	01:00:00
385	Evening	13:14:00
386	Morning	11:25:00
387	Morning	08:36:00
388	Evening	03:51:00
389	Evening	00:43:00
390	Night	02:40:00
391	Night	18:49:00
392	Night	14:58:00
393	Evening	00:08:00
394	Night	17:57:00
395	Evening	18:40:00
396	Night	13:21:00
397	Evening	20:58:00
398	Morning	22:15:00
399	Night	06:36:00
400	Morning	03:40:00
401	Morning	23:16:00
402	Morning	07:30:00
403	Night	21:37:00
404	Night	18:14:00
405	Morning	02:26:00
406	Morning	01:54:00
407	Evening	17:28:00
408	Evening	18:53:00
409	Evening	01:45:00
410	Night	23:31:00
411	Night	07:23:00
412	Evening	08:28:00
413	Evening	09:13:00
414	Night	05:57:00
415	Morning	23:15:00
416	Night	09:10:00
417	Evening	07:32:00
418	Night	21:29:00
419	Morning	15:27:00
420	Evening	16:21:00
421	Night	20:33:00
422	Evening	11:41:00
423	Morning	22:12:00
424	Morning	22:45:00
425	Night	21:52:00
426	Night	18:32:00
427	Evening	16:15:00
428	Night	19:40:00
429	Evening	04:42:00
430	Morning	09:01:00
431	Evening	23:29:00
432	Morning	13:28:00
433	Evening	00:43:00
434	Morning	02:20:00
435	Evening	19:33:00
436	Evening	16:10:00
437	Night	19:31:00
438	Morning	03:18:00
439	Night	18:30:00
440	Night	02:53:00
441	Night	20:31:00
442	Evening	00:16:00
443	Night	00:11:00
444	Night	04:53:00
445	Night	09:02:00
446	Morning	20:57:00
447	Night	15:15:00
448	Night	01:51:00
449	Night	05:18:00
450	Evening	08:15:00
451	Night	02:35:00
452	Night	13:21:00
453	Morning	14:16:00
454	Morning	00:57:00
455	Evening	16:48:00
456	Morning	11:46:00
457	Night	09:26:00
458	Morning	01:57:00
459	Morning	15:05:00
460	Evening	12:42:00
461	Night	22:23:00
462	Morning	09:20:00
463	Evening	08:43:00
464	Night	16:03:00
465	Morning	13:39:00
466	Morning	22:45:00
467	Evening	08:39:00
468	Evening	19:04:00
469	Evening	17:14:00
470	Evening	19:23:00
471	Night	10:53:00
472	Night	23:47:00
473	Morning	02:24:00
474	Morning	09:42:00
475	Morning	10:59:00
476	Night	20:11:00
477	Morning	19:36:00
478	Evening	05:36:00
479	Evening	22:27:00
480	Evening	23:14:00
481	Night	02:00:00
482	Night	01:49:00
483	Morning	16:04:00
484	Morning	04:33:00
485	Evening	19:50:00
486	Night	16:00:00
487	Morning	17:21:00
488	Evening	01:48:00
489	Evening	15:01:00
490	Morning	12:29:00
491	Evening	10:02:00
492	Evening	02:18:00
493	Morning	11:10:00
494	Night	15:51:00
495	Night	04:57:00
496	Night	18:13:00
497	Evening	22:37:00
498	Night	13:22:00
499	Night	02:41:00
500	Night	19:50:00
\.


--
-- TOC entry 3410 (class 0 OID 24840)
-- Dependencies: 223
-- Data for Name: shift_assignment; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.shift_assignment (assignment_id, employee_id, shift_id, work_date) FROM stdin;
1	28	2	2024-08-06
2	44	1	2024-10-20
3	22	3	2024-12-04
4	73	2	2024-08-14
5	298	1	2024-12-05
6	208	1	2024-08-09
7	206	2	2024-04-22
8	371	1	2024-09-16
9	499	3	2024-07-28
10	53	1	2024-09-01
11	282	3	2024-08-18
12	168	1	2024-06-20
13	130	3	2024-08-17
14	285	3	2024-03-22
15	498	1	2024-09-05
16	5	1	2024-08-31
17	128	2	2024-02-27
18	202	2	2024-04-02
19	457	2	2024-11-16
20	78	1	2024-02-16
22	48	2	2024-11-18
24	86	3	2024-08-17
25	334	3	2024-09-12
26	126	3	2024-03-29
27	340	2	2024-06-26
28	225	1	2024-08-01
29	39	2	2024-11-28
30	140	3	2024-10-30
31	448	2	2024-09-26
32	12	2	2024-07-08
33	164	3	2024-10-07
34	27	2	2024-02-10
35	199	2	2024-05-31
36	268	2	2024-03-25
37	449	2	2024-08-07
38	377	2	2024-10-28
41	498	2	2024-02-29
43	223	2	2024-12-07
44	120	2	2024-08-02
45	416	2	2024-03-13
46	248	3	2024-07-21
47	428	1	2024-07-02
48	260	3	2024-06-14
49	302	2	2024-02-10
50	254	1	2024-07-25
51	173	2	2024-11-07
52	417	1	2024-08-03
53	345	2	2024-02-01
54	425	3	2024-02-14
55	32	1	2024-09-14
56	456	3	2024-02-15
57	376	2	2024-08-13
58	350	1	2024-07-23
59	458	1	2024-06-02
60	360	3	2024-11-11
61	344	3	2024-10-09
62	392	1	2024-12-19
63	407	3	2024-04-10
64	333	1	2024-07-15
65	276	3	2024-12-09
66	463	2	2024-08-01
67	325	3	2024-10-03
68	487	2	2024-05-11
69	225	3	2024-05-05
70	453	3	2024-11-28
71	337	1	2024-07-13
72	365	3	2024-03-26
73	180	1	2024-12-14
74	263	1	2024-04-11
75	329	2	2024-09-18
76	424	2	2024-04-03
77	147	3	2024-10-07
78	460	3	2024-09-24
79	327	1	2024-10-23
81	158	2	2024-10-29
82	312	2	2024-12-21
83	282	1	2024-07-01
84	410	1	2024-07-07
86	406	1	2024-08-10
87	29	1	2024-03-22
88	52	1	2024-07-05
90	496	1	2024-09-27
92	80	2	2024-08-26
93	9	2	2024-10-16
94	175	3	2024-04-26
95	443	1	2024-06-28
96	150	2	2024-10-04
97	367	3	2024-10-21
98	151	1	2024-06-24
99	358	2	2024-09-25
100	258	3	2024-12-22
101	397	1	2024-05-17
102	198	1	2024-05-04
103	403	3	2024-06-07
104	473	3	2024-07-06
105	191	2	2024-07-06
106	327	3	2024-02-08
107	157	1	2024-02-01
108	229	2	2024-05-21
109	293	1	2024-06-01
110	463	3	2024-05-09
111	22	1	2024-03-16
112	262	3	2024-07-07
113	43	1	2024-06-17
114	433	2	2024-08-29
115	445	3	2024-06-07
116	169	2	2024-12-25
117	366	2	2024-03-10
118	299	3	2024-04-25
119	368	1	2024-08-22
120	286	2	2024-05-09
121	323	1	2024-06-18
122	53	1	2024-08-12
123	404	2	2024-11-18
124	96	1	2024-10-25
125	482	2	2024-02-07
126	148	1	2024-06-03
127	305	2	2024-07-03
129	175	3	2024-07-04
130	53	2	2024-10-20
131	301	3	2024-12-14
132	418	1	2024-07-26
133	167	2	2024-09-15
134	229	2	2024-07-28
135	307	3	2024-05-19
136	206	2	2024-02-16
137	142	2	2024-06-06
138	216	2	2024-04-12
139	461	1	2024-05-12
143	246	1	2024-10-02
144	115	2	2024-07-10
146	226	2	2024-03-21
148	72	3	2024-07-07
149	112	3	2024-10-13
150	446	2	2024-06-08
151	342	3	2024-05-06
152	402	3	2024-03-24
153	69	2	2024-04-18
154	371	3	2024-08-07
155	500	2	2024-03-23
156	398	1	2024-10-25
157	242	3	2024-02-10
158	267	1	2024-10-09
159	291	1	2024-07-18
160	194	1	2024-10-16
161	379	2	2024-11-10
162	51	1	2024-10-31
163	264	1	2024-07-27
164	157	3	2024-11-26
165	28	3	2024-04-11
166	428	2	2024-12-16
167	337	2	2024-12-22
168	424	2	2024-05-30
169	322	3	2024-04-28
170	1	3	2024-02-21
171	53	3	2024-09-13
173	348	1	2024-08-02
174	73	3	2024-05-22
175	196	2	2024-02-13
176	170	2	2024-07-23
177	81	3	2024-09-20
178	435	3	2024-11-20
179	486	3	2024-07-19
180	155	3	2024-07-30
181	197	2	2024-07-07
182	105	3	2024-05-09
183	159	1	2024-11-04
184	89	2	2024-07-12
185	348	3	2024-04-22
186	216	3	2024-12-25
188	209	1	2024-05-30
190	255	3	2024-09-24
191	492	2	2024-09-16
192	263	2	2024-05-01
193	183	3	2024-11-13
194	475	2	2024-09-12
195	472	1	2024-08-02
196	214	1	2024-04-22
197	89	3	2024-03-06
198	417	3	2024-08-30
199	135	1	2024-06-18
200	114	1	2024-05-10
201	406	3	2024-05-20
202	78	1	2024-07-04
203	109	2	2024-05-31
204	398	3	2024-05-28
205	451	3	2024-06-02
206	200	2	2024-12-19
207	294	1	2024-03-13
208	426	3	2024-07-23
209	129	1	2024-03-31
210	493	1	2024-08-18
211	473	3	2024-04-01
212	304	1	2024-10-08
213	151	3	2024-06-26
214	13	3	2024-05-09
215	336	3	2024-05-01
216	252	3	2024-11-01
217	411	2	2024-09-19
218	412	1	2024-05-04
219	484	1	2024-04-03
220	148	1	2024-02-27
221	349	1	2024-08-25
222	2	3	2024-10-14
223	111	1	2024-06-04
224	299	2	2024-11-08
225	244	3	2024-12-03
226	147	1	2024-12-03
227	42	3	2024-06-26
228	112	1	2024-09-10
229	475	2	2024-03-14
230	473	2	2024-04-18
231	80	2	2024-11-29
232	50	1	2024-03-16
233	34	3	2024-10-16
234	282	1	2024-02-26
235	222	1	2024-10-25
237	492	3	2024-03-28
238	256	2	2024-12-28
239	477	2	2024-02-29
240	15	1	2024-05-29
241	61	2	2024-02-23
242	424	1	2024-02-27
243	439	1	2024-07-06
244	274	2	2024-12-01
245	6	3	2024-04-04
247	88	2	2024-05-02
248	303	2	2024-05-30
249	140	3	2024-11-30
250	285	1	2024-04-27
251	458	1	2024-12-28
252	81	2	2024-06-16
253	135	1	2024-06-10
254	279	3	2024-04-18
255	439	1	2024-05-07
256	411	2	2024-09-15
257	495	2	2024-11-04
258	486	3	2024-08-01
259	109	2	2024-10-16
260	226	2	2024-09-19
261	139	2	2024-03-22
263	317	3	2024-02-07
264	470	1	2024-07-11
265	73	3	2024-10-23
266	96	2	2024-08-31
267	58	2	2024-04-08
268	205	3	2024-05-20
269	453	3	2024-06-22
270	307	3	2024-09-05
271	165	2	2024-09-10
272	481	1	2024-03-06
273	496	1	2024-07-28
274	154	1	2024-12-31
275	482	3	2024-09-06
276	344	2	2024-10-04
277	123	1	2024-11-20
278	19	2	2024-06-27
279	475	3	2024-11-24
280	163	2	2024-10-29
281	497	1	2024-03-08
282	168	2	2024-05-22
283	150	3	2024-04-04
284	9	2	2024-02-06
285	464	3	2024-12-08
286	494	2	2024-11-27
287	172	3	2024-06-09
288	364	2	2024-10-03
290	322	2	2024-12-11
292	125	1	2024-11-12
293	374	3	2024-06-12
294	225	3	2024-12-10
295	161	1	2024-09-01
296	177	3	2024-07-17
297	175	2	2024-07-21
298	494	3	2024-08-21
299	367	2	2024-05-26
300	10	3	2024-03-24
301	244	2	2024-11-05
302	348	3	2024-06-20
303	108	1	2024-08-24
304	434	3	2024-06-18
305	435	3	2024-12-13
306	74	1	2024-06-20
307	66	2	2024-05-09
308	315	3	2024-07-23
309	236	1	2024-08-29
310	242	2	2024-05-09
311	485	3	2024-08-19
312	207	1	2024-08-14
313	254	1	2024-11-17
314	124	1	2024-10-21
315	158	1	2024-05-26
316	351	3	2024-09-05
317	451	3	2024-02-02
318	456	3	2024-06-02
319	394	2	2024-07-07
320	74	3	2024-02-20
321	336	2	2024-11-07
322	176	3	2024-10-31
323	456	3	2024-02-23
324	480	2	2024-06-29
325	465	3	2024-06-13
326	437	1	2024-09-29
327	390	2	2024-10-21
329	481	3	2024-06-20
330	251	1	2024-04-29
331	497	1	2024-07-28
332	80	1	2024-07-14
333	208	2	2024-06-24
334	243	3	2024-06-17
335	352	2	2024-04-07
336	234	3	2024-02-02
338	385	1	2024-08-31
339	200	3	2024-04-08
340	248	2	2024-12-04
341	52	1	2024-04-25
342	70	3	2024-07-13
343	452	2	2024-05-08
344	187	1	2024-03-14
345	288	1	2024-10-30
346	295	2	2024-10-10
349	422	1	2024-12-21
350	458	1	2024-12-02
351	433	1	2024-06-09
352	403	3	2024-09-12
353	426	2	2024-11-12
354	211	2	2024-02-22
356	325	3	2024-12-22
357	146	3	2024-10-15
358	426	2	2024-09-08
359	219	3	2024-07-03
360	396	1	2024-08-10
361	297	1	2024-11-09
362	176	2	2024-05-16
363	128	2	2024-04-27
364	350	2	2024-05-12
365	448	3	2024-08-05
366	120	3	2024-11-15
367	175	3	2024-07-31
368	243	1	2024-11-02
369	209	2	2024-10-28
370	127	2	2024-02-04
371	231	3	2024-03-08
372	485	2	2024-09-18
373	278	3	2024-08-01
374	143	2	2024-11-09
375	482	2	2024-03-31
376	455	2	2024-07-09
377	289	1	2024-09-04
378	67	3	2024-08-05
379	401	3	2024-03-24
380	340	1	2024-08-09
381	267	1	2024-02-23
382	386	3	2024-06-23
383	366	1	2024-10-01
384	198	1	2024-05-10
385	299	2	2024-07-08
387	361	2	2024-08-03
388	36	1	2024-06-09
390	351	1	2024-02-11
391	150	3	2024-03-16
392	99	2	2024-04-01
393	394	1	2024-12-18
394	46	2	2024-03-22
395	44	3	2024-03-04
396	64	3	2024-04-05
397	287	3	2024-05-23
398	303	2	2024-03-03
399	446	2	2024-06-19
401	1	3	2024-11-11
402	111	1	2024-10-05
404	430	1	2024-07-13
405	382	1	2024-10-24
406	4	2	2024-03-07
407	92	3	2024-09-12
408	155	2	2024-04-10
409	34	1	2024-02-01
410	487	1	2024-05-21
411	250	3	2024-03-19
412	109	1	2024-06-18
414	193	1	2024-08-24
415	19	1	2024-03-11
416	216	1	2024-07-13
417	430	3	2024-06-16
418	251	3	2024-05-26
419	223	2	2024-05-11
420	115	1	2024-06-10
421	171	1	2024-11-28
422	441	3	2024-02-27
423	97	3	2024-02-04
424	264	1	2024-03-23
425	396	3	2024-11-14
426	474	3	2024-09-27
427	433	3	2024-08-22
428	483	3	2024-03-19
429	445	2	2024-05-31
430	419	1	2024-11-09
431	122	1	2024-08-23
432	306	1	2024-04-12
434	306	3	2024-04-30
435	136	1	2024-09-04
436	472	3	2024-11-20
437	256	3	2024-06-06
438	349	2	2024-05-31
439	486	2	2024-12-02
440	483	3	2024-10-19
441	7	2	2024-12-04
442	346	2	2024-04-08
443	375	1	2024-11-15
444	364	2	2024-06-23
445	467	3	2024-08-22
446	198	1	2024-07-14
447	99	2	2024-07-20
449	173	3	2024-04-18
450	57	3	2024-12-18
451	87	3	2024-05-18
452	186	2	2024-06-24
453	103	3	2024-08-20
454	200	1	2024-07-17
455	116	1	2024-11-10
456	66	3	2024-06-30
457	480	3	2024-06-10
458	25	3	2024-04-21
459	259	3	2024-02-27
460	155	3	2024-12-18
461	309	1	2024-06-24
462	4	1	2024-09-09
463	220	3	2024-08-13
464	237	2	2024-07-20
465	363	1	2024-06-06
466	35	1	2024-11-29
467	178	1	2024-12-07
468	150	1	2024-12-14
469	400	1	2024-04-25
470	326	3	2024-04-13
471	230	3	2024-06-30
472	486	3	2024-12-28
473	435	3	2024-11-30
474	59	2	2024-03-15
475	415	3	2024-02-02
476	483	1	2024-03-27
477	234	1	2024-07-30
478	60	3	2024-10-21
479	247	2	2024-07-09
481	492	3	2024-11-24
483	49	3	2024-07-24
484	379	2	2024-11-26
485	19	1	2024-11-29
486	264	3	2024-05-29
487	158	2	2024-06-12
488	344	1	2024-03-23
489	347	1	2024-12-05
490	29	2	2024-04-27
491	325	1	2024-04-08
492	54	1	2024-04-29
493	251	3	2024-12-25
494	124	1	2024-06-23
495	97	1	2024-12-09
496	24	3	2024-05-31
497	298	2	2024-02-13
498	12	2	2024-03-18
499	82	2	2024-06-12
500	340	3	2024-08-30
501	42	3	2024-09-07
503	113	1	2024-06-27
504	184	1	2024-04-02
505	372	2	2024-10-29
506	182	3	2024-07-20
507	223	1	2024-02-11
508	331	1	2024-02-11
509	432	2	2024-04-01
511	426	1	2024-11-12
512	386	2	2024-09-01
513	484	1	2024-11-16
514	21	1	2024-10-15
515	123	1	2024-02-07
516	283	3	2024-11-27
517	16	1	2024-07-20
518	445	3	2024-04-10
519	367	3	2024-05-16
520	227	2	2024-05-24
521	89	1	2024-12-26
522	402	3	2024-11-28
523	429	3	2024-11-28
524	82	2	2024-03-30
525	252	2	2024-04-10
526	301	3	2024-02-15
527	468	3	2024-02-26
528	120	3	2024-12-05
529	163	3	2024-07-04
530	260	2	2024-09-07
531	321	1	2024-07-05
532	172	3	2024-08-08
533	456	2	2024-04-06
534	179	1	2024-03-26
536	116	3	2024-03-12
537	204	3	2024-12-16
538	476	1	2024-12-05
539	149	2	2024-12-02
540	110	1	2024-05-03
541	113	2	2024-06-11
542	187	1	2024-02-04
543	11	1	2024-02-15
544	13	3	2024-06-21
546	491	1	2024-08-25
547	445	3	2024-04-03
548	457	3	2024-03-17
549	270	2	2024-05-12
550	121	3	2024-04-04
551	144	1	2024-02-25
552	169	1	2024-12-06
553	70	3	2024-11-25
554	321	3	2024-05-09
555	453	1	2024-08-24
556	81	2	2024-02-07
557	392	3	2024-03-30
558	389	1	2024-10-24
559	401	2	2024-07-22
560	312	2	2024-08-31
561	390	3	2024-07-08
562	122	2	2024-05-05
564	238	1	2024-12-06
565	104	1	2024-08-11
566	443	3	2024-06-11
567	358	1	2024-12-06
568	163	3	2024-12-31
569	424	3	2024-07-30
570	149	1	2024-04-02
571	87	3	2024-03-25
572	476	3	2024-07-25
573	406	3	2024-02-11
574	116	3	2024-12-22
575	388	1	2024-08-03
576	189	1	2024-03-16
577	13	2	2024-12-17
578	330	2	2024-09-15
579	167	2	2024-12-28
580	449	2	2024-07-14
581	30	3	2024-02-26
582	223	3	2024-10-26
583	377	2	2024-10-27
584	225	2	2024-09-16
585	340	3	2024-09-30
586	395	2	2024-10-23
587	297	1	2024-11-02
589	37	3	2024-04-06
590	442	1	2024-02-03
591	371	2	2024-05-05
592	80	1	2024-04-03
593	442	2	2024-12-02
594	276	1	2024-04-06
595	462	1	2024-03-25
596	437	1	2024-03-13
597	228	3	2024-11-27
598	144	2	2024-02-29
599	168	3	2024-11-23
600	71	1	2024-04-24
601	498	1	2024-03-25
602	195	2	2024-02-28
603	13	2	2024-08-21
605	365	2	2024-08-23
606	499	2	2024-07-19
607	74	1	2024-05-05
608	313	2	2024-04-17
609	253	1	2024-02-21
610	67	3	2024-07-15
611	480	3	2024-09-26
612	80	2	2024-03-15
613	414	3	2024-07-19
615	59	1	2024-09-06
616	425	1	2024-08-03
617	407	3	2024-11-11
618	177	2	2024-10-22
619	287	1	2024-03-20
620	420	3	2024-12-12
621	443	3	2024-09-27
622	227	1	2024-07-11
623	356	1	2024-10-05
624	398	1	2024-09-01
625	281	2	2024-10-10
626	203	1	2024-09-26
627	93	2	2024-03-12
628	95	2	2024-06-12
629	98	2	2024-07-02
630	130	2	2024-04-10
632	198	3	2024-11-22
633	48	3	2024-02-13
634	180	2	2024-05-09
635	73	2	2024-08-30
637	364	1	2024-12-15
638	144	2	2024-09-20
639	487	3	2024-10-02
640	18	2	2024-07-28
641	186	1	2024-05-27
643	482	1	2024-08-19
644	415	1	2024-11-12
645	495	1	2024-08-18
646	285	3	2024-06-13
647	116	1	2024-09-18
648	479	1	2024-11-21
650	414	2	2024-06-03
651	326	3	2024-09-26
652	499	3	2024-10-22
653	81	1	2024-06-08
654	300	1	2024-04-16
655	41	1	2024-09-20
656	181	1	2024-11-08
658	265	2	2024-11-15
659	430	2	2024-02-26
660	238	1	2024-09-30
661	123	3	2024-02-21
662	60	1	2024-04-18
663	250	1	2024-05-15
664	473	1	2024-06-21
665	418	1	2024-11-15
666	458	3	2024-03-25
667	99	3	2024-03-31
668	181	3	2024-03-27
669	43	2	2024-05-11
670	34	2	2024-05-25
671	89	1	2024-10-09
672	466	2	2024-11-24
673	253	3	2024-03-10
674	19	2	2024-04-07
675	271	3	2024-08-17
676	192	2	2024-05-25
678	374	1	2024-11-21
679	63	1	2024-02-02
680	168	3	2024-10-04
682	231	2	2024-05-01
683	335	1	2024-12-06
684	121	1	2024-02-13
685	93	1	2024-04-02
687	25	3	2024-11-08
688	453	1	2024-07-21
689	446	3	2024-07-20
691	145	1	2024-04-09
692	375	2	2024-06-01
693	180	3	2024-04-30
694	415	3	2024-08-28
695	287	3	2024-10-12
696	147	3	2024-10-05
697	468	1	2024-11-27
698	172	3	2024-03-19
699	11	2	2024-08-02
700	397	1	2024-07-24
702	187	1	2024-06-29
703	102	1	2024-07-04
704	385	3	2024-06-15
705	172	2	2024-11-11
706	225	1	2024-12-25
707	227	1	2024-02-07
708	379	1	2024-06-15
710	223	1	2024-09-07
711	457	2	2024-03-31
712	301	3	2024-08-16
713	133	1	2024-04-04
714	27	2	2024-10-27
715	47	1	2024-12-04
716	118	1	2024-06-02
717	12	1	2024-05-30
719	340	1	2024-07-24
720	145	2	2024-08-29
721	213	3	2024-04-16
722	359	1	2024-10-04
723	329	1	2024-03-03
724	200	3	2024-08-20
725	94	1	2024-12-14
726	151	1	2024-05-08
727	288	3	2024-10-19
728	252	2	2024-06-07
729	52	3	2024-10-05
730	283	3	2024-05-21
731	335	2	2024-06-16
732	32	1	2024-03-15
733	436	3	2024-09-13
734	95	2	2024-09-19
735	191	3	2024-11-19
736	131	2	2024-06-07
737	30	1	2024-03-30
738	100	3	2024-10-13
739	389	1	2024-05-08
740	209	1	2024-05-24
742	64	2	2024-10-06
743	255	2	2024-09-08
744	424	3	2024-04-11
745	228	2	2024-02-10
746	105	3	2024-10-10
747	500	2	2024-09-10
748	359	2	2024-09-13
749	19	2	2024-05-08
750	115	1	2024-05-23
751	169	1	2024-05-30
752	405	2	2024-05-16
753	249	1	2024-05-14
754	269	1	2024-11-19
755	484	1	2024-12-21
756	228	2	2024-08-03
757	167	1	2024-10-23
758	409	2	2024-06-08
759	95	2	2024-10-28
760	257	1	2024-08-27
761	81	2	2024-03-04
762	37	2	2024-02-13
763	1	3	2024-04-12
764	294	3	2024-04-15
765	347	2	2024-06-20
767	129	1	2024-10-29
768	478	2	2024-02-09
769	355	3	2024-11-25
770	279	1	2024-11-02
771	91	2	2024-12-14
773	249	2	2024-03-30
774	445	2	2024-10-14
775	489	1	2024-06-16
776	245	2	2024-03-06
777	237	1	2024-02-23
778	387	2	2024-08-19
779	427	2	2024-04-12
781	335	2	2024-10-05
782	145	2	2024-10-05
784	433	1	2024-03-25
785	183	3	2024-04-20
786	43	3	2024-02-23
787	156	1	2024-07-24
788	111	2	2024-05-23
789	129	2	2024-04-15
790	328	1	2024-09-11
791	248	3	2024-04-06
792	46	2	2024-12-09
794	54	1	2024-06-29
796	296	1	2024-12-16
797	436	1	2024-03-03
798	454	2	2024-10-03
799	134	1	2024-07-11
800	382	1	2024-05-27
801	21	1	2024-11-14
802	197	2	2024-07-05
803	259	3	2024-03-14
804	187	3	2024-07-05
805	182	1	2024-09-20
806	207	2	2024-08-04
807	444	2	2024-09-03
808	479	3	2024-06-19
809	24	2	2024-11-10
810	131	3	2024-10-28
811	490	3	2024-04-17
812	399	3	2024-05-17
813	114	3	2024-08-05
814	356	3	2024-12-07
815	255	1	2024-07-26
816	394	2	2024-12-20
817	365	2	2024-12-01
818	251	2	2024-08-19
819	359	1	2024-08-16
820	447	1	2024-12-09
822	336	3	2024-11-02
823	56	1	2024-03-31
824	391	2	2024-02-23
825	157	2	2024-03-22
826	417	1	2024-06-27
827	378	3	2024-12-13
828	478	3	2024-08-12
829	235	1	2024-08-09
830	418	2	2024-06-29
831	285	2	2024-11-21
832	268	1	2024-08-13
833	140	3	2024-03-16
834	229	3	2024-11-05
835	349	3	2024-04-13
836	374	1	2024-09-05
837	382	3	2024-03-03
838	198	2	2024-11-04
839	476	2	2024-07-10
840	173	2	2024-07-13
841	356	1	2024-03-21
842	298	2	2024-04-21
843	29	1	2024-08-04
844	231	1	2024-11-10
845	278	2	2024-03-06
847	146	3	2024-05-16
848	453	2	2024-04-06
849	350	2	2024-05-29
850	317	1	2024-10-25
851	286	3	2024-10-10
853	278	1	2024-06-21
854	169	3	2024-09-03
855	4	1	2024-07-15
856	144	3	2024-11-01
857	125	2	2024-09-16
858	368	2	2024-04-12
859	447	3	2024-11-12
860	127	2	2024-12-15
861	6	3	2024-05-15
862	115	2	2024-12-23
863	133	1	2024-09-10
864	104	3	2024-08-29
865	69	1	2024-11-09
866	47	2	2024-08-25
867	293	1	2024-04-29
868	77	3	2024-11-06
869	208	2	2024-12-01
870	481	3	2024-11-10
871	496	3	2024-10-15
873	387	2	2024-07-25
874	354	2	2024-07-30
875	399	2	2024-02-02
876	446	3	2024-08-12
877	25	1	2024-10-27
878	433	1	2024-04-20
879	399	2	2024-05-10
880	420	3	2024-07-25
881	229	2	2024-06-26
882	309	3	2024-09-01
883	8	2	2024-10-16
884	110	3	2024-03-14
885	101	3	2024-06-07
886	414	2	2024-08-21
887	296	2	2024-09-03
888	296	2	2024-06-25
889	408	2	2024-12-24
891	405	3	2024-10-14
892	398	1	2024-07-10
894	417	2	2024-10-13
896	128	2	2024-03-01
897	354	2	2024-04-13
898	292	2	2024-02-24
899	374	3	2024-05-07
900	492	2	2024-08-05
901	142	3	2024-08-24
902	311	2	2024-03-10
903	419	1	2024-08-20
904	33	1	2024-06-03
906	204	1	2024-11-26
907	248	3	2024-08-01
908	260	3	2024-12-01
909	490	3	2024-12-24
910	318	1	2024-02-28
911	437	1	2024-11-29
912	75	1	2024-11-20
913	257	2	2024-05-28
914	435	3	2024-04-18
915	383	3	2024-11-22
916	377	1	2024-03-05
917	284	2	2024-05-25
919	392	1	2024-04-18
920	261	2	2024-08-17
921	318	3	2024-02-05
922	468	2	2024-04-16
923	418	3	2024-03-11
924	129	2	2024-02-15
925	261	3	2024-03-18
926	257	2	2024-03-01
927	186	2	2024-02-27
928	466	2	2024-10-11
929	367	2	2024-09-02
930	170	1	2024-06-09
931	223	3	2024-04-24
932	181	2	2024-03-07
933	53	1	2024-08-16
934	12	1	2024-10-02
935	73	1	2024-10-04
937	451	1	2024-12-25
938	396	1	2024-09-15
939	125	3	2024-09-20
940	233	1	2024-12-14
941	465	2	2024-02-24
942	218	2	2024-03-16
943	77	1	2024-04-29
944	470	3	2024-08-08
945	314	3	2024-05-09
946	146	3	2024-04-04
947	135	1	2024-06-08
948	220	1	2024-07-07
949	343	3	2024-06-25
950	212	2	2024-02-24
951	211	3	2024-11-23
952	405	1	2024-03-12
954	270	1	2024-09-12
955	230	3	2024-06-15
956	114	1	2024-02-29
957	242	3	2024-11-29
958	87	2	2024-04-08
959	422	3	2024-10-11
960	202	1	2024-02-08
961	81	1	2024-05-10
962	22	2	2024-11-24
963	165	1	2024-04-23
964	240	2	2024-09-08
965	339	1	2024-02-10
966	489	1	2024-08-08
967	84	3	2024-12-27
968	143	1	2024-04-25
969	257	3	2024-10-30
971	27	2	2024-12-04
972	412	3	2024-03-04
973	400	2	2024-08-02
974	308	2	2024-06-15
975	366	3	2024-04-04
976	64	3	2024-07-19
977	432	2	2024-12-03
978	457	2	2024-05-10
979	275	1	2024-05-20
980	123	3	2024-05-24
981	75	1	2024-12-14
982	491	1	2024-08-23
983	276	2	2024-10-08
984	388	3	2024-09-03
985	310	2	2024-02-03
986	405	3	2024-02-16
987	13	1	2024-02-14
988	345	3	2024-08-24
989	410	1	2024-10-25
990	119	2	2024-10-17
991	53	1	2024-03-12
992	203	2	2024-11-26
993	140	2	2024-05-11
995	296	1	2024-12-30
996	138	1	2024-11-24
998	21	2	2024-08-04
999	411	3	2024-12-18
1000	412	1	2024-07-06
1001	201	1	2024-11-15
1002	206	1	2024-04-09
1003	382	3	2024-06-13
1004	376	2	2024-09-05
1005	280	3	2024-03-23
1006	471	3	2024-06-11
1007	195	2	2024-05-13
1008	95	3	2024-12-31
1009	418	1	2024-12-31
1010	63	1	2024-09-20
1012	356	2	2024-07-29
1013	204	1	2024-12-18
1014	281	1	2024-10-28
1015	32	2	2024-12-05
1016	36	1	2024-12-29
1017	471	3	2024-04-26
1018	34	2	2024-12-15
1019	47	2	2024-07-03
1020	129	3	2024-09-14
1021	444	1	2024-04-23
1023	446	1	2024-07-19
1024	315	1	2024-02-12
1025	332	3	2024-05-18
1026	383	3	2024-10-18
1027	458	2	2024-02-16
1028	206	1	2024-09-04
1030	97	3	2024-09-11
1031	396	2	2024-06-15
1032	266	1	2024-12-11
1033	73	3	2024-08-25
1034	271	2	2024-10-11
1035	430	2	2024-12-14
1036	257	1	2024-02-25
1037	224	1	2024-03-26
1038	367	2	2024-08-26
1039	461	2	2024-07-01
1040	48	1	2024-04-06
1043	285	2	2024-04-05
1044	106	2	2024-05-22
1045	488	1	2024-04-17
1046	499	2	2024-06-13
1047	9	3	2024-10-25
1048	90	3	2024-07-24
1049	297	3	2024-02-24
1050	408	2	2024-11-17
1051	429	3	2024-04-15
1052	426	3	2024-03-02
1053	129	3	2024-11-16
1054	62	3	2024-09-12
1055	102	2	2024-02-23
1056	196	3	2024-04-08
1057	224	1	2024-08-24
1058	281	3	2024-10-02
1059	333	2	2024-12-05
1061	295	2	2024-11-23
1062	331	3	2024-11-02
1063	126	1	2024-04-01
1064	424	3	2024-10-19
1065	354	1	2024-04-09
1066	151	1	2024-06-27
1067	106	3	2024-04-02
1068	381	3	2024-09-19
1069	379	2	2024-07-22
1070	387	3	2024-10-17
1071	453	1	2024-10-12
1074	270	2	2024-10-28
1075	472	3	2024-10-03
1077	366	1	2024-06-27
1078	304	3	2024-10-13
1079	242	1	2024-11-20
1080	307	1	2024-06-17
1081	276	3	2024-07-31
1083	157	3	2024-03-29
1084	166	3	2024-09-02
1085	14	2	2024-05-29
1087	140	2	2024-09-21
1088	275	1	2024-10-19
1090	470	2	2024-08-28
1091	280	1	2024-11-04
1092	8	3	2024-09-05
1093	338	3	2024-07-29
1094	235	1	2024-05-27
1095	246	3	2024-04-27
1096	392	2	2024-12-25
1097	146	2	2024-07-23
1098	182	3	2024-07-14
1099	13	1	2024-03-21
1100	239	2	2024-12-28
1102	31	3	2024-02-03
1103	65	3	2024-12-12
1104	85	3	2024-05-04
1105	278	3	2024-06-15
1106	473	3	2024-08-09
1107	238	1	2024-07-06
1108	199	2	2024-12-04
1109	157	1	2024-09-12
1110	41	1	2024-12-25
1111	358	2	2024-03-24
1112	196	1	2024-08-08
1113	24	1	2024-06-13
1114	33	3	2024-03-31
1115	98	1	2024-12-06
1116	438	3	2024-04-30
1117	8	2	2024-08-26
1119	161	3	2024-02-15
1120	370	3	2024-07-27
1121	465	2	2024-07-09
1122	179	1	2024-06-14
1123	228	1	2024-12-19
1124	134	1	2024-03-08
1125	41	2	2024-12-26
1126	428	1	2024-04-17
1127	146	3	2024-08-28
1130	34	1	2024-03-06
1131	403	2	2024-03-04
1132	9	2	2024-02-17
1133	382	2	2024-02-11
1134	423	1	2024-05-09
1135	292	2	2024-09-01
1136	102	3	2024-09-30
1137	236	2	2024-02-27
1138	257	3	2024-04-26
1139	470	2	2024-06-06
1141	236	1	2024-03-02
1142	184	3	2024-05-23
1143	240	1	2024-11-27
1144	181	2	2024-11-17
1145	313	3	2024-03-30
1146	423	1	2024-04-28
1147	43	2	2024-04-27
1148	80	3	2024-04-12
1149	300	1	2024-07-15
1150	286	3	2024-04-08
1151	259	1	2024-04-10
1152	350	2	2024-02-12
1153	280	3	2024-11-07
1154	361	1	2024-09-24
1155	87	1	2024-11-26
1156	349	2	2024-02-23
1157	406	2	2024-09-24
1158	492	1	2024-05-05
1159	7	2	2024-10-06
1160	476	1	2024-02-27
1161	371	1	2024-05-31
1162	73	1	2024-12-31
1163	364	3	2024-09-15
1166	479	3	2024-07-28
1167	498	2	2024-05-24
1168	362	1	2024-09-29
1169	41	1	2024-08-09
1170	238	1	2024-12-11
1171	58	1	2024-03-11
1172	118	2	2024-08-07
1173	145	1	2024-04-26
1174	362	1	2024-10-21
1175	314	3	2024-07-19
1176	88	3	2024-11-30
1177	84	1	2024-02-13
1178	78	1	2024-08-19
1179	239	3	2024-06-17
1181	219	2	2024-11-07
1182	266	2	2024-08-12
1183	138	2	2024-03-28
1184	100	1	2024-02-21
1185	200	1	2024-09-17
1186	499	1	2024-06-09
1187	218	1	2024-04-18
1188	287	2	2024-12-10
1189	138	2	2024-04-22
1191	443	2	2024-04-17
1192	326	2	2024-03-04
1193	181	1	2024-11-23
1194	429	2	2024-08-20
1195	440	1	2024-10-02
1196	374	1	2024-08-30
1197	177	3	2024-06-05
1198	271	1	2024-03-05
1199	354	3	2024-06-05
1200	316	1	2024-10-11
1201	272	3	2024-11-19
1202	194	3	2024-05-07
1205	210	1	2024-10-28
1206	118	2	2024-07-09
1207	375	2	2024-05-11
1208	440	1	2024-03-06
1209	410	3	2024-10-18
1210	75	2	2024-05-11
1211	371	2	2024-08-13
1212	500	3	2024-06-02
1213	224	1	2024-06-02
1214	227	2	2024-06-29
1215	234	2	2024-12-06
1216	48	1	2024-10-11
1217	273	2	2024-08-26
1218	287	3	2024-06-16
1219	500	1	2024-05-26
1220	248	3	2024-10-17
1221	113	1	2024-10-21
1222	198	3	2024-05-13
1223	273	1	2024-07-03
1224	147	2	2024-04-14
1225	324	2	2024-04-12
1226	492	1	2024-04-03
1227	37	2	2024-10-23
1228	148	2	2024-07-24
1229	249	2	2024-11-17
1230	10	2	2024-11-08
1231	97	3	2024-08-02
1232	24	3	2024-12-06
1233	4	1	2024-10-31
1234	344	1	2024-07-04
1235	188	3	2024-02-08
1236	34	2	2024-12-19
1237	323	1	2024-06-10
1239	406	3	2024-12-18
1240	385	1	2024-05-01
1241	23	3	2024-11-09
1242	484	3	2024-10-31
1243	225	3	2024-05-01
1244	319	1	2024-07-13
1245	347	1	2024-03-31
1246	20	1	2024-11-29
1247	281	1	2024-08-23
1248	69	3	2024-12-04
1249	152	2	2024-10-13
1250	67	3	2024-11-01
1251	176	3	2024-02-18
1252	359	1	2024-04-25
1253	334	2	2024-08-02
1254	13	2	2024-12-27
1255	408	1	2024-09-29
1256	225	3	2024-07-15
1257	307	3	2024-03-04
1258	29	3	2024-11-22
1259	167	1	2024-03-29
1260	463	3	2024-02-23
1261	244	2	2024-11-04
1262	496	3	2024-05-29
1263	388	2	2024-12-29
1264	164	3	2024-08-13
1265	275	3	2024-06-09
1266	52	2	2024-10-09
1267	284	1	2024-08-09
1269	265	1	2024-07-15
1270	129	1	2024-08-16
1271	337	3	2024-11-09
1272	57	1	2024-06-06
1274	448	3	2024-02-02
1275	199	3	2024-12-27
1276	56	3	2024-04-21
1277	195	3	2024-09-25
1278	42	3	2024-10-09
1279	320	3	2024-05-03
1280	144	2	2024-04-11
1281	186	3	2024-11-08
1282	464	3	2024-12-27
1284	163	1	2024-04-04
1285	3	3	2024-09-12
1286	72	3	2024-07-17
1288	35	3	2024-10-12
1289	162	3	2024-09-11
1290	241	3	2024-12-28
1291	359	2	2024-06-01
1292	416	1	2024-02-08
1293	79	2	2024-04-21
1294	144	2	2024-10-01
1295	302	3	2024-06-03
1296	81	3	2024-02-17
1298	313	3	2024-08-17
1299	30	3	2024-08-30
1300	474	3	2024-11-13
1301	284	3	2024-11-25
1302	301	1	2024-11-16
1303	219	2	2024-08-29
1304	483	2	2024-12-09
1305	99	1	2024-10-02
1306	243	2	2024-12-14
1307	222	1	2024-10-01
1308	464	1	2024-11-29
1309	377	2	2024-12-21
1310	176	3	2024-08-09
1311	146	1	2024-03-13
1312	104	3	2024-11-02
1313	340	2	2024-07-22
1314	416	3	2024-10-10
1315	136	1	2024-05-26
1316	453	3	2024-12-23
1317	52	3	2024-02-09
1318	3	2	2024-09-14
1319	351	1	2024-03-14
1320	72	2	2024-09-14
1321	491	1	2024-11-15
1322	14	1	2024-04-22
1323	162	3	2024-06-10
1324	163	1	2024-02-17
1325	64	3	2024-05-27
1326	399	3	2024-08-11
1327	390	3	2024-04-21
1328	463	1	2024-07-17
1329	198	2	2024-02-12
1330	195	2	2024-12-28
1331	182	2	2024-09-17
1332	339	1	2024-03-17
1335	251	1	2024-10-03
1336	398	1	2024-08-31
1337	86	3	2024-02-27
1338	117	1	2024-12-15
1339	244	3	2024-04-11
1340	34	2	2024-05-05
1341	173	2	2024-02-01
1342	356	3	2024-03-21
1343	331	3	2024-08-04
1344	185	3	2024-04-30
1345	237	1	2024-10-19
1346	5	1	2024-07-25
1347	398	3	2024-11-23
1349	94	1	2024-08-07
1351	228	2	2024-11-05
1352	277	3	2024-05-21
1353	52	3	2024-08-14
1354	261	3	2024-08-11
1356	135	3	2024-06-10
1357	259	3	2024-02-08
1358	190	2	2024-02-22
1359	193	3	2024-09-22
1360	423	1	2024-03-19
1361	35	2	2024-09-13
1362	6	1	2024-03-08
1363	244	1	2024-10-09
1366	18	1	2024-11-09
1367	84	3	2024-07-15
1368	454	3	2024-06-27
1369	429	2	2024-07-09
1370	33	2	2024-02-23
1371	202	1	2024-04-10
1372	438	2	2024-09-28
1374	241	1	2024-02-26
1375	288	1	2024-06-17
1376	194	2	2024-11-28
1377	270	2	2024-05-01
1379	466	2	2024-03-15
1380	468	3	2024-10-19
1383	170	2	2024-04-21
1384	189	1	2024-05-05
1385	275	1	2024-03-04
1386	47	2	2024-04-12
1387	328	2	2024-02-29
1388	494	3	2024-07-09
1389	88	1	2024-07-04
1390	126	1	2024-07-09
1391	210	1	2024-08-23
1392	335	3	2024-03-20
1394	392	2	2024-03-12
1395	423	1	2024-09-01
1396	385	1	2024-07-26
1398	330	3	2024-10-14
1399	415	1	2024-07-16
1400	259	1	2024-10-26
1401	366	1	2024-12-28
1402	432	3	2024-11-18
1403	79	1	2024-04-15
1404	427	2	2024-06-17
1405	203	2	2024-06-05
1406	24	3	2024-07-17
1407	133	1	2024-12-18
1408	463	3	2024-05-11
1409	279	3	2024-07-07
1412	385	2	2024-10-26
1414	393	3	2024-11-19
1415	313	2	2024-09-12
1416	337	1	2024-06-11
1417	76	1	2024-08-17
1418	410	1	2024-11-20
1419	316	3	2024-09-02
1420	389	2	2024-02-24
1421	304	2	2024-12-12
1422	384	2	2024-09-10
1424	390	3	2024-09-25
1425	291	3	2024-11-02
1426	245	1	2024-06-14
1427	291	3	2024-07-16
1428	154	3	2024-05-06
1429	99	1	2024-04-17
1430	443	1	2024-04-12
1431	323	3	2024-06-13
1433	315	3	2024-10-08
1434	1	2	2024-07-27
1435	122	3	2024-10-24
1436	248	2	2024-03-30
1437	418	1	2024-12-17
1438	339	3	2024-05-08
1439	387	3	2024-04-01
1440	255	3	2024-11-21
1441	112	1	2024-04-27
1442	4	1	2024-05-16
1443	21	3	2024-05-24
1444	213	2	2024-08-09
1445	211	2	2024-08-13
1447	143	1	2024-05-02
1448	220	1	2024-09-05
1449	343	1	2024-05-18
1450	274	1	2024-05-25
1451	500	1	2024-05-08
1452	432	3	2024-05-05
1453	274	1	2024-09-06
1454	451	3	2024-07-29
1455	152	1	2024-08-30
1456	337	2	2024-10-26
1457	162	3	2024-10-04
1458	195	3	2024-08-12
1459	311	3	2024-10-15
1460	201	2	2024-06-08
1462	271	3	2024-06-24
1463	297	3	2024-11-24
1465	491	1	2024-05-12
1466	172	3	2024-11-10
1467	336	2	2024-11-16
1468	412	2	2024-02-20
1469	89	2	2024-12-20
1470	294	2	2024-04-11
1471	138	3	2024-03-10
1472	218	1	2024-03-05
1473	403	1	2024-03-23
1474	394	3	2024-09-06
1476	202	2	2024-10-22
1477	62	1	2024-03-03
1478	488	2	2024-07-24
1479	127	1	2024-09-06
1480	212	3	2024-09-15
1482	88	1	2024-08-22
1483	53	2	2024-11-08
1484	354	3	2024-04-21
1485	253	2	2024-09-27
1486	289	1	2024-02-28
1487	421	2	2024-11-12
1488	482	3	2024-08-31
1489	298	1	2024-09-01
1490	234	1	2024-05-08
1491	3	3	2024-10-11
1492	269	1	2024-03-31
1493	195	3	2024-03-14
1494	198	2	2024-02-27
1495	342	2	2024-07-28
1496	266	1	2024-05-27
1497	466	2	2024-02-19
1498	290	2	2024-04-14
1500	316	1	2024-04-15
1501	160	1	2024-03-07
1502	196	3	2024-07-10
1503	324	2	2024-04-16
1504	28	2	2024-09-04
1505	176	2	2024-05-23
1506	173	2	2024-04-12
1507	427	3	2024-12-31
1508	415	3	2024-08-20
1509	376	3	2024-08-29
1510	243	3	2024-03-12
1511	35	2	2024-11-23
1512	328	3	2024-03-23
1513	102	2	2024-05-12
1514	333	1	2024-08-13
1515	352	2	2024-05-01
1516	255	1	2024-10-18
1517	386	2	2024-06-24
1518	142	3	2024-05-18
1519	140	2	2024-11-22
1520	435	3	2024-02-25
1521	103	1	2024-03-24
1523	491	3	2024-05-24
1524	156	3	2024-08-28
1525	322	2	2024-04-13
1526	403	1	2024-08-25
1527	104	3	2024-10-03
1528	474	1	2024-09-14
1529	227	1	2024-10-03
1530	144	3	2024-08-06
1531	354	2	2024-03-06
1532	51	2	2024-11-13
1533	78	3	2024-04-25
1534	154	2	2024-03-30
1535	365	3	2024-08-17
1536	207	1	2024-09-01
1537	338	2	2024-05-04
1538	139	2	2024-05-07
1539	421	1	2024-10-04
1540	347	3	2024-06-04
1541	46	1	2024-12-18
1542	56	2	2024-08-05
1543	295	3	2024-11-09
1544	164	2	2024-05-29
1545	38	2	2024-04-10
1546	27	1	2024-12-30
1547	456	3	2024-05-22
1549	37	3	2024-06-10
1550	26	3	2024-09-01
1551	209	2	2024-12-29
1552	371	2	2024-08-01
1553	298	3	2024-07-22
1554	402	3	2024-03-26
1555	422	1	2024-12-02
1556	189	1	2024-10-27
1557	470	3	2024-06-18
1558	256	1	2024-07-02
1559	488	2	2024-09-02
1560	294	1	2024-06-02
1561	271	1	2024-11-21
1562	138	3	2024-12-13
1564	162	2	2024-08-08
1565	241	1	2024-06-17
1566	280	3	2024-05-10
1567	144	3	2024-12-01
1568	100	3	2024-02-18
1569	372	2	2024-04-08
1570	273	2	2024-03-17
1572	456	3	2024-11-19
1573	495	3	2024-09-09
1574	330	1	2024-04-03
1575	230	3	2024-11-30
1576	107	1	2024-10-19
1577	218	2	2024-10-22
1578	123	2	2024-06-06
1579	391	2	2024-08-29
1580	297	3	2024-09-13
1581	312	3	2024-11-03
1582	361	3	2024-07-30
1583	383	3	2024-05-04
1586	218	2	2024-03-22
1587	176	3	2024-05-06
1588	405	3	2024-09-01
1589	100	1	2024-09-10
1590	345	1	2024-06-11
1591	380	3	2024-09-11
1592	314	2	2024-02-13
1593	399	2	2024-10-12
1594	214	3	2024-05-13
1595	322	3	2024-03-31
1596	426	2	2024-09-21
1597	456	2	2024-02-10
1598	70	1	2024-12-24
1599	115	2	2024-12-27
1600	112	1	2024-09-02
1601	414	2	2024-04-19
1602	22	3	2024-03-24
1603	88	1	2024-03-15
1604	163	3	2024-05-14
1605	332	3	2024-05-05
1606	134	2	2024-11-09
1607	460	1	2024-10-14
1608	496	1	2024-03-16
1609	201	1	2024-06-15
1610	64	2	2024-11-21
1611	148	1	2024-03-01
1612	295	1	2024-05-10
1614	4	3	2024-09-10
1615	500	2	2024-08-02
1616	14	2	2024-11-23
1617	287	2	2024-10-21
1618	132	3	2024-03-24
1619	373	2	2024-03-30
1620	268	1	2024-06-21
1621	49	1	2024-11-11
1622	408	2	2024-05-02
1623	386	3	2024-07-13
1624	122	3	2024-08-20
1625	286	1	2024-08-31
1626	227	1	2024-08-20
1627	34	1	2024-04-20
1628	122	2	2024-07-20
1629	329	2	2024-07-06
1630	41	2	2024-04-06
1631	73	2	2024-05-12
1632	248	3	2024-10-11
1633	42	2	2024-06-20
1634	181	3	2024-09-26
1635	386	2	2024-02-13
1636	460	3	2024-08-13
1637	53	2	2024-03-28
1638	206	2	2024-07-26
1639	180	2	2024-07-29
1640	52	3	2024-12-23
1641	280	2	2024-12-16
1642	442	3	2024-03-23
1643	335	2	2024-08-10
1644	100	3	2024-06-21
1645	374	2	2024-04-19
1646	407	3	2024-05-12
1647	235	1	2024-04-15
1648	287	1	2024-07-10
1649	7	2	2024-05-02
1650	292	3	2024-12-30
1651	143	3	2024-12-19
1652	104	1	2024-08-28
1653	176	3	2024-08-29
1654	50	2	2024-07-25
1655	10	3	2024-04-26
1656	386	3	2024-05-10
1657	11	1	2024-08-05
1658	163	1	2024-12-06
1659	154	3	2024-08-18
1660	293	3	2024-02-11
1661	385	3	2024-02-16
1662	75	2	2024-05-31
1663	38	3	2024-10-20
1664	329	2	2024-07-12
1665	96	1	2024-04-22
1666	211	3	2024-05-29
1667	91	1	2024-06-12
1668	129	3	2024-08-29
1669	69	2	2024-02-27
1670	221	1	2024-09-24
1671	15	1	2024-05-16
1672	485	1	2024-03-12
1673	61	2	2024-09-17
1674	433	1	2024-04-03
1676	86	3	2024-09-02
1677	389	2	2024-04-17
1678	265	3	2024-07-05
1679	382	3	2024-07-20
1680	133	2	2024-03-23
1681	319	1	2024-06-14
1682	483	1	2024-03-09
1683	403	2	2024-09-27
1684	34	1	2024-10-04
1685	158	2	2024-12-17
1686	480	3	2024-08-06
1687	470	2	2024-07-07
1688	400	3	2024-11-03
1689	164	1	2024-03-05
1690	2	1	2024-08-28
1691	201	2	2024-04-27
1692	329	1	2024-06-11
1693	329	1	2024-07-27
1694	95	3	2024-06-08
1695	168	1	2024-05-08
1696	94	2	2024-07-13
1697	335	2	2024-05-08
1700	99	3	2024-02-01
1701	17	2	2024-10-07
1702	67	3	2024-06-11
1703	248	3	2024-04-12
1704	43	3	2024-04-15
1705	66	2	2024-12-17
1706	78	1	2024-03-02
1707	374	1	2024-04-07
1708	247	3	2024-06-09
1709	288	2	2024-03-14
1710	418	3	2024-04-22
1711	168	2	2024-10-30
1712	48	3	2024-09-19
1713	25	3	2024-12-26
1714	53	2	2024-02-12
1715	394	2	2024-03-09
1716	264	1	2024-10-25
1717	279	3	2024-07-23
1718	235	2	2024-03-29
1719	220	1	2024-08-25
1720	156	2	2024-08-24
1721	122	2	2024-10-26
1722	99	1	2024-05-18
1723	10	3	2024-08-27
1725	218	3	2024-09-02
1726	372	1	2024-04-23
1727	7	1	2024-08-19
1728	281	2	2024-09-09
1729	484	1	2024-10-20
1730	282	3	2024-11-26
1731	76	2	2024-11-06
1732	352	3	2024-04-08
1733	62	3	2024-06-08
1734	489	2	2024-09-28
1735	415	3	2024-11-29
1737	156	3	2024-07-15
1739	66	3	2024-11-24
1740	363	3	2024-08-22
1741	478	1	2024-03-21
1743	111	3	2024-10-12
1744	360	3	2024-04-30
1745	8	2	2024-02-16
1746	249	2	2024-08-31
1747	345	2	2024-02-12
1748	166	2	2024-02-17
1749	49	2	2024-12-31
1750	73	2	2024-05-18
1751	70	2	2024-05-04
1752	394	2	2024-07-12
1753	32	3	2024-02-02
1754	376	2	2024-06-16
1755	404	3	2024-03-13
1757	220	3	2024-11-26
1758	293	2	2024-12-11
1759	189	1	2024-10-05
1760	97	1	2024-03-30
1762	486	1	2024-09-19
1764	245	1	2024-12-26
1765	119	2	2024-10-04
1766	422	2	2024-11-16
1767	368	3	2024-10-15
1768	421	1	2024-06-22
1771	211	1	2024-02-13
1772	51	2	2024-03-30
1773	198	1	2024-06-05
1774	302	1	2024-03-19
1775	15	2	2024-11-15
1776	30	1	2024-07-22
1777	435	2	2024-08-03
1778	22	1	2024-08-10
1779	335	3	2024-05-29
1780	256	1	2024-08-12
1781	249	3	2024-03-29
1782	96	3	2024-12-22
1783	274	3	2024-12-21
1784	141	1	2024-03-08
1786	199	2	2024-06-05
1787	450	3	2024-10-24
1788	315	2	2024-03-29
1789	223	2	2024-09-06
1790	242	1	2024-10-10
1791	252	1	2024-04-20
1792	270	2	2024-08-08
1793	78	1	2024-11-26
1794	25	2	2024-06-18
1795	300	2	2024-02-24
1796	349	2	2024-04-13
1797	472	1	2024-04-08
1798	59	2	2024-09-30
1799	462	3	2024-04-23
1800	365	3	2024-08-21
1801	313	2	2024-09-29
1802	394	1	2024-05-04
1803	347	1	2024-07-11
1804	309	2	2024-06-16
1805	389	3	2024-08-30
1806	315	3	2024-05-03
1807	392	3	2024-12-28
1808	137	2	2024-02-02
1809	288	1	2024-12-13
1810	126	1	2024-02-04
1811	365	2	2024-06-06
1812	404	1	2024-05-05
1813	184	2	2024-04-28
1814	115	1	2024-07-29
1815	250	1	2024-09-26
1816	54	1	2024-03-01
1817	327	1	2024-07-21
1818	265	3	2024-11-06
1819	385	1	2024-07-01
1820	270	2	2024-08-31
1821	253	3	2024-06-09
1822	28	2	2024-02-27
1823	1	2	2024-08-23
1824	145	3	2024-09-02
1825	453	1	2024-07-28
1826	200	3	2024-08-10
1827	18	1	2024-08-14
1828	365	1	2024-05-11
1830	474	1	2024-11-23
1831	33	2	2024-02-17
1832	419	3	2024-05-28
1833	270	2	2024-10-07
1834	397	3	2024-04-23
1835	409	1	2024-09-13
1836	409	1	2024-11-10
1837	268	2	2024-03-14
1838	451	3	2024-12-19
1839	452	3	2024-03-01
1840	60	1	2024-05-06
1841	176	3	2024-09-12
1842	367	1	2024-04-05
1844	472	1	2024-10-19
1845	469	1	2024-02-28
1847	262	3	2024-06-14
1848	127	1	2024-09-21
1849	19	2	2024-03-23
1850	395	3	2024-05-08
1851	56	3	2024-12-19
1852	5	3	2024-12-08
1853	28	2	2024-03-06
1854	444	3	2024-07-09
1855	160	2	2024-03-31
1856	307	3	2024-03-05
1857	122	2	2024-07-27
1858	94	1	2024-10-14
1859	331	2	2024-11-06
1860	453	2	2024-03-10
1861	235	3	2024-08-08
1863	201	1	2024-04-26
1864	29	1	2024-02-25
1865	50	1	2024-05-27
1867	148	2	2024-06-08
1868	495	3	2024-05-10
1869	191	3	2024-08-13
1870	246	3	2024-03-18
1871	215	3	2024-06-05
1872	253	1	2024-09-26
1873	211	2	2024-09-15
1874	463	3	2024-06-28
1875	297	3	2024-10-28
1876	19	3	2024-05-10
1877	47	2	2024-11-23
1878	302	1	2024-07-06
1879	411	3	2024-04-23
1880	104	3	2024-02-27
1881	69	2	2024-11-12
1882	251	3	2024-10-26
1883	285	2	2024-10-02
1884	230	2	2024-07-18
1885	380	3	2024-10-30
1887	385	2	2024-06-07
1888	179	3	2024-05-02
1889	306	2	2024-06-26
1890	89	2	2024-09-09
1891	271	1	2024-03-06
1892	482	2	2024-10-23
1894	288	1	2024-09-30
1895	79	3	2024-06-10
1896	333	3	2024-09-12
1897	249	1	2024-07-22
1898	186	3	2024-12-06
1899	142	3	2024-12-04
1900	290	1	2024-07-22
1901	329	1	2024-12-20
1903	353	2	2024-05-26
1904	294	3	2024-11-07
1905	366	3	2024-05-23
1906	470	1	2024-09-20
1907	324	3	2024-11-11
1908	467	2	2024-03-27
1909	377	1	2024-06-17
1910	71	3	2024-07-23
1911	181	2	2024-05-25
1912	80	2	2024-03-23
1913	38	3	2024-11-26
1914	38	3	2024-10-02
1915	212	1	2024-04-24
1916	148	2	2024-07-01
1917	140	1	2024-05-27
1918	138	3	2024-10-01
1919	223	1	2024-03-21
1920	129	1	2024-07-16
1921	400	3	2024-11-28
1922	455	2	2024-09-23
1923	63	2	2024-07-24
1924	275	2	2024-11-07
1925	196	1	2024-05-18
1926	377	3	2024-03-18
1927	271	3	2024-04-07
1928	465	1	2024-07-30
1929	210	3	2024-05-30
1930	335	3	2024-10-26
1931	95	1	2024-03-30
1932	146	3	2024-07-07
1933	154	3	2024-07-27
1934	355	1	2024-07-21
1935	195	1	2024-04-20
1936	140	2	2024-06-05
1937	27	3	2024-11-20
1938	390	2	2024-03-29
1939	139	1	2024-09-10
1941	495	3	2024-08-05
1942	377	1	2024-07-21
1943	319	3	2024-06-07
1944	253	2	2024-09-06
1945	324	3	2024-11-26
1946	493	1	2024-03-05
1947	443	1	2024-10-01
1948	80	3	2024-12-20
1949	141	3	2024-11-17
1950	434	2	2024-09-10
1951	439	3	2024-02-10
1952	264	2	2024-05-04
1953	397	3	2024-11-17
1954	9	3	2024-11-29
1955	58	3	2024-07-27
1956	463	3	2024-03-25
1957	289	1	2024-02-14
1958	49	3	2024-09-12
1960	16	3	2024-07-31
1961	319	3	2024-12-13
1962	168	1	2024-02-08
1963	476	2	2024-05-29
1964	115	1	2024-06-26
1965	485	1	2024-06-25
1966	445	3	2024-02-20
1967	190	3	2024-09-21
1968	357	1	2024-08-27
1969	279	3	2024-07-09
1970	105	1	2024-11-27
1971	241	2	2024-11-01
1972	194	2	2024-06-03
1973	175	1	2024-10-24
1974	154	1	2024-05-06
1975	261	1	2024-10-23
1976	394	1	2024-11-20
1977	462	3	2024-12-22
1978	418	1	2024-12-30
1979	456	3	2024-02-22
1980	7	1	2024-04-26
1981	100	3	2024-04-09
1983	332	2	2024-04-13
1984	120	2	2024-06-16
1985	199	3	2024-02-16
1986	385	3	2024-07-05
1987	246	2	2024-04-04
1988	94	2	2024-11-06
1989	266	2	2024-10-28
1990	125	1	2024-08-07
1991	378	1	2024-03-10
1992	402	2	2024-11-04
1994	213	1	2024-03-24
1995	45	2	2024-10-29
1996	329	2	2024-10-27
1997	496	3	2024-04-15
1998	97	2	2024-02-13
1999	202	3	2024-10-22
2000	34	1	2024-09-20
2001	322	2	2024-03-04
2002	21	3	2024-08-08
2003	397	2	2024-04-05
2004	204	1	2024-06-24
2005	8	2	2024-06-22
2006	302	3	2024-12-27
2007	133	1	2024-12-02
2008	352	3	2024-10-17
2009	312	2	2024-05-24
2010	286	3	2024-03-03
2011	9	1	2024-02-23
2012	22	3	2024-04-24
2013	474	3	2024-09-20
2014	137	2	2024-10-10
2015	348	1	2024-11-11
2016	88	2	2024-09-06
2017	451	2	2024-07-20
2018	21	3	2024-05-20
2019	3	2	2024-09-07
2020	279	3	2024-04-24
2021	497	3	2024-11-01
2022	112	3	2024-10-01
2023	22	1	2024-08-11
2024	322	3	2024-09-24
2025	305	3	2024-07-20
2026	484	2	2024-04-02
2027	102	1	2024-08-25
2028	58	2	2024-05-27
2029	406	2	2024-04-25
2030	394	3	2024-08-31
2031	169	3	2024-06-04
2032	374	1	2024-04-16
2033	260	2	2024-08-04
2034	500	3	2024-03-01
2035	400	2	2024-07-16
2037	283	1	2024-02-11
2038	160	2	2024-10-27
2039	426	3	2024-06-01
2041	368	1	2024-03-10
2042	70	1	2024-03-01
2043	222	2	2024-12-14
2044	294	3	2024-09-25
2045	182	1	2024-02-02
2046	43	3	2024-04-02
2048	470	2	2024-11-24
2049	294	3	2024-06-22
2050	74	3	2024-11-16
2051	270	1	2024-04-26
2052	115	3	2024-11-10
2053	267	3	2024-12-02
2054	118	2	2024-05-19
2055	278	3	2024-08-30
2056	298	3	2024-12-16
2057	368	2	2024-03-04
2058	2	2	2024-06-21
2060	466	3	2024-07-18
2061	6	3	2024-08-21
2062	40	2	2024-07-08
2064	190	1	2024-06-12
2065	388	3	2024-06-06
2066	237	2	2024-06-28
2067	426	1	2024-06-03
2068	83	3	2024-11-17
2069	329	1	2024-10-25
2070	365	1	2024-03-20
2071	22	3	2024-10-06
2072	489	1	2024-03-11
2073	281	3	2024-08-31
2074	300	1	2024-03-30
2075	280	2	2024-03-26
2076	75	1	2024-03-02
2078	338	2	2024-02-18
2079	215	3	2024-04-28
2080	405	3	2024-08-10
2081	417	1	2024-09-20
2082	416	3	2024-12-05
2083	246	1	2024-04-20
2084	291	2	2024-11-04
2085	398	1	2024-11-10
2086	38	2	2024-04-22
2087	85	2	2024-12-01
2088	69	2	2024-02-22
2089	112	1	2024-07-26
2090	347	2	2024-05-22
2091	345	1	2024-06-03
2092	423	2	2024-11-24
2093	497	2	2024-08-30
2094	237	3	2024-10-23
2095	489	1	2024-05-30
2097	83	1	2024-07-22
2098	341	3	2024-10-12
2099	189	1	2024-03-26
2100	424	1	2024-12-06
2102	77	1	2024-06-13
2104	498	2	2024-10-15
2105	157	3	2024-03-20
2106	319	2	2024-11-24
2107	276	1	2024-12-26
2108	19	1	2024-06-02
2109	135	3	2024-03-22
2110	294	2	2024-11-18
2111	493	1	2024-04-06
2112	328	3	2024-07-05
2114	474	1	2024-10-25
2115	26	2	2024-06-23
2116	470	2	2024-07-29
2117	95	2	2024-07-27
2118	153	2	2024-06-17
2119	406	3	2024-12-07
2120	259	2	2024-04-06
2121	265	2	2024-02-19
2122	69	2	2024-05-02
2123	117	2	2024-03-17
2124	264	2	2024-07-03
2125	484	2	2024-07-17
2126	194	2	2024-03-20
2127	130	1	2024-03-02
2128	96	2	2024-10-03
2130	279	3	2024-12-06
2131	250	3	2024-06-28
2132	134	3	2024-10-23
2133	125	2	2024-09-11
2134	447	3	2024-11-09
2135	21	1	2024-09-10
2136	28	2	2024-07-28
2137	207	2	2024-12-27
2138	8	3	2024-11-10
2139	38	1	2024-11-20
2140	260	3	2024-03-04
2141	56	1	2024-05-26
2142	164	1	2024-05-24
2143	219	1	2024-08-31
2144	253	2	2024-11-15
2145	494	1	2024-02-08
2146	460	3	2024-07-05
2147	98	2	2024-10-11
2148	114	3	2024-08-12
2149	311	3	2024-07-10
2150	342	1	2024-06-27
2151	227	1	2024-12-05
2152	445	1	2024-07-18
2153	324	1	2024-02-20
2154	228	1	2024-11-19
2155	396	3	2024-12-15
2156	404	3	2024-11-13
2157	214	2	2024-06-27
2158	250	1	2024-05-26
2159	156	3	2024-10-03
2160	345	1	2024-12-15
2161	46	3	2024-05-06
2162	96	2	2024-10-24
2163	449	1	2024-03-20
2164	184	3	2024-06-12
2165	196	3	2024-08-24
2166	411	3	2024-03-27
2167	449	1	2024-08-14
2168	485	2	2024-12-03
2169	147	2	2024-11-17
2170	114	1	2024-11-21
2171	486	3	2024-04-29
2173	158	3	2024-03-18
2174	147	3	2024-04-29
2176	333	1	2024-07-31
2177	228	3	2024-04-14
2178	167	2	2024-12-25
2179	493	3	2024-06-20
2181	214	2	2024-05-01
2182	345	2	2024-12-12
2183	249	3	2024-07-14
2184	248	2	2024-02-09
2185	495	3	2024-05-12
2186	267	3	2024-08-29
2187	36	1	2024-10-01
2189	140	2	2024-05-30
2190	419	1	2024-03-29
2191	287	1	2024-08-24
2192	209	3	2024-05-17
2193	398	1	2024-02-26
2195	42	2	2024-09-07
2196	294	2	2024-08-23
2197	54	1	2024-04-21
2198	466	3	2024-10-03
2199	22	1	2024-07-29
2200	296	2	2024-06-06
2202	70	1	2024-07-06
2203	401	1	2024-11-14
2204	176	1	2024-12-28
2205	91	1	2024-08-29
2206	303	2	2024-06-20
2207	65	3	2024-03-07
2208	305	2	2024-04-30
2210	81	2	2024-05-01
2211	217	1	2024-12-11
2213	305	2	2024-03-31
2214	485	1	2024-09-22
2215	32	3	2024-05-13
2216	309	1	2024-03-17
2218	205	1	2024-06-16
2219	447	3	2024-02-15
2220	32	2	2024-05-31
2221	281	3	2024-09-20
2222	418	2	2024-07-05
2223	124	3	2024-07-04
2224	99	1	2024-07-13
2225	289	2	2024-05-25
2226	420	3	2024-10-04
2227	150	2	2024-08-02
2228	356	2	2024-07-19
2229	305	3	2024-05-19
2230	346	1	2024-06-14
2231	43	2	2024-07-28
2232	343	2	2024-09-05
2233	72	1	2024-05-13
2234	153	3	2024-12-31
2235	34	3	2024-05-09
2236	5	1	2024-03-24
2237	27	3	2024-12-14
2238	496	3	2024-07-12
2239	409	1	2024-06-24
2240	197	3	2024-06-08
2241	156	2	2024-12-07
2242	469	3	2024-03-22
2243	367	2	2024-03-18
2244	357	2	2024-02-13
2245	70	3	2024-09-16
2246	420	1	2024-05-29
2247	337	2	2024-02-10
2248	61	2	2024-06-09
2249	67	1	2024-08-05
2250	101	2	2024-07-20
2251	130	2	2024-12-22
2252	141	2	2024-12-01
2253	493	3	2024-08-27
2255	43	1	2024-07-14
2256	255	2	2024-03-20
2257	151	2	2024-10-06
2258	194	3	2024-09-14
2259	338	2	2024-08-18
2260	121	2	2024-03-29
2261	277	2	2024-05-22
2262	97	3	2024-08-25
2263	120	2	2024-07-12
2264	356	1	2024-12-01
2265	92	1	2024-02-14
2266	238	1	2024-08-18
2267	249	3	2024-09-13
2268	181	1	2024-08-08
2269	495	1	2024-12-28
2270	63	2	2024-11-10
2271	396	3	2024-06-15
2272	93	2	2024-03-20
2273	469	1	2024-11-29
2274	85	3	2024-03-27
2275	79	3	2024-08-20
2276	271	3	2024-05-24
2277	495	1	2024-05-18
2278	472	2	2024-05-30
2279	9	2	2024-03-05
2280	4	3	2024-09-29
2281	378	1	2024-07-14
2282	250	1	2024-03-30
2283	185	1	2024-11-21
2284	97	2	2024-03-20
2285	23	1	2024-06-18
2286	268	3	2024-04-02
2287	92	2	2024-08-16
2288	210	1	2024-03-29
2289	396	1	2024-07-11
2290	413	3	2024-08-08
2292	450	2	2024-03-14
2293	35	3	2024-04-04
2294	86	1	2024-04-12
2295	70	3	2024-03-22
2296	474	2	2024-09-15
2297	159	1	2024-10-22
2298	349	1	2024-02-05
2299	446	2	2024-03-23
2300	102	2	2024-07-24
2301	182	1	2024-12-22
2302	345	2	2024-06-18
2303	483	2	2024-09-29
2304	255	3	2024-06-05
2305	488	2	2024-10-06
2306	459	2	2024-08-23
2307	307	1	2024-10-27
2308	159	3	2024-12-11
2309	228	2	2024-10-25
2310	109	2	2024-05-12
2311	349	1	2024-06-15
2312	234	1	2024-07-12
2313	47	1	2024-12-01
2314	15	1	2024-08-08
2315	4	3	2024-08-13
2316	197	2	2024-12-18
2317	323	3	2024-02-02
2318	347	1	2024-04-03
2319	53	2	2024-11-01
2320	486	2	2024-09-18
2321	484	2	2024-10-15
2322	292	1	2024-08-21
2323	488	3	2024-04-07
2324	187	2	2024-04-09
2325	347	2	2024-09-16
2326	127	2	2024-05-31
2327	171	2	2024-07-24
2328	171	2	2024-03-03
2329	452	1	2024-12-02
2330	113	2	2024-12-13
2331	27	1	2024-05-07
2332	81	2	2024-03-19
2333	67	3	2024-04-11
2334	220	2	2024-06-05
2335	299	2	2024-06-05
2336	80	3	2024-09-21
2337	167	1	2024-09-23
2338	500	3	2024-11-06
2339	274	1	2024-09-22
2340	133	2	2024-05-15
2341	393	1	2024-02-25
2342	403	3	2024-12-25
2343	110	2	2024-04-25
2344	45	3	2024-09-04
2345	100	3	2024-04-30
2346	42	2	2024-08-22
2347	144	1	2024-03-28
2348	460	3	2024-03-06
2349	72	2	2024-07-12
2350	331	2	2024-03-26
2351	275	1	2024-06-06
2352	469	1	2024-06-29
2353	69	1	2024-02-16
2354	10	2	2024-06-27
2355	499	3	2024-02-03
2356	24	1	2024-04-20
2359	17	1	2024-02-24
2360	298	3	2024-02-24
2362	411	1	2024-03-05
2363	471	2	2024-12-22
2364	289	1	2024-05-21
2366	3	2	2024-10-05
2367	116	1	2024-02-09
2368	224	3	2024-02-10
2369	213	2	2024-09-19
2370	410	1	2024-04-27
2371	144	3	2024-07-15
2372	138	1	2024-08-04
2373	394	2	2024-07-13
2374	14	1	2024-04-05
2375	61	3	2024-07-29
2376	373	2	2024-07-09
2377	338	3	2024-08-22
2379	79	2	2024-12-09
2380	30	1	2024-10-22
2381	269	1	2024-08-20
2382	372	2	2024-05-12
2384	13	3	2024-03-18
2386	327	1	2024-09-02
2387	402	1	2024-02-06
2388	327	3	2024-02-17
2389	321	2	2024-05-08
2390	131	2	2024-07-06
2391	151	2	2024-10-04
2392	244	2	2024-02-02
2393	399	2	2024-06-18
2394	463	1	2024-03-07
2395	321	3	2024-10-20
2396	358	3	2024-05-01
2397	394	1	2024-11-12
2398	80	1	2024-04-09
2399	122	2	2024-03-01
2400	366	3	2024-10-18
2401	193	1	2024-11-23
2402	493	2	2024-04-29
2403	318	2	2024-03-03
2404	279	3	2024-02-18
2405	446	2	2024-02-08
2406	3	2	2024-05-28
2407	17	1	2024-10-30
2408	313	1	2024-09-05
2409	252	1	2024-12-12
2410	161	1	2024-04-04
2411	215	2	2024-02-14
2414	208	3	2024-02-11
2415	222	2	2024-08-29
2416	200	3	2024-08-06
2417	493	2	2024-06-19
2419	341	3	2024-06-16
2420	203	1	2024-08-11
2421	257	2	2024-12-31
2422	368	2	2024-05-28
2423	350	3	2024-06-15
2425	341	1	2024-03-29
2426	124	2	2024-06-10
2427	222	2	2024-07-25
2428	169	3	2024-05-29
2429	393	2	2024-05-26
2430	91	2	2024-10-22
2431	349	2	2024-05-18
2432	406	2	2024-02-17
2433	170	1	2024-10-21
2434	311	2	2024-11-20
2435	225	2	2024-05-21
2436	494	3	2024-03-20
2437	124	1	2024-11-06
2438	461	2	2024-12-03
2439	74	3	2024-02-09
2440	135	3	2024-06-05
2441	77	1	2024-06-08
2442	117	3	2024-10-04
2443	357	1	2024-05-19
2444	246	2	2024-04-14
2445	10	2	2024-11-01
2446	430	3	2024-04-20
2447	401	3	2024-06-17
2448	408	3	2024-10-20
2449	97	3	2024-08-18
2450	49	2	2024-03-06
2451	276	2	2024-06-25
2452	426	3	2024-05-27
2453	8	3	2024-05-13
2454	164	2	2024-03-14
2455	465	3	2024-09-13
2456	39	2	2024-04-24
2457	59	3	2024-09-25
2458	450	3	2024-03-12
2459	152	2	2024-04-10
2460	294	3	2024-08-23
2461	354	1	2024-02-04
2462	1	3	2024-03-01
2463	140	1	2024-12-22
2464	104	2	2024-10-09
2465	229	2	2024-03-25
2466	435	3	2024-11-02
2467	319	2	2024-12-21
2468	9	1	2024-02-05
2469	48	2	2024-05-01
2470	328	3	2024-09-18
2471	270	1	2024-03-10
2472	314	3	2024-02-19
2473	90	1	2024-12-05
2474	306	2	2024-06-02
2475	440	2	2024-09-05
2477	472	2	2024-08-28
2478	44	2	2024-02-01
2479	355	2	2024-02-06
2480	60	3	2024-07-09
2481	350	1	2024-02-23
2482	344	1	2024-07-08
2483	124	2	2024-04-03
2484	405	2	2024-06-10
2485	330	2	2024-12-28
2486	460	3	2024-11-15
2487	288	2	2024-08-26
2488	224	3	2024-03-28
2489	262	1	2024-04-02
2490	238	3	2024-09-21
2491	372	2	2024-03-02
2492	52	2	2024-06-19
2493	467	2	2024-12-12
2494	196	2	2024-03-29
2495	403	2	2024-05-25
2496	262	1	2024-07-11
2497	322	1	2024-10-08
2498	396	1	2024-06-01
2499	123	1	2024-03-20
2500	336	2	2024-10-16
2501	301	1	2024-04-05
2502	201	1	2024-03-23
2503	348	1	2024-05-29
2504	51	1	2024-05-18
2505	398	3	2024-11-17
2506	58	3	2024-09-20
2507	348	2	2024-09-18
2508	51	1	2024-09-25
2509	150	1	2024-10-23
2510	4	1	2024-03-01
2511	355	2	2024-09-11
2512	461	2	2024-11-17
2513	429	3	2024-06-07
2514	407	1	2024-02-14
2515	14	3	2024-11-05
2516	449	3	2024-09-29
2517	280	3	2024-10-07
2518	429	2	2024-04-03
2519	294	3	2024-03-27
2520	386	2	2024-06-03
2521	18	1	2024-10-22
2522	7	1	2024-11-24
2523	319	2	2024-03-19
2524	330	2	2024-09-22
2525	489	3	2024-09-24
2526	416	3	2024-09-29
2527	125	1	2024-02-18
2529	22	3	2024-04-28
2530	145	2	2024-02-24
2531	432	2	2024-10-27
2532	84	3	2024-07-06
2533	77	2	2024-08-15
2534	138	1	2024-07-11
2535	140	3	2024-08-02
2536	252	3	2024-12-10
2538	146	2	2024-06-17
2539	437	1	2024-04-28
2540	435	2	2024-07-30
2541	189	2	2024-06-16
2542	407	2	2024-10-31
2543	425	3	2024-09-02
2544	12	1	2024-02-25
2545	484	2	2024-06-13
2546	152	2	2024-08-07
2547	426	2	2024-12-18
2549	103	2	2024-07-01
2550	366	2	2024-05-14
2551	463	2	2024-11-06
2552	471	2	2024-08-10
2553	61	2	2024-08-11
2554	181	2	2024-12-21
2555	340	2	2024-06-18
2557	255	1	2024-04-17
2558	383	3	2024-12-20
2559	381	1	2024-10-08
2560	28	1	2024-07-04
2561	217	3	2024-12-15
2563	249	1	2024-04-07
2564	174	3	2024-07-27
2565	266	2	2024-04-27
2566	393	2	2024-04-06
2567	243	2	2024-06-23
2568	122	3	2024-05-30
2570	386	1	2024-07-03
2571	83	1	2024-10-25
2572	62	1	2024-07-28
2573	142	1	2024-07-03
2574	455	2	2024-12-25
2575	125	1	2024-10-26
2576	265	2	2024-10-13
2577	184	3	2024-09-29
2578	141	3	2024-08-10
2579	163	1	2024-10-20
2580	65	3	2024-09-15
2581	230	1	2024-02-17
2582	190	2	2024-10-26
2583	320	1	2024-07-20
2584	417	3	2024-06-27
2585	393	1	2024-03-20
2586	204	2	2024-12-28
2587	135	2	2024-02-25
2588	46	3	2024-06-06
2590	301	1	2024-02-10
2591	424	3	2024-03-30
2592	347	3	2024-07-04
2593	488	1	2024-02-02
2594	238	2	2024-07-09
2595	66	2	2024-08-04
2596	184	1	2024-08-07
2597	58	1	2024-03-01
2598	277	2	2024-12-09
2599	95	3	2024-03-09
2600	226	2	2024-06-06
2601	276	2	2024-05-29
2603	478	1	2024-04-30
2604	279	2	2024-06-23
2605	14	3	2024-06-11
2606	319	2	2024-08-18
2607	495	2	2024-04-10
2608	375	2	2024-03-13
2609	483	3	2024-04-28
2610	278	1	2024-11-29
2611	350	1	2024-09-04
2612	320	3	2024-05-07
2613	216	3	2024-08-09
2614	417	2	2024-11-20
2615	499	3	2024-12-23
2616	482	1	2024-04-27
2617	361	1	2024-04-04
2618	313	1	2024-06-24
2619	42	3	2024-07-05
2620	163	1	2024-07-06
2621	224	3	2024-08-15
2622	33	1	2024-07-19
2623	118	2	2024-06-28
2624	322	3	2024-08-18
2625	205	3	2024-10-23
2627	500	2	2024-02-05
2628	499	3	2024-02-18
2630	171	3	2024-07-24
2632	258	1	2024-03-06
2633	128	3	2024-05-03
2634	98	3	2024-07-08
2635	289	3	2024-03-03
2637	272	2	2024-05-24
2638	266	2	2024-12-08
2640	251	1	2024-10-06
2641	246	1	2024-06-12
2642	462	2	2024-10-04
2643	238	2	2024-09-07
2644	442	1	2024-04-19
2645	445	1	2024-11-12
2647	48	1	2024-10-30
2649	4	3	2024-12-12
2650	94	1	2024-02-05
2651	300	2	2024-04-13
2652	64	3	2024-12-12
2653	300	2	2024-11-03
2654	108	1	2024-10-27
2655	145	1	2024-11-18
2656	259	2	2024-06-16
2658	427	1	2024-02-02
2659	192	3	2024-10-09
2660	243	3	2024-10-26
2661	70	3	2024-06-01
2662	356	1	2024-02-15
2663	476	2	2024-10-18
2665	478	2	2024-02-11
2667	452	3	2024-10-30
2668	174	1	2024-04-13
2670	329	2	2024-09-09
2672	252	3	2024-10-24
2673	214	1	2024-05-08
2674	57	1	2024-05-17
2675	370	1	2024-12-23
2676	348	2	2024-03-05
2677	35	1	2024-12-03
2678	162	3	2024-06-30
2680	401	3	2024-03-31
2682	339	2	2024-05-22
2683	49	1	2024-10-24
2684	147	3	2024-12-31
2685	7	2	2024-02-26
2686	92	1	2024-07-07
2688	130	2	2024-06-28
2689	319	1	2024-05-02
2690	458	3	2024-07-29
2691	62	1	2024-08-16
2692	181	3	2024-10-12
2693	128	2	2024-10-27
2694	365	2	2024-11-11
2695	191	3	2024-12-14
2696	400	1	2024-05-08
2697	302	1	2024-05-08
2698	436	2	2024-04-29
2699	237	1	2024-06-09
2700	160	3	2024-10-14
2701	355	1	2024-08-10
2702	460	3	2024-07-11
2703	183	3	2024-09-07
2704	397	3	2024-11-24
2705	306	1	2024-03-26
2706	390	2	2024-04-13
2707	36	3	2024-04-15
2708	39	2	2024-09-09
2709	494	3	2024-09-30
2710	368	1	2024-04-08
2711	399	1	2024-09-13
2712	498	2	2024-09-23
2713	488	2	2024-12-21
2714	390	3	2024-07-04
2715	217	1	2024-04-04
2716	416	1	2024-12-03
2717	276	2	2024-02-08
2718	350	2	2024-06-25
2719	106	2	2024-09-24
2720	162	3	2024-11-27
2721	132	3	2024-02-11
2722	228	3	2024-09-14
2723	322	3	2024-09-25
2724	250	3	2024-12-13
2725	413	1	2024-08-30
2726	244	2	2024-08-16
2727	197	2	2024-04-16
2729	115	3	2024-09-28
2730	244	1	2024-08-15
2731	299	3	2024-08-02
2732	352	2	2024-09-03
2733	290	2	2024-02-14
2734	184	1	2024-10-11
2735	137	1	2024-09-23
2736	289	3	2024-05-06
2737	178	3	2024-06-30
2738	307	3	2024-07-19
2739	2	1	2024-03-03
2740	257	3	2024-09-30
2741	264	3	2024-08-15
2742	448	3	2024-02-01
2743	86	1	2024-02-02
2744	56	2	2024-12-21
2745	87	3	2024-09-20
2746	387	1	2024-06-22
2747	70	1	2024-09-21
2748	404	1	2024-06-19
2749	49	1	2024-09-18
2750	200	3	2024-07-29
2751	23	2	2024-07-23
2752	477	1	2024-11-21
2753	139	1	2024-10-08
2754	284	3	2024-09-24
2756	368	1	2024-06-19
2757	460	1	2024-11-28
2759	266	1	2024-03-27
2760	294	1	2024-12-08
2761	17	3	2024-06-07
2762	252	2	2024-09-08
2763	53	1	2024-04-25
2764	420	2	2024-06-25
2765	219	1	2024-03-22
2766	80	2	2024-10-02
2767	70	2	2024-12-19
2768	38	2	2024-04-21
2769	231	2	2024-10-13
2771	489	1	2024-03-03
2772	4	1	2024-02-17
2773	401	3	2024-05-08
2774	32	3	2024-02-15
2775	126	3	2024-02-25
2776	386	2	2024-12-10
2777	20	3	2024-11-29
2778	10	3	2024-11-06
2779	29	2	2024-11-25
2780	78	2	2024-02-13
2781	454	2	2024-11-17
2783	477	2	2024-03-03
2784	249	2	2024-12-21
2785	290	3	2024-02-22
2786	265	3	2024-08-05
2787	220	2	2024-10-31
2788	366	3	2024-07-25
2789	329	1	2024-06-21
2790	463	1	2024-06-15
2791	98	2	2024-04-03
2792	143	3	2024-04-25
2793	324	3	2024-02-12
2794	154	2	2024-10-17
2795	279	3	2024-05-10
2796	457	2	2024-02-08
2797	155	2	2024-09-18
2798	115	2	2024-08-09
2799	265	2	2024-08-03
2800	110	1	2024-09-15
2801	350	1	2024-08-29
2802	213	3	2024-10-29
2803	329	3	2024-08-27
2804	306	3	2024-08-06
2805	372	3	2024-03-30
2806	494	2	2024-09-04
2807	159	2	2024-05-15
2808	36	1	2024-05-04
2809	85	2	2024-08-01
2810	276	2	2024-07-27
2811	282	3	2024-06-15
2812	179	3	2024-12-19
2813	56	2	2024-07-04
2815	137	2	2024-11-08
2816	296	1	2024-06-24
2817	63	1	2024-03-26
2818	80	1	2024-07-26
2819	42	1	2024-11-01
2820	22	3	2024-06-11
2821	240	1	2024-06-08
2822	284	3	2024-06-12
2823	106	3	2024-09-11
2824	225	1	2024-09-16
2825	247	3	2024-08-10
2826	206	2	2024-10-02
2827	46	2	2024-04-30
2828	125	2	2024-10-14
2829	140	1	2024-11-09
2830	164	2	2024-04-30
2831	227	1	2024-06-22
2833	160	1	2024-06-20
2834	331	3	2024-07-03
2835	437	2	2024-11-06
2836	233	2	2024-08-17
2837	148	2	2024-09-26
2838	259	3	2024-05-03
2839	398	1	2024-08-17
2840	239	2	2024-04-06
2841	150	1	2024-07-21
2842	461	3	2024-06-11
2843	429	2	2024-07-04
2844	193	2	2024-02-04
2845	479	2	2024-07-02
2846	380	3	2024-02-14
2847	136	2	2024-02-25
2848	386	1	2024-06-06
2849	431	3	2024-12-06
2850	473	2	2024-12-27
2851	210	2	2024-06-04
2852	372	3	2024-03-24
2853	397	1	2024-06-30
2854	247	2	2024-08-31
2855	87	3	2024-02-03
2856	230	3	2024-07-24
2857	334	1	2024-05-12
2858	479	2	2024-11-06
2859	143	2	2024-07-29
2860	379	2	2024-06-27
2861	72	1	2024-12-14
2862	146	2	2024-06-07
2863	347	1	2024-02-12
2864	62	2	2024-03-13
2866	57	3	2024-11-16
2867	58	2	2024-02-08
2868	69	3	2024-08-20
2869	86	2	2024-10-03
2871	154	1	2024-05-05
2872	85	2	2024-10-23
2873	302	1	2024-11-12
2874	286	2	2024-04-11
2875	370	2	2024-05-20
2876	57	3	2024-03-29
2877	234	2	2024-09-22
2878	407	2	2024-10-15
2879	65	2	2024-03-15
2880	351	3	2024-09-03
2881	256	3	2024-08-29
2882	2	1	2024-03-18
2883	24	1	2024-02-25
2884	85	3	2024-09-08
2885	395	2	2024-07-26
2886	302	3	2024-02-07
2887	275	2	2024-06-14
2888	16	2	2024-08-20
2889	9	2	2024-10-05
2890	383	3	2024-11-13
2891	211	2	2024-02-14
2892	121	3	2024-04-08
2893	226	3	2024-05-07
2894	344	1	2024-03-09
2895	14	2	2024-12-04
2896	117	1	2024-10-04
2897	336	2	2024-04-06
2898	4	2	2024-12-27
2899	30	3	2024-08-23
2900	336	2	2024-03-02
2901	457	2	2024-12-16
2902	17	2	2024-07-27
2904	7	2	2024-04-19
2905	375	3	2024-05-12
2906	257	3	2024-02-29
2907	121	1	2024-06-16
2909	152	1	2024-03-19
2910	293	3	2024-04-10
2912	44	2	2024-09-12
2913	174	1	2024-09-02
2914	53	3	2024-07-04
2915	207	3	2024-08-30
2916	209	2	2024-10-31
2917	79	3	2024-10-16
2918	437	3	2024-04-28
2919	133	3	2024-06-17
2921	25	3	2024-09-27
2922	35	3	2024-08-17
2923	174	1	2024-09-08
2925	453	3	2024-11-29
2926	302	2	2024-07-12
2927	135	2	2024-02-20
2928	306	1	2024-09-02
2929	190	3	2024-09-15
2930	172	2	2024-10-15
2931	22	2	2024-05-21
2932	450	2	2024-05-20
2933	255	1	2024-11-10
2934	77	1	2024-12-01
2935	407	2	2024-11-27
2936	89	2	2024-04-08
2937	193	1	2024-10-26
2938	347	3	2024-05-28
2939	155	2	2024-02-01
2940	397	1	2024-03-15
2941	287	3	2024-09-04
2942	274	1	2024-09-02
2943	374	3	2024-08-15
2944	57	2	2024-05-29
2945	339	2	2024-10-20
2946	77	3	2024-04-22
2947	327	1	2024-02-24
2948	476	2	2024-10-15
2949	53	2	2024-12-08
2950	432	1	2024-06-13
2951	32	3	2024-06-10
2953	333	3	2024-03-13
2954	301	2	2024-12-04
2955	380	2	2024-10-18
2956	222	1	2024-11-15
2957	18	3	2024-12-14
2958	374	3	2024-06-06
2959	140	1	2024-07-24
2960	473	3	2024-12-12
2961	74	2	2024-09-08
2962	252	3	2024-11-20
2964	283	3	2024-10-10
2965	312	3	2024-05-25
2966	458	1	2024-06-25
2967	203	1	2024-12-16
2969	354	2	2024-07-16
2971	166	2	2024-10-02
2972	88	2	2024-06-02
2975	285	3	2024-05-03
2976	299	1	2024-05-19
2977	112	1	2024-10-12
2978	437	2	2024-06-21
2979	354	1	2024-08-25
2980	424	1	2024-05-18
2982	79	1	2024-04-13
2983	255	2	2024-07-28
2984	483	1	2024-11-22
2985	383	3	2024-02-12
2986	346	2	2024-09-20
2987	441	1	2024-02-11
2988	230	2	2024-05-10
2989	235	1	2024-07-21
2990	458	1	2024-07-15
2991	259	1	2024-06-17
2992	62	3	2024-05-19
2993	21	1	2024-07-04
2994	121	1	2024-04-01
2995	241	1	2024-05-17
2996	280	3	2024-05-17
2997	218	1	2024-06-01
2999	89	1	2024-10-26
3000	339	2	2024-05-09
3001	369	3	2024-12-16
3002	361	3	2024-09-14
3003	408	2	2024-02-09
3004	150	1	2024-05-27
3005	323	2	2024-08-29
3006	460	3	2024-05-29
3007	43	3	2024-05-15
3008	498	2	2024-04-24
3009	67	3	2024-10-12
3010	448	1	2024-04-17
3011	268	2	2024-02-23
3012	110	1	2024-06-16
3013	205	1	2024-12-06
3014	1	1	2024-11-04
3015	351	3	2024-10-29
3016	432	3	2024-06-14
3017	33	1	2024-04-17
3018	346	3	2024-08-15
3019	209	1	2024-10-24
3022	89	2	2024-10-21
3024	367	1	2024-12-16
3025	176	1	2024-08-17
3026	425	2	2024-06-30
3028	402	2	2024-08-14
3029	327	3	2024-08-01
3030	173	1	2024-06-20
3031	256	3	2024-03-26
3032	159	3	2024-09-20
3034	213	2	2024-12-11
3035	369	3	2024-05-13
3036	386	1	2024-11-03
3037	222	2	2024-03-23
3038	374	1	2024-06-21
3040	392	2	2024-09-02
3041	413	3	2024-04-09
3042	439	2	2024-06-04
3043	167	1	2024-06-19
3044	191	3	2024-05-27
3045	368	2	2024-03-16
3046	236	3	2024-02-26
3047	191	3	2024-09-26
3048	240	2	2024-03-17
3049	122	3	2024-09-29
3050	123	1	2024-06-25
3051	182	2	2024-10-12
3052	277	2	2024-12-18
3053	291	1	2024-12-12
3054	227	1	2024-02-04
3055	150	3	2024-06-15
3056	311	2	2024-08-15
3057	26	2	2024-09-03
3058	130	1	2024-05-29
3059	331	3	2024-07-08
3060	191	1	2024-05-19
3061	446	3	2024-03-05
3062	338	3	2024-05-11
3063	169	2	2024-03-14
3064	188	2	2024-06-20
3065	260	1	2024-11-08
3066	244	3	2024-09-28
3067	376	3	2024-10-23
3068	162	2	2024-03-27
3069	109	1	2024-06-02
3070	135	2	2024-11-13
3071	139	1	2024-10-19
3073	366	3	2024-07-02
3074	155	2	2024-08-12
3075	137	1	2024-07-05
3076	80	3	2024-12-21
3077	193	3	2024-04-08
3078	68	3	2024-04-20
3079	439	3	2024-11-18
3080	128	1	2024-03-29
3081	394	1	2024-11-30
3082	164	2	2024-12-10
3083	467	1	2024-09-05
3085	324	2	2024-04-29
3086	115	1	2024-07-04
3087	189	2	2024-06-28
3088	208	3	2024-06-14
3089	209	2	2024-04-07
3090	195	3	2024-05-09
3092	139	1	2024-12-03
3093	432	1	2024-02-25
3094	59	2	2024-04-20
3095	167	2	2024-08-22
3096	327	3	2024-03-09
3097	190	2	2024-02-29
3098	411	1	2024-05-09
3099	358	1	2024-03-28
3104	365	1	2024-10-30
3105	57	3	2024-08-25
3106	351	2	2024-03-18
3107	283	2	2024-11-29
3108	285	2	2024-06-18
3109	475	3	2024-12-19
3110	54	3	2024-11-26
3111	479	3	2024-08-28
3112	357	3	2024-08-30
3113	391	3	2024-07-26
3114	225	3	2024-12-25
3115	186	3	2024-05-25
3116	187	3	2024-05-31
3117	181	1	2024-10-15
3118	294	1	2024-08-03
3119	188	1	2024-08-18
3120	166	1	2024-04-08
3121	93	1	2024-11-16
3122	148	1	2024-07-02
3124	319	1	2024-09-02
3125	49	3	2024-02-16
3126	190	1	2024-03-15
3127	123	1	2024-04-27
3128	363	1	2024-09-18
3129	213	2	2024-06-20
3130	167	1	2024-10-22
3131	306	3	2024-02-16
3133	119	3	2024-05-01
3134	454	3	2024-05-30
3135	457	2	2024-06-15
3136	190	1	2024-12-07
3137	383	2	2024-03-13
3138	323	2	2024-09-03
3139	322	2	2024-09-24
3140	330	2	2024-09-11
3141	282	2	2024-03-25
3142	42	3	2024-11-02
3143	223	2	2024-11-06
3144	317	1	2024-09-01
3145	417	1	2024-02-21
3146	323	1	2024-10-07
3147	237	1	2024-10-24
3148	448	3	2024-03-28
3149	440	2	2024-06-24
3151	343	3	2024-03-22
3152	58	2	2024-07-28
3153	234	2	2024-03-28
3154	74	3	2024-10-21
3155	411	2	2024-03-16
3156	18	2	2024-12-20
3157	114	3	2024-09-18
3158	475	1	2024-02-08
3159	248	3	2024-06-21
3160	307	3	2024-02-12
3161	252	2	2024-02-22
3162	349	2	2024-05-16
3163	439	3	2024-02-09
3164	108	2	2024-07-31
3165	497	1	2024-03-19
3166	92	1	2024-12-06
3167	373	2	2024-07-16
3168	288	2	2024-03-24
3169	330	1	2024-07-08
3170	163	2	2024-06-17
3171	12	2	2024-12-19
3172	65	1	2024-03-30
3173	294	2	2024-10-11
3174	306	3	2024-12-27
3175	261	2	2024-04-23
3176	424	3	2024-08-01
3177	152	3	2024-04-28
3179	441	2	2024-12-20
3180	89	2	2024-07-24
3181	352	2	2024-05-11
3182	110	1	2024-08-08
3183	140	1	2024-11-25
3184	63	3	2024-12-21
3185	481	3	2024-04-16
3186	48	3	2024-10-04
3187	60	1	2024-12-10
3188	110	3	2024-02-29
3189	84	1	2024-11-19
3190	70	1	2024-03-18
3191	394	3	2024-02-07
3193	468	2	2024-02-15
3194	257	3	2024-03-16
3195	267	3	2024-02-01
3196	429	1	2024-12-12
3197	3	1	2024-04-29
3198	312	1	2024-07-29
3200	69	1	2024-07-31
3201	377	3	2024-12-30
3202	282	2	2024-10-02
3203	352	2	2024-07-03
3204	48	3	2024-05-05
3205	187	3	2024-12-26
3206	37	1	2024-10-11
3207	291	2	2024-02-13
3208	298	1	2024-03-18
3210	367	2	2024-08-03
3211	160	3	2024-04-03
3213	458	1	2024-07-16
3214	309	2	2024-02-10
3215	454	3	2024-08-09
3216	27	1	2024-08-05
3217	331	2	2024-05-19
3218	117	2	2024-05-21
3219	365	2	2024-08-12
3220	342	3	2024-07-07
3221	324	2	2024-11-07
3222	295	2	2024-08-15
3224	78	2	2024-12-20
3225	271	2	2024-09-21
3226	304	1	2024-08-04
3227	180	2	2024-12-19
3228	222	2	2024-12-27
3229	53	2	2024-03-17
3230	393	3	2024-05-11
3231	158	3	2024-08-22
3232	480	3	2024-10-31
3233	237	1	2024-09-25
3234	437	1	2024-08-11
3236	359	3	2024-09-27
3237	148	1	2024-04-08
3238	99	2	2024-08-23
3239	201	3	2024-07-01
3240	186	2	2024-11-10
3241	403	1	2024-10-17
3242	94	2	2024-04-21
3243	34	2	2024-06-17
3244	116	3	2024-07-16
3245	62	3	2024-09-20
3246	198	2	2024-07-10
3247	251	1	2024-10-10
3248	401	2	2024-08-01
3249	265	3	2024-12-26
3250	50	3	2024-12-23
3251	472	1	2024-09-30
3252	199	3	2024-07-14
3253	240	2	2024-08-06
3255	380	1	2024-08-22
3256	32	2	2024-04-10
3257	259	2	2024-02-15
3258	98	3	2024-04-19
3259	249	2	2024-09-24
3260	207	1	2024-02-02
3261	203	2	2024-08-22
3262	425	3	2024-06-19
3263	429	2	2024-09-02
3264	198	2	2024-03-17
3265	176	1	2024-10-13
3266	382	3	2024-10-30
3267	249	3	2024-11-07
3269	324	2	2024-09-09
3270	132	3	2024-03-21
3271	279	2	2024-04-02
3272	118	3	2024-06-06
3273	223	1	2024-07-18
3274	299	2	2024-09-11
3275	119	2	2024-02-13
3276	381	3	2024-07-31
3277	367	1	2024-03-06
3278	1	1	2024-08-12
3279	494	3	2024-04-21
3280	215	2	2024-11-07
3281	92	3	2024-03-27
3282	354	2	2024-06-27
3283	328	3	2024-04-24
3284	161	3	2024-11-14
3285	450	2	2024-09-30
3286	333	2	2024-07-08
3287	469	2	2024-10-05
3288	23	1	2024-12-29
3289	405	3	2024-11-23
3290	33	1	2024-03-10
3291	331	3	2024-03-18
3292	355	1	2024-11-01
3293	256	1	2024-02-04
3294	278	3	2024-04-12
3295	271	1	2024-10-04
3296	307	3	2024-07-24
3297	103	1	2024-03-11
3298	257	3	2024-11-13
3299	86	2	2024-11-15
3301	474	1	2024-11-12
3302	499	3	2024-10-27
3303	162	3	2024-07-02
3305	471	2	2024-05-23
3306	8	1	2024-05-23
3307	382	1	2024-08-13
3308	63	3	2024-02-28
3309	444	3	2024-03-12
3310	341	1	2024-08-06
3311	1	1	2024-04-09
3312	185	3	2024-10-04
3313	5	2	2024-09-21
3314	275	3	2024-03-27
3315	253	3	2024-09-18
3316	232	1	2024-04-07
3317	52	2	2024-06-02
3318	494	1	2024-03-17
3319	447	3	2024-02-04
3321	288	1	2024-10-16
3322	283	1	2024-12-11
3323	456	3	2024-11-05
3324	445	2	2024-06-26
3325	103	3	2024-03-25
3326	205	2	2024-07-05
3327	467	1	2024-08-02
3328	254	3	2024-08-29
3330	293	2	2024-05-09
3331	448	1	2024-03-23
3332	286	3	2024-06-04
3333	394	1	2024-08-10
3334	206	2	2024-07-25
3335	447	3	2024-05-08
3336	236	2	2024-08-12
3337	154	2	2024-06-20
3338	330	2	2024-07-19
3339	293	3	2024-10-19
3340	286	2	2024-09-13
3341	439	2	2024-03-19
3342	379	1	2024-02-18
3343	289	2	2024-03-19
3344	350	1	2024-12-26
3346	72	3	2024-06-29
3347	88	3	2024-10-24
3348	366	1	2024-03-01
3349	218	2	2024-10-06
3350	449	3	2024-09-07
3351	398	3	2024-09-17
3353	460	3	2024-03-15
3354	95	1	2024-03-25
3355	89	2	2024-05-18
3357	396	3	2024-02-08
3358	64	2	2024-11-13
3359	73	3	2024-02-08
3360	103	2	2024-09-08
3361	72	1	2024-07-17
3362	103	2	2024-08-06
3363	10	1	2024-05-05
3364	304	2	2024-04-29
3365	164	2	2024-05-21
3366	433	2	2024-04-20
3367	392	1	2024-02-15
3368	145	2	2024-08-23
3369	298	1	2024-12-25
3370	314	3	2024-03-18
3371	418	2	2024-03-19
3372	196	3	2024-09-27
3373	94	1	2024-09-27
3374	14	3	2024-02-16
3376	114	3	2024-02-20
3377	492	3	2024-06-08
3378	457	1	2024-11-26
3379	447	2	2024-10-15
3380	481	2	2024-11-01
3381	404	1	2024-05-11
3382	345	2	2024-12-31
3383	216	1	2024-11-28
3384	113	1	2024-04-28
3385	43	2	2024-04-03
3386	216	1	2024-08-13
3387	140	3	2024-04-26
3388	370	1	2024-07-02
3389	315	3	2024-03-24
3390	157	1	2024-05-09
3392	359	2	2024-10-18
3393	385	1	2024-07-04
3394	417	3	2024-12-28
3395	296	1	2024-06-08
3396	341	2	2024-11-01
3397	185	2	2024-05-05
3398	311	3	2024-08-28
3399	399	3	2024-02-05
3400	95	2	2024-10-08
3401	317	3	2024-07-07
3402	310	3	2024-07-17
3403	115	2	2024-04-04
3404	19	2	2024-12-09
3405	389	2	2024-11-15
3406	71	2	2024-04-21
3407	203	1	2024-03-12
3408	333	1	2024-05-05
3409	337	1	2024-04-26
3410	340	1	2024-05-22
3411	479	1	2024-02-21
3412	46	1	2024-09-22
3413	466	3	2024-06-19
3414	496	3	2024-10-30
3415	369	1	2024-02-03
3416	299	3	2024-03-01
3417	106	1	2024-07-25
3419	198	1	2024-03-27
3420	95	2	2024-05-01
3421	385	2	2024-08-02
3422	274	3	2024-08-25
3423	38	3	2024-05-05
3424	4	3	2024-09-24
3425	292	3	2024-11-23
3426	100	2	2024-03-26
3427	291	3	2024-06-29
3428	119	2	2024-12-01
3430	159	3	2024-11-12
3432	238	3	2024-03-16
3433	13	3	2024-06-13
3434	322	2	2024-05-12
3435	29	2	2024-09-12
3436	374	1	2024-12-31
3438	497	1	2024-06-16
3439	413	1	2024-12-13
3440	99	2	2024-11-23
3441	237	1	2024-04-15
3442	282	2	2024-12-18
3443	271	2	2024-04-26
3444	67	1	2024-08-04
3445	451	1	2024-02-02
3446	258	1	2024-11-05
3447	432	2	2024-05-09
3449	371	3	2024-05-09
3450	138	1	2024-12-08
3451	115	2	2024-09-16
3452	443	1	2024-10-11
3453	493	2	2024-09-29
3454	362	3	2024-03-26
3455	173	3	2024-06-10
3456	135	1	2024-09-10
3457	175	2	2024-05-20
3458	220	2	2024-06-29
3459	33	3	2024-05-07
3460	427	3	2024-09-15
3462	145	3	2024-10-14
3463	488	2	2024-09-06
3464	470	2	2024-05-06
3465	299	2	2024-11-07
3466	101	3	2024-05-28
3467	131	1	2024-08-19
3468	327	1	2024-07-08
3469	411	3	2024-12-26
3470	341	1	2024-02-14
3471	256	2	2024-10-04
3472	407	2	2024-11-30
3473	152	1	2024-04-26
3474	37	3	2024-06-06
3475	61	2	2024-05-03
3476	22	1	2024-02-22
3477	129	1	2024-06-07
3478	384	2	2024-05-23
3479	281	1	2024-10-12
3480	362	1	2024-03-23
3481	135	1	2024-04-22
3482	132	3	2024-12-01
3483	228	1	2024-06-27
3484	256	3	2024-06-09
3485	207	2	2024-07-01
3486	77	3	2024-11-04
3487	46	2	2024-11-24
3488	80	3	2024-11-16
3489	24	3	2024-04-12
3490	277	1	2024-11-19
3491	67	1	2024-10-31
3492	18	3	2024-12-08
3493	191	2	2024-09-16
3494	350	2	2024-11-23
3495	239	2	2024-09-06
3496	155	2	2024-12-14
3497	88	2	2024-03-09
3498	363	2	2024-04-23
3499	298	1	2024-03-16
3500	296	1	2024-10-22
3501	279	2	2024-08-06
3502	94	3	2024-02-13
3504	48	1	2024-11-10
3505	387	3	2024-05-24
3506	74	1	2024-12-30
3507	494	2	2024-07-27
3508	493	2	2024-12-28
3510	486	3	2024-09-19
3511	333	3	2024-08-20
3512	222	2	2024-03-20
3513	43	1	2024-02-13
3514	240	2	2024-06-14
3515	302	3	2024-06-16
3516	279	2	2024-04-12
3517	229	2	2024-03-09
3518	280	3	2024-06-09
3519	86	1	2024-05-01
3521	470	1	2024-03-04
3522	50	3	2024-10-18
3524	135	2	2024-07-15
3525	123	3	2024-06-24
3526	89	3	2024-09-27
3527	134	3	2024-06-16
3528	171	3	2024-03-18
3529	121	1	2024-03-05
3532	120	3	2024-12-27
3533	118	3	2024-07-24
3534	472	3	2024-08-21
3535	243	3	2024-08-25
3536	454	2	2024-03-07
3538	444	1	2024-05-01
3539	155	3	2024-12-21
3540	112	2	2024-02-27
3542	116	3	2024-03-09
3543	345	1	2024-10-08
3546	466	2	2024-06-14
3548	34	2	2024-12-03
3549	169	3	2024-08-24
3550	399	3	2024-07-23
3551	310	2	2024-04-14
3552	261	1	2024-08-14
3553	40	2	2024-02-26
3554	47	1	2024-05-31
3555	475	2	2024-05-26
3556	371	2	2024-02-24
3557	211	2	2024-05-09
3560	333	1	2024-11-21
3562	397	1	2024-12-12
3563	249	2	2024-02-15
3564	442	3	2024-10-02
3565	267	1	2024-11-12
3567	414	2	2024-03-18
3569	258	2	2024-02-14
3570	78	3	2024-04-18
3571	367	2	2024-04-29
3572	380	3	2024-07-18
3573	251	3	2024-03-24
3574	464	1	2024-03-17
3575	308	2	2024-07-02
3577	444	3	2024-08-21
3578	149	1	2024-07-17
3579	166	1	2024-03-04
3580	269	3	2024-02-17
3581	291	1	2024-10-28
3582	18	3	2024-06-28
3583	73	1	2024-06-06
3584	14	2	2024-10-04
3585	2	1	2024-08-18
3586	154	1	2024-08-23
3587	382	2	2024-07-20
3588	150	2	2024-12-21
3589	500	3	2024-06-14
3590	208	3	2024-05-03
3591	211	3	2024-03-15
3592	442	1	2024-05-25
3593	465	3	2024-08-03
3594	92	2	2024-02-17
3595	364	2	2024-04-12
3596	205	2	2024-07-03
3597	85	1	2024-12-02
3598	32	1	2024-09-09
3599	191	2	2024-07-24
3600	136	2	2024-08-31
3601	363	2	2024-03-11
3602	159	2	2024-06-03
3604	406	1	2024-04-29
3605	189	1	2024-12-13
3606	424	3	2024-09-04
3607	399	3	2024-05-21
3608	241	1	2024-07-29
3609	79	3	2024-05-04
3610	294	3	2024-05-22
3611	126	1	2024-04-24
3612	457	3	2024-05-09
3613	366	1	2024-10-20
3614	185	3	2024-05-16
3615	101	3	2024-11-29
3616	115	2	2024-09-02
3618	144	2	2024-06-17
3619	192	2	2024-05-15
3620	495	2	2024-11-05
3621	475	3	2024-07-09
3622	162	2	2024-11-13
3623	201	1	2024-05-20
3624	400	3	2024-11-17
3625	289	1	2024-08-17
3626	117	3	2024-04-24
3627	272	2	2024-10-19
3628	227	1	2024-09-12
3629	143	1	2024-05-20
3630	212	1	2024-02-16
3631	333	1	2024-06-13
3633	304	2	2024-07-25
3634	218	2	2024-04-13
3635	56	3	2024-03-05
3636	171	1	2024-12-24
3637	388	2	2024-12-05
3638	144	3	2024-06-02
3639	493	3	2024-05-22
3640	372	2	2024-05-28
3642	262	1	2024-12-25
3643	26	2	2024-02-03
3644	199	1	2024-02-07
3646	415	3	2024-12-10
3647	269	1	2024-05-10
3648	186	1	2024-12-13
3649	229	1	2024-04-11
3651	178	2	2024-10-09
3652	285	2	2024-12-18
3654	368	2	2024-03-13
3655	483	2	2024-07-06
3656	443	3	2024-08-13
3658	317	1	2024-06-24
3659	186	3	2024-12-13
3660	39	3	2024-12-16
3661	103	3	2024-05-26
3662	355	3	2024-04-30
3663	272	2	2024-09-02
3664	354	1	2024-08-28
3665	416	1	2024-03-15
3667	238	2	2024-08-26
3668	415	2	2024-08-08
3669	125	1	2024-03-21
3670	156	3	2024-08-01
3671	264	1	2024-12-14
3672	229	2	2024-10-21
3673	35	3	2024-11-10
3674	360	3	2024-12-11
3675	7	3	2024-11-08
3676	165	1	2024-05-15
3677	249	1	2024-05-27
3678	412	2	2024-10-07
3679	125	3	2024-05-04
3680	8	1	2024-11-11
3681	77	2	2024-07-09
3682	257	2	2024-03-10
3684	266	1	2024-08-13
3685	132	2	2024-02-19
3686	499	3	2024-05-30
3688	325	2	2024-08-21
3689	306	1	2024-09-17
3690	449	3	2024-05-21
3691	320	2	2024-10-12
3692	454	1	2024-02-08
3693	77	2	2024-11-09
3694	196	2	2024-03-25
3695	237	3	2024-03-23
3696	154	2	2024-12-04
3697	48	1	2024-05-29
3698	359	1	2024-08-30
3699	439	2	2024-08-03
3700	218	3	2024-11-05
3701	349	3	2024-05-15
3702	354	3	2024-09-09
3703	105	1	2024-07-11
3704	419	2	2024-11-20
3705	282	2	2024-02-17
3706	439	3	2024-05-07
3707	4	3	2024-11-24
3708	456	1	2024-10-23
3709	310	3	2024-12-10
3710	46	2	2024-10-25
3711	375	2	2024-09-30
3713	99	3	2024-06-29
3714	148	3	2024-09-13
3715	464	2	2024-04-03
3716	113	3	2024-08-19
3717	149	3	2024-07-27
3718	349	3	2024-05-21
3719	47	1	2024-10-31
3721	270	2	2024-12-27
3722	332	2	2024-10-14
3723	378	1	2024-12-12
3724	82	1	2024-06-11
3725	172	1	2024-03-13
3726	104	3	2024-11-05
3727	485	3	2024-11-25
3728	250	1	2024-02-11
3729	183	2	2024-05-03
3730	289	2	2024-12-29
3732	127	2	2024-10-16
3733	48	1	2024-05-31
3734	66	2	2024-02-14
3735	251	1	2024-11-03
3736	318	1	2024-05-29
3737	106	2	2024-04-03
3738	446	2	2024-03-12
3739	37	2	2024-07-02
3740	438	1	2024-11-19
3741	459	3	2024-03-10
3742	277	2	2024-07-22
3743	135	3	2024-08-01
3744	364	2	2024-04-21
3745	211	3	2024-09-05
3746	245	3	2024-08-14
3747	379	3	2024-10-09
3748	40	2	2024-10-15
3749	475	2	2024-04-17
3750	341	3	2024-03-25
3751	39	1	2024-08-04
3752	43	3	2024-06-02
3753	305	1	2024-06-28
3754	60	3	2024-04-11
3755	296	2	2024-06-01
3756	478	3	2024-08-05
3757	326	3	2024-07-21
3758	211	2	2024-06-24
3759	349	3	2024-07-29
3760	32	1	2024-06-01
3761	342	2	2024-12-14
3762	429	1	2024-11-02
3764	216	1	2024-12-06
3765	487	3	2024-03-03
3766	340	3	2024-03-12
3767	135	1	2024-09-18
3768	482	2	2024-08-06
3770	481	3	2024-08-15
3771	188	3	2024-08-01
3772	331	3	2024-07-07
3773	467	1	2024-12-15
3775	13	1	2024-03-22
3776	291	2	2024-02-28
3777	454	2	2024-06-02
3778	95	2	2024-06-06
3779	24	2	2024-06-16
3780	80	2	2024-08-11
3781	494	1	2024-06-02
3782	444	2	2024-06-08
3783	273	1	2024-03-26
3784	38	3	2024-11-20
3785	241	3	2024-07-01
3786	392	2	2024-12-11
3787	238	3	2024-03-28
3788	265	3	2024-08-09
3789	240	3	2024-05-18
3790	190	3	2024-03-16
3791	110	2	2024-07-29
3792	263	1	2024-07-23
3793	9	3	2024-08-31
3794	163	1	2024-05-30
3795	225	2	2024-11-05
3796	485	1	2024-09-05
3797	499	3	2024-05-29
3798	224	3	2024-05-06
3800	104	3	2024-05-27
3801	273	3	2024-12-21
3802	477	1	2024-11-06
3803	184	3	2024-09-15
3805	357	3	2024-02-17
3807	240	2	2024-07-10
3808	232	3	2024-05-07
3809	396	3	2024-09-12
3810	205	2	2024-11-23
3811	273	1	2024-04-09
3812	214	3	2024-12-03
3813	406	2	2024-04-13
3814	265	2	2024-02-22
3816	55	3	2024-07-04
3818	88	3	2024-03-10
3819	386	1	2024-12-29
3821	202	2	2024-08-21
3822	253	1	2024-09-07
3823	481	1	2024-11-17
3824	399	1	2024-08-20
3825	26	2	2024-06-10
3826	326	3	2024-03-03
3827	280	3	2024-03-04
3828	469	2	2024-03-24
3831	280	2	2024-03-20
3833	210	2	2024-02-27
3834	309	1	2024-04-27
3836	402	2	2024-08-18
3837	338	1	2024-07-29
3838	319	2	2024-03-04
3839	208	3	2024-06-09
3840	5	3	2024-03-15
3841	235	2	2024-09-18
3842	227	1	2024-11-13
3843	305	2	2024-12-29
3844	428	2	2024-08-07
3845	426	2	2024-11-03
3847	138	3	2024-11-23
3848	12	3	2024-12-25
3849	61	3	2024-02-20
3850	288	1	2024-05-09
3851	265	1	2024-11-06
3852	493	1	2024-11-04
3853	127	1	2024-05-11
3855	446	1	2024-07-30
3856	324	1	2024-11-12
3857	308	2	2024-11-23
3858	333	1	2024-02-06
3859	102	2	2024-10-02
3860	148	3	2024-12-06
3861	217	2	2024-06-14
3862	428	2	2024-10-02
3863	56	1	2024-10-05
3864	299	3	2024-09-18
3866	40	1	2024-03-08
3867	216	3	2024-11-06
3868	417	3	2024-02-24
3869	119	1	2024-12-18
3871	106	3	2024-02-18
3872	227	2	2024-10-16
3873	329	2	2024-07-24
3874	206	1	2024-09-09
3875	4	1	2024-09-18
3876	175	3	2024-06-24
3878	352	2	2024-10-17
3879	448	2	2024-06-02
3880	458	3	2024-09-10
3881	45	1	2024-07-10
3882	75	2	2024-08-13
3883	180	2	2024-05-29
3884	360	3	2024-09-12
3885	82	3	2024-10-30
3886	395	3	2024-10-05
3887	467	3	2024-08-26
3888	89	1	2024-10-29
3889	167	3	2024-02-02
3891	209	2	2024-05-06
3892	264	3	2024-04-11
3893	143	3	2024-07-10
3894	40	1	2024-05-09
3895	466	2	2024-05-05
3896	242	3	2024-10-21
3897	181	3	2024-04-12
3898	146	2	2024-03-26
3899	491	2	2024-10-25
3900	110	3	2024-08-21
3901	478	3	2024-09-04
3903	270	2	2024-11-14
3904	127	1	2024-06-04
3905	146	2	2024-12-18
3906	44	2	2024-10-08
3907	452	3	2024-06-01
3908	343	2	2024-02-24
3909	334	1	2024-12-09
3910	352	1	2024-06-22
3911	208	3	2024-08-14
3912	122	1	2024-10-21
3913	375	3	2024-04-27
3915	309	3	2024-03-13
3916	288	2	2024-08-15
3917	296	2	2024-08-06
3920	221	1	2024-08-26
3921	315	2	2024-03-09
3922	447	2	2024-11-02
3924	427	2	2024-12-23
3925	270	2	2024-04-02
3926	133	1	2024-12-27
3928	108	1	2024-12-28
3929	4	2	2024-06-02
3930	463	3	2024-06-03
3931	479	2	2024-02-04
3932	101	3	2024-04-07
3933	92	3	2024-05-25
3934	434	3	2024-04-04
3935	420	1	2024-05-08
3936	435	1	2024-02-24
3937	66	1	2024-02-05
3938	316	3	2024-10-31
3939	162	2	2024-09-21
3941	178	3	2024-03-09
3942	442	3	2024-11-19
3943	452	3	2024-11-20
3944	350	3	2024-12-30
3945	99	2	2024-02-13
3946	408	3	2024-03-04
3947	17	2	2024-09-13
3949	211	3	2024-07-31
3950	60	1	2024-02-04
3951	322	3	2024-05-24
3952	185	1	2024-10-20
3953	290	2	2024-04-01
3954	392	2	2024-10-19
3955	312	3	2024-11-13
3956	281	1	2024-06-15
3957	275	3	2024-08-18
3959	176	1	2024-09-28
3960	326	1	2024-10-27
3961	440	3	2024-09-05
3963	378	3	2024-06-21
3964	468	3	2024-03-04
3965	173	3	2024-10-06
3966	77	1	2024-11-03
3967	294	2	2024-05-04
3968	120	1	2024-04-03
3969	446	2	2024-06-05
3970	468	1	2024-06-08
3971	384	1	2024-02-28
3972	121	3	2024-08-09
3973	201	2	2024-02-15
3975	295	2	2024-07-17
3976	326	3	2024-08-17
3977	213	2	2024-09-15
3978	210	3	2024-12-09
3979	54	3	2024-08-25
3980	241	1	2024-07-09
3981	323	1	2024-11-14
3982	331	2	2024-03-28
3983	258	1	2024-11-29
3986	192	3	2024-05-05
3987	486	3	2024-10-31
3988	64	2	2024-07-15
3989	48	3	2024-03-09
3990	308	3	2024-03-16
3992	48	2	2024-02-11
3993	395	3	2024-04-04
3994	59	3	2024-03-18
3995	209	2	2024-08-25
3996	301	3	2024-05-13
3997	392	3	2024-05-31
3999	317	3	2024-11-13
4000	451	2	2024-02-10
4002	98	1	2024-04-24
4003	114	2	2024-10-12
4004	468	2	2024-10-01
4005	371	3	2024-05-02
4006	26	2	2024-11-01
4007	78	1	2024-02-07
4008	163	1	2024-08-09
4009	33	1	2024-07-28
4010	19	3	2024-03-14
4011	444	3	2024-06-18
4012	135	1	2024-07-17
4013	196	1	2024-03-21
4014	142	1	2024-07-28
4015	171	2	2024-09-04
4016	284	1	2024-12-01
4017	452	3	2024-10-03
4018	4	2	2024-12-25
4019	248	1	2024-03-14
4020	338	3	2024-12-12
4021	415	2	2024-03-29
4024	242	1	2024-12-27
4025	276	2	2024-12-21
4026	60	2	2024-11-05
4027	380	3	2024-07-25
4028	299	3	2024-07-02
4029	311	3	2024-10-16
4030	201	3	2024-11-07
4031	300	3	2024-06-29
4032	379	2	2024-09-11
4033	204	1	2024-10-14
4034	97	1	2024-08-22
4035	248	3	2024-02-01
4036	1	1	2024-06-15
4037	462	2	2024-12-02
4038	124	3	2024-05-02
4039	147	1	2024-06-23
4040	382	1	2024-06-05
4041	279	1	2024-05-05
4042	384	3	2024-06-25
4043	357	2	2024-11-08
4044	231	2	2024-02-24
4045	245	2	2024-09-11
4046	84	2	2024-09-17
4047	275	3	2024-03-14
4048	307	1	2024-12-18
4050	27	1	2024-12-07
4051	334	3	2024-05-07
4052	151	2	2024-05-22
4053	211	1	2024-04-11
4054	116	3	2024-04-26
4055	392	3	2024-02-19
4056	177	2	2024-02-18
4057	219	2	2024-07-14
4058	339	2	2024-05-01
4059	84	2	2024-05-20
4060	481	3	2024-08-06
4061	241	3	2024-03-29
4062	184	1	2024-05-14
4063	79	2	2024-10-07
4064	448	3	2024-09-05
4065	65	1	2024-10-20
4066	361	1	2024-06-14
4067	71	2	2024-03-11
4068	404	3	2024-05-31
4069	281	1	2024-04-25
4071	478	3	2024-03-19
4072	406	2	2024-07-27
4073	350	2	2024-08-29
4074	155	2	2024-07-18
4075	92	2	2024-03-09
4076	195	2	2024-08-01
4077	329	1	2024-12-26
4078	452	3	2024-05-18
4079	80	3	2024-04-05
4080	212	3	2024-07-29
4081	452	2	2024-12-13
4082	208	2	2024-12-28
4083	113	2	2024-03-06
4084	32	2	2024-05-11
4085	481	2	2024-11-15
4086	237	3	2024-07-25
4087	226	2	2024-12-08
4089	318	3	2024-12-05
4090	462	1	2024-03-19
4091	89	1	2024-04-24
4092	380	1	2024-06-18
4093	183	2	2024-03-19
4094	317	3	2024-08-29
4095	161	1	2024-03-08
4096	100	2	2024-08-08
4097	309	1	2024-06-22
4098	67	1	2024-10-11
4099	233	1	2024-05-30
4100	184	2	2024-07-25
4102	364	3	2024-12-04
4103	71	3	2024-07-20
4104	155	1	2024-07-28
4105	362	2	2024-11-22
4106	352	1	2024-12-30
4107	49	3	2024-11-10
4108	82	3	2024-10-12
4109	302	1	2024-05-28
4110	391	1	2024-11-10
4111	330	2	2024-06-13
4112	388	3	2024-11-24
4113	295	2	2024-02-16
4114	395	3	2024-06-14
4115	1	1	2024-02-12
4116	414	3	2024-06-18
4118	29	3	2024-07-17
4119	157	1	2024-02-04
4120	104	2	2024-08-23
4121	164	1	2024-11-06
4122	306	3	2024-06-02
4123	397	2	2024-07-23
4124	70	2	2024-09-13
4125	377	2	2024-09-05
4126	444	3	2024-04-19
4127	466	1	2024-02-12
4128	495	3	2024-10-20
4129	42	2	2024-12-14
4130	60	3	2024-05-22
4131	282	3	2024-12-30
4132	241	2	2024-11-18
4133	156	2	2024-09-20
4134	7	1	2024-06-13
4135	388	1	2024-05-17
4136	294	2	2024-10-30
4137	494	3	2024-07-21
4138	291	3	2024-09-24
4139	114	3	2024-08-06
4140	240	2	2024-06-29
4141	100	3	2024-04-22
4142	307	3	2024-11-07
4143	78	3	2024-08-28
4145	17	1	2024-08-02
4146	261	3	2024-04-26
4147	41	2	2024-02-15
4148	324	1	2024-10-09
4149	135	3	2024-10-25
4150	369	2	2024-06-29
4151	38	3	2024-12-14
4152	134	1	2024-07-07
4153	416	2	2024-08-12
4154	399	3	2024-11-03
4155	324	2	2024-12-31
4156	184	2	2024-11-27
4157	348	3	2024-12-06
4158	414	2	2024-03-11
4159	140	1	2024-09-01
4160	237	3	2024-11-04
4161	386	1	2024-10-22
4162	95	1	2024-11-29
4163	346	3	2024-10-21
4164	379	2	2024-11-07
4165	179	2	2024-04-24
4166	396	3	2024-03-18
4167	337	3	2024-11-05
4168	359	1	2024-03-12
4169	386	1	2024-11-26
4170	321	1	2024-08-30
4171	213	2	2024-08-18
4172	162	3	2024-05-28
4173	347	1	2024-02-27
4174	321	2	2024-12-15
4175	343	3	2024-07-11
4177	96	2	2024-11-20
4178	366	2	2024-10-12
4179	411	1	2024-10-18
4180	418	3	2024-06-05
4181	339	3	2024-08-24
4182	34	1	2024-07-14
4183	100	2	2024-11-04
4184	340	2	2024-05-02
4187	464	3	2024-10-27
4188	17	2	2024-08-20
4189	76	2	2024-02-15
4190	126	2	2024-04-03
4191	459	3	2024-07-18
4192	330	1	2024-07-15
4193	499	3	2024-07-12
4194	439	3	2024-08-07
4195	162	2	2024-03-16
4196	439	3	2024-07-13
4197	32	2	2024-09-09
4198	329	2	2024-02-01
4199	435	3	2024-05-29
4200	497	3	2024-07-11
4201	183	2	2024-10-17
4202	39	3	2024-04-05
4203	375	3	2024-07-15
4204	86	1	2024-12-01
4205	27	2	2024-09-08
4206	128	3	2024-03-01
4208	26	1	2024-12-08
4209	348	3	2024-09-18
4210	184	1	2024-08-13
4211	309	3	2024-06-07
4212	435	3	2024-05-25
4213	383	3	2024-08-10
4214	86	3	2024-12-04
4215	345	3	2024-04-17
4216	306	2	2024-06-01
4217	446	2	2024-11-29
4218	354	2	2024-11-27
4219	462	1	2024-08-27
4220	210	1	2024-11-09
4221	419	3	2024-05-26
4222	452	1	2024-09-18
4224	229	3	2024-05-17
4225	239	1	2024-10-04
4226	232	3	2024-02-11
4227	159	3	2024-10-30
4228	345	1	2024-07-09
4229	395	1	2024-03-28
4230	171	3	2024-12-26
4231	198	2	2024-10-31
4232	93	2	2024-12-03
4234	361	1	2024-10-05
4235	431	2	2024-10-16
4236	7	2	2024-04-27
4237	328	3	2024-10-02
4238	23	2	2024-10-20
4239	324	1	2024-06-13
4240	468	2	2024-07-23
4241	492	3	2024-05-07
4242	86	1	2024-11-14
4243	140	2	2024-06-11
4244	339	2	2024-07-05
4245	452	1	2024-05-27
4247	274	1	2024-11-01
4248	48	2	2024-09-15
4249	56	3	2024-09-28
4250	291	3	2024-12-20
4251	6	3	2024-08-16
4252	243	1	2024-06-20
4253	173	2	2024-12-31
4254	279	1	2024-09-09
4256	425	2	2024-04-09
4257	104	3	2024-05-11
4258	337	1	2024-05-30
4259	276	2	2024-08-21
4260	280	2	2024-07-31
4261	114	1	2024-08-29
4262	286	1	2024-12-25
4263	469	2	2024-09-13
4264	149	3	2024-04-01
4265	398	2	2024-03-19
4266	201	2	2024-10-11
4267	17	3	2024-09-09
4268	429	2	2024-10-17
4269	436	3	2024-12-27
4270	360	3	2024-11-13
4271	9	1	2024-06-06
4272	286	1	2024-02-19
4273	264	2	2024-02-06
4274	41	1	2024-12-12
4276	73	2	2024-09-27
4277	49	3	2024-10-22
4278	40	2	2024-11-20
4279	57	3	2024-08-08
4280	38	3	2024-12-23
4281	434	3	2024-06-27
4282	373	1	2024-07-27
4284	322	3	2024-07-26
4285	469	1	2024-11-09
4286	487	2	2024-12-16
4288	428	1	2024-05-08
4289	101	1	2024-07-06
4290	199	3	2024-08-09
4291	32	2	2024-09-23
4292	467	3	2024-05-11
4293	241	3	2024-05-05
4294	107	3	2024-12-09
4295	204	3	2024-05-04
4296	99	3	2024-05-17
4297	91	1	2024-07-23
4298	184	3	2024-03-24
4299	241	3	2024-06-02
4300	165	1	2024-08-22
4301	400	1	2024-10-01
4302	338	3	2024-03-26
4303	38	3	2024-08-19
4304	481	1	2024-12-03
4305	11	1	2024-12-03
4307	7	3	2024-04-25
4308	150	3	2024-07-13
4309	439	2	2024-03-26
4310	315	2	2024-08-01
4311	206	2	2024-05-14
4313	247	2	2024-04-13
4314	45	1	2024-12-22
4315	11	3	2024-08-14
4316	132	2	2024-03-26
4317	285	2	2024-09-24
4318	139	1	2024-09-03
4319	332	2	2024-06-19
4321	426	3	2024-07-07
4322	100	3	2024-03-10
4323	79	2	2024-04-03
4324	158	2	2024-08-27
4325	356	1	2024-04-05
4326	178	3	2024-11-02
4327	54	2	2024-12-30
4328	349	3	2024-09-16
4330	317	3	2024-05-07
4331	197	2	2024-08-18
4333	15	1	2024-12-04
4334	333	2	2024-07-06
4335	166	2	2024-03-05
4336	298	1	2024-11-29
4337	22	2	2024-03-11
4340	256	2	2024-10-28
4341	492	2	2024-05-15
4342	385	2	2024-04-22
4343	161	2	2024-05-21
4344	77	1	2024-07-04
4347	426	2	2024-04-29
4348	203	3	2024-09-16
4349	99	2	2024-09-15
4350	5	1	2024-10-24
4351	469	3	2024-10-01
4352	237	1	2024-07-02
4353	161	1	2024-09-21
4354	10	2	2024-04-08
4355	263	3	2024-02-02
4356	214	2	2024-12-27
4357	11	2	2024-12-19
4358	430	1	2024-06-06
4359	100	1	2024-03-19
4360	360	1	2024-04-12
4361	135	3	2024-05-30
4362	11	2	2024-12-13
4364	362	2	2024-03-06
4366	483	2	2024-10-31
4370	487	1	2024-02-26
4371	221	2	2024-09-24
4372	14	1	2024-08-02
4373	139	1	2024-12-19
4374	294	3	2024-08-24
4375	413	3	2024-11-17
4376	8	2	2024-08-29
4377	451	3	2024-10-26
4378	60	3	2024-11-18
4379	303	3	2024-11-07
4380	341	2	2024-07-15
4381	31	2	2024-07-15
4382	434	2	2024-04-24
4383	441	1	2024-10-31
4384	160	3	2024-05-12
4385	415	2	2024-08-09
4386	385	2	2024-12-30
4387	387	2	2024-03-05
4388	58	1	2024-07-13
4389	126	1	2024-10-13
4390	438	1	2024-08-18
4391	489	2	2024-10-22
4392	448	1	2024-03-12
4393	68	2	2024-11-06
4394	84	2	2024-08-23
4395	29	1	2024-03-10
4396	29	2	2024-12-30
4397	299	1	2024-11-15
4398	109	2	2024-07-01
4399	127	1	2024-10-14
4400	135	1	2024-05-08
4401	368	2	2024-07-01
4402	196	3	2024-07-26
4403	299	1	2024-04-02
4404	491	1	2024-11-02
4405	477	1	2024-05-16
4406	344	2	2024-04-16
4407	474	3	2024-12-08
4408	104	2	2024-09-15
4409	70	1	2024-09-16
4410	140	3	2024-06-08
4411	80	1	2024-10-19
4412	179	1	2024-02-07
4413	231	2	2024-02-15
4414	234	3	2024-11-02
4415	494	3	2024-08-16
4416	165	3	2024-07-27
4417	196	2	2024-10-27
4419	422	3	2024-08-19
4420	166	2	2024-11-21
4422	302	2	2024-03-22
4424	165	2	2024-06-11
4425	207	2	2024-03-25
4426	100	3	2024-06-25
4427	187	1	2024-06-03
4428	285	1	2024-06-12
4429	12	2	2024-12-28
4430	429	1	2024-04-11
4431	451	2	2024-11-18
4432	241	3	2024-04-08
4433	101	2	2024-05-06
4434	310	2	2024-05-30
4435	459	1	2024-07-27
4436	456	2	2024-02-09
4437	122	2	2024-02-27
4438	24	3	2024-03-29
4439	260	3	2024-06-20
4440	38	2	2024-05-27
4441	413	2	2024-07-02
4442	384	1	2024-03-14
4443	156	2	2024-05-17
4444	477	2	2024-05-01
4445	19	3	2024-12-28
4446	135	3	2024-07-29
4447	30	1	2024-11-22
4448	200	3	2024-10-08
4449	488	2	2024-06-24
4450	259	2	2024-10-13
4451	1	3	2024-03-29
4452	40	2	2024-06-14
4454	69	1	2024-09-29
4455	95	2	2024-10-24
4456	439	2	2024-04-09
4457	163	3	2024-02-08
4458	201	2	2024-09-01
4459	291	3	2024-06-25
4460	136	2	2024-04-17
4461	209	2	2024-02-07
4462	246	3	2024-05-09
4463	395	2	2024-10-29
4464	19	2	2024-05-11
4465	318	2	2024-08-18
4466	29	1	2024-06-18
4468	194	1	2024-12-11
4469	422	3	2024-11-25
4470	91	3	2024-10-18
4471	317	1	2024-11-14
4473	337	1	2024-02-18
4474	71	2	2024-08-06
4475	245	1	2024-05-18
4478	420	1	2024-10-30
4479	179	1	2024-08-24
4480	175	3	2024-10-06
4481	18	3	2024-03-30
4482	399	2	2024-09-25
4483	342	1	2024-02-26
4484	137	2	2024-03-05
4485	174	3	2024-11-07
4486	493	2	2024-12-17
4487	393	1	2024-06-13
4488	315	2	2024-03-21
4489	161	3	2024-06-18
4490	282	2	2024-08-26
4492	330	3	2024-07-21
4493	292	1	2024-03-12
4494	256	2	2024-04-12
4495	486	2	2024-10-05
4498	331	2	2024-06-14
4499	351	3	2024-06-13
4500	375	3	2024-11-15
4501	299	3	2024-02-28
4502	198	1	2024-02-21
4503	171	2	2024-12-02
4504	317	1	2024-07-18
4505	286	1	2024-07-25
4507	238	3	2024-02-07
4508	495	3	2024-12-11
4509	231	2	2024-04-15
4510	302	1	2024-11-04
4511	205	2	2024-03-12
4512	406	3	2024-05-16
4513	26	1	2024-08-19
4515	297	3	2024-07-30
4516	362	1	2024-10-28
4517	161	1	2024-04-27
4518	196	2	2024-05-12
4519	479	2	2024-03-13
4520	245	3	2024-12-12
4521	122	2	2024-10-03
4522	255	2	2024-11-05
4523	44	1	2024-08-11
4524	371	1	2024-08-02
4525	253	2	2024-04-04
4526	305	3	2024-04-11
4527	278	2	2024-12-22
4528	406	1	2024-12-31
4529	317	3	2024-09-19
4531	193	1	2024-07-01
4532	300	3	2024-07-12
4533	28	2	2024-04-20
4534	139	2	2024-10-04
4535	253	3	2024-04-30
4536	201	2	2024-11-20
4537	158	2	2024-05-27
4538	264	1	2024-06-06
4539	200	2	2024-07-02
4540	215	3	2024-12-22
4541	414	1	2024-08-22
4542	252	2	2024-02-12
4543	382	2	2024-10-05
4544	73	2	2024-09-02
4545	384	2	2024-11-08
4546	314	1	2024-11-02
4547	146	1	2024-07-03
4549	370	2	2024-09-30
4550	320	2	2024-04-16
4551	481	1	2024-04-04
4552	139	3	2024-12-08
4553	30	1	2024-04-27
4554	39	3	2024-08-06
4555	183	2	2024-02-23
4557	282	1	2024-11-26
4558	422	2	2024-09-15
4559	258	2	2024-04-29
4560	451	3	2024-04-22
4562	144	3	2024-12-20
4563	186	1	2024-11-28
4564	207	1	2024-06-09
4565	447	2	2024-02-26
4566	84	2	2024-10-26
4567	66	1	2024-02-19
4568	115	3	2024-03-22
4569	440	2	2024-05-18
4570	444	2	2024-06-15
4571	85	1	2024-10-02
4572	164	3	2024-05-11
4573	420	3	2024-10-07
4574	352	1	2024-12-08
4575	308	3	2024-12-01
4576	347	2	2024-03-03
4577	128	3	2024-06-02
4578	161	1	2024-07-19
4579	99	3	2024-05-03
4580	429	2	2024-02-17
4582	299	1	2024-12-16
4583	221	3	2024-03-09
4584	201	1	2024-04-21
4585	258	3	2024-08-24
4586	252	3	2024-07-25
4587	210	2	2024-06-29
4588	159	1	2024-02-12
4590	399	1	2024-07-07
4591	322	3	2024-10-29
4593	497	1	2024-08-18
4594	236	1	2024-03-16
4595	152	2	2024-02-13
4596	266	1	2024-02-03
4597	305	1	2024-07-04
4598	233	3	2024-04-01
4599	217	2	2024-06-23
4600	378	1	2024-11-04
4603	2	3	2024-12-02
4604	236	3	2024-02-15
4605	161	2	2024-05-23
4606	4	3	2024-03-17
4607	216	1	2024-10-11
4608	29	1	2024-04-20
4609	168	1	2024-05-18
4610	90	2	2024-05-22
4611	353	3	2024-12-17
4613	139	3	2024-05-17
4614	473	1	2024-06-17
4615	384	2	2024-02-02
4616	482	1	2024-10-11
4618	177	3	2024-08-20
4619	218	2	2024-10-23
4620	277	3	2024-09-14
4621	307	3	2024-08-25
4623	461	1	2024-12-02
4624	146	3	2024-04-18
4625	255	1	2024-04-24
4626	196	2	2024-08-21
4627	165	3	2024-03-21
4628	87	3	2024-09-21
4629	161	1	2024-06-27
4630	77	3	2024-12-03
4631	25	1	2024-10-29
4632	441	2	2024-05-16
4633	321	3	2024-11-05
4634	98	1	2024-08-31
4635	293	1	2024-05-02
4636	324	2	2024-06-19
4637	242	3	2024-05-20
4638	367	3	2024-11-16
4639	431	1	2024-02-10
4640	295	2	2024-08-25
4641	17	2	2024-06-09
4642	425	3	2024-06-21
4643	270	1	2024-10-25
4644	439	1	2024-09-02
4645	440	1	2024-10-21
4646	198	3	2024-11-25
4647	163	3	2024-10-11
4648	425	1	2024-07-16
4649	214	3	2024-10-20
4650	6	3	2024-08-20
4651	156	3	2024-10-14
4652	138	3	2024-06-18
4653	118	3	2024-08-12
4654	148	2	2024-04-05
4655	254	1	2024-07-14
4656	367	3	2024-12-13
4657	169	3	2024-05-27
4658	187	2	2024-12-25
4659	55	1	2024-11-01
4660	276	3	2024-02-20
4661	125	3	2024-05-05
4663	142	3	2024-06-12
4665	209	2	2024-02-23
4666	5	2	2024-05-31
4667	309	3	2024-09-29
4668	335	3	2024-12-06
4669	416	2	2024-06-11
4670	126	2	2024-05-21
4671	216	1	2024-06-04
4672	440	3	2024-02-24
4673	270	2	2024-10-05
4674	3	2	2024-06-29
4676	387	3	2024-03-22
4677	102	1	2024-10-17
4678	286	2	2024-08-27
4680	159	2	2024-11-13
4681	169	1	2024-03-15
4682	451	1	2024-07-18
4683	251	3	2024-09-30
4684	291	1	2024-09-14
4686	230	2	2024-10-01
4688	421	1	2024-09-08
4689	324	3	2024-04-28
4691	236	1	2024-06-05
4692	376	2	2024-10-13
4693	462	3	2024-09-21
4694	213	2	2024-06-29
4695	396	1	2024-07-08
4696	182	3	2024-02-10
4697	135	2	2024-03-18
4698	106	1	2024-05-07
4699	50	2	2024-12-12
4700	71	1	2024-10-29
4701	237	3	2024-10-06
4702	352	3	2024-12-07
4703	326	2	2024-10-03
4704	259	2	2024-07-26
4706	20	2	2024-09-03
4707	192	2	2024-02-10
4708	372	1	2024-05-29
4709	115	2	2024-05-13
4710	342	2	2024-11-08
4711	442	1	2024-04-14
4712	438	3	2024-04-14
4713	127	3	2024-04-09
4714	27	3	2024-11-06
4715	222	3	2024-08-21
4716	379	3	2024-11-22
4717	49	3	2024-12-26
4718	444	1	2024-07-23
4719	382	2	2024-10-20
4720	323	1	2024-05-22
4721	300	1	2024-10-25
4722	140	2	2024-09-23
4723	47	1	2024-12-03
4724	148	3	2024-10-22
4725	431	3	2024-04-29
4726	14	1	2024-05-17
4727	245	1	2024-09-23
4728	471	2	2024-12-11
4729	51	2	2024-05-24
4730	7	1	2024-12-10
4731	57	3	2024-12-10
4734	495	3	2024-03-21
4735	100	3	2024-03-28
4736	302	1	2024-09-13
4737	468	2	2024-11-19
4738	342	2	2024-11-28
4739	336	3	2024-07-23
4740	209	2	2024-02-19
4741	363	2	2024-03-10
4742	74	3	2024-02-21
4743	465	3	2024-11-17
4744	99	3	2024-04-09
4745	409	3	2024-04-17
4746	250	1	2024-11-12
4747	344	3	2024-05-24
4748	227	3	2024-03-14
4749	136	1	2024-08-03
4750	192	3	2024-09-26
4752	270	1	2024-08-10
4753	401	1	2024-09-19
4754	354	1	2024-07-13
4756	206	2	2024-11-18
4757	435	1	2024-04-29
4758	116	2	2024-03-17
4759	484	3	2024-05-27
4760	252	1	2024-07-11
4761	308	1	2024-08-02
4762	162	2	2024-12-26
4763	29	2	2024-07-30
4764	88	2	2024-02-13
4766	497	2	2024-08-06
4767	378	1	2024-09-17
4768	249	1	2024-03-31
4769	493	1	2024-08-12
4770	337	1	2024-07-31
4771	437	1	2024-10-28
4772	288	3	2024-12-15
4773	309	2	2024-11-05
4774	258	1	2024-12-26
4775	329	2	2024-04-07
4776	190	2	2024-12-29
4777	291	1	2024-11-14
4778	101	2	2024-06-20
4779	389	2	2024-11-05
4780	128	2	2024-04-18
4781	245	1	2024-03-21
4782	444	3	2024-04-17
4783	111	2	2024-11-03
4784	259	1	2024-05-28
4785	179	3	2024-05-14
4786	142	1	2024-11-07
4787	12	2	2024-04-16
4788	426	2	2024-11-30
4789	338	1	2024-05-21
4790	182	2	2024-02-19
4791	446	3	2024-04-20
4792	115	1	2024-04-08
4793	224	3	2024-11-15
4794	188	2	2024-03-08
4795	34	2	2024-05-18
4796	277	3	2024-09-04
4797	20	2	2024-09-18
4798	338	3	2024-11-10
4799	63	1	2024-12-24
4800	83	3	2024-10-12
4801	473	2	2024-11-26
4802	215	3	2024-09-13
4803	22	3	2024-04-01
4804	142	2	2024-10-21
4805	462	2	2024-03-03
4806	171	2	2024-06-21
4807	416	2	2024-06-05
4808	425	1	2024-11-12
4809	44	1	2024-04-27
4810	107	1	2024-02-09
4811	35	1	2024-07-10
4812	89	2	2024-05-28
4813	148	2	2024-12-08
4814	360	3	2024-11-03
4815	336	1	2024-10-06
4816	314	1	2024-08-31
4817	124	1	2024-09-29
4818	8	3	2024-09-08
4819	273	2	2024-11-14
4820	81	2	2024-11-24
4823	122	2	2024-07-26
4824	280	3	2024-04-25
4825	321	3	2024-06-17
4826	256	3	2024-04-04
4827	115	1	2024-07-21
4828	452	3	2024-12-22
4830	14	1	2024-05-27
4831	440	3	2024-12-16
4832	295	1	2024-12-04
4833	71	2	2024-12-09
4834	27	1	2024-09-21
4835	446	2	2024-10-11
4836	136	1	2024-05-22
4837	210	1	2024-09-24
4838	480	2	2024-06-28
4839	145	2	2024-03-15
4840	82	3	2024-07-05
4841	496	1	2024-10-23
4842	121	1	2024-02-11
4843	162	2	2024-09-22
4844	177	3	2024-10-22
4845	398	1	2024-09-07
4846	150	1	2024-06-17
4847	206	1	2024-05-09
4849	104	2	2024-03-28
4850	46	1	2024-11-22
4851	179	3	2024-04-11
4853	159	2	2024-11-16
4855	123	2	2024-06-12
4857	384	1	2024-04-13
4858	244	2	2024-11-02
4859	202	1	2024-11-30
4860	8	2	2024-11-12
4861	352	2	2024-10-29
4862	213	1	2024-10-10
4863	423	2	2024-08-30
4866	294	1	2024-11-25
4867	178	1	2024-02-11
4868	394	2	2024-09-28
4869	162	2	2024-02-03
4870	68	2	2024-02-25
4872	309	2	2024-11-16
4873	390	2	2024-08-13
4874	32	2	2024-09-04
4875	262	1	2024-09-02
4877	424	1	2024-10-29
4878	421	1	2024-12-15
4879	299	3	2024-02-24
4880	419	2	2024-08-13
4881	383	3	2024-06-05
4882	190	2	2024-02-11
4883	140	2	2024-09-07
4884	210	3	2024-02-21
4885	357	3	2024-10-14
4886	70	2	2024-12-24
4889	108	1	2024-09-04
4890	466	3	2024-10-13
4891	306	2	2024-02-19
4892	460	2	2024-02-16
4893	360	3	2024-12-27
4894	299	2	2024-06-15
4895	381	2	2024-02-28
4896	110	1	2024-11-02
4897	404	1	2024-04-30
4898	222	1	2024-07-19
4899	424	3	2024-10-30
4900	339	1	2024-12-21
4901	247	1	2024-09-16
4902	467	1	2024-05-14
4903	459	3	2024-12-26
4904	428	2	2024-10-29
4905	476	1	2024-11-10
4907	200	2	2024-11-02
4908	446	3	2024-06-05
4909	225	1	2024-08-02
4910	164	3	2024-08-31
4911	466	2	2024-12-08
4912	359	2	2024-02-08
4913	2	2	2024-05-21
4914	441	2	2024-06-11
4915	36	1	2024-04-30
4917	470	2	2024-07-10
4918	86	1	2024-07-07
4919	91	3	2024-09-15
4920	363	1	2024-04-20
4921	335	3	2024-10-15
4922	50	3	2024-11-27
4923	438	2	2024-08-01
4924	7	1	2024-10-13
4925	399	1	2024-09-04
4926	462	1	2024-04-09
4927	489	1	2024-02-04
4928	209	1	2024-10-15
4929	256	3	2024-06-18
4931	163	3	2024-06-03
4933	51	2	2024-03-02
4934	296	2	2024-07-24
4935	62	3	2024-05-25
4936	348	2	2024-03-30
4937	167	1	2024-11-24
4938	61	2	2024-03-22
4939	169	1	2024-04-23
4940	416	2	2024-12-09
4941	41	3	2024-02-27
4942	94	3	2024-03-17
4943	15	2	2024-09-26
4944	5	3	2024-06-11
4945	361	2	2024-07-23
4946	237	1	2024-08-01
4947	46	3	2024-09-02
4948	139	1	2024-06-11
4949	201	2	2024-07-18
4950	277	1	2024-04-06
4951	106	2	2024-02-23
4952	499	2	2024-06-21
4953	432	3	2024-12-27
4954	261	3	2024-09-22
4955	276	1	2024-11-25
4957	40	3	2024-02-10
4958	33	2	2024-03-30
4959	401	3	2024-08-29
4960	265	3	2024-05-17
4961	430	3	2024-07-07
4962	369	3	2024-05-20
4963	18	1	2024-03-05
4965	463	2	2024-11-05
4966	111	3	2024-03-25
4967	62	3	2024-04-21
4968	453	3	2024-08-22
4969	212	3	2024-03-04
4971	490	1	2024-07-02
4972	16	1	2024-04-04
4973	378	2	2024-02-24
4974	246	1	2024-11-04
4976	8	3	2024-04-13
4977	173	3	2024-12-05
4978	336	3	2024-09-05
4979	3	3	2024-07-30
4980	46	3	2024-09-28
4981	382	3	2024-04-21
4982	220	3	2024-06-04
4983	64	1	2024-08-16
4984	49	1	2024-08-02
4985	457	2	2024-08-08
4986	146	2	2024-10-11
4987	140	1	2024-12-20
4988	476	3	2024-08-02
4989	316	2	2024-08-02
4990	170	1	2024-03-03
4991	228	1	2024-06-09
4992	394	3	2024-08-17
4993	185	3	2024-08-26
4994	114	2	2024-07-11
4995	371	2	2024-05-18
4996	331	2	2024-07-26
4997	385	1	2024-11-26
4998	158	3	2024-07-02
4999	267	3	2024-08-13
5000	470	2	2024-08-22
5001	187	1	2024-09-29
5002	287	3	2024-04-17
5003	97	2	2024-09-09
5005	414	1	2024-09-04
5007	372	3	2024-12-10
5008	283	2	2024-06-18
5009	474	3	2024-12-28
5011	368	1	2024-08-14
5012	19	2	2024-08-18
5013	306	2	2024-05-18
5014	178	2	2024-07-11
5015	351	3	2024-04-01
5016	48	3	2024-07-29
5017	355	1	2024-07-05
5019	32	2	2024-08-30
5020	203	1	2024-03-28
5021	461	2	2024-10-22
5022	284	2	2024-10-05
5024	82	1	2024-04-08
5025	340	2	2024-05-11
5026	128	2	2024-02-10
5027	244	3	2024-07-11
5028	354	3	2024-07-26
5029	345	1	2024-10-02
5030	284	2	2024-07-29
5031	77	2	2024-12-31
5032	233	3	2024-08-24
5033	209	1	2024-03-27
5034	452	2	2024-07-04
5036	222	2	2024-03-07
5037	344	2	2024-05-29
5038	299	1	2024-12-30
5039	492	1	2024-05-18
5040	261	3	2024-09-02
5041	97	2	2024-06-18
5042	418	2	2024-07-10
5043	79	3	2024-04-25
5044	373	2	2024-04-15
5045	95	3	2024-10-11
5046	337	1	2024-09-17
5047	278	2	2024-05-26
5048	22	1	2024-11-16
5049	441	2	2024-11-26
5050	166	3	2024-02-04
5051	323	2	2024-09-30
5052	100	3	2024-10-20
5053	363	3	2024-03-05
5054	494	3	2024-06-19
5055	399	3	2024-04-13
5056	476	1	2024-10-05
5057	479	3	2024-05-22
5058	257	2	2024-08-26
5059	62	1	2024-10-25
5061	353	1	2024-07-24
5062	209	1	2024-06-02
5065	499	1	2024-09-16
5066	34	1	2024-04-19
5067	427	3	2024-02-22
5068	196	1	2024-10-01
5069	444	3	2024-08-19
5070	346	2	2024-08-17
5071	88	3	2024-04-30
5073	291	3	2024-10-08
5074	496	3	2024-09-07
5075	336	2	2024-11-24
5076	150	3	2024-11-10
5077	197	3	2024-10-28
5078	351	3	2024-11-16
5079	493	1	2024-09-15
5080	297	3	2024-11-28
5081	179	2	2024-09-12
5082	291	1	2024-02-10
5083	380	3	2024-03-29
5084	197	2	2024-05-03
5085	407	2	2024-06-04
5086	453	1	2024-03-25
5087	496	1	2024-09-18
5088	457	1	2024-03-06
5089	336	3	2024-06-21
5090	245	2	2024-12-21
5091	475	2	2024-11-01
5092	241	2	2024-09-11
5093	223	1	2024-05-01
5094	436	1	2024-09-11
5095	161	3	2024-09-13
5096	187	3	2024-08-14
5099	450	1	2024-10-04
5100	154	1	2024-10-11
5101	343	1	2024-03-02
5104	307	2	2024-07-09
5105	259	2	2024-05-08
5106	303	3	2024-06-26
5107	221	3	2024-10-03
5108	35	2	2024-12-29
5109	420	2	2024-02-10
5110	430	1	2024-12-25
5111	446	2	2024-10-03
5113	288	2	2024-12-26
5114	50	3	2024-04-25
5115	144	2	2024-06-07
5116	315	1	2024-09-16
5117	160	1	2024-11-24
5119	254	1	2024-07-02
5120	159	2	2024-03-09
5121	427	2	2024-12-30
5122	220	2	2024-05-05
5123	1	2	2024-05-22
5124	490	2	2024-04-26
5125	102	1	2024-11-23
5126	100	3	2024-08-27
5127	210	2	2024-02-05
5128	225	1	2024-07-12
5129	400	2	2024-03-21
5130	308	3	2024-07-29
5131	93	2	2024-04-20
5132	87	3	2024-10-21
5133	29	2	2024-12-18
5134	411	3	2024-03-29
5135	108	2	2024-02-13
5136	194	1	2024-02-14
5137	443	3	2024-05-25
5138	65	3	2024-06-01
5139	144	1	2024-12-21
5140	201	3	2024-11-21
5141	363	3	2024-05-06
5142	12	2	2024-02-01
5143	462	1	2024-10-09
5144	37	2	2024-08-20
5145	464	1	2024-07-28
5146	263	2	2024-03-08
5147	485	1	2024-03-03
5148	29	2	2024-06-22
5149	475	3	2024-11-10
5150	24	3	2024-08-16
5151	210	1	2024-08-02
5152	317	3	2024-06-29
5154	460	2	2024-02-21
5155	341	1	2024-05-14
5156	404	3	2024-12-15
5157	43	3	2024-03-26
5159	98	2	2024-10-28
5160	50	3	2024-04-27
5161	456	3	2024-03-01
5162	408	2	2024-07-16
5163	274	1	2024-06-13
5164	74	3	2024-05-03
5165	197	3	2024-05-18
5166	267	1	2024-05-20
5167	21	3	2024-04-14
5169	152	2	2024-12-11
5170	273	1	2024-04-10
5171	134	1	2024-08-22
5172	239	3	2024-07-03
5173	275	1	2024-03-30
5174	383	3	2024-12-03
5175	2	3	2024-11-09
5176	421	2	2024-09-27
5177	262	2	2024-11-08
5178	7	3	2024-12-16
5179	250	3	2024-05-06
5180	174	2	2024-02-12
5181	102	3	2024-02-18
5183	48	1	2024-10-21
5184	334	2	2024-03-26
5186	252	2	2024-03-19
5187	344	2	2024-06-26
5188	348	1	2024-10-02
5190	475	2	2024-03-07
5191	22	2	2024-06-11
5192	34	2	2024-04-17
5193	121	3	2024-03-20
5195	310	2	2024-08-03
5196	242	3	2024-02-16
5197	189	1	2024-03-25
5198	173	1	2024-07-27
5199	190	3	2024-03-11
5201	204	3	2024-04-26
5202	184	2	2024-09-20
5204	379	1	2024-02-06
5205	270	2	2024-04-17
5206	113	2	2024-03-26
5207	211	3	2024-11-20
5208	460	3	2024-03-24
5209	311	1	2024-07-12
5210	229	3	2024-05-15
5211	464	2	2024-05-04
5212	126	1	2024-02-14
5213	169	1	2024-12-12
5214	484	1	2024-12-04
5215	452	1	2024-06-12
5216	351	2	2024-06-12
5218	283	2	2024-11-23
5219	149	2	2024-04-04
5220	11	3	2024-02-11
5222	99	1	2024-12-15
5223	354	3	2024-07-06
5224	64	2	2024-11-26
5225	398	3	2024-09-11
5227	426	2	2024-02-28
5228	331	2	2024-11-18
5229	222	2	2024-12-26
5230	275	3	2024-11-14
5232	197	3	2024-06-12
5233	445	3	2024-12-19
5234	357	3	2024-06-06
5235	327	2	2024-05-06
5236	366	3	2024-04-13
5238	386	2	2024-07-13
5239	259	3	2024-05-21
5240	370	3	2024-09-01
5241	106	1	2024-09-22
5243	268	2	2024-11-03
5244	278	3	2024-12-08
5246	282	2	2024-12-09
5247	268	3	2024-12-13
5248	81	3	2024-07-06
5249	100	3	2024-10-30
5250	353	3	2024-06-05
5252	6	2	2024-11-10
5253	132	3	2024-04-26
5255	416	1	2024-02-12
5256	132	1	2024-05-19
5257	292	2	2024-05-12
5258	445	2	2024-08-10
5259	43	1	2024-09-18
5260	116	3	2024-11-16
5261	294	2	2024-10-15
5262	179	3	2024-04-29
5263	231	3	2024-05-29
5264	374	1	2024-07-24
5265	186	1	2024-07-24
5266	335	1	2024-02-16
5267	414	2	2024-11-05
5268	294	3	2024-06-29
5269	398	2	2024-08-10
5270	89	3	2024-02-27
5271	224	2	2024-06-17
5272	380	2	2024-09-29
5273	261	3	2024-10-12
5274	183	2	2024-08-24
5275	266	2	2024-12-12
5276	374	2	2024-12-09
5277	374	1	2024-06-16
5278	304	3	2024-12-07
5279	48	3	2024-04-02
5280	390	1	2024-05-27
5281	408	1	2024-08-26
5282	238	2	2024-11-23
5284	65	3	2024-03-15
5285	15	1	2024-07-15
5286	245	1	2024-03-15
5287	44	2	2024-03-06
5288	407	2	2024-07-25
5289	157	2	2024-02-18
5290	378	2	2024-10-27
5291	399	3	2024-09-21
5293	446	3	2024-06-16
5294	24	3	2024-05-26
5295	351	1	2024-10-15
5296	298	3	2024-12-02
5297	233	3	2024-07-15
5298	312	2	2024-10-28
5299	283	3	2024-04-25
5300	289	1	2024-03-28
5301	24	1	2024-04-05
5302	500	2	2024-06-01
5303	14	2	2024-03-12
5305	347	1	2024-06-14
5306	362	3	2024-10-14
5307	293	1	2024-04-19
5308	448	2	2024-10-29
5309	283	1	2024-02-21
5310	183	3	2024-03-13
5312	186	2	2024-06-02
5314	27	1	2024-12-20
5315	138	2	2024-06-24
5316	267	2	2024-02-10
5317	245	2	2024-05-06
5318	176	1	2024-06-27
5319	235	1	2024-02-28
5320	47	1	2024-07-15
5321	96	2	2024-02-02
5323	56	1	2024-07-19
5324	99	1	2024-08-22
5325	22	2	2024-11-08
5326	157	2	2024-12-10
5327	415	3	2024-12-28
5328	433	3	2024-08-18
5329	374	3	2024-09-14
5330	150	2	2024-06-21
5331	175	3	2024-02-22
5332	348	2	2024-09-15
5333	409	1	2024-06-06
5334	294	1	2024-09-10
5335	100	3	2024-12-20
5336	484	2	2024-12-04
5337	16	3	2024-06-26
5338	136	3	2024-04-22
5339	54	1	2024-02-19
5340	293	3	2024-04-04
5341	129	2	2024-04-11
5342	407	2	2024-08-20
5343	138	3	2024-06-14
5344	329	1	2024-03-09
5345	2	3	2024-12-08
5347	66	3	2024-05-02
5348	306	3	2024-09-08
5349	318	3	2024-12-18
5350	466	1	2024-04-13
5351	25	2	2024-10-08
5352	309	1	2024-06-09
5353	155	1	2024-11-24
5354	114	3	2024-09-30
5356	270	3	2024-03-17
5357	492	3	2024-12-20
5358	147	2	2024-06-10
5359	327	1	2024-07-04
5360	245	3	2024-04-02
5361	233	2	2024-11-27
5362	211	1	2024-09-19
5363	368	2	2024-11-26
5364	134	2	2024-04-09
5365	1	3	2024-11-26
5366	304	3	2024-11-03
5368	37	2	2024-03-18
5369	449	2	2024-02-22
5370	482	3	2024-11-07
5371	114	3	2024-04-11
5372	261	1	2024-12-20
5374	397	3	2024-05-29
5376	318	3	2024-08-30
5377	458	1	2024-12-31
5378	421	3	2024-02-24
5379	356	1	2024-03-04
5380	16	2	2024-06-18
5381	376	1	2024-11-09
5382	227	1	2024-02-02
5383	240	3	2024-05-28
5384	280	1	2024-06-24
5385	415	3	2024-06-15
5386	247	1	2024-10-10
5387	490	3	2024-07-09
5388	175	1	2024-05-21
5389	104	1	2024-11-14
5390	22	2	2024-05-29
5391	330	3	2024-07-30
5392	406	3	2024-12-29
5393	386	3	2024-08-20
5394	469	3	2024-12-29
5395	73	3	2024-04-27
5396	367	3	2024-07-27
5397	449	2	2024-10-12
5398	94	2	2024-05-15
5399	206	3	2024-11-30
5400	53	2	2024-05-27
5402	240	2	2024-02-18
5403	165	3	2024-10-08
5404	82	3	2024-07-04
5405	136	3	2024-02-20
5406	423	3	2024-06-23
5407	84	3	2024-09-02
5409	92	2	2024-07-31
5410	314	2	2024-08-10
5411	324	2	2024-02-16
5413	287	3	2024-02-20
5414	334	3	2024-09-18
5415	355	3	2024-12-22
5416	289	3	2024-03-23
5417	245	3	2024-05-22
5418	500	3	2024-09-15
5421	112	1	2024-12-28
5424	120	1	2024-08-11
5425	296	3	2024-08-04
5426	497	1	2024-10-01
5427	200	1	2024-08-10
5428	349	2	2024-02-27
5429	29	1	2024-09-09
5430	3	3	2024-09-22
5431	58	3	2024-08-30
5432	384	3	2024-11-17
5433	51	2	2024-08-24
5434	224	3	2024-10-28
5435	174	3	2024-09-12
5436	158	3	2024-07-21
5437	225	1	2024-09-09
5438	382	3	2024-04-06
5439	99	1	2024-03-24
5440	465	2	2024-05-20
5441	341	1	2024-05-21
5442	383	1	2024-03-11
5443	236	3	2024-03-30
5444	271	2	2024-04-22
5445	270	3	2024-05-31
5446	465	1	2024-04-14
5447	113	1	2024-02-10
5448	133	3	2024-04-20
5449	363	2	2024-02-19
5450	198	1	2024-02-19
5451	37	1	2024-06-14
5452	327	1	2024-08-05
5454	442	2	2024-08-22
5455	478	2	2024-07-10
5456	159	3	2024-07-29
5457	412	1	2024-02-21
5458	294	1	2024-11-19
5459	51	1	2024-07-16
5460	491	2	2024-06-29
5461	393	3	2024-05-19
5462	382	3	2024-07-21
5463	112	2	2024-05-19
5464	191	2	2024-02-25
5465	117	3	2024-07-15
5466	143	2	2024-11-13
5467	379	1	2024-03-04
5468	339	2	2024-08-31
5469	384	1	2024-06-07
5470	442	2	2024-07-26
5471	281	1	2024-09-12
5472	493	2	2024-04-25
5473	366	1	2024-11-01
5474	208	2	2024-04-04
5475	83	3	2024-04-27
5476	257	3	2024-02-11
5477	361	2	2024-09-20
5478	295	3	2024-10-18
5479	355	2	2024-12-27
5480	77	2	2024-03-27
5481	208	2	2024-09-27
5482	205	3	2024-10-05
5483	135	3	2024-07-15
5484	482	3	2024-06-29
5486	10	2	2024-03-08
5487	254	2	2024-03-10
5488	283	1	2024-12-17
5489	20	2	2024-10-26
5490	382	3	2024-02-07
5491	214	3	2024-10-10
5492	334	2	2024-05-01
5493	264	2	2024-10-06
5495	152	1	2024-07-21
5496	197	1	2024-11-30
5497	261	1	2024-05-27
5498	179	1	2024-05-11
5500	420	1	2024-06-15
5501	234	2	2024-07-05
5502	295	1	2024-08-07
5503	259	1	2024-11-01
5504	208	1	2024-11-17
5505	161	3	2024-04-30
5506	255	3	2024-12-02
5507	371	3	2024-10-22
5508	441	2	2024-11-13
5509	173	1	2024-08-24
5510	226	1	2024-05-15
5511	333	2	2024-06-26
5513	139	2	2024-04-20
5514	13	3	2024-11-13
5515	52	3	2024-04-07
5516	257	1	2024-10-24
5517	264	3	2024-10-29
5518	436	1	2024-06-02
5520	428	2	2024-09-03
5521	94	2	2024-03-02
5522	141	3	2024-03-13
5523	459	1	2024-03-15
5524	358	3	2024-05-13
5525	447	2	2024-08-04
5526	420	1	2024-04-30
5530	177	3	2024-03-04
5531	100	1	2024-04-12
5532	421	3	2024-08-31
5533	256	3	2024-07-28
5534	251	1	2024-10-17
5535	454	3	2024-02-22
5536	325	2	2024-10-08
5538	320	2	2024-09-16
5539	135	1	2024-05-04
5540	367	2	2024-10-14
5541	381	2	2024-06-04
5542	340	1	2024-03-21
5543	329	2	2024-03-15
5544	193	3	2024-02-16
5545	124	1	2024-06-01
5547	114	1	2024-04-04
5548	484	3	2024-11-09
5549	431	2	2024-03-26
5550	381	1	2024-07-11
5551	140	2	2024-02-29
5552	49	1	2024-07-08
5553	269	2	2024-08-22
5554	247	2	2024-07-07
5555	466	2	2024-12-14
5556	379	2	2024-11-06
5557	130	2	2024-03-23
5560	316	3	2024-11-10
5562	471	1	2024-05-15
5563	239	1	2024-04-20
5565	36	2	2024-08-16
5566	46	3	2024-09-07
5567	295	3	2024-05-06
5568	419	3	2024-07-20
5569	316	1	2024-06-29
5570	455	1	2024-04-04
5572	421	3	2024-12-06
5573	103	2	2024-12-02
5574	418	3	2024-07-09
5575	136	1	2024-04-09
5576	206	1	2024-10-19
5577	83	1	2024-12-24
5579	16	2	2024-03-27
5580	258	2	2024-02-25
5581	219	3	2024-09-08
5582	111	2	2024-06-02
5583	90	1	2024-03-03
5585	258	2	2024-12-09
5586	82	1	2024-02-29
5587	221	3	2024-12-12
5590	372	1	2024-11-07
5591	94	3	2024-06-28
5592	137	1	2024-06-06
5593	75	2	2024-02-06
5594	257	2	2024-05-05
5595	353	1	2024-07-19
5596	445	3	2024-07-18
5597	50	1	2024-10-04
5599	7	1	2024-11-26
5600	340	2	2024-04-28
5601	78	3	2024-06-17
5602	407	1	2024-06-05
5603	334	2	2024-10-12
5604	211	3	2024-04-10
5605	292	3	2024-03-20
5606	65	3	2024-12-14
5608	9	1	2024-03-24
5609	176	2	2024-02-05
5610	90	1	2024-02-26
5611	338	1	2024-02-17
5614	224	2	2024-12-15
5617	411	3	2024-11-18
5618	491	1	2024-04-21
5619	377	3	2024-07-08
5620	386	2	2024-10-04
5621	219	1	2024-12-01
5622	89	3	2024-04-06
5623	323	1	2024-08-13
5624	67	1	2024-08-14
5625	54	3	2024-05-09
5627	355	3	2024-11-10
5628	79	2	2024-04-25
5629	63	1	2024-05-05
5630	482	1	2024-11-11
5631	253	1	2024-12-13
5632	471	1	2024-05-07
5633	208	2	2024-02-20
5634	336	2	2024-07-03
5635	111	1	2024-03-17
5636	281	3	2024-07-16
5638	212	3	2024-09-19
5639	126	3	2024-05-23
5640	73	2	2024-09-28
5642	198	3	2024-02-15
5643	413	2	2024-02-02
5644	430	3	2024-02-15
5645	152	1	2024-04-17
5646	136	3	2024-10-07
5649	127	1	2024-07-11
5650	177	1	2024-06-06
5651	166	1	2024-05-02
5652	32	2	2024-08-10
5653	12	3	2024-09-22
5654	336	2	2024-07-11
5655	174	1	2024-12-05
5656	425	2	2024-02-06
5657	92	2	2024-06-02
5658	68	3	2024-06-04
5659	411	1	2024-06-19
5660	164	1	2024-03-18
5661	452	2	2024-07-19
5662	73	3	2024-08-31
5663	410	2	2024-07-03
5664	55	2	2024-09-26
5665	403	1	2024-03-26
5666	348	2	2024-03-25
5668	17	3	2024-05-24
5669	39	1	2024-10-12
5670	97	2	2024-09-06
5671	125	1	2024-02-11
5672	223	1	2024-06-01
5673	452	2	2024-07-25
5674	371	1	2024-03-11
5675	248	1	2024-02-04
5676	82	3	2024-05-05
5677	47	1	2024-11-30
5678	106	1	2024-08-08
5679	3	3	2024-02-28
5680	367	3	2024-11-19
5681	54	1	2024-06-09
5684	77	3	2024-09-03
5685	347	2	2024-05-18
5686	196	3	2024-04-23
5687	14	2	2024-11-09
5688	34	1	2024-07-12
5689	59	2	2024-03-14
5690	241	1	2024-03-07
5691	467	3	2024-03-02
5692	430	2	2024-09-11
5693	345	2	2024-11-04
5694	211	3	2024-05-12
5695	166	2	2024-12-03
5696	409	1	2024-09-03
5697	40	1	2024-06-10
5698	144	3	2024-07-17
5699	420	3	2024-07-03
5700	69	2	2024-11-21
5701	474	3	2024-04-30
5702	9	2	2024-06-13
5703	53	2	2024-12-25
5704	129	2	2024-04-28
5705	379	2	2024-11-27
5706	357	2	2024-07-10
5707	275	3	2024-03-12
5708	125	1	2024-12-23
5709	349	1	2024-08-30
5710	96	2	2024-10-11
5712	485	2	2024-08-16
5713	363	1	2024-09-10
5714	341	2	2024-06-07
5716	34	2	2024-03-26
5718	357	3	2024-02-07
5719	304	2	2024-04-03
5720	417	1	2024-04-05
5721	334	1	2024-03-04
5722	351	2	2024-05-11
5723	201	2	2024-08-23
5724	396	1	2024-12-18
5725	429	2	2024-04-04
5726	494	2	2024-07-19
5727	169	3	2024-09-15
5728	161	2	2024-12-30
5730	193	3	2024-08-11
5731	174	2	2024-12-07
5733	40	2	2024-06-04
5734	402	1	2024-03-18
5735	351	1	2024-10-09
5736	472	1	2024-07-15
5737	203	2	2024-03-08
5738	353	2	2024-11-20
5740	82	2	2024-03-24
5741	279	3	2024-08-23
5742	310	3	2024-07-04
5743	123	2	2024-09-21
5744	229	3	2024-04-19
5745	367	2	2024-11-17
5746	421	1	2024-03-09
5748	151	1	2024-11-11
5749	371	1	2024-10-19
5750	268	2	2024-03-04
5751	132	1	2024-04-16
5752	228	3	2024-08-28
5753	47	1	2024-06-22
5754	452	2	2024-09-07
5755	497	1	2024-12-29
5756	251	3	2024-02-01
5757	428	2	2024-06-19
5759	463	3	2024-03-24
5760	340	1	2024-10-25
5761	499	3	2024-12-11
5762	427	1	2024-08-14
5763	77	3	2024-11-18
5764	246	3	2024-05-25
5765	155	1	2024-09-18
5767	495	3	2024-08-28
5769	17	1	2024-09-26
5770	355	1	2024-07-13
5771	150	3	2024-03-10
5772	180	1	2024-09-23
5773	456	2	2024-09-12
5774	136	2	2024-08-26
5776	293	1	2024-09-25
5777	332	2	2024-07-26
5778	250	1	2024-05-05
5779	139	2	2024-09-25
5780	500	2	2024-03-10
5781	364	3	2024-04-02
5782	482	3	2024-11-28
5783	481	1	2024-04-06
5784	457	1	2024-09-06
5785	207	2	2024-05-11
5786	41	1	2024-04-25
5787	4	2	2024-07-21
5788	458	3	2024-07-01
5789	358	3	2024-08-14
5790	459	1	2024-08-14
5791	181	1	2024-04-22
5792	65	3	2024-03-18
5793	483	3	2024-12-01
5794	355	1	2024-09-26
5795	359	3	2024-04-17
5796	420	2	2024-08-19
5798	127	2	2024-04-01
5800	241	2	2024-02-16
5801	320	3	2024-02-24
5802	31	1	2024-08-19
5805	359	2	2024-07-31
5806	328	1	2024-09-09
5807	411	2	2024-03-22
5808	142	2	2024-09-04
5809	415	1	2024-02-18
5810	264	3	2024-10-26
5811	309	1	2024-11-13
5812	267	1	2024-03-04
5813	155	3	2024-11-05
5814	283	3	2024-07-09
5815	427	1	2024-08-17
5816	214	2	2024-10-08
5817	435	1	2024-04-24
5819	497	1	2024-03-09
5820	485	2	2024-05-06
5822	186	1	2024-12-09
5823	474	3	2024-06-26
5825	46	2	2024-11-30
5826	189	1	2024-02-07
5827	90	3	2024-12-18
5828	308	1	2024-09-09
5829	75	1	2024-05-15
5830	317	2	2024-02-10
5831	358	2	2024-06-15
5832	11	3	2024-10-12
5833	361	2	2024-09-29
5834	102	1	2024-07-16
5836	483	1	2024-08-07
5837	103	3	2024-02-01
5838	35	2	2024-03-06
5839	237	2	2024-08-11
5840	58	2	2024-02-05
5841	169	2	2024-02-19
5842	9	2	2024-12-11
5843	63	2	2024-10-15
5844	398	1	2024-02-17
5845	472	1	2024-11-24
5846	342	3	2024-11-29
5847	373	3	2024-06-18
5848	50	2	2024-07-19
5849	86	1	2024-08-18
5850	482	1	2024-05-02
5851	239	1	2024-12-17
5852	445	3	2024-11-26
5853	288	1	2024-02-12
5854	20	2	2024-08-20
5856	195	2	2024-07-28
5857	326	1	2024-11-14
5858	123	3	2024-05-15
5860	363	3	2024-06-26
5861	355	2	2024-10-21
5862	142	2	2024-07-17
5863	254	1	2024-02-23
5864	181	3	2024-10-18
5865	25	3	2024-12-04
5866	53	1	2024-03-13
5867	3	3	2024-12-27
5868	497	3	2024-09-20
5870	211	1	2024-12-10
5871	370	3	2024-09-29
5872	127	2	2024-12-24
5873	50	1	2024-08-18
5874	187	2	2024-02-07
5875	425	2	2024-03-08
5876	388	2	2024-03-09
5877	411	2	2024-08-13
5878	441	3	2024-11-23
5879	29	3	2024-03-30
5880	492	3	2024-06-17
5881	29	3	2024-08-08
5882	384	1	2024-05-14
5883	55	2	2024-06-02
5884	298	1	2024-09-19
5885	375	3	2024-10-24
5886	41	2	2024-03-10
5887	173	3	2024-11-15
5888	52	3	2024-07-06
5889	151	1	2024-05-24
5890	487	3	2024-07-24
5891	497	3	2024-06-18
5892	209	2	2024-11-09
5893	492	3	2024-08-21
5894	36	1	2024-11-19
5895	78	1	2024-02-11
5896	331	2	2024-07-03
5897	255	3	2024-08-22
5898	12	1	2024-11-10
5899	408	1	2024-09-12
5900	299	1	2024-04-13
5901	52	2	2024-09-01
5902	226	1	2024-04-19
5903	436	3	2024-09-11
5904	428	2	2024-06-10
5905	187	1	2024-07-01
5906	283	1	2024-04-16
5907	168	3	2024-07-16
5908	308	2	2024-04-12
5909	159	1	2024-08-24
5910	8	1	2024-12-25
5911	246	1	2024-12-17
5912	134	2	2024-12-08
5913	76	1	2024-09-26
5914	15	2	2024-02-16
5915	456	1	2024-03-24
5916	27	2	2024-07-27
5917	89	1	2024-11-24
5918	24	2	2024-05-27
5919	126	3	2024-10-15
5920	476	3	2024-06-11
5921	498	2	2024-11-17
5922	152	3	2024-02-21
5923	247	1	2024-03-20
5924	116	2	2024-12-26
5926	125	3	2024-05-30
5927	113	3	2024-10-15
5928	474	3	2024-06-28
5929	353	1	2024-05-01
5930	302	2	2024-02-29
5931	428	3	2024-04-19
5932	331	2	2024-12-27
5933	117	2	2024-05-06
5934	396	1	2024-02-16
5935	38	2	2024-07-22
5936	313	2	2024-09-11
5937	33	2	2024-07-27
5938	128	2	2024-09-05
5939	402	2	2024-06-18
5940	310	3	2024-04-16
5941	164	3	2024-08-01
5942	266	2	2024-05-18
5943	298	1	2024-02-04
5944	418	2	2024-06-20
5945	406	3	2024-09-18
5946	374	2	2024-08-28
5947	168	3	2024-09-22
5948	425	1	2024-03-16
5949	31	3	2024-07-17
5950	381	3	2024-10-07
5951	146	2	2024-07-20
5952	38	1	2024-10-31
5953	330	1	2024-10-20
5954	381	3	2024-08-31
5955	423	2	2024-09-14
5956	55	3	2024-11-18
5958	163	2	2024-02-23
5959	113	1	2024-07-16
5961	459	3	2024-07-28
5962	166	2	2024-09-14
5963	235	3	2024-05-13
5964	135	2	2024-03-07
5965	411	1	2024-04-22
5966	153	3	2024-11-17
5967	432	2	2024-04-25
5968	8	1	2024-09-26
5969	159	3	2024-11-05
5970	75	2	2024-09-30
5971	188	3	2024-08-09
5972	217	2	2024-11-05
5973	414	2	2024-09-11
5974	186	2	2024-02-13
5975	278	1	2024-08-15
5976	187	1	2024-06-22
5977	391	2	2024-10-14
5978	220	2	2024-07-08
5979	81	1	2024-10-08
5980	104	2	2024-03-13
5981	272	1	2024-08-12
5982	481	2	2024-08-17
5983	449	3	2024-09-09
5984	240	2	2024-02-03
5985	192	1	2024-03-12
5986	415	3	2024-05-16
5987	106	2	2024-08-24
5988	299	2	2024-09-21
5990	430	1	2024-11-11
5991	212	1	2024-08-16
5992	387	1	2024-02-07
5993	324	2	2024-08-04
5994	332	1	2024-05-29
5995	50	3	2024-07-26
5996	387	1	2024-02-23
5997	261	2	2024-06-26
5998	180	2	2024-05-22
5999	97	2	2024-11-01
6000	466	2	2024-02-12
6001	386	3	2024-10-18
6003	330	1	2024-07-12
6004	207	3	2024-02-26
6005	382	3	2024-09-09
6006	477	1	2024-10-10
6007	26	1	2024-08-03
6009	221	2	2024-10-06
6011	344	2	2024-10-27
6012	369	2	2024-07-04
6013	441	1	2024-07-02
6014	255	2	2024-02-11
6015	100	1	2024-11-09
6016	495	1	2024-12-26
6017	134	2	2024-05-30
6019	209	2	2024-11-11
6020	72	3	2024-10-19
6021	172	1	2024-03-10
6022	181	3	2024-08-24
6023	12	1	2024-10-15
6024	407	2	2024-04-10
6025	50	2	2024-07-21
6026	474	2	2024-08-22
6027	263	3	2024-02-07
6028	21	2	2024-11-10
6029	96	1	2024-08-29
6030	202	2	2024-07-05
6031	115	1	2024-10-10
6032	293	1	2024-03-12
6033	134	3	2024-04-30
6034	209	1	2024-02-15
6035	477	1	2024-04-24
6037	279	2	2024-04-17
6038	396	3	2024-09-26
6039	343	3	2024-10-03
6041	128	3	2024-11-20
6042	362	1	2024-10-06
6043	155	3	2024-07-24
6044	409	3	2024-12-31
6045	311	2	2024-05-29
6046	79	1	2024-02-01
6048	417	1	2024-03-21
6049	206	1	2024-02-05
6050	94	2	2024-07-16
6051	216	1	2024-03-05
6052	101	3	2024-09-18
6053	299	1	2024-10-24
6054	379	2	2024-06-10
6055	90	1	2024-05-02
6056	343	3	2024-02-28
6057	332	2	2024-05-09
6058	141	2	2024-04-25
6059	298	2	2024-07-14
6060	417	3	2024-06-09
6061	202	1	2024-07-02
6062	190	3	2024-04-27
6063	281	3	2024-03-17
6064	183	1	2024-07-05
6065	192	1	2024-10-10
6066	8	2	2024-09-11
6067	127	3	2024-09-12
6068	323	3	2024-04-13
6069	494	3	2024-09-23
6070	205	1	2024-12-11
6071	99	2	2024-11-05
6072	290	3	2024-09-22
6073	437	1	2024-03-20
6074	199	3	2024-09-23
6075	195	2	2024-12-05
6076	36	2	2024-07-14
6077	93	1	2024-03-23
6078	439	1	2024-04-19
6079	237	2	2024-06-17
6080	394	3	2024-07-07
6081	16	3	2024-09-01
6082	6	3	2024-04-19
6083	21	2	2024-08-09
6084	177	2	2024-10-04
6085	227	3	2024-11-17
6086	307	2	2024-05-17
6087	474	2	2024-02-14
6088	149	1	2024-05-19
6089	363	2	2024-09-29
6090	316	2	2024-10-07
6091	288	1	2024-03-05
6092	64	2	2024-11-08
6093	346	1	2024-02-28
6094	114	1	2024-09-20
6095	125	3	2024-11-20
6096	281	1	2024-07-09
6098	7	2	2024-12-12
6099	208	1	2024-02-22
6100	402	1	2024-04-29
6101	232	2	2024-02-08
6102	404	3	2024-07-04
6103	279	2	2024-09-15
6104	226	1	2024-08-28
6105	161	1	2024-10-05
6106	75	2	2024-11-01
6107	315	3	2024-04-18
6108	414	2	2024-03-27
6109	341	2	2024-08-11
6110	210	2	2024-12-24
6113	377	3	2024-07-22
6114	312	1	2024-10-11
6115	461	1	2024-02-29
6116	25	3	2024-04-14
6117	5	3	2024-02-12
6118	188	2	2024-02-06
6119	57	1	2024-06-14
6120	405	3	2024-06-16
6122	467	2	2024-03-28
6123	145	3	2024-06-20
6124	372	1	2024-08-07
6125	288	1	2024-07-11
6126	451	2	2024-03-01
6127	337	3	2024-10-25
6128	372	3	2024-06-08
6129	420	3	2024-11-24
6130	133	3	2024-09-07
6131	311	1	2024-05-01
6132	235	1	2024-12-21
6134	498	3	2024-10-30
6135	440	1	2024-10-18
6136	110	3	2024-02-09
6137	266	2	2024-05-31
6138	455	3	2024-07-17
6139	95	1	2024-04-17
6140	87	1	2024-04-05
6141	435	1	2024-04-04
6143	451	2	2024-11-28
6144	155	3	2024-02-13
6146	418	1	2024-02-01
6147	153	1	2024-11-21
6148	206	1	2024-08-14
6149	395	2	2024-08-21
6150	8	2	2024-12-03
6151	436	3	2024-04-29
6152	329	1	2024-11-05
6153	187	1	2024-08-12
6154	429	3	2024-04-26
6155	81	1	2024-03-05
6156	454	3	2024-05-26
6158	497	3	2024-04-26
6159	490	1	2024-08-30
6160	253	2	2024-02-20
6161	272	2	2024-10-14
6162	33	3	2024-10-22
6164	379	2	2024-07-16
6165	263	3	2024-10-04
6166	243	2	2024-11-17
6168	481	2	2024-03-31
6169	492	1	2024-08-25
6170	72	2	2024-03-15
6171	104	3	2024-04-19
6173	143	3	2024-12-18
6174	431	2	2024-09-07
6175	180	1	2024-12-11
6177	252	3	2024-11-30
6178	209	3	2024-12-06
6179	131	2	2024-08-18
6180	293	1	2024-05-08
6181	296	3	2024-08-29
6182	412	2	2024-10-30
6183	402	2	2024-09-03
6184	271	1	2024-12-12
6185	47	3	2024-02-06
6186	326	1	2024-04-17
6187	404	1	2024-05-09
6188	313	1	2024-02-01
6190	456	3	2024-05-06
6191	90	3	2024-03-06
6192	436	3	2024-12-16
6193	139	2	2024-09-27
6194	450	2	2024-03-26
6195	287	1	2024-10-11
6196	499	1	2024-10-29
6197	54	1	2024-12-21
6198	473	2	2024-12-17
6199	90	3	2024-07-02
6200	119	1	2024-08-11
6201	322	1	2024-07-05
6202	74	2	2024-05-02
6203	303	2	2024-05-24
6204	485	1	2024-10-25
6205	296	3	2024-12-17
6206	430	3	2024-02-19
6207	381	2	2024-07-03
6208	56	1	2024-10-10
6209	1	1	2024-07-05
6210	166	2	2024-09-24
6211	6	1	2024-04-29
6212	239	2	2024-12-11
6213	37	3	2024-07-31
6214	298	2	2024-02-06
6215	242	2	2024-04-09
6216	365	3	2024-10-23
6217	408	1	2024-03-26
6218	299	3	2024-04-07
6220	133	2	2024-08-19
6221	178	1	2024-10-31
6224	270	1	2024-07-01
6225	184	3	2024-11-08
6226	451	2	2024-06-23
6227	335	1	2024-06-12
6228	176	2	2024-02-16
6229	227	1	2024-02-03
6230	4	2	2024-08-10
6231	284	1	2024-09-10
6232	9	3	2024-12-08
6233	129	3	2024-03-26
6234	383	2	2024-03-02
6236	370	2	2024-06-20
6237	110	2	2024-05-03
6240	388	2	2024-06-09
6241	29	3	2024-08-30
6242	309	1	2024-02-09
6243	193	2	2024-02-15
6244	498	3	2024-02-27
6245	367	2	2024-10-03
6246	325	1	2024-02-02
6247	227	2	2024-09-29
6248	410	1	2024-02-27
6249	137	1	2024-07-07
6250	42	1	2024-11-23
6251	362	2	2024-08-21
6253	280	2	2024-02-12
6254	59	2	2024-05-10
6255	164	2	2024-08-24
6256	386	1	2024-12-07
6257	140	3	2024-06-06
6258	432	3	2024-08-06
6260	114	2	2024-05-11
6261	416	1	2024-09-11
6262	464	3	2024-06-12
6263	151	2	2024-03-21
6264	42	3	2024-08-12
6265	95	1	2024-04-15
6266	464	2	2024-02-07
6268	183	3	2024-11-19
6269	322	1	2024-06-24
6270	309	1	2024-12-27
6271	40	2	2024-11-05
6272	166	1	2024-12-13
6273	457	2	2024-08-15
6274	452	2	2024-07-13
6275	466	1	2024-12-26
6276	106	1	2024-03-20
6277	246	2	2024-06-19
6278	82	3	2024-02-19
6279	272	2	2024-09-15
6280	29	2	2024-06-16
6281	329	1	2024-07-03
6282	359	1	2024-03-25
6283	456	3	2024-12-10
6284	154	1	2024-05-03
6285	272	3	2024-09-03
6286	343	2	2024-03-12
6287	413	1	2024-04-19
6288	188	1	2024-09-21
6289	262	2	2024-07-12
6290	21	1	2024-10-18
6291	276	3	2024-11-07
6292	263	1	2024-10-07
6293	461	2	2024-06-18
6294	108	2	2024-06-06
6295	440	2	2024-09-15
6297	348	1	2024-02-25
6298	131	1	2024-09-30
6299	262	3	2024-06-01
6300	494	2	2024-02-06
6301	362	1	2024-12-21
6302	251	3	2024-06-21
6303	351	2	2024-09-22
6304	475	3	2024-03-27
6305	175	3	2024-10-08
6306	412	1	2024-03-19
6307	421	2	2024-04-03
6308	379	1	2024-10-03
6309	95	3	2024-09-28
6310	24	2	2024-10-19
6311	374	2	2024-10-11
6312	346	1	2024-12-07
6313	39	2	2024-05-17
6314	98	2	2024-05-05
6315	376	2	2024-03-08
6317	202	2	2024-03-19
6318	78	2	2024-07-18
6319	294	3	2024-09-23
6320	271	2	2024-05-22
6321	460	3	2024-08-20
6322	199	1	2024-11-02
6323	141	1	2024-10-09
6324	391	3	2024-12-02
6325	327	2	2024-12-20
6326	254	1	2024-09-23
6327	439	1	2024-09-24
6328	162	2	2024-06-09
6329	340	3	2024-11-07
6330	140	3	2024-04-09
6331	48	2	2024-04-03
6332	454	3	2024-08-22
6333	198	1	2024-03-23
6334	198	3	2024-04-07
6335	218	2	2024-06-13
6336	349	2	2024-04-09
6338	439	1	2024-07-08
6339	206	3	2024-09-14
6340	288	1	2024-09-24
6341	57	1	2024-11-10
6342	222	1	2024-09-09
6343	305	1	2024-12-10
6344	89	1	2024-04-02
6345	182	3	2024-03-27
6347	288	1	2024-02-16
6348	88	1	2024-08-23
6349	58	3	2024-10-18
6350	265	2	2024-11-10
6351	56	1	2024-07-11
6352	431	3	2024-12-29
6353	48	1	2024-07-28
6355	85	2	2024-11-11
6356	235	1	2024-10-26
6357	51	3	2024-07-28
6358	236	2	2024-09-29
6359	458	3	2024-07-23
6360	160	3	2024-09-04
6361	289	1	2024-11-03
6362	412	1	2024-12-06
6363	116	2	2024-03-12
6364	295	2	2024-10-18
6365	196	1	2024-08-29
6366	326	1	2024-09-13
6367	294	3	2024-08-28
6368	388	3	2024-07-06
6369	357	1	2024-11-27
6370	184	3	2024-06-01
6371	91	2	2024-11-02
6372	144	1	2024-03-05
6373	462	3	2024-02-10
6374	81	3	2024-08-23
6375	477	3	2024-05-03
6376	405	3	2024-05-15
6377	486	2	2024-11-10
6378	441	2	2024-09-21
6379	139	3	2024-04-09
6380	294	3	2024-04-25
6381	60	3	2024-06-23
6382	366	2	2024-07-06
6383	414	3	2024-10-19
6384	302	1	2024-06-24
6386	298	1	2024-08-09
6388	404	3	2024-08-12
6389	94	3	2024-02-18
6390	410	2	2024-08-08
6391	344	2	2024-12-17
6392	60	3	2024-09-22
6394	63	3	2024-10-08
6395	307	3	2024-07-17
6397	327	3	2024-02-01
6398	370	1	2024-11-04
6399	144	1	2024-11-22
6400	196	1	2024-03-26
6401	440	2	2024-04-03
6402	112	1	2024-04-28
6403	16	3	2024-04-15
6404	178	1	2024-07-05
6405	387	1	2024-03-26
6406	450	1	2024-07-02
6407	460	3	2024-09-02
6408	26	2	2024-10-16
6409	231	3	2024-04-13
6410	162	1	2024-08-23
6411	54	2	2024-06-09
6412	26	1	2024-10-11
6413	338	3	2024-10-13
6414	389	1	2024-09-20
6415	173	3	2024-08-15
6416	9	1	2024-06-23
6417	158	2	2024-04-28
6418	58	3	2024-06-04
6419	447	3	2024-08-23
6420	487	2	2024-05-17
6421	312	3	2024-04-20
6422	399	1	2024-04-14
6423	217	2	2024-04-03
6424	99	3	2024-05-14
6426	84	3	2024-10-03
6427	109	3	2024-04-04
6428	281	3	2024-02-18
6429	125	1	2024-03-06
6430	295	1	2024-07-18
6431	379	1	2024-04-02
6432	395	2	2024-11-25
6433	484	3	2024-04-26
6434	92	1	2024-03-11
6435	396	1	2024-08-20
6436	54	3	2024-11-09
6437	124	3	2024-10-31
6438	316	2	2024-07-03
6439	473	1	2024-05-30
6440	261	1	2024-07-11
6441	245	1	2024-04-21
6442	480	2	2024-08-31
6443	17	3	2024-06-16
6444	70	1	2024-12-13
6445	102	3	2024-09-29
6447	145	3	2024-06-14
6448	461	2	2024-12-17
6449	363	1	2024-06-08
6450	107	3	2024-10-02
6451	348	1	2024-03-25
6452	333	3	2024-12-28
6453	289	2	2024-10-05
6455	404	1	2024-11-18
6456	170	3	2024-10-22
6457	355	1	2024-07-03
6458	224	3	2024-08-05
6459	128	2	2024-08-05
6460	463	3	2024-04-29
6461	346	1	2024-04-07
6463	362	1	2024-11-13
6464	93	1	2024-06-18
6465	415	1	2024-09-22
6467	353	2	2024-04-26
6468	360	3	2024-09-29
6469	303	2	2024-10-02
6470	332	1	2024-03-03
6471	381	1	2024-05-09
6472	121	3	2024-08-04
6473	165	3	2024-07-30
6474	102	2	2024-09-22
6475	34	1	2024-06-24
6476	167	1	2024-05-02
6477	133	3	2024-03-01
6478	230	2	2024-08-10
6479	17	2	2024-08-09
6480	331	3	2024-11-04
6481	8	1	2024-09-05
6482	155	1	2024-11-15
6483	303	1	2024-07-01
6484	219	3	2024-12-23
6485	172	1	2024-12-12
6486	293	3	2024-05-20
6487	137	3	2024-07-23
6488	152	2	2024-10-28
6489	53	2	2024-05-14
6490	486	2	2024-02-22
6491	99	2	2024-09-11
6492	287	2	2024-10-26
6493	456	2	2024-04-19
6494	28	1	2024-10-22
6495	20	3	2024-11-19
6496	163	1	2024-04-12
6497	233	2	2024-11-12
6498	86	1	2024-02-11
6499	357	3	2024-12-11
6500	238	3	2024-12-07
6502	370	3	2024-07-23
6504	308	3	2024-12-02
6505	469	2	2024-02-29
6507	13	3	2024-06-09
6508	380	2	2024-07-16
6509	325	3	2024-07-31
6510	331	3	2024-10-21
6511	387	2	2024-09-20
6512	439	3	2024-12-09
6513	259	1	2024-02-17
6514	401	3	2024-10-04
6515	383	2	2024-05-20
6516	95	3	2024-11-19
6517	306	2	2024-03-06
6518	440	2	2024-11-11
6520	52	1	2024-10-28
6521	316	3	2024-04-28
6522	46	2	2024-02-18
6523	479	3	2024-09-10
6524	125	3	2024-12-20
6525	226	2	2024-05-12
6527	439	2	2024-06-25
6528	420	3	2024-03-26
6529	472	3	2024-02-06
6530	397	2	2024-03-21
6531	107	2	2024-08-20
6532	72	2	2024-09-18
6533	448	3	2024-04-06
6534	298	1	2024-12-29
6536	341	1	2024-09-20
6538	315	2	2024-02-29
6539	429	3	2024-03-01
6540	339	3	2024-06-10
6541	196	3	2024-05-17
6542	222	2	2024-08-09
6543	281	2	2024-09-21
6544	328	2	2024-04-29
6545	437	3	2024-08-30
6546	404	2	2024-02-01
6547	491	2	2024-07-15
6548	240	1	2024-10-12
6549	445	3	2024-06-10
6550	10	2	2024-10-03
6551	393	2	2024-08-30
6552	24	3	2024-05-15
6553	428	2	2024-09-07
6554	404	2	2024-04-24
6555	236	1	2024-10-29
6556	302	2	2024-02-26
6557	229	1	2024-09-15
6558	28	1	2024-11-05
6559	106	2	2024-12-03
6560	31	2	2024-09-11
6561	195	2	2024-10-05
6562	172	3	2024-08-22
6563	489	2	2024-04-21
6564	311	3	2024-02-05
6565	17	3	2024-06-29
6567	168	1	2024-11-02
6568	368	2	2024-12-13
6569	149	3	2024-10-23
6570	386	2	2024-08-24
6571	481	3	2024-08-17
6572	41	3	2024-11-09
6573	440	2	2024-08-23
6574	182	3	2024-07-07
6575	136	2	2024-12-04
6576	67	3	2024-06-16
6577	117	1	2024-04-15
6578	270	1	2024-06-06
6579	277	3	2024-09-24
6580	44	3	2024-05-13
6581	467	3	2024-08-24
6582	97	2	2024-03-19
6583	28	2	2024-11-24
6584	430	1	2024-07-05
6585	153	1	2024-10-19
6586	200	1	2024-09-26
6587	66	1	2024-07-27
6588	139	1	2024-06-15
6590	438	2	2024-08-11
6591	267	1	2024-02-27
6592	178	2	2024-11-22
6593	267	3	2024-10-21
6594	86	2	2024-05-03
6595	133	2	2024-07-26
6596	63	2	2024-07-30
6597	207	1	2024-05-31
6598	394	1	2024-08-26
6599	285	3	2024-12-24
6600	237	2	2024-03-26
6601	499	1	2024-02-25
6602	141	1	2024-12-19
6603	227	1	2024-05-02
6605	411	1	2024-10-02
6607	169	3	2024-04-11
6608	108	3	2024-12-22
6609	266	3	2024-02-28
6610	148	1	2024-05-19
6611	230	3	2024-03-19
6613	162	1	2024-10-13
6614	109	1	2024-02-21
6615	447	1	2024-09-17
6616	246	3	2024-05-07
6617	394	1	2024-10-19
6618	255	2	2024-11-02
6619	350	3	2024-09-16
6620	470	3	2024-08-14
6621	207	1	2024-04-24
6622	290	3	2024-02-10
6623	245	2	2024-07-18
6625	74	3	2024-12-07
6627	267	3	2024-05-19
6628	94	3	2024-06-13
6629	254	2	2024-12-03
6630	87	2	2024-09-30
6631	38	1	2024-05-22
6632	322	3	2024-02-24
6633	222	1	2024-03-04
6634	166	1	2024-02-16
6635	247	3	2024-05-25
6636	418	2	2024-10-25
6637	433	1	2024-10-28
6638	422	3	2024-04-01
6639	129	1	2024-09-05
6640	117	1	2024-02-15
6641	232	1	2024-09-09
6642	56	3	2024-08-02
6643	6	2	2024-12-11
6644	236	1	2024-07-31
6646	124	3	2024-02-17
6647	232	1	2024-11-08
6648	218	2	2024-02-05
6650	282	2	2024-06-08
6651	240	1	2024-05-25
6652	27	1	2024-10-05
6653	340	3	2024-11-15
6654	496	2	2024-10-23
6655	218	1	2024-03-13
6656	77	1	2024-06-01
6657	425	3	2024-05-06
6658	480	3	2024-03-06
6659	473	3	2024-12-20
6660	230	2	2024-10-08
6661	360	3	2024-08-26
6663	249	2	2024-05-05
6664	472	1	2024-05-01
6665	482	2	2024-03-26
6667	500	3	2024-11-05
6668	384	2	2024-07-09
6669	348	1	2024-02-09
6670	266	3	2024-11-20
6671	378	2	2024-05-30
6672	257	3	2024-06-11
6673	337	2	2024-02-28
6674	37	3	2024-06-20
6675	39	2	2024-04-02
6676	261	2	2024-06-27
6677	440	1	2024-04-23
6678	423	2	2024-10-03
6679	490	2	2024-04-09
6680	39	3	2024-04-21
6681	433	2	2024-08-30
6683	214	3	2024-08-06
6684	58	1	2024-05-20
6685	446	2	2024-11-04
6686	119	2	2024-04-18
6687	464	2	2024-03-09
6688	183	3	2024-03-25
6689	322	3	2024-06-24
6691	271	2	2024-06-10
6692	408	2	2024-08-04
6693	119	1	2024-07-20
6694	343	2	2024-06-08
6695	170	3	2024-11-06
6696	415	3	2024-12-09
6697	342	3	2024-08-14
6698	371	2	2024-05-31
6699	374	2	2024-05-09
6700	124	2	2024-11-10
6701	194	2	2024-03-03
6702	135	3	2024-09-18
6703	166	2	2024-07-12
6704	17	3	2024-03-29
6705	221	3	2024-03-11
6706	383	1	2024-07-24
6707	172	3	2024-02-21
6709	284	2	2024-05-26
6710	462	3	2024-10-19
6711	168	1	2024-12-19
6712	385	1	2024-02-22
6713	330	1	2024-06-14
6714	228	3	2024-04-21
6715	36	1	2024-03-04
6716	324	1	2024-04-13
6717	255	2	2024-12-10
6718	421	1	2024-11-01
6719	330	2	2024-11-17
6720	182	2	2024-09-08
6721	34	2	2024-07-13
6722	102	3	2024-08-05
6723	323	2	2024-03-28
6724	143	1	2024-08-10
6725	203	1	2024-04-26
6726	456	1	2024-11-04
6727	65	3	2024-03-20
6728	140	3	2024-11-11
6729	274	3	2024-07-14
6730	405	2	2024-04-09
6731	233	1	2024-06-29
6732	135	1	2024-12-16
6733	466	2	2024-11-02
6734	68	3	2024-03-03
6735	164	1	2024-03-12
6736	465	1	2024-12-22
6737	242	3	2024-04-21
6738	336	3	2024-05-12
6740	376	1	2024-04-09
6741	211	3	2024-04-18
6743	123	2	2024-07-03
6744	372	1	2024-02-05
6745	477	3	2024-10-13
6746	324	3	2024-09-17
6747	331	1	2024-08-03
6748	240	1	2024-05-19
6749	384	1	2024-07-10
6750	347	1	2024-04-05
6751	362	2	2024-11-02
6752	18	3	2024-10-18
6753	159	2	2024-04-22
6755	446	2	2024-06-16
6756	195	3	2024-07-08
6757	460	2	2024-06-07
6758	403	3	2024-07-19
6759	178	1	2024-07-21
6760	192	2	2024-09-14
6761	215	3	2024-12-28
6762	64	1	2024-12-03
6763	174	1	2024-06-11
6764	391	3	2024-05-21
6765	44	3	2024-06-12
6766	348	1	2024-11-05
6767	431	3	2024-07-20
6768	92	3	2024-05-20
6769	209	1	2024-07-12
6770	412	2	2024-12-25
6771	297	1	2024-09-13
6772	354	1	2024-05-15
6773	301	3	2024-10-16
6774	401	1	2024-11-23
6775	48	3	2024-12-27
6776	116	1	2024-10-31
6777	403	2	2024-05-09
6778	432	3	2024-09-26
6779	384	3	2024-04-25
6780	405	2	2024-08-19
6781	203	3	2024-05-10
6782	217	3	2024-05-13
6783	234	3	2024-11-27
6784	6	2	2024-02-04
6786	38	2	2024-06-03
6787	293	1	2024-04-26
6788	26	2	2024-04-20
6789	49	3	2024-02-07
6790	337	3	2024-12-22
6792	376	1	2024-08-04
6793	80	3	2024-12-05
6795	389	3	2024-03-24
6796	50	1	2024-05-28
6797	389	1	2024-11-07
6798	209	3	2024-03-22
6799	494	1	2024-05-31
6800	437	3	2024-11-19
6801	387	1	2024-12-19
6802	426	2	2024-03-09
6803	38	2	2024-07-31
6804	403	1	2024-10-07
6805	114	2	2024-03-29
6806	468	1	2024-04-08
6807	442	1	2024-10-03
6808	349	2	2024-03-30
6809	184	1	2024-09-08
6810	166	1	2024-11-21
6811	252	3	2024-10-28
6812	162	2	2024-10-09
6814	274	2	2024-07-08
6816	390	3	2024-09-12
6817	279	3	2024-11-03
6818	253	1	2024-07-14
6819	429	3	2024-04-10
6820	183	2	2024-11-17
6821	349	1	2024-07-10
6822	311	3	2024-03-29
6823	325	2	2024-06-13
6824	299	1	2024-03-25
6825	270	3	2024-08-08
6826	318	3	2024-03-21
6827	479	3	2024-11-20
6828	388	2	2024-08-30
6829	322	2	2024-08-19
6830	335	3	2024-09-03
6831	81	1	2024-05-05
6832	360	3	2024-10-23
6833	468	2	2024-03-27
6834	210	3	2024-08-23
6835	415	3	2024-04-02
6836	360	3	2024-12-02
6837	97	1	2024-09-04
6838	161	1	2024-08-12
6839	402	3	2024-04-22
6840	46	2	2024-10-09
6841	279	3	2024-02-27
6842	61	1	2024-12-02
6843	150	2	2024-12-05
6844	122	2	2024-04-16
6845	285	2	2024-06-28
6846	278	1	2024-08-26
6847	245	2	2024-07-20
6848	157	2	2024-08-24
6849	472	1	2024-07-11
6850	493	2	2024-04-14
6852	138	1	2024-12-22
6853	110	3	2024-09-27
6854	490	3	2024-08-06
6855	138	3	2024-11-02
6856	149	2	2024-08-11
6857	433	3	2024-04-09
6858	312	1	2024-12-03
6859	8	2	2024-11-26
6860	246	2	2024-07-18
6861	166	2	2024-12-26
6862	267	1	2024-08-23
6863	18	2	2024-10-12
6864	13	1	2024-05-25
6865	476	1	2024-03-06
6866	333	1	2024-09-28
6867	158	1	2024-09-06
6868	395	1	2024-02-28
6869	287	3	2024-05-04
6870	294	3	2024-04-04
6872	29	2	2024-06-29
6873	341	1	2024-09-04
6874	40	1	2024-10-03
6875	29	1	2024-04-21
6876	91	3	2024-03-22
6877	213	1	2024-05-15
6878	15	1	2024-03-07
6879	416	3	2024-06-26
6880	384	3	2024-03-11
6881	285	1	2024-02-08
6882	157	1	2024-07-10
6883	158	3	2024-07-24
6884	71	2	2024-03-10
6885	123	2	2024-07-11
6886	231	3	2024-03-20
6887	49	3	2024-12-31
6888	338	1	2024-05-28
6889	346	2	2024-09-15
6890	47	3	2024-03-21
6891	461	2	2024-10-30
6892	485	2	2024-10-12
6893	49	1	2024-03-24
6894	288	1	2024-12-12
6895	55	2	2024-12-03
6896	216	3	2024-08-02
6897	383	1	2024-08-02
6898	145	2	2024-02-05
6899	145	3	2024-08-16
6900	112	1	2024-10-02
6901	261	2	2024-09-17
6902	472	3	2024-04-22
6903	244	3	2024-08-30
6904	325	3	2024-03-26
6905	333	1	2024-09-10
6907	293	2	2024-08-23
6908	137	3	2024-12-12
6909	452	3	2024-05-10
6910	141	1	2024-05-15
6911	459	3	2024-11-05
6913	357	3	2024-09-10
6914	149	1	2024-08-13
6916	471	2	2024-05-09
6917	37	3	2024-06-26
6918	125	3	2024-12-05
6919	115	3	2024-08-30
6920	174	2	2024-08-30
6921	220	3	2024-08-28
6922	65	2	2024-03-30
6925	125	1	2024-08-28
6926	341	3	2024-05-26
6927	151	3	2024-12-03
6929	491	3	2024-04-09
6930	301	3	2024-05-25
6931	268	2	2024-06-21
6932	45	2	2024-06-20
6933	238	3	2024-02-18
6934	408	2	2024-02-16
6935	116	3	2024-02-04
6936	39	3	2024-08-10
6937	390	1	2024-09-10
6938	110	2	2024-12-18
6939	491	2	2024-06-23
6940	194	2	2024-03-01
6941	255	2	2024-02-01
6942	15	2	2024-06-13
6943	2	1	2024-06-15
6944	7	2	2024-06-01
6945	68	3	2024-09-24
6946	30	3	2024-05-12
6947	482	1	2024-07-01
6948	27	3	2024-02-11
6949	149	1	2024-06-18
6951	236	3	2024-06-30
6952	357	3	2024-12-17
6953	315	2	2024-07-15
6954	271	3	2024-12-08
6956	78	2	2024-05-17
6957	54	3	2024-05-28
6958	440	3	2024-10-26
6959	104	1	2024-02-18
6960	418	3	2024-10-04
6962	320	1	2024-11-11
6963	461	1	2024-11-02
6964	113	2	2024-10-28
6965	352	3	2024-10-15
6967	47	2	2024-05-01
6968	198	2	2024-08-06
6969	418	3	2024-03-23
6970	337	2	2024-02-03
6971	78	1	2024-10-10
6972	470	1	2024-10-29
6973	162	2	2024-05-29
6975	286	1	2024-03-04
6976	87	1	2024-12-03
6977	407	3	2024-05-01
6978	263	1	2024-09-28
6979	24	2	2024-08-09
6980	423	3	2024-07-24
6982	62	3	2024-03-14
6983	334	3	2024-07-23
6984	32	1	2024-02-14
6986	493	3	2024-02-13
6987	276	1	2024-10-10
6988	92	1	2024-10-19
6989	389	1	2024-12-02
6990	431	3	2024-09-13
6991	334	3	2024-09-29
6992	382	3	2024-09-15
6993	390	2	2024-12-30
6994	437	2	2024-10-23
6995	153	2	2024-09-24
6996	18	3	2024-12-24
6997	40	3	2024-08-15
6998	206	2	2024-06-08
6999	393	1	2024-04-13
7000	79	3	2024-03-03
7001	231	1	2024-07-11
7002	97	2	2024-11-24
7003	466	1	2024-11-27
7004	411	2	2024-06-11
7005	4	3	2024-07-16
7006	161	1	2024-11-12
7007	366	1	2024-08-19
7008	186	2	2024-10-02
7009	244	1	2024-07-24
7010	389	1	2024-04-03
7011	327	3	2024-04-05
7013	59	1	2024-04-03
7014	454	1	2024-02-19
7015	436	1	2024-07-28
7016	274	1	2024-06-21
7017	301	1	2024-06-07
7018	238	2	2024-05-15
7019	8	2	2024-08-24
7020	481	3	2024-10-04
7021	415	1	2024-12-28
7022	161	2	2024-07-22
7023	274	3	2024-09-02
7024	189	2	2024-07-29
7026	191	1	2024-08-12
7028	485	1	2024-04-16
7029	264	2	2024-07-27
7030	317	3	2024-06-10
7031	319	1	2024-11-29
7032	207	2	2024-06-05
7034	27	3	2024-05-27
7037	369	3	2024-09-10
7038	266	1	2024-05-03
7039	100	2	2024-07-08
7040	341	1	2024-07-22
7041	451	1	2024-10-24
7042	354	3	2024-03-16
7043	356	2	2024-06-16
7044	287	2	2024-11-30
7045	119	3	2024-02-26
7046	319	1	2024-05-31
7047	376	2	2024-10-08
7048	131	2	2024-05-09
7049	364	1	2024-07-04
7050	349	1	2024-02-24
7051	331	3	2024-12-07
7052	419	3	2024-09-19
7053	443	2	2024-02-25
7054	4	1	2024-08-31
7055	247	1	2024-10-28
7057	82	2	2024-08-10
7058	44	2	2024-05-04
7059	169	1	2024-06-16
7060	407	3	2024-02-07
7061	368	1	2024-11-14
7062	288	3	2024-12-02
7063	409	1	2024-10-13
7064	427	1	2024-03-26
7065	453	3	2024-12-29
7066	116	2	2024-05-14
7067	379	1	2024-08-15
7068	74	3	2024-03-23
7069	455	3	2024-08-19
7070	89	3	2024-02-17
7071	329	3	2024-07-29
7072	59	1	2024-09-10
7073	40	2	2024-06-13
7074	329	1	2024-07-09
7075	261	3	2024-05-16
7076	132	2	2024-09-22
7077	49	2	2024-10-11
7078	412	3	2024-11-21
7079	59	2	2024-02-21
7080	122	2	2024-05-27
7081	421	1	2024-04-24
7082	213	3	2024-12-10
7083	227	1	2024-10-14
7084	72	1	2024-05-29
7086	46	2	2024-11-10
7087	242	1	2024-05-31
7089	10	1	2024-02-09
7090	190	3	2024-07-16
7091	170	1	2024-11-15
7092	114	3	2024-11-15
7093	394	2	2024-10-04
7094	357	2	2024-09-10
7095	246	3	2024-04-05
7096	405	1	2024-11-03
7097	390	2	2024-12-19
7098	424	3	2024-07-01
7099	122	3	2024-07-24
7100	14	3	2024-02-21
7101	473	1	2024-09-24
7102	306	1	2024-12-20
7103	262	1	2024-08-21
7104	305	2	2024-10-13
7105	443	1	2024-06-25
7107	434	2	2024-02-15
7109	87	1	2024-12-25
7110	224	3	2024-10-15
7111	243	3	2024-08-27
7112	151	3	2024-03-08
7113	99	3	2024-08-04
7114	256	2	2024-03-16
7115	359	1	2024-12-02
7116	357	2	2024-03-11
7117	82	3	2024-11-23
7118	148	3	2024-12-24
7119	453	3	2024-08-10
7120	71	1	2024-08-02
7122	395	3	2024-02-12
7123	355	2	2024-05-02
7124	150	3	2024-03-20
7126	97	3	2024-02-20
7127	459	1	2024-10-21
7128	264	2	2024-05-13
7129	153	1	2024-03-05
7130	413	2	2024-05-04
7131	356	2	2024-04-07
7132	210	3	2024-03-06
7133	4	2	2024-09-27
7134	186	3	2024-02-25
7136	306	2	2024-10-24
7137	459	3	2024-06-04
7138	98	3	2024-08-13
7139	44	2	2024-02-18
7140	86	1	2024-04-10
7141	410	3	2024-09-26
7142	485	3	2024-07-18
7143	372	3	2024-02-21
7144	15	2	2024-10-25
7145	161	3	2024-11-15
7146	197	3	2024-03-09
7147	406	1	2024-03-14
7148	464	2	2024-03-04
7149	314	1	2024-02-05
7150	344	1	2024-10-31
7151	372	3	2024-11-14
7152	360	1	2024-09-01
7154	158	2	2024-10-19
7155	236	2	2024-06-05
7156	456	3	2024-02-03
7157	342	3	2024-11-21
7159	471	2	2024-04-30
7160	206	1	2024-07-26
7161	125	3	2024-10-24
7162	286	1	2024-08-04
7163	34	2	2024-03-24
7164	494	1	2024-02-05
7165	37	2	2024-05-05
7167	409	3	2024-07-16
7168	178	2	2024-12-30
7169	448	3	2024-04-25
7171	467	3	2024-11-25
7173	193	2	2024-10-06
7175	380	1	2024-11-20
7176	297	1	2024-03-18
7177	331	3	2024-10-09
7178	398	3	2024-03-30
7179	473	3	2024-03-31
7180	256	1	2024-09-04
7181	233	2	2024-09-12
7182	467	3	2024-02-26
7183	169	1	2024-11-15
7184	311	2	2024-11-17
7185	226	1	2024-10-18
7186	413	3	2024-06-09
7187	25	1	2024-03-09
7188	485	2	2024-09-30
7189	340	1	2024-12-01
7190	109	2	2024-06-02
7192	233	2	2024-04-14
7193	28	1	2024-02-29
7194	320	3	2024-09-10
7196	360	1	2024-07-10
7197	65	2	2024-10-22
7198	485	2	2024-04-09
7200	341	1	2024-12-08
7202	259	2	2024-04-01
7203	259	2	2024-06-04
7204	376	1	2024-06-08
7205	324	3	2024-06-23
7206	314	1	2024-09-23
7207	120	2	2024-06-12
7208	384	1	2024-04-30
7209	177	2	2024-05-07
7210	31	2	2024-02-01
7211	236	3	2024-10-27
7212	398	2	2024-06-14
7213	416	1	2024-05-19
7214	307	1	2024-02-11
7215	314	1	2024-03-24
7216	86	1	2024-10-15
7217	227	1	2024-12-14
7218	56	3	2024-05-04
7219	483	2	2024-12-28
7220	444	1	2024-07-11
7221	463	2	2024-11-09
7222	203	3	2024-03-02
7224	260	1	2024-03-02
7225	149	2	2024-07-22
7226	197	1	2024-05-10
7227	243	2	2024-09-03
7230	439	2	2024-07-25
7231	129	1	2024-10-24
7232	291	3	2024-12-31
7233	336	3	2024-02-11
7234	299	1	2024-07-16
7235	298	2	2024-05-03
7236	420	2	2024-02-18
7237	492	3	2024-06-10
7240	448	1	2024-06-28
7241	129	1	2024-11-26
7242	170	3	2024-02-29
7243	247	3	2024-11-11
7244	376	2	2024-08-29
7245	403	3	2024-06-13
7246	5	2	2024-11-18
7247	249	3	2024-07-07
7248	417	1	2024-04-08
7249	225	1	2024-08-18
7250	58	1	2024-09-19
7251	473	1	2024-12-28
7252	43	2	2024-10-02
7253	79	1	2024-03-12
7254	484	3	2024-11-10
7255	185	2	2024-06-14
7256	297	1	2024-04-14
7257	155	1	2024-12-26
7258	4	2	2024-03-24
7259	107	1	2024-05-13
7260	332	1	2024-12-07
7261	261	2	2024-12-05
7262	254	1	2024-08-06
7263	489	3	2024-08-07
7264	185	2	2024-07-04
7265	255	1	2024-08-08
7266	311	1	2024-07-19
7267	92	3	2024-07-06
7268	256	2	2024-10-21
7269	201	3	2024-03-02
7270	420	2	2024-07-07
7271	400	1	2024-10-13
7272	44	2	2024-10-14
7273	13	2	2024-06-18
7274	433	3	2024-02-17
7276	106	2	2024-05-07
7277	172	2	2024-04-05
7278	408	2	2024-05-29
7279	30	2	2024-03-02
7280	282	2	2024-03-04
7281	299	1	2024-08-23
7282	307	2	2024-11-13
7283	105	1	2024-09-02
7284	152	2	2024-05-26
7285	204	3	2024-06-14
7286	438	2	2024-06-10
7287	10	2	2024-09-03
7289	263	3	2024-04-03
7290	391	3	2024-03-15
7291	106	3	2024-09-06
7292	491	2	2024-02-21
7293	191	2	2024-02-27
7294	380	2	2024-07-17
7295	156	1	2024-08-26
7296	344	2	2024-03-21
7297	390	1	2024-10-09
7298	457	2	2024-05-31
7299	172	3	2024-06-03
7300	308	2	2024-09-19
7302	403	1	2024-08-29
7303	49	3	2024-08-17
7304	303	1	2024-03-10
7305	342	1	2024-09-26
7307	55	3	2024-02-06
7308	351	3	2024-03-16
7310	413	3	2024-03-25
7311	146	1	2024-07-18
7313	199	2	2024-11-30
7314	443	1	2024-06-12
7315	236	1	2024-07-01
7317	377	3	2024-11-01
7318	231	1	2024-08-04
7319	160	1	2024-06-25
7320	445	1	2024-03-05
7321	290	3	2024-02-08
7322	213	2	2024-04-09
7323	231	3	2024-04-19
7324	232	3	2024-11-20
7325	256	2	2024-07-05
7326	75	2	2024-09-05
7327	322	3	2024-10-02
7328	90	3	2024-12-09
7329	51	2	2024-05-29
7331	43	2	2024-06-07
7332	85	1	2024-03-22
7333	302	1	2024-06-22
7334	255	1	2024-04-29
7335	398	2	2024-07-15
7336	135	3	2024-05-14
7337	465	2	2024-09-23
7338	465	1	2024-05-23
7339	191	3	2024-12-23
7340	140	1	2024-11-10
7341	420	2	2024-03-05
7342	284	1	2024-11-18
7343	367	2	2024-08-05
7344	293	3	2024-11-20
7345	480	3	2024-11-21
7346	310	1	2024-09-19
7347	289	2	2024-12-16
7348	361	2	2024-07-31
7349	323	3	2024-03-31
7350	105	1	2024-08-25
7351	43	1	2024-12-29
7352	368	3	2024-10-29
7353	30	2	2024-07-31
7354	437	2	2024-11-12
7355	21	3	2024-12-25
7356	338	3	2024-04-25
7357	328	2	2024-07-30
7358	456	2	2024-07-25
7359	175	3	2024-06-27
7360	246	2	2024-05-04
7361	63	1	2024-08-07
7362	262	2	2024-04-24
7363	342	1	2024-12-24
7365	227	2	2024-09-08
7366	226	1	2024-06-02
7367	258	3	2024-11-24
7368	381	3	2024-08-17
7369	26	2	2024-06-20
7370	358	2	2024-11-20
7371	283	3	2024-07-15
7372	71	2	2024-10-28
7373	373	3	2024-03-26
7374	54	1	2024-06-28
7375	39	2	2024-07-25
7376	294	3	2024-10-05
7377	289	1	2024-08-09
7379	160	3	2024-07-13
7381	366	3	2024-03-27
7382	356	2	2024-11-19
7383	197	1	2024-08-04
7384	500	2	2024-08-10
7385	198	2	2024-07-01
7386	396	3	2024-07-07
7387	401	1	2024-11-28
7388	403	3	2024-04-02
7389	50	2	2024-12-18
7390	371	2	2024-12-08
7391	51	3	2024-12-08
7392	29	3	2024-03-21
7394	116	1	2024-05-28
7395	277	3	2024-11-04
7396	155	1	2024-09-09
7397	269	1	2024-12-12
7398	287	2	2024-08-12
7399	454	3	2024-05-10
7400	461	1	2024-12-27
7401	291	3	2024-06-12
7402	466	1	2024-05-08
7403	163	1	2024-12-12
7404	294	3	2024-12-02
7405	464	1	2024-02-12
7406	100	1	2024-05-17
7407	454	3	2024-07-28
7408	48	1	2024-06-22
7411	257	2	2024-12-17
7412	108	2	2024-09-17
7413	346	1	2024-02-16
7414	494	1	2024-07-08
7416	317	3	2024-04-05
7417	450	1	2024-09-25
7418	181	2	2024-06-14
7419	281	3	2024-12-06
7420	317	2	2024-07-21
7421	107	3	2024-03-13
7422	340	3	2024-07-17
7423	45	1	2024-09-13
7424	62	1	2024-07-22
7425	361	2	2024-04-20
7426	180	2	2024-05-15
7427	59	3	2024-09-26
7428	479	3	2024-03-11
7429	396	2	2024-10-03
7430	449	3	2024-07-29
7431	124	3	2024-12-10
7433	29	2	2024-11-02
7434	108	1	2024-11-20
7435	114	1	2024-06-21
7436	92	3	2024-04-27
7437	479	3	2024-09-26
7438	168	3	2024-12-11
7439	172	1	2024-05-12
7440	26	2	2024-11-02
7441	386	1	2024-06-20
7442	455	2	2024-08-06
7443	202	1	2024-08-14
7445	413	1	2024-07-09
7446	109	3	2024-11-10
7447	386	3	2024-11-16
7448	287	2	2024-04-18
7449	462	3	2024-11-22
7450	129	3	2024-12-13
7451	116	2	2024-08-03
7452	476	2	2024-04-01
7453	341	3	2024-06-03
7454	14	3	2024-12-06
7455	152	3	2024-10-28
7456	92	2	2024-12-07
7458	161	3	2024-07-09
7459	218	2	2024-05-04
7460	141	2	2024-10-05
7461	125	2	2024-09-21
7462	98	2	2024-10-14
7463	465	1	2024-06-10
7464	454	3	2024-12-11
7465	63	3	2024-05-21
7466	249	1	2024-11-01
7467	243	3	2024-04-15
7468	5	2	2024-03-13
7469	372	1	2024-04-30
7470	36	2	2024-08-19
7471	303	1	2024-10-14
7472	450	1	2024-11-08
7473	226	1	2024-02-06
7474	173	3	2024-02-21
7475	57	1	2024-05-25
7476	49	2	2024-02-11
7477	298	3	2024-09-23
7478	165	1	2024-05-06
7479	340	1	2024-03-03
7480	345	1	2024-02-19
7481	186	2	2024-03-20
7484	374	3	2024-07-09
7485	79	3	2024-04-12
7486	74	1	2024-08-27
7487	413	3	2024-12-26
7488	304	2	2024-08-02
7489	111	3	2024-04-14
7490	412	2	2024-02-03
7491	259	1	2024-10-06
7492	26	1	2024-12-21
7493	274	2	2024-09-17
7494	18	2	2024-05-31
7495	184	3	2024-08-21
7496	300	3	2024-11-07
7497	203	2	2024-07-01
7498	353	1	2024-11-22
7499	393	2	2024-09-04
7501	272	2	2024-08-28
7502	231	1	2024-02-14
7503	337	2	2024-06-22
7504	416	3	2024-07-21
7505	38	3	2024-04-05
7506	20	2	2024-05-28
7507	39	2	2024-09-23
7508	223	1	2024-11-28
7509	302	3	2024-05-11
7510	286	1	2024-06-30
7511	320	1	2024-03-28
7512	65	1	2024-03-18
7513	236	1	2024-05-19
7514	26	1	2024-03-06
7516	212	3	2024-09-22
7517	17	2	2024-03-30
7518	152	2	2024-02-29
7519	315	1	2024-04-29
7520	142	1	2024-09-19
7521	490	1	2024-06-17
7522	13	2	2024-08-15
7523	459	1	2024-09-16
7524	89	3	2024-03-09
7525	290	3	2024-05-27
7526	195	1	2024-03-10
7527	336	2	2024-04-21
7528	461	3	2024-02-08
7529	146	2	2024-04-30
7530	269	3	2024-05-21
7531	141	2	2024-05-03
7532	186	1	2024-12-10
7533	133	2	2024-04-03
7534	301	3	2024-06-27
7535	177	1	2024-05-24
7536	65	3	2024-12-21
7537	108	2	2024-10-25
7538	112	3	2024-04-20
7540	148	1	2024-02-24
7542	189	2	2024-12-07
7543	254	2	2024-09-21
7544	433	1	2024-06-06
7545	117	2	2024-05-11
7546	463	3	2024-08-03
7547	86	3	2024-10-18
7548	499	2	2024-08-31
7549	483	3	2024-02-29
7550	71	1	2024-02-26
7551	406	1	2024-08-14
7552	330	2	2024-09-10
7553	9	3	2024-10-17
7554	257	1	2024-08-26
7555	88	1	2024-12-15
7556	185	1	2024-12-17
7557	109	1	2024-10-16
7558	240	3	2024-09-10
7559	92	3	2024-12-29
7560	327	3	2024-05-19
7561	160	3	2024-08-05
7562	74	1	2024-09-09
7563	78	1	2024-04-05
7564	138	2	2024-03-19
7565	157	2	2024-02-11
7566	326	3	2024-07-26
7567	147	3	2024-05-16
7568	114	2	2024-11-09
7569	381	1	2024-03-02
7570	228	3	2024-12-14
7571	28	2	2024-04-12
7572	421	3	2024-03-31
7573	244	1	2024-11-15
7575	333	1	2024-06-11
7576	412	2	2024-06-29
7577	361	1	2024-10-31
7578	203	1	2024-03-06
7579	122	2	2024-12-13
7580	360	2	2024-11-21
7582	449	1	2024-10-15
7583	136	2	2024-03-05
7584	140	2	2024-11-09
7585	455	2	2024-08-20
7586	328	1	2024-11-20
7587	6	2	2024-09-21
7588	449	2	2024-11-07
7589	483	1	2024-09-24
7590	216	1	2024-02-16
7591	158	3	2024-10-15
7592	428	1	2024-09-30
7593	183	3	2024-09-29
7594	74	2	2024-05-27
7595	337	3	2024-05-22
7596	217	2	2024-03-17
7597	13	3	2024-05-23
7599	477	1	2024-11-29
7600	14	1	2024-09-19
7601	379	3	2024-10-13
7602	236	3	2024-03-05
7603	466	1	2024-08-23
7604	295	3	2024-02-10
7606	47	3	2024-02-22
7607	241	3	2024-12-30
7608	360	1	2024-07-12
7609	221	1	2024-04-06
7611	69	1	2024-11-14
7612	449	2	2024-03-19
7613	370	1	2024-04-28
7614	449	1	2024-03-17
7615	18	1	2024-05-17
7616	210	3	2024-07-13
7617	319	3	2024-12-15
7618	218	2	2024-08-30
7619	58	3	2024-06-26
7621	302	2	2024-08-05
7622	273	1	2024-06-25
7623	46	3	2024-11-23
7624	4	3	2024-10-03
7625	27	1	2024-09-14
7626	24	1	2024-10-18
7627	168	2	2024-07-27
7628	77	3	2024-07-03
7630	410	1	2024-06-13
7631	228	3	2024-03-21
7632	178	2	2024-10-06
7633	270	2	2024-12-02
7634	330	1	2024-12-10
7635	247	1	2024-10-25
7636	128	1	2024-02-28
7637	361	1	2024-12-19
7638	122	3	2024-02-29
7640	396	2	2024-07-23
7641	305	2	2024-05-21
7642	259	2	2024-08-22
7643	407	3	2024-06-08
7644	99	3	2024-11-16
7645	250	1	2024-12-12
7646	142	3	2024-06-14
7647	477	3	2024-10-03
7648	95	1	2024-04-25
7649	53	3	2024-12-11
7650	357	3	2024-11-25
7651	155	3	2024-07-23
7652	135	2	2024-08-04
7653	187	1	2024-02-19
7654	339	1	2024-02-01
7655	209	1	2024-05-15
7656	300	3	2024-08-11
7657	430	1	2024-06-08
7658	125	3	2024-06-17
7659	72	3	2024-05-29
7660	265	3	2024-08-15
7661	232	1	2024-09-18
7662	129	2	2024-06-16
7663	72	2	2024-02-25
7664	143	1	2024-11-04
7665	62	2	2024-07-04
7666	65	3	2024-07-09
7667	363	2	2024-09-26
7669	346	2	2024-04-16
7670	250	3	2024-12-26
7672	5	1	2024-11-09
7673	111	2	2024-08-30
7674	78	3	2024-02-21
7675	132	2	2024-08-22
7676	451	2	2024-05-11
7677	194	1	2024-10-18
7678	251	1	2024-05-27
7679	183	1	2024-06-04
7680	184	2	2024-10-14
7681	321	3	2024-12-10
7682	389	3	2024-10-24
7683	313	3	2024-12-24
7684	356	2	2024-08-10
7685	296	3	2024-12-05
7687	57	3	2024-10-14
7688	238	3	2024-07-05
7689	195	1	2024-02-27
7690	442	2	2024-04-05
7691	100	2	2024-05-28
7692	315	1	2024-12-22
7693	200	1	2024-11-23
7694	447	3	2024-04-11
7695	496	3	2024-10-11
7696	194	2	2024-10-17
7697	377	1	2024-11-01
7698	191	1	2024-12-25
7699	3	1	2024-04-01
7700	441	3	2024-09-18
7701	174	3	2024-03-21
7702	52	2	2024-07-31
7703	239	3	2024-05-26
7705	352	2	2024-02-14
7706	383	1	2024-11-14
7707	20	3	2024-10-09
7708	244	3	2024-09-25
7709	173	3	2024-02-04
7710	403	2	2024-07-02
7711	393	1	2024-12-02
7712	357	1	2024-07-21
7713	153	2	2024-12-23
7714	362	3	2024-02-16
7715	37	2	2024-08-15
7716	391	3	2024-04-08
7717	372	3	2024-10-20
7718	358	1	2024-08-14
7719	365	1	2024-12-17
7721	406	2	2024-05-06
7722	282	2	2024-04-29
7724	34	1	2024-12-18
7725	39	2	2024-06-25
7726	430	2	2024-03-05
7727	11	2	2024-10-18
7729	293	3	2024-04-21
7730	319	1	2024-04-26
7731	89	1	2024-06-25
7732	431	2	2024-05-01
7733	139	2	2024-04-27
7734	408	2	2024-03-11
7735	141	2	2024-03-23
7736	371	1	2024-11-12
7737	299	1	2024-09-03
7738	420	1	2024-07-28
7739	85	1	2024-09-25
7740	37	1	2024-12-25
7741	135	1	2024-06-03
7742	236	1	2024-10-27
7743	195	2	2024-07-03
7744	484	3	2024-09-07
7745	296	3	2024-12-26
7746	213	1	2024-02-09
7747	176	1	2024-04-29
7748	325	1	2024-08-24
7749	383	2	2024-11-08
7750	19	3	2024-04-18
7751	418	1	2024-04-22
7752	465	1	2024-06-22
7753	437	2	2024-11-28
7754	21	2	2024-05-26
7755	351	2	2024-03-08
7756	41	2	2024-06-02
7757	407	3	2024-10-07
7758	268	2	2024-10-14
7759	24	3	2024-05-17
7760	55	2	2024-07-03
7761	297	2	2024-06-17
7762	238	2	2024-12-27
7763	383	2	2024-02-28
7764	487	2	2024-08-27
7766	201	1	2024-02-09
7767	119	3	2024-11-09
7768	462	3	2024-11-25
7769	374	2	2024-06-30
7771	137	2	2024-03-17
7772	409	3	2024-11-09
7773	285	2	2024-04-24
7774	364	2	2024-02-25
7775	401	3	2024-09-06
7776	77	3	2024-06-29
7778	460	1	2024-02-14
7779	139	2	2024-12-13
7780	39	2	2024-03-24
7783	50	1	2024-10-28
7784	163	1	2024-11-08
7785	164	1	2024-05-20
7786	45	2	2024-11-04
7787	399	3	2024-12-30
7789	433	1	2024-07-12
7790	72	1	2024-06-16
7791	474	2	2024-03-29
7792	163	1	2024-03-14
7793	128	1	2024-03-20
7794	351	3	2024-06-02
7795	317	2	2024-08-29
7796	386	1	2024-02-04
7797	270	3	2024-09-19
7798	31	3	2024-05-10
7799	273	3	2024-09-10
7800	165	2	2024-04-10
7801	294	3	2024-09-28
7802	349	1	2024-05-10
7803	405	3	2024-12-31
7804	41	3	2024-12-11
7805	300	2	2024-06-20
7806	269	3	2024-05-13
7807	119	3	2024-03-12
7808	121	1	2024-02-05
7810	172	2	2024-09-13
7811	404	1	2024-04-14
7812	161	2	2024-04-11
7813	294	1	2024-07-26
7814	113	3	2024-12-26
7815	275	3	2024-10-13
7816	402	2	2024-08-04
7818	371	2	2024-02-29
7819	21	2	2024-02-02
7820	433	3	2024-10-13
7822	102	1	2024-09-04
7823	214	1	2024-05-01
7824	258	1	2024-05-30
7825	322	1	2024-07-21
7826	153	1	2024-09-28
7827	365	1	2024-10-05
7828	49	3	2024-11-02
7829	301	3	2024-03-03
7830	386	2	2024-06-14
7831	126	3	2024-06-30
7832	492	3	2024-09-17
7833	368	2	2024-02-17
7834	234	2	2024-11-28
7835	318	1	2024-08-03
7836	172	1	2024-09-14
7837	25	2	2024-06-02
7838	98	3	2024-04-23
7840	105	3	2024-05-25
7841	100	1	2024-04-20
7842	384	1	2024-11-27
7843	381	1	2024-03-06
7844	274	1	2024-02-19
7845	356	2	2024-02-22
7846	439	1	2024-07-22
7847	447	2	2024-12-15
7848	443	2	2024-08-22
7849	451	3	2024-11-03
7850	36	1	2024-07-11
7851	89	2	2024-07-14
7852	314	2	2024-07-13
7853	133	3	2024-04-13
7854	224	2	2024-09-25
7857	300	1	2024-04-03
7858	12	3	2024-11-10
7859	179	1	2024-07-13
7860	75	1	2024-10-11
7861	116	2	2024-09-01
7862	424	2	2024-10-27
7863	337	1	2024-11-18
7864	372	3	2024-07-07
7866	86	1	2024-09-08
7868	1	2	2024-03-09
7869	203	3	2024-04-05
7870	165	3	2024-12-15
7872	254	3	2024-10-04
7873	370	3	2024-02-14
7874	208	2	2024-09-01
7875	311	1	2024-09-22
7876	405	1	2024-10-11
7877	26	2	2024-09-20
7878	480	2	2024-12-18
7879	452	2	2024-06-16
7880	234	2	2024-11-19
7881	419	1	2024-07-11
7882	322	3	2024-12-30
7883	2	3	2024-09-09
7884	329	3	2024-09-03
7885	442	3	2024-05-21
7886	278	2	2024-03-03
7887	55	1	2024-05-23
7888	150	3	2024-08-09
7889	337	2	2024-12-11
7891	120	1	2024-07-16
7892	74	2	2024-08-22
7893	206	2	2024-08-30
7894	294	1	2024-08-12
7896	173	1	2024-07-22
7897	417	2	2024-07-20
7898	201	3	2024-02-10
7899	488	1	2024-05-01
7900	125	3	2024-05-11
7901	312	2	2024-07-28
7902	235	2	2024-05-14
7903	159	3	2024-11-19
7904	112	3	2024-02-02
7905	493	2	2024-12-23
7906	18	2	2024-04-17
7907	118	3	2024-08-08
7909	462	3	2024-06-23
7910	497	2	2024-07-08
7911	155	1	2024-08-22
7912	370	1	2024-05-14
7913	431	2	2024-12-20
7914	460	2	2024-06-22
7915	460	2	2024-04-04
7916	53	3	2024-04-17
7917	147	1	2024-08-08
7918	330	3	2024-06-10
7919	80	1	2024-07-25
7920	91	2	2024-11-03
7921	19	2	2024-09-23
7922	273	2	2024-03-08
7923	224	2	2024-10-12
7924	21	1	2024-09-19
7925	63	3	2024-07-12
7926	38	1	2024-05-24
7927	349	1	2024-09-26
7928	34	3	2024-10-12
7929	123	1	2024-04-19
7930	56	1	2024-02-01
7932	220	3	2024-03-11
7934	146	1	2024-02-03
7936	296	1	2024-04-20
7938	397	2	2024-06-10
7939	209	1	2024-08-25
7940	457	2	2024-05-17
7941	331	2	2024-08-25
7942	30	3	2024-02-18
7943	242	1	2024-06-25
7944	16	2	2024-03-24
7945	325	1	2024-09-18
7946	105	2	2024-02-11
7948	132	2	2024-07-18
7950	17	2	2024-04-27
7951	93	3	2024-10-04
7952	136	3	2024-11-10
7953	425	2	2024-12-23
7954	154	2	2024-12-11
7955	1	2	2024-11-09
7956	116	1	2024-11-06
7957	196	2	2024-02-05
7958	310	2	2024-09-15
7959	57	1	2024-10-05
7960	89	3	2024-11-14
7961	277	3	2024-12-28
7962	335	3	2024-08-27
7963	62	1	2024-02-28
7964	56	1	2024-10-23
7965	108	2	2024-07-06
7966	76	1	2024-04-02
7967	327	3	2024-10-22
7968	299	2	2024-07-22
7969	91	1	2024-09-11
7971	40	1	2024-04-06
7972	297	1	2024-11-23
7973	5	3	2024-12-13
7974	451	1	2024-07-15
7975	120	2	2024-03-18
7976	122	1	2024-05-08
7977	482	3	2024-11-04
7978	243	1	2024-12-15
7979	475	3	2024-12-13
7980	106	2	2024-02-04
7981	395	2	2024-08-07
7982	70	1	2024-11-10
7983	86	2	2024-09-01
7984	297	1	2024-05-31
7985	67	2	2024-04-09
7986	398	2	2024-03-30
7988	244	2	2024-06-03
7989	27	3	2024-03-02
7990	167	1	2024-07-31
7992	84	1	2024-09-10
7993	490	2	2024-10-17
7994	157	2	2024-08-29
7995	431	2	2024-04-02
7996	478	2	2024-12-15
7997	487	3	2024-05-16
7998	145	2	2024-09-01
7999	88	1	2024-03-06
8000	408	3	2024-10-11
8001	2	3	2024-05-29
8002	401	1	2024-05-20
8003	93	2	2024-09-11
8004	121	2	2024-05-28
8005	257	2	2024-03-12
8006	425	2	2024-08-31
8007	450	3	2024-02-10
8008	454	2	2024-09-02
8009	255	2	2024-04-12
8010	287	3	2024-08-28
8011	21	1	2024-05-01
8012	303	3	2024-02-15
8013	464	3	2024-06-25
8015	146	1	2024-11-15
8017	164	2	2024-03-25
8018	39	2	2024-08-24
8019	414	2	2024-06-20
8020	48	2	2024-12-20
8021	353	2	2024-12-21
8022	495	2	2024-04-24
8023	67	1	2024-09-14
8024	405	2	2024-10-31
8025	478	1	2024-06-12
8026	231	3	2024-11-14
8027	4	1	2024-08-11
8028	43	1	2024-12-27
8029	199	3	2024-08-14
8030	441	3	2024-11-06
8031	386	2	2024-08-06
8032	375	2	2024-04-29
8033	124	3	2024-12-21
8034	423	3	2024-12-09
8035	254	1	2024-10-20
8036	256	1	2024-05-10
8037	107	2	2024-05-07
8038	37	1	2024-05-28
8039	495	2	2024-11-03
8040	57	1	2024-04-19
8041	350	3	2024-04-21
8042	52	3	2024-10-10
8043	190	2	2024-05-22
8044	73	2	2024-04-14
8045	367	2	2024-07-24
8046	488	2	2024-09-23
8047	246	1	2024-10-24
8049	441	1	2024-11-07
8050	162	1	2024-03-16
8051	187	3	2024-11-21
8052	5	1	2024-02-05
8053	81	3	2024-11-11
8054	134	1	2024-10-08
8055	283	2	2024-03-01
8056	162	1	2024-09-23
8058	15	3	2024-10-25
8059	299	1	2024-11-22
8060	387	3	2024-07-30
8061	400	2	2024-08-03
8062	142	1	2024-05-29
8063	3	1	2024-10-24
8064	187	2	2024-08-09
8066	105	1	2024-12-09
8067	52	3	2024-02-23
8068	358	3	2024-04-01
8069	125	1	2024-06-27
8070	45	2	2024-08-18
8071	296	1	2024-05-24
8072	109	3	2024-02-20
8073	452	1	2024-06-24
8075	219	1	2024-10-04
8076	406	1	2024-07-02
8077	100	2	2024-10-06
8078	384	2	2024-10-13
8079	244	3	2024-08-07
8080	195	2	2024-10-13
8081	237	3	2024-05-04
8082	473	1	2024-04-24
8083	278	3	2024-10-04
8085	25	3	2024-02-11
8086	287	1	2024-06-30
8087	269	2	2024-05-29
8088	303	1	2024-06-24
8089	140	3	2024-05-20
8090	16	3	2024-02-11
8091	354	3	2024-11-19
8092	406	2	2024-04-20
8093	479	2	2024-04-11
8094	303	3	2024-11-11
8095	194	3	2024-03-27
8096	56	2	2024-08-21
8097	289	2	2024-02-03
8098	107	2	2024-07-31
8099	307	2	2024-02-27
8100	182	3	2024-12-07
8101	189	2	2024-06-30
8102	198	3	2024-08-04
8103	190	1	2024-12-08
8104	374	1	2024-08-06
8105	148	2	2024-11-22
8106	265	3	2024-08-17
8107	287	1	2024-10-10
8108	492	2	2024-04-04
8111	361	1	2024-07-30
8112	315	3	2024-08-07
8113	287	1	2024-11-23
8114	232	3	2024-02-24
8115	164	2	2024-02-12
8116	326	3	2024-07-20
8117	496	2	2024-05-29
8118	179	1	2024-02-08
8119	425	2	2024-09-15
8121	171	2	2024-06-08
8122	121	3	2024-05-21
8123	411	3	2024-02-12
8124	341	1	2024-07-21
8125	403	2	2024-02-21
8126	322	1	2024-12-24
8127	153	2	2024-07-29
8128	318	2	2024-11-12
8129	457	2	2024-04-20
8130	20	2	2024-02-06
8131	442	2	2024-03-08
8132	114	1	2024-02-02
8133	172	2	2024-11-23
8135	438	2	2024-06-19
8136	281	2	2024-10-23
8137	235	3	2024-03-20
8138	17	1	2024-06-28
8139	93	2	2024-02-23
8140	39	2	2024-03-15
8141	430	1	2024-05-24
8142	106	2	2024-06-05
8143	139	3	2024-05-25
8144	353	1	2024-08-20
8145	223	2	2024-12-13
8146	167	2	2024-06-08
8147	285	2	2024-03-30
8149	332	3	2024-02-12
8150	257	1	2024-09-01
8151	256	3	2024-05-07
8152	283	1	2024-12-23
8153	78	2	2024-03-31
8154	275	2	2024-09-20
8155	43	2	2024-08-17
8156	307	2	2024-11-12
8157	91	1	2024-02-12
8158	116	3	2024-07-23
8159	137	3	2024-03-27
8160	348	1	2024-12-08
8161	75	2	2024-05-13
8162	232	3	2024-03-25
8164	420	2	2024-07-08
8165	327	1	2024-07-29
8166	456	3	2024-11-28
8167	70	1	2024-04-09
8168	383	2	2024-12-11
8169	347	2	2024-12-15
8170	418	3	2024-11-10
8171	6	2	2024-05-22
8172	90	1	2024-02-04
8173	260	2	2024-05-25
8174	341	3	2024-12-30
8175	238	2	2024-09-23
8176	281	1	2024-02-15
8177	277	2	2024-06-29
8178	447	3	2024-11-13
8179	220	2	2024-09-09
8180	164	1	2024-03-24
8181	495	1	2024-03-30
8182	250	3	2024-03-20
8183	152	2	2024-04-20
8184	3	2	2024-03-06
8185	106	1	2024-08-01
8186	95	2	2024-02-29
8187	338	2	2024-06-02
8188	301	3	2024-08-11
8189	405	1	2024-12-30
8190	51	3	2024-02-27
8191	149	3	2024-07-23
8192	196	1	2024-12-04
8193	115	3	2024-12-14
8194	196	3	2024-10-10
8195	281	3	2024-03-24
8196	87	1	2024-03-15
8197	296	1	2024-05-01
8198	337	3	2024-12-20
8199	308	3	2024-07-27
8201	459	1	2024-10-08
8202	97	3	2024-04-08
8203	469	2	2024-05-10
8204	498	1	2024-10-28
8205	433	3	2024-11-17
8206	408	3	2024-04-14
8207	474	1	2024-04-10
8208	121	1	2024-03-08
8209	376	3	2024-12-15
8210	494	2	2024-11-18
8211	87	3	2024-08-26
8212	450	3	2024-06-29
8213	85	3	2024-09-02
8214	303	3	2024-08-21
8215	161	1	2024-05-11
8216	156	2	2024-05-09
8217	371	3	2024-07-26
8218	374	2	2024-09-05
8219	244	1	2024-07-30
8220	314	2	2024-09-28
8221	380	2	2024-12-12
8222	64	1	2024-08-19
8224	365	1	2024-04-09
8225	14	1	2024-12-02
8226	288	1	2024-10-28
8227	337	3	2024-06-30
8228	394	3	2024-09-25
8229	412	1	2024-08-28
8231	164	2	2024-03-24
8232	107	2	2024-09-18
8233	63	2	2024-07-07
8234	325	2	2024-03-18
8235	13	3	2024-02-04
8236	89	1	2024-02-05
8237	401	3	2024-08-05
8238	239	2	2024-10-28
8239	353	1	2024-09-26
8240	330	1	2024-09-06
8241	473	2	2024-07-15
8242	217	2	2024-07-13
8243	343	3	2024-07-03
8244	418	3	2024-05-27
8246	135	2	2024-03-02
8247	280	1	2024-08-29
8248	198	3	2024-12-06
8249	13	2	2024-09-15
8250	303	1	2024-10-10
8251	112	2	2024-03-12
8252	35	3	2024-10-10
8253	390	1	2024-07-23
8254	186	2	2024-06-18
8255	399	1	2024-12-02
8256	118	3	2024-09-07
8257	138	1	2024-05-05
8258	295	2	2024-02-06
8259	461	2	2024-11-16
8260	238	3	2024-12-11
8262	248	3	2024-10-01
8264	19	2	2024-08-28
8265	96	3	2024-09-21
8266	186	1	2024-10-28
8267	80	3	2024-10-24
8268	442	1	2024-10-29
8269	100	2	2024-09-14
8270	83	2	2024-11-12
8272	233	3	2024-12-29
8273	115	2	2024-12-15
8274	276	1	2024-07-26
8275	266	1	2024-09-06
8276	123	3	2024-03-01
8277	307	1	2024-12-03
8278	352	3	2024-05-23
8280	27	1	2024-08-11
8281	336	1	2024-07-16
8282	485	3	2024-05-18
8283	216	2	2024-08-10
8284	132	2	2024-08-28
8285	435	3	2024-09-08
8286	109	2	2024-04-22
8287	122	1	2024-10-27
8288	491	3	2024-05-30
8289	4	2	2024-10-11
8290	484	3	2024-11-14
8291	113	3	2024-09-27
8292	445	2	2024-12-09
8293	132	1	2024-07-07
8294	360	2	2024-08-20
8295	324	1	2024-02-18
8297	329	2	2024-05-01
8298	357	1	2024-06-09
8299	250	2	2024-06-03
8300	80	2	2024-06-18
8301	216	2	2024-09-30
8302	23	2	2024-09-12
8303	80	3	2024-03-13
8304	423	2	2024-09-12
8305	445	1	2024-06-13
8306	160	2	2024-12-14
8307	467	1	2024-07-17
8308	415	1	2024-02-01
8309	269	3	2024-08-10
8310	484	3	2024-02-08
8311	198	2	2024-03-14
8312	446	1	2024-03-14
8313	254	2	2024-12-02
8314	425	1	2024-12-01
8315	223	1	2024-12-24
8316	482	1	2024-02-22
8318	302	2	2024-10-19
8319	420	3	2024-10-09
8320	276	3	2024-11-21
8321	52	3	2024-06-22
8322	397	1	2024-04-08
8323	273	3	2024-09-27
8325	65	2	2024-08-26
8326	495	2	2024-09-27
8327	285	2	2024-02-04
8328	36	2	2024-02-19
8329	358	1	2024-10-24
8330	389	2	2024-10-19
8331	495	1	2024-05-11
8332	162	3	2024-06-22
8333	273	3	2024-07-07
8334	266	1	2024-12-10
8335	355	2	2024-10-30
8336	156	2	2024-12-21
8337	215	1	2024-07-02
8338	454	1	2024-10-27
8339	42	3	2024-08-02
8340	301	1	2024-12-15
8341	282	2	2024-04-07
8342	14	1	2024-09-26
8343	288	1	2024-10-20
8344	218	2	2024-11-12
8346	270	2	2024-12-03
8347	287	1	2024-08-27
8348	244	2	2024-03-02
8349	136	2	2024-11-24
8351	422	2	2024-12-17
8352	416	1	2024-05-31
8353	260	2	2024-07-01
8354	47	2	2024-11-20
8355	466	3	2024-12-13
8359	272	2	2024-08-29
8360	234	1	2024-11-15
8361	452	2	2024-05-30
8362	260	3	2024-04-17
8363	153	2	2024-08-31
8364	222	3	2024-05-16
8365	317	2	2024-12-26
8366	405	1	2024-05-05
8367	203	1	2024-04-17
8368	279	2	2024-10-09
8369	212	2	2024-05-04
8370	405	2	2024-10-02
8371	256	1	2024-06-02
8372	193	3	2024-03-29
8373	451	1	2024-02-04
8374	181	3	2024-09-22
8375	161	3	2024-03-16
8376	322	3	2024-10-25
8377	281	2	2024-06-07
8378	71	3	2024-02-16
8379	362	2	2024-06-21
8381	353	2	2024-09-25
8382	146	3	2024-05-29
8383	249	2	2024-02-03
8384	70	3	2024-03-06
8385	277	1	2024-05-16
8386	44	1	2024-07-02
8389	179	1	2024-03-05
8390	176	3	2024-05-09
8391	276	3	2024-04-30
8392	289	1	2024-07-18
8393	292	1	2024-10-23
8394	239	3	2024-07-17
8395	487	3	2024-04-08
8396	222	3	2024-09-17
8397	291	3	2024-02-29
8398	474	3	2024-08-10
8399	354	2	2024-07-06
8400	322	1	2024-11-09
8401	24	3	2024-06-18
8403	226	1	2024-12-30
8404	358	3	2024-06-17
8405	439	1	2024-12-28
8406	98	3	2024-05-28
8407	14	3	2024-09-08
8409	256	2	2024-11-30
8411	267	3	2024-09-28
8412	290	2	2024-10-09
8413	253	3	2024-02-18
8414	334	1	2024-03-17
8415	87	3	2024-10-18
8416	119	1	2024-07-08
8417	72	3	2024-07-23
8418	202	2	2024-02-29
8419	486	1	2024-07-07
8420	122	3	2024-04-27
8421	61	2	2024-11-24
8422	133	3	2024-09-06
8424	303	1	2024-02-19
8425	342	2	2024-04-15
8426	323	3	2024-12-11
8427	282	1	2024-08-21
8428	98	3	2024-11-01
8429	360	2	2024-03-30
8430	321	3	2024-04-03
8431	334	2	2024-08-24
8432	20	2	2024-09-13
8433	274	1	2024-07-14
8434	439	2	2024-12-20
8435	323	2	2024-03-10
8436	110	3	2024-02-02
8437	94	2	2024-05-08
8438	100	2	2024-11-23
8439	255	1	2024-07-15
8440	202	1	2024-12-21
8441	180	3	2024-02-02
8442	39	2	2024-05-01
8443	366	2	2024-02-23
8444	361	2	2024-11-29
8445	471	3	2024-08-03
8446	96	3	2024-03-02
8447	201	3	2024-11-03
8449	262	2	2024-10-06
8450	310	1	2024-05-25
8451	297	3	2024-12-09
8452	237	2	2024-03-06
8453	470	1	2024-11-13
8454	9	2	2024-03-11
8455	456	1	2024-08-16
8456	133	1	2024-05-18
8458	104	1	2024-05-07
8459	458	2	2024-05-20
8460	235	3	2024-10-13
8461	132	2	2024-03-30
8462	355	2	2024-08-18
8463	376	2	2024-05-08
8464	204	1	2024-10-30
8465	327	2	2024-07-17
8466	260	1	2024-05-23
8467	109	2	2024-11-06
8468	28	1	2024-07-26
8469	251	3	2024-09-21
8470	101	2	2024-08-26
8471	308	3	2024-11-28
8472	214	2	2024-10-25
8473	337	1	2024-03-13
8474	407	2	2024-07-18
8475	40	1	2024-09-25
8476	382	3	2024-12-31
8477	77	2	2024-02-07
8478	47	3	2024-04-12
8479	412	2	2024-04-02
8480	323	1	2024-05-04
8481	313	1	2024-09-08
8483	5	1	2024-11-07
8484	162	3	2024-12-05
8485	180	2	2024-12-10
8486	236	3	2024-12-10
8487	140	1	2024-10-12
8489	404	1	2024-10-19
8490	267	2	2024-04-05
8491	350	2	2024-04-27
8492	94	2	2024-04-17
8493	487	3	2024-11-10
8494	117	1	2024-12-10
8496	398	2	2024-03-22
8497	255	3	2024-06-19
8498	95	1	2024-05-15
8499	79	3	2024-12-28
8500	235	3	2024-04-19
8502	173	2	2024-11-05
8503	224	1	2024-09-11
8504	380	2	2024-02-24
8505	214	2	2024-07-03
8507	425	3	2024-12-01
8508	477	3	2024-08-09
8509	15	3	2024-11-23
8510	312	3	2024-12-12
8511	437	2	2024-08-18
8512	480	2	2024-05-15
8513	101	2	2024-06-26
8514	94	1	2024-10-13
8515	427	1	2024-02-28
8516	399	2	2024-12-18
8517	135	3	2024-07-19
8518	287	3	2024-12-12
8519	212	3	2024-05-29
8520	277	1	2024-10-23
8521	32	2	2024-03-19
8522	487	1	2024-04-08
8523	307	3	2024-05-23
8525	178	2	2024-10-10
8526	492	2	2024-02-27
8527	286	2	2024-10-19
8528	144	1	2024-12-26
8529	419	1	2024-02-26
8530	103	1	2024-11-24
8532	484	2	2024-07-19
8533	354	1	2024-11-29
8534	336	1	2024-05-07
8535	168	3	2024-10-07
8536	241	3	2024-11-24
8538	168	1	2024-03-03
8539	326	3	2024-12-12
8541	306	3	2024-12-17
8542	322	1	2024-07-29
8543	364	1	2024-12-17
8544	70	1	2024-11-28
8545	475	3	2024-12-22
8546	207	2	2024-03-17
8547	316	3	2024-10-09
8549	454	3	2024-08-19
8550	362	2	2024-06-09
8551	95	3	2024-02-04
8552	408	2	2024-07-14
8553	239	3	2024-05-18
8554	350	2	2024-05-16
8555	499	1	2024-03-19
8556	232	1	2024-11-22
8557	182	1	2024-08-12
8558	54	2	2024-07-02
8559	276	3	2024-06-19
8560	191	1	2024-04-08
8561	14	2	2024-06-17
8562	473	1	2024-10-23
8563	208	3	2024-07-18
8564	497	1	2024-04-04
8565	416	1	2024-07-12
8566	133	2	2024-08-01
8567	430	3	2024-08-09
8568	225	1	2024-12-30
8569	328	2	2024-03-24
8570	65	3	2024-07-17
8571	203	2	2024-04-13
8572	168	1	2024-12-16
8574	112	1	2024-03-21
8575	212	2	2024-05-29
8576	479	1	2024-06-20
8577	124	1	2024-03-25
8578	469	1	2024-09-03
8579	21	1	2024-07-10
8580	85	3	2024-05-22
8581	279	3	2024-08-13
8582	203	1	2024-11-05
8583	336	1	2024-06-28
8585	106	1	2024-02-23
8586	136	2	2024-02-07
8587	241	2	2024-09-16
8588	405	1	2024-05-01
8589	323	2	2024-04-30
8590	413	3	2024-08-23
8591	385	2	2024-05-18
8592	220	3	2024-11-01
8593	378	3	2024-09-21
8594	56	1	2024-07-03
8595	89	1	2024-12-16
8596	444	2	2024-03-02
8597	250	3	2024-11-29
8598	353	2	2024-09-10
8599	298	2	2024-05-24
8600	175	1	2024-02-28
8602	460	2	2024-12-14
8603	24	1	2024-02-06
8604	123	3	2024-09-30
8605	148	3	2024-09-04
8606	420	3	2024-04-10
8607	377	1	2024-11-26
8608	54	3	2024-02-08
8609	485	2	2024-08-13
8610	102	2	2024-12-20
8611	249	1	2024-02-20
8612	240	1	2024-08-03
8613	471	2	2024-04-29
8614	262	3	2024-09-07
8615	38	3	2024-05-10
8616	437	3	2024-06-19
8617	303	3	2024-02-17
8618	29	1	2024-07-01
8619	139	1	2024-08-24
8620	47	3	2024-12-06
8621	301	3	2024-06-05
8622	455	2	2024-11-05
8623	96	1	2024-10-11
8624	85	3	2024-09-28
8625	145	1	2024-09-30
8626	22	1	2024-06-07
8627	430	2	2024-05-24
8628	282	3	2024-11-11
8629	481	3	2024-07-17
8630	280	3	2024-06-30
8631	476	3	2024-02-26
8633	242	3	2024-05-27
8635	217	2	2024-08-01
8637	64	2	2024-11-04
8638	96	2	2024-06-23
8639	46	2	2024-10-05
8640	167	1	2024-07-20
8641	482	3	2024-06-24
8642	12	3	2024-09-21
8643	31	1	2024-07-18
8645	282	1	2024-07-25
8646	404	2	2024-05-24
8647	76	2	2024-05-24
8648	424	1	2024-09-23
8649	191	3	2024-07-04
8650	213	1	2024-02-14
8653	20	2	2024-07-02
8654	230	1	2024-02-09
8655	47	3	2024-05-04
8656	66	3	2024-12-30
8657	263	3	2024-06-09
8658	322	1	2024-03-04
8659	477	2	2024-03-26
8660	161	2	2024-03-09
8661	361	1	2024-02-09
8662	439	1	2024-02-14
8663	174	1	2024-10-06
8664	205	1	2024-12-13
8665	120	3	2024-06-05
8666	428	2	2024-12-26
8667	475	3	2024-03-08
8668	443	3	2024-02-26
8670	497	2	2024-10-19
8671	248	3	2024-09-04
8672	232	2	2024-06-25
8673	305	2	2024-04-05
8674	449	1	2024-04-23
8675	421	2	2024-06-24
8676	418	3	2024-07-03
8677	334	3	2024-10-17
8678	197	1	2024-02-04
8679	134	1	2024-10-11
8680	166	2	2024-09-13
8681	145	2	2024-05-27
8682	148	3	2024-03-24
8683	463	2	2024-10-20
8684	177	3	2024-02-06
8685	79	3	2024-09-20
8688	89	3	2024-12-18
8689	332	3	2024-08-25
8690	294	2	2024-08-03
8691	391	2	2024-09-29
8692	206	2	2024-05-10
8693	171	1	2024-08-30
8694	256	2	2024-06-30
8695	422	3	2024-07-21
8696	264	3	2024-09-19
8697	55	2	2024-06-22
8698	155	2	2024-07-03
8699	111	2	2024-10-28
8701	91	3	2024-06-07
8702	480	1	2024-04-10
8703	39	3	2024-07-07
8704	189	3	2024-02-20
8705	257	2	2024-02-23
8707	20	3	2024-02-05
8708	285	2	2024-05-29
8709	64	2	2024-05-28
8710	386	1	2024-08-01
8711	483	3	2024-04-22
8713	278	1	2024-11-27
8714	456	1	2024-09-22
8715	37	1	2024-05-26
8716	384	3	2024-06-12
8717	332	3	2024-07-05
8718	310	1	2024-03-07
8719	439	1	2024-05-30
8720	11	3	2024-07-03
8721	199	2	2024-10-06
8722	487	2	2024-02-16
8723	159	2	2024-09-21
8724	189	3	2024-04-23
8726	260	3	2024-11-12
8727	298	3	2024-12-30
8728	379	1	2024-12-10
8729	46	3	2024-10-07
8730	429	2	2024-10-23
8732	469	1	2024-04-28
8733	376	3	2024-08-17
8734	18	2	2024-04-24
8735	123	1	2024-11-01
8736	403	1	2024-07-26
8737	20	2	2024-04-22
8738	185	3	2024-05-28
8739	352	1	2024-10-17
8740	307	2	2024-09-03
8741	257	2	2024-07-20
8742	467	1	2024-08-17
8743	65	1	2024-07-18
8744	460	1	2024-08-04
8745	351	2	2024-03-04
8746	87	3	2024-07-13
8747	477	1	2024-06-12
8748	3	3	2024-02-20
8749	212	1	2024-03-13
8750	136	2	2024-03-04
8751	135	2	2024-05-12
8752	274	3	2024-03-01
8753	373	1	2024-04-26
8754	274	3	2024-09-29
8756	464	1	2024-07-31
8757	176	2	2024-09-18
8758	402	3	2024-03-28
8759	340	2	2024-10-27
8760	393	2	2024-07-11
8761	80	2	2024-12-06
8762	195	2	2024-09-06
8763	352	2	2024-05-12
8764	458	3	2024-08-23
8765	467	2	2024-04-22
8766	135	1	2024-05-18
8767	247	1	2024-06-17
8769	49	3	2024-03-24
8770	194	2	2024-04-28
8771	36	2	2024-12-20
8772	299	3	2024-12-07
8773	135	2	2024-08-15
8774	36	1	2024-07-06
8775	62	1	2024-10-20
8776	291	2	2024-08-29
8777	26	1	2024-10-04
8778	290	2	2024-10-20
8780	120	2	2024-07-27
8781	13	2	2024-04-02
8782	317	1	2024-05-21
8783	264	1	2024-04-13
8785	473	2	2024-12-21
8786	180	1	2024-11-08
8787	180	1	2024-09-05
8788	13	3	2024-07-01
8789	169	2	2024-08-19
8790	427	1	2024-07-23
8791	18	1	2024-07-03
8792	165	1	2024-11-30
8793	436	2	2024-12-29
8794	375	1	2024-03-11
8795	10	3	2024-05-23
8796	482	2	2024-10-24
8797	175	2	2024-05-10
8798	223	1	2024-10-23
8800	432	3	2024-09-20
8801	262	1	2024-10-30
8802	394	1	2024-03-10
8803	229	2	2024-06-15
8804	25	3	2024-02-29
8806	436	3	2024-05-13
8807	405	2	2024-08-30
8808	19	2	2024-12-31
8809	277	1	2024-08-30
8810	365	1	2024-06-06
8811	470	2	2024-07-11
8812	457	1	2024-12-23
8813	193	2	2024-08-15
8814	65	2	2024-03-17
8816	158	3	2024-07-08
8817	223	1	2024-11-29
8818	227	3	2024-05-01
8819	5	3	2024-11-30
8820	30	1	2024-03-01
8821	485	3	2024-11-29
8822	1	2	2024-02-21
8823	457	2	2024-11-12
8824	28	2	2024-06-19
8825	72	3	2024-07-16
8826	191	1	2024-02-15
8827	309	1	2024-11-20
8828	263	1	2024-08-05
8830	316	1	2024-08-05
8831	1	1	2024-03-27
8832	401	2	2024-12-15
8833	84	2	2024-06-15
8834	208	2	2024-07-03
8835	433	1	2024-11-08
8836	279	2	2024-12-22
8837	483	1	2024-08-16
8838	406	3	2024-08-08
8839	300	3	2024-02-12
8841	450	2	2024-04-10
8842	371	1	2024-05-24
8843	77	1	2024-08-02
8844	208	1	2024-11-29
8845	90	2	2024-06-11
8846	351	1	2024-10-21
8847	45	1	2024-06-12
8849	400	2	2024-08-13
8850	73	1	2024-10-25
8851	34	3	2024-12-02
8853	245	1	2024-12-21
8854	352	1	2024-09-23
8855	117	1	2024-08-24
8856	453	2	2024-08-19
8857	288	1	2024-07-02
8859	387	3	2024-10-31
8861	403	1	2024-09-05
8862	131	3	2024-03-16
8863	350	3	2024-09-06
8865	10	3	2024-09-02
8866	495	3	2024-07-10
8867	485	2	2024-11-04
8870	493	3	2024-08-19
8871	381	2	2024-08-10
8872	144	1	2024-09-01
8873	472	2	2024-12-11
8874	223	2	2024-07-10
8875	96	1	2024-09-07
8876	432	1	2024-12-26
8877	433	1	2024-03-17
8878	106	2	2024-02-18
8879	235	2	2024-02-18
8880	420	3	2024-02-03
8881	362	1	2024-11-29
8882	316	1	2024-09-29
8883	223	2	2024-08-13
8884	267	2	2024-10-22
8885	165	3	2024-12-08
8886	213	3	2024-06-14
8887	215	1	2024-07-30
8889	209	3	2024-11-23
8890	56	2	2024-04-09
8892	372	2	2024-09-23
8894	487	3	2024-07-07
8895	419	1	2024-06-10
8896	187	1	2024-11-14
8898	10	3	2024-03-26
8899	466	3	2024-09-25
8900	12	2	2024-07-04
8901	115	1	2024-12-04
8902	406	1	2024-11-22
8903	488	2	2024-04-13
8905	298	2	2024-04-26
8906	413	1	2024-05-12
8907	126	2	2024-02-25
8909	482	1	2024-10-22
8910	328	3	2024-04-20
8911	307	3	2024-04-17
8912	320	3	2024-02-17
8913	353	3	2024-09-12
8914	211	2	2024-06-04
8915	317	1	2024-07-10
8916	338	1	2024-05-17
8917	334	2	2024-05-13
8918	416	1	2024-08-20
8919	285	1	2024-07-27
8920	474	1	2024-07-28
8921	129	3	2024-04-09
8922	192	1	2024-12-18
8923	127	1	2024-06-01
8924	248	3	2024-06-05
8925	214	3	2024-02-04
8926	388	2	2024-07-19
8927	484	3	2024-03-15
8928	10	1	2024-03-01
8929	328	2	2024-11-29
8931	83	2	2024-12-17
8932	79	1	2024-12-25
8933	368	2	2024-08-09
8934	24	1	2024-12-09
8935	336	3	2024-12-04
8936	133	2	2024-09-10
8937	338	2	2024-12-17
8938	20	2	2024-10-08
8940	133	1	2024-07-04
8941	319	1	2024-11-03
8942	436	1	2024-11-30
8943	466	2	2024-11-14
8944	354	1	2024-05-19
8945	227	2	2024-09-02
8947	234	2	2024-10-28
8948	173	1	2024-11-02
8949	256	3	2024-02-24
8950	20	3	2024-03-23
8952	365	1	2024-04-21
8953	424	1	2024-03-18
8954	425	3	2024-12-08
8955	295	1	2024-05-28
8956	214	2	2024-10-11
8957	341	1	2024-06-27
8958	474	1	2024-10-14
8959	246	1	2024-08-27
8960	326	2	2024-07-29
8961	211	2	2024-12-07
8962	38	2	2024-09-06
8963	416	3	2024-06-19
8964	404	3	2024-08-17
8965	94	3	2024-10-24
8966	273	1	2024-12-01
8967	406	3	2024-08-09
8969	201	3	2024-11-20
8971	30	3	2024-08-07
8972	179	1	2024-08-17
8973	76	3	2024-06-27
8974	285	1	2024-10-18
8975	45	2	2024-12-20
8976	450	2	2024-09-15
8977	154	2	2024-09-29
8978	52	3	2024-12-19
8979	335	3	2024-03-23
8980	382	1	2024-08-28
8982	370	2	2024-02-23
8983	293	3	2024-10-11
8984	455	3	2024-11-10
8985	115	3	2024-04-08
8986	389	1	2024-07-17
8987	390	2	2024-10-06
8989	369	1	2024-12-07
8990	146	2	2024-12-06
8991	104	3	2024-07-25
8992	499	3	2024-06-24
8993	3	2	2024-02-18
8994	50	1	2024-08-28
8995	95	2	2024-05-26
8996	117	2	2024-12-30
8997	432	3	2024-08-21
8999	327	2	2024-10-04
9000	52	2	2024-12-22
9001	178	3	2024-07-04
9002	191	1	2024-07-12
9003	313	1	2024-06-30
9004	129	1	2024-09-14
9005	180	1	2024-10-30
9006	344	3	2024-12-11
9007	377	2	2024-06-19
9009	270	3	2024-10-04
9010	407	1	2024-12-16
9011	197	2	2024-12-26
9012	289	1	2024-03-09
9013	489	3	2024-04-12
9014	330	3	2024-08-06
9015	226	3	2024-10-25
9016	9	1	2024-03-08
9017	244	1	2024-06-02
9019	260	3	2024-12-18
9020	320	2	2024-10-10
9022	376	2	2024-12-24
9023	189	3	2024-05-04
9024	122	3	2024-11-12
9025	275	3	2024-06-26
9026	118	1	2024-11-23
9027	465	1	2024-04-25
9028	417	1	2024-06-06
9029	266	2	2024-11-29
9030	196	1	2024-12-27
9033	99	2	2024-04-06
9034	77	3	2024-04-19
9035	111	1	2024-12-28
9036	324	1	2024-04-08
9037	367	2	2024-08-04
9038	309	1	2024-08-18
9039	23	3	2024-10-06
9040	162	1	2024-08-10
9041	488	1	2024-07-05
9042	187	3	2024-11-06
9043	329	2	2024-10-08
9045	332	1	2024-11-23
9046	276	2	2024-03-18
9047	156	1	2024-03-12
9048	195	3	2024-05-14
9049	385	3	2024-11-21
9050	107	1	2024-03-08
9051	339	1	2024-12-25
9052	66	2	2024-08-15
9053	162	2	2024-07-09
9054	256	3	2024-07-31
9055	351	3	2024-08-03
9057	432	1	2024-07-24
9058	367	2	2024-07-29
9059	144	3	2024-07-14
9060	201	1	2024-09-29
9061	448	3	2024-08-24
9062	271	1	2024-05-22
9063	250	1	2024-02-05
9064	428	2	2024-07-31
9065	183	3	2024-11-30
9066	51	1	2024-05-23
9067	342	2	2024-09-04
9068	491	2	2024-12-05
9069	209	3	2024-07-04
9070	258	2	2024-03-07
9071	173	1	2024-09-07
9072	377	3	2024-05-19
9073	249	2	2024-10-28
9074	194	1	2024-09-08
9075	190	2	2024-09-15
9076	43	3	2024-07-11
9077	170	3	2024-10-18
9078	429	3	2024-03-15
9079	100	3	2024-06-10
9080	155	2	2024-03-31
9081	61	3	2024-07-05
9082	342	2	2024-10-14
9083	111	3	2024-07-08
9084	365	2	2024-02-21
9085	270	1	2024-03-07
9086	267	3	2024-12-15
9087	179	2	2024-08-23
9088	37	3	2024-06-23
9089	331	3	2024-04-11
9091	204	3	2024-04-15
9092	151	3	2024-05-18
9093	493	2	2024-02-03
9094	276	3	2024-06-21
9095	452	1	2024-08-09
9096	148	3	2024-07-24
9097	136	3	2024-03-26
9098	474	1	2024-09-20
9099	35	2	2024-03-15
9100	119	3	2024-09-28
9101	345	1	2024-03-08
9104	199	2	2024-05-17
9105	498	3	2024-11-05
9106	36	1	2024-08-11
9107	310	3	2024-10-10
9109	266	3	2024-09-24
9110	3	3	2024-07-09
9111	234	2	2024-04-18
9112	236	1	2024-06-11
9113	300	2	2024-07-05
9114	33	2	2024-08-12
9116	493	1	2024-08-11
9117	336	1	2024-09-07
9118	260	3	2024-11-23
9119	153	1	2024-09-01
9120	168	2	2024-03-07
9121	65	3	2024-09-07
9122	203	3	2024-03-23
9123	452	1	2024-07-09
9124	64	3	2024-03-09
9125	157	1	2024-07-02
9126	459	2	2024-07-17
9128	271	3	2024-02-11
9129	207	1	2024-08-21
9130	390	2	2024-09-21
9131	10	3	2024-05-31
9132	41	1	2024-12-04
9133	84	3	2024-10-16
9134	438	1	2024-11-16
9135	257	2	2024-12-24
9136	116	3	2024-06-13
9137	238	2	2024-08-27
9138	238	2	2024-10-20
9139	5	3	2024-05-14
9141	346	3	2024-10-19
9143	312	2	2024-08-24
9144	220	3	2024-04-04
9145	60	1	2024-04-01
9146	195	3	2024-06-26
9147	99	3	2024-02-25
9149	437	1	2024-07-26
9150	123	3	2024-02-23
9151	191	3	2024-06-22
9153	125	2	2024-12-18
9154	491	1	2024-08-18
9155	403	3	2024-06-04
9156	194	2	2024-04-27
9157	230	1	2024-12-22
9158	119	1	2024-10-30
9159	498	3	2024-07-23
9160	470	3	2024-05-15
9161	98	1	2024-03-11
9162	457	3	2024-09-16
9163	57	2	2024-07-05
9164	261	2	2024-09-02
9165	164	1	2024-02-14
9166	354	2	2024-07-09
9167	55	1	2024-12-04
9169	318	1	2024-09-19
9170	427	2	2024-10-07
9171	383	3	2024-12-19
9172	87	2	2024-03-21
9173	103	3	2024-12-14
9174	376	3	2024-05-13
9175	201	2	2024-07-04
9176	192	3	2024-05-24
9177	148	3	2024-11-17
9178	391	1	2024-04-16
9179	400	2	2024-03-30
9180	329	1	2024-05-27
9181	371	2	2024-06-30
9183	373	2	2024-03-23
9184	476	3	2024-03-09
9185	38	2	2024-12-20
9186	175	2	2024-10-29
9187	121	2	2024-11-19
9189	94	3	2024-11-30
9190	287	2	2024-02-27
9191	493	1	2024-12-29
9192	200	1	2024-10-12
9193	245	3	2024-05-09
9194	242	2	2024-08-28
9195	302	3	2024-04-29
9196	45	3	2024-11-06
9197	396	3	2024-06-18
9200	270	2	2024-05-11
9201	448	3	2024-11-21
9202	280	1	2024-04-26
9203	492	1	2024-08-03
9205	282	3	2024-10-20
9206	285	3	2024-11-30
9207	168	3	2024-10-29
9209	135	1	2024-12-06
9210	9	2	2024-03-13
9211	357	3	2024-10-30
9212	372	1	2024-04-29
9213	146	1	2024-12-22
9214	144	3	2024-12-06
9215	384	2	2024-12-06
9217	415	1	2024-10-23
9218	348	2	2024-02-16
9220	27	3	2024-03-19
9221	445	3	2024-05-31
9222	337	2	2024-07-05
9223	216	2	2024-08-31
9225	262	3	2024-09-08
9226	23	1	2024-08-20
9227	297	3	2024-06-10
9228	162	3	2024-02-03
9229	9	3	2024-06-17
9230	22	3	2024-02-15
9231	174	3	2024-02-22
9232	312	1	2024-04-04
9233	467	3	2024-12-27
9234	430	2	2024-07-02
9235	270	3	2024-03-12
9236	160	1	2024-05-11
9237	168	1	2024-10-23
9238	329	1	2024-07-11
9239	230	3	2024-09-04
9240	32	1	2024-10-29
9241	363	1	2024-05-20
9242	191	3	2024-06-07
9243	81	3	2024-10-02
9245	321	1	2024-04-23
9246	270	3	2024-12-22
9247	454	3	2024-07-21
9248	426	2	2024-04-09
9250	27	1	2024-03-03
9251	65	2	2024-08-05
9252	19	3	2024-02-20
9253	207	3	2024-07-31
9254	259	2	2024-08-20
9255	225	3	2024-04-27
9256	405	3	2024-08-26
9257	155	2	2024-04-02
9258	391	2	2024-11-21
9259	285	1	2024-08-23
9260	294	2	2024-10-06
9261	482	2	2024-10-15
9263	71	3	2024-07-06
9264	336	3	2024-03-05
9265	354	3	2024-03-13
9266	206	2	2024-07-15
9267	491	1	2024-07-13
9268	496	1	2024-04-11
9269	476	1	2024-05-08
9270	75	2	2024-08-22
9271	417	1	2024-05-21
9272	244	3	2024-11-25
9273	442	2	2024-10-30
9274	277	3	2024-12-25
9275	289	2	2024-09-03
9276	365	1	2024-09-13
9277	85	1	2024-12-06
9278	74	3	2024-08-08
9279	399	2	2024-03-31
9280	297	2	2024-08-25
9281	229	3	2024-09-19
9282	412	3	2024-11-24
9283	274	1	2024-02-24
9285	47	1	2024-03-09
9286	60	3	2024-12-15
9287	114	3	2024-11-19
9288	399	3	2024-02-09
9289	369	3	2024-12-28
9291	323	1	2024-04-30
9292	120	3	2024-03-08
9293	33	2	2024-11-12
9294	20	3	2024-07-25
9295	49	3	2024-05-12
9296	412	1	2024-06-24
9297	104	2	2024-07-08
9298	394	1	2024-08-18
9299	10	1	2024-09-14
9300	128	3	2024-02-22
9301	445	3	2024-07-30
9302	120	1	2024-04-02
9303	358	1	2024-10-06
9304	381	1	2024-05-25
9305	36	2	2024-02-22
9306	139	3	2024-10-16
9307	224	2	2024-06-24
9308	359	3	2024-10-14
9309	183	2	2024-09-24
9310	51	2	2024-02-14
9312	439	1	2024-11-28
9313	180	1	2024-03-09
9314	261	2	2024-11-10
9315	231	2	2024-09-11
9316	54	2	2024-06-18
9317	127	1	2024-06-25
9319	354	2	2024-07-19
9320	177	1	2024-11-22
9321	403	1	2024-09-13
9323	356	1	2024-02-10
9324	372	3	2024-10-01
9326	7	2	2024-06-14
9327	129	1	2024-02-29
9328	65	2	2024-12-18
9329	445	3	2024-12-31
9330	366	2	2024-10-23
9331	34	1	2024-04-09
9332	273	1	2024-10-10
9333	351	1	2024-10-06
9335	99	1	2024-07-12
9336	118	2	2024-06-25
9337	358	2	2024-12-06
9338	176	2	2024-08-10
9341	137	1	2024-07-26
9342	125	1	2024-09-23
9343	167	3	2024-03-04
9344	324	2	2024-03-26
9345	78	3	2024-04-29
9346	461	1	2024-03-25
9347	126	1	2024-11-02
9348	435	3	2024-10-15
9349	328	3	2024-07-25
9350	264	2	2024-09-09
9351	10	3	2024-03-11
9352	444	2	2024-08-25
9353	346	2	2024-06-27
9354	105	3	2024-12-12
9355	302	1	2024-11-15
9356	196	1	2024-02-10
9357	215	3	2024-05-06
9358	291	3	2024-05-17
9359	42	1	2024-12-07
9361	320	3	2024-10-15
9363	189	3	2024-09-20
9364	255	2	2024-03-15
9365	244	1	2024-03-16
9366	346	1	2024-04-27
9367	288	1	2024-03-10
9368	123	3	2024-06-03
9369	305	2	2024-05-12
9372	228	2	2024-11-03
9373	139	2	2024-05-14
9374	324	2	2024-08-03
9376	442	3	2024-05-12
9377	140	1	2024-07-16
9378	122	3	2024-03-12
9379	295	1	2024-02-21
9380	277	3	2024-05-30
9381	76	1	2024-08-09
9382	235	3	2024-07-03
9383	356	3	2024-11-19
9385	490	1	2024-05-26
9386	189	3	2024-08-03
9389	131	1	2024-09-20
9390	99	2	2024-06-12
9391	387	1	2024-07-16
9392	237	2	2024-10-09
9393	403	2	2024-04-25
9394	36	2	2024-11-11
9395	485	1	2024-03-14
9396	12	3	2024-03-22
9397	167	3	2024-03-09
9398	68	3	2024-02-29
9399	488	3	2024-08-04
9400	112	2	2024-07-09
9402	124	2	2024-05-25
9403	236	3	2024-11-12
9404	83	2	2024-05-26
9405	499	1	2024-09-11
9406	152	1	2024-11-27
9408	182	2	2024-03-13
9409	215	2	2024-07-03
9410	27	1	2024-10-23
9411	297	1	2024-11-22
9412	469	1	2024-11-24
9413	285	3	2024-02-07
9414	109	1	2024-02-12
9415	16	3	2024-09-14
9416	301	2	2024-10-05
9417	125	3	2024-04-08
9419	105	3	2024-06-27
9420	50	3	2024-05-24
9421	305	1	2024-07-25
9422	17	1	2024-09-27
9423	14	2	2024-02-28
9424	368	3	2024-07-20
9425	55	2	2024-04-21
9426	493	2	2024-05-17
9427	82	2	2024-12-31
9428	267	2	2024-05-14
9429	462	1	2024-05-11
9431	421	2	2024-04-05
9432	307	2	2024-03-02
9433	346	3	2024-10-16
9434	47	3	2024-12-02
9435	69	1	2024-10-04
9436	436	1	2024-03-17
9437	249	3	2024-07-17
9438	258	2	2024-06-05
9439	48	1	2024-05-18
9440	384	2	2024-12-20
9441	68	3	2024-04-08
9442	57	2	2024-02-22
9443	21	1	2024-08-09
9444	392	2	2024-02-04
9445	305	2	2024-10-01
9446	16	1	2024-03-19
9447	48	3	2024-09-15
9448	335	1	2024-04-06
9449	102	1	2024-09-24
9450	143	3	2024-07-02
9451	455	2	2024-07-29
9452	304	1	2024-04-16
9453	100	2	2024-04-13
9454	32	1	2024-11-20
9457	37	2	2024-06-24
9458	499	3	2024-03-12
9459	435	2	2024-12-21
9460	474	3	2024-04-08
9461	17	1	2024-08-23
9463	218	1	2024-04-19
9464	79	1	2024-06-26
9465	107	2	2024-09-22
9466	393	1	2024-11-01
9467	98	2	2024-09-22
9468	6	2	2024-02-29
9469	151	1	2024-03-15
9470	140	3	2024-12-18
9471	485	3	2024-03-14
9472	421	3	2024-04-20
9473	194	2	2024-05-24
9474	280	2	2024-04-22
9475	275	3	2024-12-01
9476	256	2	2024-07-12
9477	452	3	2024-07-19
9478	467	1	2024-12-08
9479	365	2	2024-03-19
9480	212	2	2024-06-21
9481	114	3	2024-02-11
9482	363	3	2024-02-09
9483	221	3	2024-07-30
9484	286	2	2024-08-10
9485	212	2	2024-02-19
9486	116	2	2024-02-20
9487	219	1	2024-11-11
9489	86	1	2024-03-21
9490	82	1	2024-06-17
9491	275	1	2024-10-27
9492	121	1	2024-05-04
9493	442	2	2024-02-04
9494	350	1	2024-04-06
9496	413	3	2024-06-25
9497	35	3	2024-10-03
9498	417	1	2024-11-22
9499	116	3	2024-05-26
9500	204	3	2024-12-20
9501	314	2	2024-03-15
9502	309	2	2024-06-19
9503	189	2	2024-06-07
9504	175	3	2024-11-10
9505	110	3	2024-11-15
9506	420	2	2024-06-09
9507	72	2	2024-04-25
9508	251	3	2024-02-17
9509	434	1	2024-10-12
9510	463	3	2024-11-17
9511	246	3	2024-02-05
9513	124	2	2024-11-18
9514	199	1	2024-06-23
9515	231	3	2024-06-20
9516	145	1	2024-12-19
9517	106	3	2024-03-15
9518	101	2	2024-07-06
9519	100	2	2024-05-16
9520	127	3	2024-05-05
9521	446	2	2024-07-22
9522	73	3	2024-11-25
9523	213	2	2024-10-20
9524	479	1	2024-03-17
9525	407	3	2024-02-29
9526	467	1	2024-06-02
9528	33	2	2024-12-15
9529	410	1	2024-09-22
9531	319	2	2024-09-16
9534	309	3	2024-05-27
9535	259	3	2024-03-17
9536	231	2	2024-03-09
9537	36	1	2024-09-08
9538	163	1	2024-07-22
9539	206	2	2024-03-28
9540	486	3	2024-04-10
9541	264	1	2024-04-22
9542	469	2	2024-06-01
9543	243	1	2024-02-07
9544	152	3	2024-11-23
9545	485	2	2024-09-12
9546	420	1	2024-06-24
9547	184	3	2024-10-27
9548	115	2	2024-07-23
9549	495	1	2024-10-12
9550	330	2	2024-07-13
9551	322	3	2024-07-22
9552	276	1	2024-12-10
9554	219	2	2024-10-01
9555	424	2	2024-04-11
9556	250	3	2024-12-27
9557	11	2	2024-09-20
9558	83	1	2024-08-27
9559	307	3	2024-09-10
9560	299	1	2024-09-12
9561	266	1	2024-05-29
9562	318	3	2024-10-01
9563	225	1	2024-10-19
9564	247	2	2024-05-10
9565	336	2	2024-11-01
9566	318	2	2024-03-10
9567	360	2	2024-03-22
9569	217	3	2024-11-06
9570	286	3	2024-06-10
9571	15	3	2024-04-11
9572	246	1	2024-07-12
9573	316	3	2024-02-12
9574	124	3	2024-03-10
9575	31	1	2024-03-06
9576	80	1	2024-05-17
9577	274	2	2024-02-08
9578	226	1	2024-08-06
9579	211	3	2024-12-08
9580	59	1	2024-02-15
9581	379	3	2024-08-27
9582	92	2	2024-05-21
9583	427	3	2024-06-04
9584	248	3	2024-05-11
9585	83	2	2024-09-12
9586	267	2	2024-11-09
9587	242	3	2024-07-30
9588	429	1	2024-09-03
9589	385	3	2024-02-13
9590	37	2	2024-04-19
9591	327	2	2024-02-09
9592	61	3	2024-02-18
9593	347	2	2024-02-03
9594	412	1	2024-10-06
9595	447	2	2024-04-06
9596	436	1	2024-09-01
9597	136	2	2024-06-03
9598	113	3	2024-06-29
9599	310	2	2024-09-12
9600	60	1	2024-11-13
9601	59	2	2024-06-03
9602	200	3	2024-11-17
9603	323	1	2024-08-27
9604	358	1	2024-08-22
9605	144	2	2024-12-08
9606	112	1	2024-09-16
9607	479	1	2024-03-27
9608	359	1	2024-04-01
9609	302	2	2024-11-03
9610	239	2	2024-08-06
9611	406	3	2024-02-27
9612	42	1	2024-05-03
9613	366	2	2024-10-17
9614	330	2	2024-02-08
9615	158	1	2024-03-24
9616	103	2	2024-07-26
9617	27	2	2024-05-01
9618	385	3	2024-12-28
9619	178	2	2024-09-17
9620	349	3	2024-07-04
9621	207	2	2024-02-01
9622	232	1	2024-08-02
9623	137	2	2024-03-20
9624	424	1	2024-03-03
9625	309	1	2024-03-05
9626	319	1	2024-05-11
9627	1	1	2024-08-05
9628	309	1	2024-11-28
9629	95	1	2024-06-01
9630	124	1	2024-05-12
9631	90	1	2024-02-07
9632	22	1	2024-06-01
9633	34	2	2024-12-16
9636	483	2	2024-05-11
9637	387	3	2024-02-17
9638	312	3	2024-08-03
9639	66	1	2024-08-12
9640	193	3	2024-12-28
9642	479	1	2024-07-05
9643	409	3	2024-09-02
9644	259	1	2024-09-07
9645	104	2	2024-09-03
9646	2	3	2024-07-06
9647	24	2	2024-06-11
9648	381	1	2024-04-22
9649	469	1	2024-08-11
9650	311	2	2024-09-07
9651	384	3	2024-11-02
9652	251	2	2024-03-23
9654	121	3	2024-03-29
9657	371	3	2024-10-01
9658	320	1	2024-05-22
9660	356	3	2024-11-06
9661	372	3	2024-05-29
9662	263	3	2024-03-03
9663	440	1	2024-06-23
9664	282	3	2024-02-02
9665	44	2	2024-03-12
9666	329	3	2024-12-17
9668	333	3	2024-08-30
9669	160	3	2024-03-30
9670	281	3	2024-10-01
9671	170	2	2024-12-17
9672	317	2	2024-08-12
9673	245	3	2024-08-02
9674	336	2	2024-09-15
9675	155	3	2024-10-19
9677	68	1	2024-10-29
9678	323	1	2024-09-01
9680	182	3	2024-04-27
9681	114	2	2024-12-03
9682	404	3	2024-09-12
9684	376	3	2024-08-15
9685	247	2	2024-05-31
9686	283	3	2024-08-24
9687	37	3	2024-10-01
9688	226	2	2024-04-10
9689	359	3	2024-09-08
9691	119	1	2024-10-02
9692	283	1	2024-03-11
9693	495	3	2024-07-11
9694	16	3	2024-11-28
9695	445	2	2024-10-21
9696	218	1	2024-03-31
9697	61	2	2024-04-29
9698	209	1	2024-07-19
9699	53	2	2024-10-06
9700	85	2	2024-10-12
9701	418	3	2024-11-20
9702	414	3	2024-10-10
9703	178	1	2024-08-22
9704	122	2	2024-09-30
9705	298	2	2024-05-30
9706	195	2	2024-08-24
9707	192	2	2024-08-03
9708	445	1	2024-08-18
9710	458	3	2024-12-05
9712	346	3	2024-08-04
9713	475	1	2024-10-14
9714	203	2	2024-12-12
9715	452	3	2024-03-05
9716	395	2	2024-07-25
9717	93	1	2024-11-20
9718	362	3	2024-04-23
9719	173	1	2024-08-27
9720	485	1	2024-10-20
9721	406	3	2024-10-08
9722	12	1	2024-07-06
9723	46	2	2024-10-08
9724	78	2	2024-10-29
9725	255	2	2024-02-05
9726	490	3	2024-11-24
9727	190	1	2024-11-24
9728	491	1	2024-06-15
9730	143	1	2024-03-02
9731	422	2	2024-05-02
9732	495	1	2024-06-19
9733	494	1	2024-05-10
9734	91	1	2024-09-01
9735	386	2	2024-11-12
9736	446	1	2024-12-31
9737	424	1	2024-03-12
9738	95	1	2024-02-01
9739	34	1	2024-02-23
9740	442	1	2024-09-06
9741	150	1	2024-09-15
9742	83	2	2024-07-24
9743	160	2	2024-10-19
9744	467	1	2024-11-09
9745	406	2	2024-03-13
9746	331	2	2024-03-22
9747	301	1	2024-10-29
9748	398	3	2024-02-14
9749	313	2	2024-07-21
9750	190	3	2024-04-10
9751	144	2	2024-05-29
9753	363	3	2024-09-29
9754	370	2	2024-11-16
9755	97	2	2024-12-07
9756	371	3	2024-12-01
9757	162	3	2024-11-28
9758	148	1	2024-07-30
9759	291	3	2024-03-29
9760	258	3	2024-09-11
9761	144	2	2024-09-29
9762	81	3	2024-07-04
9765	165	1	2024-03-19
9766	7	3	2024-04-09
9767	33	1	2024-05-13
9768	12	1	2024-02-24
9769	369	3	2024-08-19
9770	361	2	2024-06-29
9771	358	1	2024-12-07
9772	357	2	2024-06-05
9774	80	2	2024-05-28
9775	449	3	2024-09-26
9776	201	2	2024-12-28
9777	422	3	2024-07-04
9778	12	3	2024-10-31
9779	237	2	2024-03-09
9780	228	1	2024-08-26
9781	92	1	2024-11-23
9782	38	2	2024-07-06
9783	219	1	2024-02-20
9784	233	3	2024-09-22
9785	484	3	2024-09-20
9786	160	3	2024-05-29
9787	338	2	2024-03-17
9788	143	2	2024-09-28
9789	6	3	2024-03-03
9790	17	1	2024-04-22
9791	441	1	2024-07-17
9792	249	2	2024-05-06
9793	182	3	2024-07-08
9794	167	1	2024-08-30
9796	500	1	2024-09-19
9797	275	2	2024-09-15
9798	81	1	2024-12-19
9799	21	1	2024-08-02
9800	472	1	2024-05-25
9801	323	1	2024-02-05
9802	372	3	2024-12-25
9803	440	2	2024-07-21
9805	412	1	2024-04-04
9806	299	2	2024-10-01
9807	251	1	2024-04-16
9808	128	1	2024-03-10
9809	285	1	2024-04-07
9810	420	3	2024-02-12
9811	138	1	2024-07-14
9812	245	3	2024-04-27
9813	414	1	2024-07-17
9814	349	2	2024-02-01
9815	217	3	2024-11-04
9816	360	1	2024-12-16
9817	237	2	2024-05-22
9818	453	3	2024-04-10
9819	148	2	2024-10-26
9820	380	1	2024-04-19
9821	395	2	2024-03-26
9822	419	1	2024-11-07
9823	219	1	2024-02-22
9824	112	2	2024-11-20
9825	113	2	2024-07-03
9826	367	3	2024-12-04
9827	95	1	2024-11-17
9828	406	3	2024-09-30
9829	35	2	2024-05-16
9830	161	2	2024-04-08
9831	488	3	2024-08-20
9832	133	1	2024-11-01
9833	260	3	2024-12-16
9834	248	3	2024-11-05
9836	288	2	2024-08-21
9837	406	2	2024-08-27
9838	361	1	2024-06-15
9839	129	3	2024-07-04
9840	319	3	2024-03-31
9841	245	1	2024-06-10
9842	498	1	2024-04-22
9843	429	1	2024-10-11
9844	211	3	2024-11-04
9845	453	1	2024-11-11
9846	363	1	2024-09-03
9847	408	2	2024-12-17
9848	397	3	2024-12-25
9849	394	2	2024-08-08
9850	156	3	2024-03-20
9851	209	2	2024-08-21
9852	334	2	2024-11-05
9853	172	1	2024-02-23
9854	31	1	2024-09-21
9855	388	1	2024-12-27
9857	339	3	2024-12-30
9858	166	1	2024-12-09
9859	211	1	2024-10-22
9861	226	2	2024-10-27
9862	315	3	2024-11-21
9863	259	2	2024-09-20
9864	372	1	2024-10-06
9865	422	3	2024-05-30
9866	380	1	2024-10-15
9867	470	3	2024-11-14
9868	357	3	2024-04-21
9869	479	2	2024-05-05
9870	347	2	2024-04-13
9872	60	2	2024-06-02
9873	481	3	2024-08-22
9874	136	3	2024-06-08
9876	484	1	2024-02-28
9877	148	1	2024-03-27
9878	315	3	2024-03-02
9879	174	3	2024-07-23
9880	78	1	2024-02-03
9881	230	3	2024-08-15
9882	149	3	2024-07-24
9883	156	1	2024-08-10
9884	363	1	2024-03-14
9885	438	1	2024-05-02
9886	435	3	2024-11-15
9887	12	2	2024-09-06
9888	324	1	2024-05-12
9889	142	1	2024-10-26
9890	84	3	2024-06-21
9891	229	3	2024-03-04
9893	388	1	2024-09-05
9894	167	2	2024-12-03
9895	64	1	2024-10-09
9896	309	2	2024-06-05
9897	158	1	2024-10-05
9898	384	3	2024-03-23
9899	240	3	2024-07-28
9900	157	1	2024-03-15
9901	39	1	2024-12-09
9904	145	1	2024-11-24
9905	443	1	2024-02-11
9906	417	3	2024-04-04
9907	499	1	2024-02-17
9908	163	3	2024-11-05
9909	51	1	2024-02-05
9910	222	1	2024-03-11
9913	378	3	2024-12-26
9914	474	2	2024-09-30
9915	76	2	2024-07-23
9917	333	3	2024-02-12
9918	383	3	2024-10-10
9919	25	2	2024-06-28
9920	443	1	2024-06-02
9921	88	2	2024-06-11
9922	315	3	2024-12-27
9923	386	3	2024-08-11
9924	315	2	2024-07-13
9925	486	2	2024-09-15
9926	353	2	2024-03-01
9927	103	2	2024-10-18
9928	23	3	2024-11-10
9930	207	1	2024-05-22
9931	232	3	2024-08-31
9933	204	1	2024-12-30
9934	149	2	2024-08-02
9935	13	3	2024-04-19
9936	470	2	2024-08-13
9937	269	1	2024-11-29
9938	398	2	2024-06-26
9939	270	1	2024-09-03
9940	217	1	2024-04-10
9941	389	1	2024-06-03
9942	14	1	2024-08-29
9943	53	1	2024-04-15
9944	496	1	2024-02-12
9945	204	2	2024-10-16
9946	229	3	2024-05-04
9947	441	1	2024-07-27
9949	461	1	2024-12-12
9950	334	3	2024-10-06
9951	56	3	2024-02-27
9952	470	3	2024-11-30
9953	94	2	2024-11-07
9954	6	3	2024-04-14
9956	44	1	2024-02-04
9959	358	3	2024-04-10
9960	69	3	2024-11-28
9961	3	1	2024-12-23
9962	327	1	2024-02-29
9963	313	3	2024-05-08
9964	171	3	2024-06-24
9965	468	2	2024-09-08
9966	231	1	2024-06-11
9967	225	2	2024-07-02
9968	152	3	2024-07-11
9969	356	1	2024-12-06
9970	52	3	2024-04-26
9971	262	3	2024-11-25
9972	368	2	2024-12-26
9973	139	2	2024-10-10
9974	398	1	2024-10-26
9975	497	2	2024-09-15
9976	289	1	2024-08-24
9977	373	3	2024-06-07
9978	471	1	2024-07-22
9979	361	1	2024-02-15
9980	263	1	2024-03-03
9981	314	1	2024-03-30
9982	91	3	2024-07-16
9983	98	3	2024-06-03
9984	219	3	2024-09-03
9985	413	3	2024-10-28
9986	324	3	2024-05-17
9987	220	2	2024-08-09
9988	388	2	2024-08-19
9989	70	3	2024-04-27
9990	175	2	2024-10-20
9991	294	3	2024-05-30
9993	225	1	2024-10-07
9994	171	2	2024-02-07
9995	23	3	2024-02-17
9997	333	2	2024-06-20
9998	36	3	2024-12-30
9999	310	3	2024-04-27
10000	192	3	2024-11-11
10001	290	2	2024-07-20
10002	264	3	2024-09-26
10003	7	1	2024-07-01
10004	293	1	2024-04-30
10006	204	1	2024-06-04
10007	447	3	2024-08-01
10008	184	1	2024-05-30
10009	168	2	2024-12-08
10010	102	2	2024-09-30
10011	454	3	2024-02-19
10013	45	1	2024-07-23
10014	211	1	2024-08-21
10015	461	3	2024-06-18
10017	188	1	2024-10-30
10018	453	1	2024-11-17
10019	210	2	2024-08-30
10020	469	2	2024-11-10
10021	407	2	2024-03-12
10022	292	2	2024-05-11
10023	353	2	2024-07-18
10024	25	3	2024-09-08
10025	132	2	2024-03-12
10026	38	3	2024-05-03
10027	4	1	2024-07-17
10028	174	2	2024-03-30
10029	116	2	2024-03-10
10030	106	3	2024-12-10
10032	79	3	2024-04-13
10033	59	2	2024-07-15
10034	185	2	2024-05-13
10035	29	1	2024-10-17
10036	276	2	2024-09-18
10037	340	3	2024-12-10
10038	378	2	2024-02-21
10039	256	2	2024-11-21
10040	290	1	2024-09-04
10042	424	1	2024-11-30
10043	33	2	2024-05-26
10045	91	3	2024-11-23
10046	270	2	2024-03-18
10047	302	1	2024-10-02
10048	261	2	2024-08-10
10050	32	3	2024-03-28
10052	208	2	2024-06-28
10053	344	3	2024-10-29
10054	19	2	2024-06-16
10055	405	3	2024-08-19
10056	254	2	2024-02-23
10057	39	3	2024-03-04
10058	360	2	2024-11-17
10059	383	1	2024-05-03
10060	280	3	2024-03-16
10061	408	1	2024-03-12
10062	270	3	2024-07-25
10063	109	1	2024-08-27
10064	315	2	2024-08-03
10065	108	1	2024-05-18
10066	27	2	2024-07-25
10067	292	3	2024-03-15
10068	8	1	2024-07-17
10069	107	1	2024-06-09
10070	126	1	2024-11-08
10071	171	1	2024-03-08
10072	89	2	2024-04-06
10073	482	3	2024-04-20
10074	330	2	2024-04-17
10075	195	1	2024-05-30
10076	299	1	2024-02-26
10077	253	2	2024-10-04
10078	311	3	2024-02-26
10081	224	3	2024-03-16
10082	329	3	2024-02-11
10083	461	1	2024-07-20
10084	440	2	2024-07-05
10085	394	1	2024-09-04
10086	444	2	2024-05-20
10088	316	2	2024-08-08
10089	478	2	2024-06-04
10091	246	1	2024-09-05
10092	36	2	2024-11-03
10094	128	2	2024-05-12
10095	134	3	2024-08-19
10097	275	3	2024-06-22
10098	425	2	2024-11-07
10099	393	3	2024-07-23
10100	415	2	2024-05-15
10101	410	1	2024-07-25
10103	347	1	2024-12-18
10104	274	1	2024-12-12
10105	189	3	2024-07-05
10106	357	1	2024-10-31
10107	287	1	2024-11-07
10108	457	1	2024-11-20
10109	121	3	2024-09-21
10110	127	1	2024-03-21
10111	436	2	2024-05-01
10112	145	3	2024-05-26
10115	358	2	2024-07-31
10116	98	3	2024-07-05
10117	132	3	2024-07-11
10119	36	3	2024-08-29
10120	72	3	2024-09-24
10121	137	2	2024-08-29
10122	470	2	2024-09-22
10123	362	1	2024-08-13
10124	21	1	2024-05-12
10125	397	2	2024-10-13
10126	440	2	2024-04-09
10127	285	1	2024-08-19
10128	305	1	2024-03-08
10129	274	2	2024-02-19
10130	176	2	2024-06-27
10131	20	1	2024-11-26
10133	26	1	2024-02-10
10134	408	3	2024-05-17
10135	420	2	2024-08-30
10136	174	1	2024-02-26
10137	91	1	2024-07-07
10138	224	2	2024-09-09
10139	97	3	2024-06-23
10140	100	1	2024-11-11
10141	436	1	2024-04-09
10142	263	1	2024-10-04
10143	30	3	2024-12-27
10144	136	2	2024-07-13
10145	219	1	2024-11-09
10146	32	1	2024-12-27
10147	231	1	2024-12-12
10148	243	2	2024-08-19
10149	244	1	2024-09-27
10150	500	1	2024-10-13
10151	372	1	2024-02-17
10152	103	2	2024-02-20
10153	477	1	2024-08-28
10154	364	3	2024-08-07
10155	284	1	2024-12-09
10156	362	2	2024-08-01
10157	281	2	2024-03-06
10159	413	3	2024-08-07
10160	201	2	2024-02-04
10162	6	2	2024-05-07
10163	297	1	2024-07-19
10164	224	3	2024-09-14
10165	131	1	2024-06-22
10166	339	1	2024-11-20
10167	425	2	2024-09-24
10169	183	1	2024-06-10
10170	28	1	2024-02-28
10171	410	3	2024-09-06
10172	72	1	2024-10-02
10173	199	3	2024-11-10
10174	84	1	2024-10-05
10175	208	1	2024-07-15
10176	421	1	2024-09-23
10177	465	2	2024-04-06
10178	185	2	2024-03-19
10180	147	3	2024-06-27
10181	126	2	2024-09-12
10182	456	1	2024-11-14
10183	35	1	2024-11-26
10184	237	2	2024-11-24
10185	311	3	2024-12-11
10186	297	3	2024-04-10
10188	405	3	2024-07-06
10189	421	2	2024-10-27
10190	460	3	2024-08-15
10191	176	3	2024-02-05
10192	396	2	2024-03-20
10193	119	1	2024-12-27
10195	418	2	2024-07-24
10196	420	1	2024-04-21
10198	227	3	2024-05-21
10199	91	3	2024-04-09
10200	250	1	2024-06-11
10201	127	3	2024-05-20
10202	39	1	2024-09-17
10203	223	2	2024-04-01
10205	183	1	2024-04-25
10206	232	1	2024-05-05
10207	258	1	2024-12-08
10208	204	3	2024-10-30
10210	337	3	2024-04-13
10211	124	2	2024-12-03
10212	60	2	2024-03-06
10213	359	1	2024-09-19
10215	368	2	2024-10-25
10216	145	1	2024-09-10
10217	417	1	2024-09-27
10218	171	3	2024-11-22
10219	438	2	2024-05-24
10220	276	3	2024-12-26
10221	268	2	2024-03-23
10222	296	3	2024-04-30
10223	460	2	2024-10-21
10224	75	2	2024-06-15
10225	143	2	2024-10-05
10228	196	3	2024-10-17
10229	215	1	2024-06-19
10230	75	2	2024-07-29
10231	452	1	2024-10-14
10233	290	2	2024-02-04
10234	397	2	2024-02-12
10235	50	2	2024-09-27
10236	305	1	2024-02-19
10237	62	3	2024-07-05
10238	122	2	2024-08-09
10239	325	1	2024-02-16
10240	13	3	2024-08-27
10242	14	2	2024-09-10
10243	491	1	2024-12-23
10244	479	3	2024-02-05
10245	435	2	2024-04-10
10246	447	1	2024-03-08
10247	7	3	2024-02-01
10249	251	3	2024-06-18
10250	276	3	2024-02-13
10251	281	3	2024-11-28
10252	429	3	2024-12-16
10253	169	1	2024-05-27
10254	259	1	2024-11-12
10255	225	2	2024-02-08
10256	194	1	2024-07-10
10257	477	1	2024-07-18
10258	204	1	2024-11-01
10259	14	2	2024-03-26
10260	415	1	2024-09-15
10261	48	1	2024-10-29
10262	149	3	2024-09-27
10263	494	2	2024-11-17
10264	214	2	2024-04-02
10265	206	2	2024-09-25
10266	422	1	2024-10-08
10267	272	3	2024-11-15
10268	58	2	2024-02-13
10269	358	2	2024-05-18
10270	78	2	2024-04-03
10271	50	3	2024-12-20
10272	22	3	2024-02-17
10273	100	1	2024-12-09
10275	181	2	2024-06-23
10276	123	3	2024-07-24
10277	262	1	2024-05-23
10278	300	3	2024-10-07
10279	445	3	2024-08-06
10280	28	3	2024-04-01
10282	323	2	2024-07-09
10283	443	3	2024-11-05
10284	494	3	2024-03-15
10285	277	1	2024-11-27
10286	415	1	2024-07-28
10287	174	1	2024-04-29
10288	493	1	2024-07-21
10289	395	2	2024-08-10
10290	477	3	2024-07-24
10292	454	3	2024-10-18
10293	167	3	2024-11-11
10295	247	2	2024-11-28
10296	278	1	2024-03-19
10297	439	3	2024-08-24
10298	53	3	2024-03-29
10300	18	2	2024-04-02
10301	389	2	2024-08-01
10302	21	1	2024-10-24
10303	269	3	2024-07-19
10304	330	3	2024-09-13
10305	83	2	2024-09-24
10306	246	2	2024-06-07
10307	151	1	2024-11-16
10310	378	2	2024-05-22
10311	407	2	2024-10-11
10312	463	1	2024-06-14
10313	78	2	2024-07-25
10314	344	2	2024-03-19
10315	425	1	2024-08-22
10316	265	3	2024-02-11
10317	37	3	2024-06-11
10318	329	2	2024-03-21
10319	224	1	2024-02-05
10321	262	2	2024-05-11
10322	286	2	2024-12-03
10323	50	1	2024-08-21
10324	84	1	2024-05-10
10325	413	2	2024-07-27
10327	115	3	2024-10-15
10328	207	2	2024-04-11
10329	168	2	2024-08-02
10330	356	2	2024-05-11
10331	344	3	2024-02-27
10332	421	3	2024-07-23
10333	239	3	2024-10-02
10334	358	2	2024-04-01
10335	436	3	2024-12-31
10336	340	3	2024-06-05
10337	385	3	2024-12-24
10338	415	1	2024-03-13
10339	310	2	2024-05-24
10341	286	2	2024-12-21
10342	279	1	2024-11-08
10343	140	2	2024-08-23
10344	207	2	2024-04-21
10345	475	2	2024-06-04
10346	30	1	2024-02-29
10347	220	3	2024-10-27
10348	295	1	2024-12-18
10349	357	1	2024-07-19
10350	456	1	2024-12-24
10351	434	2	2024-09-21
10352	46	2	2024-03-15
10353	226	3	2024-09-16
10354	243	2	2024-03-06
10355	271	1	2024-11-13
10356	241	3	2024-07-09
10357	353	2	2024-02-05
10358	499	1	2024-10-07
10359	378	3	2024-06-15
10360	395	1	2024-05-07
10361	156	3	2024-05-17
10362	128	1	2024-10-22
10363	1	3	2024-12-28
10364	256	3	2024-05-03
10365	483	1	2024-12-01
10366	320	2	2024-09-11
10367	199	1	2024-07-14
10368	482	1	2024-05-30
10369	204	3	2024-02-03
10370	370	2	2024-03-02
10371	308	2	2024-04-13
10372	342	3	2024-05-20
10373	297	3	2024-03-15
10374	351	2	2024-06-16
10375	476	3	2024-05-10
10376	32	3	2024-10-26
10377	317	3	2024-02-11
10378	75	3	2024-10-07
10379	234	3	2024-08-06
10380	453	3	2024-12-18
10381	172	1	2024-09-01
10382	127	2	2024-03-25
10383	272	3	2024-07-22
10384	106	3	2024-02-11
10385	125	3	2024-12-19
10386	133	2	2024-10-28
10387	296	3	2024-06-15
10388	366	1	2024-11-28
10389	295	2	2024-04-27
10390	24	3	2024-08-20
10391	203	3	2024-03-31
10394	285	1	2024-04-30
10395	101	3	2024-03-23
10396	121	1	2024-10-27
10397	293	3	2024-05-31
10398	367	3	2024-03-14
10399	461	1	2024-05-30
10400	225	3	2024-05-21
10402	256	2	2024-06-08
10403	281	1	2024-07-31
10404	202	2	2024-08-08
10405	344	1	2024-12-16
10406	137	3	2024-11-27
10408	283	3	2024-02-12
10410	324	3	2024-05-05
10411	382	1	2024-04-20
10412	183	2	2024-10-06
10413	434	3	2024-10-06
10414	9	3	2024-03-09
10415	393	3	2024-06-27
10416	300	1	2024-07-05
10417	197	1	2024-11-03
10418	206	3	2024-12-06
10419	76	3	2024-03-08
10420	274	1	2024-10-31
10421	59	3	2024-05-24
10422	231	1	2024-03-03
10423	150	1	2024-09-20
10424	448	2	2024-03-18
10425	186	3	2024-10-11
10426	82	3	2024-03-18
10428	309	1	2024-04-04
10429	410	2	2024-03-26
10430	171	2	2024-11-19
10431	424	2	2024-03-30
10432	397	3	2024-08-28
10433	448	1	2024-08-08
10434	437	2	2024-09-02
10436	426	3	2024-03-28
10438	216	3	2024-06-28
10439	348	1	2024-05-20
10440	348	2	2024-07-04
10441	288	3	2024-09-22
10442	361	3	2024-09-03
10443	107	1	2024-10-30
10445	32	1	2024-10-30
10446	285	2	2024-07-20
10447	300	2	2024-04-04
10448	70	3	2024-07-26
10449	165	3	2024-12-16
10450	350	3	2024-11-08
10451	206	3	2024-09-18
10452	473	1	2024-07-24
10453	195	2	2024-03-24
10454	392	3	2024-12-29
10455	162	3	2024-05-26
10456	271	3	2024-05-23
10457	373	3	2024-05-10
10458	395	3	2024-10-31
10460	394	1	2024-11-23
10462	146	1	2024-11-14
10463	279	2	2024-12-07
10464	443	3	2024-12-30
10465	421	3	2024-11-06
10466	22	3	2024-08-21
10467	447	3	2024-07-26
10468	482	1	2024-04-09
10469	154	1	2024-02-15
10470	247	2	2024-12-14
10471	146	3	2024-09-30
10472	144	2	2024-03-21
10473	8	3	2024-10-15
10474	299	3	2024-03-03
10475	121	1	2024-12-20
10476	129	3	2024-09-07
10478	165	2	2024-05-15
10479	146	1	2024-11-05
10480	282	3	2024-03-07
10482	266	2	2024-05-16
10483	107	1	2024-06-28
10484	80	3	2024-02-14
10485	77	3	2024-02-29
10487	175	3	2024-03-17
10488	172	1	2024-02-12
10490	105	1	2024-12-30
10491	312	3	2024-06-01
10492	69	2	2024-10-14
10493	450	2	2024-12-27
10494	222	3	2024-11-23
10496	57	2	2024-02-16
10497	265	3	2024-05-16
10498	446	3	2024-07-16
10499	67	2	2024-06-16
10501	133	1	2024-11-05
10502	159	1	2024-08-02
10503	449	1	2024-12-01
10504	182	1	2024-05-14
10505	269	2	2024-05-18
10506	286	2	2024-11-19
10507	90	1	2024-03-04
10508	372	3	2024-04-28
10509	409	2	2024-09-21
10510	267	1	2024-03-21
10511	356	1	2024-02-18
10512	348	1	2024-05-04
10513	481	1	2024-02-12
10514	398	2	2024-04-11
10515	171	1	2024-05-04
10516	35	2	2024-04-29
10517	20	1	2024-09-08
10518	464	3	2024-05-15
10519	344	1	2024-10-21
10520	452	2	2024-08-14
10521	377	2	2024-04-22
10522	275	2	2024-06-09
10523	460	1	2024-06-02
10524	362	3	2024-06-29
10525	404	2	2024-08-30
10526	348	2	2024-11-27
10527	180	3	2024-03-05
10529	175	2	2024-06-06
10530	440	2	2024-07-10
10532	220	3	2024-11-12
10533	70	3	2024-03-17
10534	440	1	2024-02-21
10535	213	3	2024-06-12
10536	3	2	2024-10-16
10537	183	2	2024-09-06
10538	149	3	2024-02-28
10539	98	1	2024-08-09
10541	381	2	2024-07-08
10542	419	1	2024-09-29
10543	374	2	2024-02-18
10544	416	1	2024-03-18
10545	106	1	2024-08-27
10546	189	3	2024-02-15
10547	316	1	2024-04-06
10548	478	3	2024-11-11
10549	471	1	2024-03-29
10550	33	2	2024-08-07
10551	243	1	2024-02-18
10552	423	1	2024-10-23
10553	199	2	2024-10-31
10554	69	2	2024-07-22
10555	334	3	2024-07-04
10556	199	2	2024-06-11
10557	296	3	2024-10-12
10558	288	1	2024-06-30
10559	232	1	2024-02-20
10561	315	3	2024-10-28
10562	112	2	2024-08-19
10563	32	2	2024-02-01
10564	390	2	2024-08-17
10565	449	3	2024-06-05
10566	167	1	2024-02-03
10567	173	1	2024-07-23
10568	105	1	2024-10-09
10569	187	2	2024-09-27
10571	20	1	2024-05-31
10572	417	1	2024-07-04
10573	54	1	2024-06-07
10574	315	3	2024-11-06
10576	137	3	2024-08-27
10577	194	3	2024-04-28
10579	275	1	2024-11-03
10580	170	1	2024-07-03
10581	47	3	2024-11-18
10582	192	3	2024-11-13
10583	484	2	2024-07-01
10584	408	1	2024-07-20
10585	399	1	2024-11-30
10586	426	2	2024-11-29
10587	415	2	2024-05-13
10588	365	1	2024-05-31
10589	244	2	2024-09-03
10590	470	3	2024-07-16
10591	408	1	2024-02-17
10592	285	1	2024-03-02
10593	36	2	2024-04-04
10595	51	1	2024-03-26
10597	313	1	2024-05-02
10598	254	2	2024-10-30
10599	375	3	2024-06-30
10600	386	1	2024-05-29
10602	60	2	2024-04-07
10603	214	1	2024-12-26
10604	401	3	2024-10-18
10605	74	1	2024-09-16
10606	402	2	2024-09-22
10607	97	2	2024-04-16
10609	394	1	2024-06-21
10611	452	2	2024-06-30
10612	18	2	2024-02-10
10613	128	2	2024-06-13
10614	371	3	2024-02-28
10615	18	3	2024-11-10
10616	465	1	2024-07-22
10617	313	2	2024-08-30
10618	358	2	2024-09-05
10619	257	2	2024-09-03
10620	163	2	2024-12-18
10621	282	1	2024-10-30
10622	396	1	2024-04-04
10623	104	1	2024-08-10
10624	189	3	2024-11-18
10626	465	1	2024-03-10
10627	243	1	2024-12-30
10628	21	2	2024-03-06
10629	54	1	2024-08-08
10630	139	2	2024-06-08
10631	341	1	2024-02-10
10632	212	2	2024-11-09
10633	13	3	2024-09-08
10634	170	1	2024-05-11
10635	399	2	2024-12-11
10636	453	2	2024-10-05
10637	427	2	2024-09-29
10638	416	2	2024-06-02
10639	221	1	2024-10-18
10640	259	1	2024-03-30
10642	179	3	2024-11-26
10643	339	2	2024-07-18
10645	119	2	2024-07-21
10647	436	1	2024-08-18
10648	9	2	2024-12-21
10649	226	1	2024-03-03
10650	229	3	2024-04-26
10651	447	3	2024-06-20
10652	2	2	2024-07-01
10653	262	1	2024-09-05
10655	143	3	2024-06-15
10656	373	3	2024-02-07
10657	4	2	2024-06-22
10658	265	3	2024-07-28
10659	431	2	2024-06-12
10660	66	2	2024-07-18
10661	367	2	2024-10-22
10662	364	3	2024-12-23
10663	161	2	2024-11-16
10665	409	3	2024-10-20
10666	257	1	2024-09-08
10668	407	2	2024-09-12
10671	278	3	2024-08-25
10672	165	1	2024-07-27
10673	109	1	2024-05-03
10674	364	2	2024-04-19
10675	485	2	2024-12-18
10676	65	3	2024-11-09
10677	292	3	2024-12-08
10678	76	1	2024-10-15
10679	176	2	2024-09-30
10680	11	3	2024-02-08
10681	333	1	2024-02-29
10682	418	2	2024-07-21
10683	421	1	2024-04-28
10685	164	3	2024-08-22
10686	244	2	2024-09-06
10687	330	1	2024-12-14
10688	395	2	2024-04-16
10689	475	1	2024-03-05
10690	94	1	2024-10-18
10691	416	3	2024-07-22
10692	108	2	2024-04-20
10693	224	3	2024-02-22
10694	190	1	2024-05-13
10695	396	1	2024-07-31
10696	432	1	2024-11-08
10697	459	1	2024-02-10
10698	217	1	2024-09-30
10699	322	2	2024-10-29
10700	345	2	2024-03-03
10701	111	2	2024-02-12
10702	499	2	2024-02-27
10703	392	1	2024-02-20
10704	35	1	2024-05-17
10705	375	2	2024-10-04
10706	481	2	2024-11-21
10707	76	2	2024-06-13
10708	82	1	2024-08-23
10709	93	2	2024-02-27
10710	46	1	2024-03-30
10711	498	1	2024-10-13
10712	190	2	2024-05-04
10713	141	1	2024-05-03
10714	227	1	2024-03-09
10715	20	3	2024-12-20
10716	227	3	2024-05-31
10717	68	1	2024-09-23
10718	350	2	2024-11-30
10719	351	3	2024-05-29
10720	296	3	2024-07-25
10721	343	3	2024-11-03
10723	455	1	2024-11-09
10724	462	3	2024-04-19
10725	290	3	2024-05-26
10726	346	2	2024-08-09
10727	286	2	2024-08-29
10728	182	3	2024-09-06
10730	311	3	2024-12-30
10731	239	2	2024-12-24
10732	71	3	2024-02-09
10733	101	1	2024-08-12
10734	219	2	2024-06-04
10735	484	2	2024-11-11
10736	88	1	2024-11-24
10737	141	3	2024-05-18
10738	250	3	2024-02-20
10741	289	2	2024-07-21
10742	423	3	2024-09-21
10744	115	3	2024-08-06
10747	500	3	2024-09-04
10748	48	3	2024-03-22
10749	187	2	2024-02-25
10750	430	3	2024-11-30
10751	236	2	2024-08-01
10752	338	3	2024-04-27
10753	315	1	2024-05-27
10754	332	2	2024-09-02
10755	205	1	2024-12-15
10756	353	3	2024-02-06
10757	95	1	2024-11-11
10758	72	1	2024-11-24
10759	113	2	2024-08-10
10760	370	2	2024-11-22
10761	355	3	2024-05-28
10763	56	2	2024-06-24
10764	140	3	2024-11-16
10766	258	3	2024-12-17
10767	330	2	2024-03-27
10768	325	1	2024-06-11
10769	364	1	2024-12-31
10771	497	1	2024-11-18
10772	12	2	2024-05-02
10773	379	2	2024-07-07
10774	302	2	2024-06-13
10775	113	3	2024-04-08
10776	296	3	2024-05-11
10779	467	3	2024-03-08
10780	269	2	2024-11-20
10781	187	1	2024-03-12
10782	448	2	2024-10-28
10783	310	3	2024-02-14
10784	15	2	2024-06-29
10785	336	2	2024-10-29
10786	268	3	2024-12-16
10787	291	1	2024-03-01
10788	337	2	2024-05-24
10789	167	1	2024-02-24
10790	198	3	2024-05-10
10791	431	3	2024-08-06
10792	83	1	2024-07-31
10793	328	3	2024-05-08
10794	113	2	2024-10-19
10796	260	3	2024-11-04
10797	233	1	2024-12-31
10798	421	3	2024-10-21
10799	333	1	2024-11-28
10800	248	3	2024-07-11
10801	432	3	2024-09-25
10803	292	2	2024-10-13
10804	410	3	2024-03-05
10805	151	2	2024-11-20
10807	386	2	2024-12-31
10808	428	2	2024-09-05
10809	252	2	2024-09-27
10810	452	2	2024-11-03
10811	141	1	2024-06-08
10812	144	2	2024-03-19
10813	440	3	2024-03-21
10814	163	2	2024-03-11
10815	156	2	2024-04-08
10816	231	1	2024-10-05
10817	242	3	2024-06-18
10818	65	2	2024-11-27
10819	35	2	2024-04-06
10820	309	1	2024-03-30
10821	440	3	2024-07-31
10822	499	3	2024-07-06
10823	378	1	2024-11-23
10825	342	3	2024-09-28
10827	351	2	2024-02-23
10828	82	2	2024-11-13
10829	78	3	2024-10-01
10830	118	3	2024-10-11
10831	151	3	2024-03-09
10832	269	3	2024-03-03
10833	485	3	2024-10-19
10834	266	1	2024-11-16
10836	442	3	2024-12-14
10837	244	2	2024-08-30
10838	486	2	2024-08-26
10839	180	3	2024-05-26
10840	97	1	2024-06-28
10841	320	2	2024-03-05
10842	192	3	2024-12-01
10843	59	3	2024-02-12
10844	280	1	2024-11-08
10845	76	1	2024-07-25
10846	162	3	2024-02-18
10847	420	2	2024-03-27
10848	361	2	2024-08-31
10849	222	2	2024-05-02
10850	73	2	2024-07-11
10851	385	3	2024-11-07
10852	326	3	2024-11-28
10853	10	2	2024-12-23
10854	146	3	2024-02-24
10855	278	2	2024-08-10
10858	205	1	2024-09-01
10859	140	1	2024-12-21
10862	473	1	2024-11-09
10863	149	3	2024-05-16
10864	147	2	2024-11-12
10865	257	2	2024-06-16
10866	254	3	2024-07-24
10867	338	2	2024-11-11
10868	255	2	2024-08-07
10869	151	2	2024-08-16
10870	428	2	2024-10-23
10871	41	3	2024-11-15
10872	361	1	2024-11-15
10873	114	3	2024-08-11
10874	15	2	2024-12-10
10875	160	3	2024-04-28
10876	48	3	2024-02-08
10877	152	1	2024-08-16
10878	41	2	2024-02-16
10880	276	1	2024-11-14
10881	493	3	2024-11-03
10882	422	1	2024-08-02
10883	279	3	2024-11-20
10884	43	3	2024-08-18
10886	41	2	2024-08-02
10887	412	1	2024-06-13
10888	472	2	2024-08-12
10889	65	3	2024-06-18
10890	363	2	2024-02-14
10891	494	2	2024-06-16
10892	18	2	2024-08-07
10893	26	2	2024-03-29
10894	102	1	2024-11-07
10895	226	1	2024-09-17
10896	420	3	2024-09-26
10897	12	3	2024-06-30
10898	130	2	2024-10-22
10899	310	3	2024-09-25
10900	301	1	2024-02-08
10901	371	3	2024-08-28
10902	328	1	2024-06-28
10903	276	3	2024-12-06
10904	263	1	2024-08-09
10905	450	3	2024-07-18
10907	188	3	2024-04-14
10908	460	2	2024-07-01
10909	454	2	2024-06-24
10910	423	2	2024-06-10
10911	462	3	2024-04-03
10912	53	2	2024-04-27
10913	436	2	2024-02-26
10914	192	3	2024-08-10
10915	500	3	2024-10-30
10916	47	3	2024-08-12
10917	59	1	2024-11-27
10918	87	3	2024-06-28
10919	254	3	2024-11-11
10921	261	2	2024-06-21
10922	77	3	2024-10-28
10923	416	3	2024-06-24
10924	456	1	2024-04-24
10925	190	3	2024-03-03
10926	180	3	2024-02-25
10928	119	2	2024-11-06
10929	317	3	2024-11-24
10930	472	2	2024-11-21
10931	65	3	2024-12-19
10932	249	1	2024-10-29
10933	449	2	2024-05-30
10935	249	2	2024-07-01
10937	249	2	2024-11-03
10938	230	1	2024-04-22
10939	391	3	2024-12-11
10941	454	1	2024-06-11
10943	44	3	2024-05-17
10944	91	2	2024-06-29
10945	44	2	2024-02-15
10946	59	2	2024-02-16
10947	445	3	2024-12-26
10948	459	3	2024-05-28
10950	20	3	2024-12-16
10951	3	3	2024-03-22
10953	174	3	2024-05-24
10955	124	1	2024-07-13
10956	266	2	2024-09-06
10957	442	3	2024-10-23
10958	120	3	2024-02-03
10959	35	3	2024-06-26
10960	374	3	2024-09-25
10961	153	1	2024-11-23
10962	9	1	2024-04-02
10963	108	1	2024-08-05
10964	147	2	2024-05-16
10965	213	1	2024-04-01
10966	488	2	2024-04-12
10967	384	1	2024-07-13
10968	131	2	2024-07-07
10969	326	3	2024-12-22
10970	465	3	2024-07-06
10971	199	1	2024-02-13
10972	413	3	2024-08-28
10973	400	3	2024-04-13
10974	425	2	2024-07-09
10975	6	1	2024-08-26
10976	55	3	2024-04-06
10977	14	3	2024-12-31
10979	6	1	2024-08-15
10980	254	1	2024-09-11
10981	260	2	2024-12-26
10982	238	1	2024-07-27
10983	4	1	2024-04-25
10984	3	1	2024-03-19
10985	189	1	2024-09-19
10986	172	2	2024-10-16
10987	424	1	2024-07-21
10988	499	3	2024-08-26
10989	360	2	2024-03-02
10990	384	2	2024-11-19
10991	451	3	2024-10-02
10992	231	1	2024-12-22
10993	319	2	2024-02-14
10994	419	1	2024-09-02
10995	213	2	2024-04-30
10996	207	2	2024-03-21
10997	248	3	2024-06-08
10998	250	1	2024-10-05
10999	302	3	2024-05-20
11000	144	1	2024-07-19
11001	305	1	2024-09-24
11002	41	2	2024-06-15
11003	390	2	2024-10-14
11004	85	1	2024-05-25
11005	342	3	2024-02-06
11006	382	3	2024-11-18
11007	155	2	2024-06-02
11008	316	3	2024-04-04
11009	406	3	2024-10-30
11010	66	3	2024-08-09
11011	240	2	2024-09-03
11014	84	2	2024-04-26
11015	382	3	2024-12-07
11017	295	1	2024-11-30
11018	424	1	2024-07-04
11019	243	1	2024-10-05
11020	483	2	2024-04-09
11021	482	2	2024-04-13
11022	279	3	2024-11-16
11025	392	1	2024-09-30
11026	407	1	2024-10-13
11027	448	3	2024-02-21
11028	6	3	2024-05-04
11029	414	3	2024-08-09
11030	313	1	2024-12-29
11032	146	3	2024-10-29
11033	286	2	2024-05-11
11035	183	2	2024-10-23
11036	95	1	2024-03-04
11037	339	2	2024-03-24
11038	3	2	2024-05-11
11039	248	1	2024-08-03
11040	208	1	2024-05-15
11041	307	3	2024-08-24
11042	329	3	2024-09-27
11043	318	2	2024-11-18
11044	344	1	2024-11-03
11045	331	2	2024-06-26
11046	327	1	2024-06-17
11047	484	2	2024-06-11
11049	72	1	2024-12-19
11050	447	2	2024-08-26
11051	444	3	2024-05-28
11052	13	3	2024-08-18
11054	96	2	2024-04-17
11055	163	1	2024-09-22
11056	88	3	2024-06-16
11057	225	3	2024-03-24
11059	152	1	2024-10-02
11060	265	2	2024-12-29
11061	46	3	2024-11-18
11062	38	1	2024-02-06
11063	139	2	2024-08-03
11064	295	2	2024-03-18
11065	199	2	2024-06-07
11066	328	3	2024-11-02
11067	37	1	2024-06-18
11068	398	2	2024-09-30
11069	119	1	2024-06-22
11070	494	2	2024-07-23
11071	200	3	2024-09-08
11072	500	2	2024-11-07
11073	435	3	2024-03-21
11074	113	3	2024-08-22
11075	389	3	2024-08-27
11076	36	3	2024-12-27
11077	191	2	2024-12-08
11078	361	1	2024-04-06
11079	124	1	2024-05-30
11080	457	1	2024-07-13
11081	35	3	2024-02-20
11082	255	1	2024-11-12
11083	438	2	2024-04-04
11084	246	1	2024-05-26
11085	52	3	2024-12-05
11086	211	3	2024-12-06
11087	231	3	2024-03-03
11088	304	3	2024-05-08
11089	10	3	2024-09-05
11091	454	2	2024-11-02
11092	189	1	2024-07-09
11093	76	2	2024-06-21
11094	29	2	2024-11-28
11095	345	3	2024-12-16
11096	341	3	2024-09-09
11097	429	2	2024-10-09
11098	125	2	2024-06-03
11100	495	3	2024-02-21
11101	108	2	2024-10-07
11102	84	3	2024-12-20
11103	354	1	2024-10-27
11104	363	2	2024-03-30
11105	318	2	2024-09-11
11106	463	2	2024-02-03
11107	362	1	2024-08-12
11108	102	3	2024-05-31
11110	233	2	2024-05-30
11111	279	1	2024-04-18
11112	1	3	2024-06-14
11113	242	1	2024-08-20
11114	286	2	2024-09-06
11115	2	1	2024-11-26
11116	435	1	2024-08-03
11117	393	2	2024-12-09
11118	280	1	2024-05-16
11119	111	3	2024-08-11
11120	408	1	2024-04-15
11121	276	3	2024-10-12
11122	111	3	2024-06-12
11123	418	2	2024-04-15
11124	103	3	2024-08-24
11125	69	3	2024-06-18
11126	445	1	2024-02-12
11127	481	2	2024-08-31
11128	46	2	2024-06-05
11129	399	2	2024-06-17
11130	228	3	2024-11-19
11131	70	1	2024-11-14
11132	441	3	2024-09-23
11133	222	2	2024-10-30
11134	234	2	2024-02-07
11135	268	1	2024-07-04
11136	444	2	2024-12-03
11137	336	1	2024-08-15
11138	306	2	2024-04-15
11140	499	1	2024-04-20
11141	430	3	2024-08-02
11142	213	1	2024-04-07
11143	288	2	2024-03-26
11144	247	2	2024-11-25
11145	122	1	2024-06-22
11146	145	3	2024-10-31
11147	10	3	2024-12-11
11148	214	1	2024-11-05
11149	87	1	2024-06-22
11152	299	2	2024-07-17
11153	50	3	2024-05-06
11154	95	2	2024-09-28
11155	84	1	2024-04-18
11156	252	1	2024-10-24
11157	39	2	2024-05-02
11158	236	1	2024-02-14
11159	399	1	2024-03-07
11162	242	3	2024-02-25
11163	87	3	2024-10-07
11165	123	2	2024-12-13
11166	239	3	2024-10-25
11167	315	3	2024-02-13
11168	15	2	2024-05-07
11169	229	1	2024-05-05
11170	294	2	2024-08-01
11171	21	2	2024-07-01
11172	438	1	2024-06-11
11173	410	1	2024-06-02
11174	248	3	2024-12-25
11175	298	2	2024-09-01
11176	290	3	2024-03-29
11177	276	1	2024-03-17
11179	122	1	2024-08-14
11180	188	2	2024-07-18
11181	199	3	2024-06-10
11182	86	3	2024-02-02
11183	387	1	2024-02-11
11184	124	2	2024-06-24
11185	342	3	2024-09-20
11186	375	3	2024-10-22
11187	338	2	2024-08-26
11188	324	2	2024-07-24
11189	17	1	2024-06-23
11190	304	3	2024-08-06
11191	467	2	2024-04-12
11192	105	2	2024-11-24
11193	37	3	2024-12-01
11194	423	3	2024-09-11
11195	258	1	2024-03-14
11196	482	1	2024-08-10
11198	367	3	2024-09-23
11199	393	2	2024-07-01
11200	334	2	2024-05-31
11201	219	1	2024-12-07
11202	225	2	2024-10-05
11203	199	2	2024-10-12
11204	351	1	2024-10-25
11205	41	1	2024-04-08
11206	102	1	2024-07-14
11207	166	2	2024-06-29
11208	21	3	2024-10-31
11209	98	2	2024-02-06
11210	174	3	2024-12-22
11211	241	1	2024-09-08
11212	92	3	2024-06-07
11213	18	3	2024-04-16
11214	118	1	2024-11-29
11215	318	2	2024-06-02
11216	176	1	2024-05-16
11217	283	1	2024-04-19
11218	95	3	2024-08-25
11219	105	3	2024-03-29
11220	42	3	2024-05-22
11221	326	1	2024-05-20
11222	21	2	2024-05-10
11223	404	2	2024-03-13
11224	201	3	2024-08-29
11225	112	2	2024-03-22
11226	26	3	2024-12-17
11227	448	3	2024-11-15
11228	145	1	2024-02-04
11229	62	3	2024-02-14
11230	112	2	2024-06-15
11231	360	3	2024-02-03
11232	94	3	2024-05-14
11233	368	1	2024-09-23
11234	379	3	2024-10-10
11235	388	1	2024-06-28
11236	188	3	2024-02-12
11238	164	1	2024-06-04
11239	343	3	2024-03-23
11240	320	3	2024-08-08
11241	231	2	2024-04-06
11243	376	2	2024-03-09
11244	164	1	2024-08-16
11245	247	1	2024-05-19
11246	153	2	2024-02-24
11247	68	1	2024-10-11
11248	119	2	2024-12-30
11249	147	3	2024-03-26
11250	67	1	2024-08-21
11251	14	2	2024-07-23
11252	114	3	2024-05-01
11253	57	2	2024-07-19
11254	72	3	2024-07-24
11255	163	2	2024-07-01
11256	23	1	2024-08-15
11257	467	2	2024-02-14
11258	403	1	2024-02-26
11259	318	2	2024-09-17
11260	52	2	2024-11-18
11261	10	1	2024-10-23
11262	48	3	2024-11-15
11263	170	1	2024-03-11
11264	348	1	2024-10-18
11265	276	3	2024-12-24
11266	465	1	2024-05-15
11267	60	3	2024-06-12
11268	376	2	2024-05-01
11269	418	2	2024-08-12
11270	247	3	2024-09-22
11271	288	1	2024-10-01
11273	2	2	2024-07-22
11274	340	3	2024-11-24
11275	52	2	2024-10-11
11276	409	2	2024-08-19
11277	248	2	2024-08-05
11278	390	2	2024-08-25
11279	296	2	2024-12-30
11281	247	2	2024-04-04
11282	426	2	2024-12-21
11283	98	2	2024-03-08
11284	221	1	2024-10-22
11286	317	2	2024-09-16
11287	443	1	2024-03-20
11288	481	2	2024-04-05
11289	369	3	2024-02-07
11290	496	1	2024-02-20
11291	50	1	2024-10-20
11292	80	3	2024-09-23
11293	128	3	2024-11-24
11294	476	3	2024-08-27
11295	140	1	2024-02-18
11296	15	2	2024-10-01
11297	5	2	2024-02-27
11298	82	1	2024-09-19
11299	285	3	2024-09-17
11300	323	3	2024-10-20
11301	36	3	2024-02-27
11302	70	1	2024-08-14
11303	271	1	2024-03-08
11304	360	2	2024-05-03
11305	241	2	2024-02-04
11306	116	2	2024-07-27
11307	274	2	2024-08-27
11308	54	2	2024-04-09
11309	298	3	2024-09-09
11310	274	2	2024-04-29
11311	445	3	2024-10-23
11312	18	2	2024-08-13
11313	65	1	2024-08-29
11314	248	2	2024-07-25
11315	158	2	2024-06-17
11316	306	3	2024-12-14
11317	432	3	2024-08-17
11318	301	2	2024-05-14
11319	329	3	2024-08-26
11320	156	3	2024-11-16
11321	48	2	2024-08-13
11322	462	2	2024-07-15
11323	53	2	2024-03-22
11325	46	1	2024-12-08
11326	463	2	2024-09-22
11327	386	1	2024-11-17
11328	185	3	2024-06-08
11329	248	2	2024-03-01
11330	143	3	2024-10-22
11331	175	1	2024-10-29
11332	397	3	2024-07-19
11333	336	1	2024-06-23
11334	93	3	2024-11-19
11335	373	1	2024-04-23
11337	141	2	2024-03-03
11338	101	2	2024-07-18
11339	448	2	2024-08-22
11340	480	3	2024-04-01
11341	467	2	2024-07-29
11342	399	1	2024-09-10
11343	411	3	2024-10-17
11344	398	2	2024-08-26
11345	345	2	2024-12-08
11346	209	1	2024-06-22
11348	282	2	2024-09-24
11349	444	3	2024-09-28
11350	397	1	2024-10-19
11351	436	2	2024-11-18
11352	437	1	2024-09-17
11354	245	1	2024-12-01
11355	243	1	2024-08-01
11356	467	1	2024-06-04
11357	153	2	2024-08-21
11358	395	2	2024-02-18
11359	335	2	2024-03-16
11360	178	1	2024-05-19
11361	155	3	2024-12-20
11362	437	1	2024-04-29
11363	230	1	2024-12-05
11364	171	2	2024-04-14
11365	412	2	2024-10-15
11366	340	3	2024-12-21
11367	8	2	2024-02-13
11368	110	1	2024-03-22
11369	175	1	2024-04-20
11370	173	1	2024-12-21
11371	147	1	2024-09-14
11372	444	2	2024-03-31
11373	426	3	2024-08-04
11374	489	1	2024-12-19
11375	289	1	2024-10-01
11377	302	2	2024-12-02
11379	394	1	2024-02-13
11381	413	2	2024-08-02
11382	223	2	2024-04-09
11383	317	2	2024-03-27
11384	296	2	2024-07-21
11385	41	3	2024-06-09
11386	135	2	2024-04-22
11387	150	2	2024-02-28
11388	340	1	2024-02-08
11389	176	3	2024-05-01
11390	262	2	2024-09-21
11391	473	1	2024-11-16
11392	329	3	2024-05-04
11394	448	1	2024-10-12
11395	321	1	2024-08-22
11396	367	1	2024-04-18
11397	194	1	2024-05-23
11399	386	2	2024-05-22
11400	374	1	2024-11-26
11401	273	2	2024-10-07
11403	30	1	2024-04-21
11404	221	2	2024-05-15
11405	366	3	2024-06-25
11406	390	2	2024-03-27
11407	95	1	2024-03-15
11408	258	1	2024-04-16
11410	290	3	2024-09-19
11411	271	2	2024-07-24
11412	485	2	2024-05-11
11413	202	2	2024-11-11
11414	462	1	2024-08-21
11415	166	2	2024-07-07
11416	280	2	2024-11-10
11417	460	3	2024-06-15
11418	376	1	2024-12-07
11419	201	1	2024-10-27
11420	42	2	2024-04-12
11421	49	3	2024-07-20
11422	6	3	2024-12-01
11423	72	1	2024-05-18
11424	292	1	2024-09-02
11425	191	1	2024-02-07
11426	491	3	2024-04-08
11427	76	2	2024-06-19
11428	315	2	2024-07-05
11430	74	2	2024-02-27
11431	443	2	2024-10-25
11432	8	2	2024-04-02
11433	107	3	2024-05-08
11434	238	3	2024-09-03
11435	446	3	2024-07-22
11436	290	1	2024-04-15
11437	222	2	2024-12-08
11438	360	3	2024-03-10
11440	231	3	2024-10-30
11441	340	1	2024-03-07
11442	145	3	2024-09-18
11443	490	2	2024-08-14
11444	3	2	2024-09-10
11445	469	1	2024-04-07
11446	281	2	2024-09-01
11447	281	1	2024-10-18
11448	291	2	2024-04-28
11449	488	1	2024-06-15
11450	248	1	2024-08-04
11451	112	1	2024-08-05
11452	305	3	2024-05-28
11453	141	2	2024-06-30
11454	244	3	2024-02-11
11455	181	3	2024-10-22
11456	101	3	2024-04-13
11457	384	3	2024-02-09
11458	46	3	2024-02-23
11459	28	2	2024-02-04
11460	192	1	2024-03-06
11461	190	2	2024-07-27
11463	278	2	2024-02-11
11464	489	2	2024-08-14
11465	460	1	2024-04-29
11466	108	1	2024-04-16
11468	19	2	2024-03-29
11469	493	3	2024-09-19
11470	200	2	2024-08-25
11471	491	3	2024-04-12
11472	180	3	2024-12-10
11473	177	2	2024-07-27
11474	210	2	2024-11-06
11476	308	2	2024-10-25
11477	405	1	2024-02-11
11478	440	1	2024-06-30
11479	310	2	2024-09-10
11480	76	3	2024-10-03
11481	71	3	2024-05-14
11482	279	1	2024-08-24
11483	296	1	2024-10-02
11484	49	3	2024-06-11
11485	119	2	2024-04-29
11486	416	2	2024-05-02
11487	400	1	2024-02-17
11488	495	1	2024-08-24
11489	216	1	2024-07-14
11490	170	2	2024-08-06
11491	326	1	2024-09-24
11492	241	2	2024-05-05
11493	65	3	2024-02-25
11495	83	3	2024-07-30
11496	30	3	2024-03-25
11498	181	3	2024-10-17
11499	24	3	2024-02-25
11500	319	3	2024-06-06
11501	421	1	2024-04-02
11503	341	1	2024-05-10
11504	331	1	2024-10-28
11505	166	1	2024-09-29
11506	188	1	2024-04-15
11507	267	2	2024-06-24
11508	340	1	2024-07-06
11509	134	1	2024-07-28
11510	248	3	2024-11-02
11511	319	1	2024-10-21
11513	494	1	2024-07-25
11514	155	1	2024-11-17
11515	280	2	2024-08-02
11516	232	1	2024-06-04
11518	313	2	2024-07-08
11519	48	2	2024-10-25
11520	276	2	2024-05-30
11521	85	2	2024-05-02
11522	232	1	2024-10-04
11523	419	3	2024-05-17
11524	460	1	2024-11-30
11525	334	1	2024-09-04
11526	358	1	2024-02-14
11527	238	3	2024-12-23
11528	22	2	2024-08-22
11529	207	3	2024-06-05
11530	363	3	2024-03-15
11531	342	1	2024-09-06
11532	120	2	2024-11-21
11533	55	1	2024-03-23
11534	500	2	2024-03-15
11535	113	1	2024-04-11
11536	467	1	2024-10-17
11537	273	3	2024-11-22
11538	288	3	2024-12-21
11539	128	2	2024-08-17
11540	124	1	2024-08-06
11541	436	1	2024-12-25
11542	267	1	2024-09-05
11543	324	3	2024-10-28
11545	159	2	2024-02-01
11547	34	3	2024-04-21
11548	329	3	2024-09-19
11550	423	3	2024-07-12
11551	416	3	2024-07-20
11553	318	1	2024-09-27
11554	349	2	2024-12-13
11555	447	3	2024-09-15
11556	291	1	2024-11-11
11557	280	2	2024-03-28
11559	228	3	2024-09-22
11560	447	2	2024-08-22
11561	463	2	2024-09-25
11562	485	2	2024-09-15
11563	124	3	2024-12-24
11564	232	3	2024-10-02
11565	59	1	2024-08-03
11566	380	2	2024-11-23
11567	474	3	2024-04-18
11568	259	3	2024-04-22
11569	243	2	2024-05-10
11570	30	3	2024-10-19
11571	470	3	2024-08-19
11572	112	1	2024-10-11
11573	36	2	2024-11-13
11574	347	3	2024-02-18
11575	148	2	2024-07-27
11576	418	3	2024-10-27
11577	130	2	2024-11-05
11578	469	1	2024-07-27
11579	201	2	2024-10-06
11580	33	3	2024-11-05
11581	149	1	2024-12-08
11582	64	3	2024-11-29
11583	391	1	2024-08-21
11584	357	1	2024-09-02
11585	347	3	2024-04-12
11586	351	1	2024-06-18
11587	205	3	2024-03-26
11589	411	2	2024-09-11
11590	438	2	2024-06-11
11591	39	1	2024-10-08
11592	399	1	2024-04-24
11593	408	2	2024-06-24
11594	106	2	2024-09-13
11595	214	3	2024-06-04
11596	451	3	2024-08-28
11597	374	1	2024-08-05
11598	231	1	2024-04-11
11599	249	2	2024-10-30
11600	158	2	2024-04-26
11601	86	1	2024-07-14
11602	65	1	2024-07-08
11603	10	1	2024-11-26
11604	202	1	2024-03-30
11605	463	2	2024-07-18
11606	401	3	2024-04-16
11608	52	3	2024-10-01
11609	94	3	2024-11-01
11610	357	2	2024-08-31
11611	351	3	2024-09-06
11612	162	3	2024-11-11
11613	321	3	2024-03-26
11614	489	3	2024-04-27
11615	468	2	2024-11-09
11616	140	1	2024-04-03
11617	34	3	2024-03-25
11618	280	2	2024-03-17
11619	369	3	2024-07-22
11620	419	3	2024-11-05
11621	214	2	2024-05-30
11622	445	2	2024-06-02
11623	476	3	2024-12-16
11624	494	2	2024-04-24
11625	4	1	2024-06-10
11627	320	1	2024-09-18
11628	33	3	2024-12-22
11629	36	3	2024-02-03
11630	303	3	2024-09-30
11632	485	3	2024-11-30
11633	107	2	2024-09-13
11634	500	3	2024-04-13
11635	313	1	2024-04-26
11636	122	1	2024-03-30
11638	413	2	2024-02-28
11639	489	1	2024-12-11
11640	195	1	2024-04-05
11641	184	3	2024-12-03
11642	342	2	2024-10-21
11643	157	2	2024-07-14
11644	295	1	2024-12-31
11645	310	2	2024-11-05
11646	461	3	2024-12-08
11647	248	2	2024-09-25
11648	191	1	2024-02-08
11649	105	1	2024-09-22
11650	125	3	2024-06-05
11651	129	3	2024-11-04
11652	186	1	2024-11-27
11653	87	1	2024-10-06
11654	194	2	2024-10-15
11655	455	3	2024-12-15
11657	378	2	2024-12-24
11658	90	3	2024-04-24
11659	146	3	2024-07-20
11660	92	2	2024-11-04
11661	207	2	2024-10-15
11662	416	2	2024-02-03
11663	33	2	2024-04-06
11664	483	3	2024-05-25
11665	447	3	2024-12-03
11666	203	1	2024-03-26
11667	109	2	2024-08-23
11668	138	1	2024-09-09
11669	428	3	2024-12-03
11671	322	1	2024-03-11
11672	344	1	2024-08-14
11673	481	2	2024-07-03
11674	498	3	2024-03-20
11675	94	2	2024-10-04
11677	221	2	2024-04-21
11678	32	2	2024-02-02
11680	49	2	2024-11-29
11681	317	1	2024-02-26
11682	241	2	2024-09-08
11683	85	2	2024-02-05
11684	131	3	2024-08-30
11685	293	3	2024-04-18
11686	63	3	2024-07-05
11687	273	1	2024-06-01
11688	44	2	2024-02-29
11689	276	2	2024-10-25
11691	470	3	2024-06-03
11693	264	2	2024-11-09
11694	460	3	2024-03-04
11695	428	3	2024-07-18
11696	376	1	2024-04-26
11697	399	2	2024-09-20
11698	486	2	2024-06-19
11699	287	2	2024-05-25
11700	303	2	2024-06-09
11701	477	2	2024-03-17
11702	376	1	2024-05-02
11703	469	2	2024-03-20
11704	311	3	2024-07-04
11705	227	1	2024-02-21
11706	411	1	2024-11-27
11707	133	1	2024-05-15
11708	471	2	2024-05-13
11710	223	3	2024-10-20
11711	473	3	2024-07-23
11712	331	2	2024-09-11
11713	314	1	2024-05-15
11714	440	3	2024-07-12
11715	157	3	2024-08-30
11718	218	3	2024-02-06
11719	341	1	2024-04-22
11720	188	1	2024-02-20
11721	82	2	2024-10-16
11722	206	2	2024-12-03
11723	158	3	2024-09-19
11724	353	1	2024-08-30
11725	192	1	2024-06-09
11727	485	2	2024-08-21
11728	13	1	2024-11-04
11729	450	2	2024-07-03
11730	111	2	2024-04-11
11731	381	2	2024-10-20
11732	308	1	2024-06-20
11733	216	1	2024-06-02
11734	63	1	2024-03-29
11735	390	3	2024-07-03
11736	276	1	2024-02-25
11737	178	3	2024-08-08
11738	494	1	2024-08-01
11740	18	3	2024-09-09
11741	481	2	2024-08-12
11742	197	3	2024-03-05
11743	205	1	2024-10-23
11744	362	3	2024-12-09
11745	249	2	2024-05-26
11746	11	2	2024-05-27
11747	469	1	2024-10-23
11748	403	3	2024-07-07
11749	486	2	2024-11-05
11750	182	1	2024-05-17
11751	72	3	2024-08-13
11752	229	1	2024-10-07
11753	461	3	2024-12-10
11754	292	1	2024-05-06
11755	188	2	2024-03-17
11756	496	2	2024-04-01
11757	231	1	2024-11-27
11758	320	3	2024-07-15
11759	193	1	2024-03-20
11760	412	3	2024-08-09
11761	439	3	2024-09-10
11762	100	1	2024-07-07
11763	477	3	2024-11-21
11764	378	3	2024-04-27
11765	254	2	2024-08-02
11766	468	2	2024-05-10
11767	436	1	2024-03-15
11768	2	1	2024-04-28
11769	257	2	2024-07-02
11770	124	2	2024-09-09
11771	269	1	2024-09-24
11772	86	3	2024-09-28
11774	122	2	2024-11-10
11775	414	1	2024-02-20
11776	256	1	2024-06-11
11777	316	1	2024-03-26
11778	284	1	2024-11-24
11780	261	3	2024-03-07
11781	381	1	2024-11-14
11782	159	2	2024-03-28
11783	172	1	2024-10-26
11784	146	1	2024-12-27
11785	428	2	2024-09-08
11786	196	1	2024-07-07
11789	365	3	2024-09-05
11790	79	2	2024-09-14
11791	280	2	2024-11-12
11792	86	2	2024-06-05
11794	274	2	2024-02-13
11795	259	2	2024-06-25
11796	112	2	2024-04-26
11797	51	2	2024-12-12
11798	445	3	2024-09-05
11799	374	3	2024-10-06
11800	281	3	2024-07-14
11801	421	1	2024-12-07
11802	292	1	2024-12-28
11803	57	1	2024-02-19
11804	422	3	2024-08-04
11805	432	3	2024-09-07
11806	189	1	2024-12-31
11807	196	3	2024-05-22
11808	212	2	2024-02-09
11809	258	2	2024-08-25
11810	173	1	2024-06-26
11811	5	3	2024-07-26
11812	349	1	2024-02-01
11813	253	2	2024-05-14
11814	58	1	2024-04-13
11815	350	2	2024-03-28
11816	19	1	2024-10-16
11818	44	3	2024-12-26
11819	274	1	2024-07-10
11820	283	2	2024-07-08
11821	38	2	2024-09-15
11822	122	1	2024-07-04
11823	471	2	2024-10-14
11824	211	2	2024-08-12
11825	288	2	2024-04-02
11827	300	3	2024-12-19
11828	348	1	2024-10-29
11829	291	1	2024-10-23
11830	82	3	2024-07-11
11832	381	1	2024-04-28
11833	116	3	2024-07-09
11834	286	2	2024-04-04
11835	365	1	2024-10-27
11836	175	3	2024-12-30
11837	215	3	2024-05-28
11838	430	2	2024-11-06
11839	124	2	2024-04-19
11840	36	2	2024-09-02
11841	90	1	2024-05-23
11842	237	1	2024-05-03
11843	399	2	2024-11-26
11844	411	3	2024-09-19
11845	370	1	2024-04-04
11846	25	2	2024-03-08
11847	123	2	2024-05-09
11848	153	2	2024-08-15
11849	452	2	2024-07-15
11850	351	3	2024-04-17
11851	22	1	2024-02-24
11852	67	3	2024-05-25
11853	312	3	2024-07-11
11855	429	1	2024-11-15
11856	348	1	2024-03-07
11857	245	2	2024-03-21
11858	220	1	2024-05-29
11860	436	2	2024-05-17
11861	68	2	2024-10-30
11862	341	2	2024-12-04
11863	307	2	2024-08-23
11864	366	3	2024-05-04
11865	479	1	2024-04-19
11866	474	1	2024-03-06
11867	357	2	2024-06-25
11868	250	2	2024-10-21
11869	476	1	2024-08-25
11870	234	2	2024-06-29
11871	273	3	2024-04-19
11873	362	3	2024-09-10
11874	250	2	2024-10-25
11875	250	1	2024-10-12
11876	436	1	2024-12-29
11877	498	2	2024-08-11
11878	268	3	2024-12-29
11879	440	3	2024-07-21
11880	107	3	2024-08-16
11881	117	3	2024-02-27
11882	171	2	2024-07-12
11883	490	3	2024-07-21
11885	124	1	2024-10-15
11886	264	3	2024-04-23
11887	170	2	2024-07-22
11888	449	3	2024-12-08
11889	51	3	2024-04-28
11890	493	3	2024-05-05
11891	212	1	2024-02-04
11892	5	2	2024-03-20
11893	317	3	2024-05-15
11894	476	1	2024-08-03
11895	112	2	2024-03-25
11896	276	1	2024-05-11
11898	461	1	2024-12-21
11899	186	3	2024-07-03
11900	252	1	2024-09-25
11901	10	3	2024-02-02
11902	442	3	2024-02-07
11903	409	2	2024-11-17
11904	94	2	2024-04-27
11905	101	2	2024-03-19
11906	491	1	2024-07-06
11907	187	1	2024-11-15
11908	65	1	2024-06-07
11909	386	1	2024-07-10
11910	363	1	2024-11-29
11911	242	2	2024-06-12
11912	391	2	2024-09-28
11913	411	3	2024-05-14
11914	320	1	2024-03-25
11915	425	3	2024-11-10
11916	293	3	2024-10-30
11917	109	1	2024-04-14
11919	422	2	2024-12-26
11920	234	3	2024-09-24
11921	36	1	2024-12-04
11922	231	2	2024-08-29
11923	155	1	2024-11-21
11924	438	1	2024-09-30
11925	351	3	2024-06-07
11927	34	2	2024-04-10
11928	431	1	2024-04-17
11929	32	2	2024-11-30
11930	14	2	2024-02-25
11932	195	2	2024-05-24
11933	161	2	2024-05-06
11934	17	2	2024-04-17
11935	424	3	2024-05-23
11936	7	3	2024-09-21
11937	472	2	2024-09-22
11938	269	2	2024-11-27
11939	297	2	2024-04-10
11941	451	3	2024-10-19
11942	276	1	2024-05-13
11943	497	3	2024-11-25
11944	207	2	2024-12-29
11945	317	1	2024-05-03
11946	16	3	2024-03-10
11947	70	3	2024-09-08
11948	124	3	2024-06-25
11949	214	3	2024-11-13
11951	198	1	2024-12-09
11952	153	3	2024-12-01
11953	153	2	2024-03-27
11954	27	1	2024-08-23
11955	221	3	2024-12-30
11956	139	3	2024-03-30
11957	425	2	2024-09-16
11958	458	2	2024-11-19
11959	371	3	2024-10-07
11960	392	1	2024-02-19
11961	188	2	2024-05-17
11962	498	3	2024-02-16
11963	2	2	2024-08-14
11964	204	1	2024-12-11
11966	121	3	2024-03-10
11967	460	1	2024-03-02
11968	428	3	2024-02-25
11969	13	3	2024-12-31
11970	398	3	2024-07-25
11971	202	2	2024-08-29
11973	285	2	2024-05-07
11974	27	3	2024-02-14
11976	228	2	2024-04-18
11977	443	1	2024-09-29
11978	199	1	2024-08-23
11979	157	2	2024-04-14
11980	305	1	2024-06-06
11981	58	2	2024-06-04
11982	355	3	2024-02-15
11983	16	2	2024-04-26
11984	42	1	2024-05-26
11985	253	1	2024-10-20
11986	205	1	2024-06-10
11987	5	2	2024-10-06
11988	120	1	2024-10-28
11989	300	2	2024-10-27
11990	461	2	2024-08-02
11991	71	1	2024-10-11
11992	134	1	2024-04-01
11993	139	3	2024-03-22
11994	252	1	2024-10-09
11995	142	1	2024-02-08
11996	300	1	2024-03-19
11997	253	1	2024-12-18
11998	16	1	2024-12-21
11999	257	1	2024-11-03
12000	21	1	2024-12-25
12001	416	1	2024-08-24
12002	435	1	2024-12-22
12003	429	3	2024-07-04
12004	102	1	2024-09-06
12005	428	1	2024-10-11
12006	3	1	2024-02-14
12007	254	1	2024-04-03
12008	35	1	2024-11-19
12009	332	3	2024-02-18
12011	323	2	2024-04-18
12012	407	1	2024-11-15
12013	450	1	2024-11-14
12014	229	1	2024-08-02
12015	48	3	2024-05-20
12016	101	1	2024-06-05
12017	316	3	2024-04-20
12018	149	2	2024-07-09
12019	173	2	2024-06-24
12020	234	2	2024-04-07
12021	12	3	2024-10-15
12022	383	2	2024-07-09
12023	325	1	2024-03-09
12024	312	3	2024-05-04
12025	447	1	2024-07-10
12026	380	2	2024-10-04
12027	122	2	2024-06-15
12028	498	3	2024-02-23
12030	307	2	2024-03-03
12031	378	1	2024-11-12
12032	470	2	2024-12-14
12033	160	1	2024-05-18
12034	407	1	2024-07-16
12035	173	1	2024-02-01
12036	318	2	2024-03-12
12037	167	2	2024-08-25
12038	174	2	2024-08-05
12039	39	1	2024-09-29
12040	109	1	2024-10-17
12041	430	2	2024-10-02
12042	58	2	2024-04-16
12044	413	2	2024-06-05
12045	255	2	2024-12-20
12046	273	2	2024-08-05
12047	150	3	2024-08-01
12048	122	2	2024-11-07
12049	65	3	2024-04-17
12050	385	3	2024-09-01
12051	61	1	2024-02-10
12052	75	1	2024-06-20
12053	473	1	2024-12-07
12055	198	1	2024-08-19
12056	468	1	2024-06-11
12057	389	1	2024-11-04
12058	15	1	2024-07-04
12059	388	3	2024-05-14
12060	441	3	2024-10-21
12061	179	3	2024-05-03
12063	183	2	2024-02-12
12064	475	1	2024-09-21
12065	190	3	2024-07-25
12066	377	1	2024-11-14
12068	220	3	2024-11-21
12069	24	2	2024-11-20
12070	289	2	2024-09-18
12071	474	2	2024-08-18
12072	108	1	2024-06-01
12073	73	3	2024-11-27
12074	158	2	2024-08-17
12075	242	1	2024-11-01
12076	467	3	2024-11-19
12077	493	3	2024-02-16
12078	189	3	2024-12-01
12079	175	2	2024-08-10
12080	459	3	2024-12-02
12081	126	3	2024-04-14
12082	73	3	2024-09-01
12084	180	2	2024-07-16
12085	215	2	2024-09-09
12086	406	1	2024-03-26
12087	131	2	2024-08-17
12088	136	3	2024-09-23
12089	262	3	2024-02-10
12090	115	1	2024-05-17
12091	315	3	2024-12-24
12092	383	2	2024-03-04
12094	12	1	2024-05-20
12095	315	3	2024-07-15
12096	147	1	2024-04-02
12097	348	1	2024-07-17
12098	471	1	2024-08-10
12099	265	1	2024-07-13
12100	330	1	2024-10-03
12101	268	3	2024-07-16
12102	336	2	2024-06-16
12103	162	2	2024-08-16
12105	177	1	2024-02-05
12108	164	2	2024-06-03
12110	146	3	2024-09-16
12111	332	1	2024-05-09
12112	400	3	2024-04-01
12114	405	2	2024-12-31
12115	193	3	2024-02-11
12116	148	3	2024-04-10
12117	442	3	2024-09-21
12120	118	2	2024-09-27
12122	460	2	2024-06-14
12123	136	2	2024-02-29
12124	61	1	2024-03-20
12125	480	1	2024-07-29
12126	477	3	2024-02-25
12127	372	3	2024-11-01
12128	319	3	2024-02-27
12129	481	2	2024-09-25
12130	73	2	2024-08-31
12132	292	3	2024-10-27
12133	112	1	2024-02-06
12134	165	3	2024-07-14
12135	86	3	2024-08-07
12136	416	2	2024-10-02
12137	149	3	2024-11-04
12139	467	2	2024-04-10
12140	150	3	2024-04-11
12141	314	3	2024-04-18
12142	491	1	2024-12-16
12143	27	3	2024-03-07
12144	329	1	2024-08-09
12145	438	2	2024-03-07
12146	345	2	2024-07-29
12147	264	2	2024-07-07
12148	369	1	2024-06-27
12149	174	2	2024-08-12
12150	212	2	2024-02-02
12151	416	1	2024-02-25
12152	369	3	2024-10-04
12153	451	3	2024-04-28
12154	228	1	2024-11-20
12155	283	1	2024-08-05
12156	247	1	2024-12-01
12157	316	1	2024-06-16
12158	88	3	2024-04-12
12159	483	3	2024-06-03
12160	10	1	2024-03-27
12161	440	3	2024-09-04
12162	282	1	2024-03-05
12163	262	2	2024-05-15
12164	405	3	2024-11-14
12165	403	1	2024-07-03
12166	355	3	2024-10-03
12167	489	3	2024-05-27
12169	285	3	2024-12-01
12170	129	2	2024-07-27
12172	326	3	2024-10-14
12173	267	2	2024-11-04
12174	195	3	2024-03-06
12175	351	1	2024-07-05
12176	372	2	2024-12-26
12177	211	1	2024-11-21
12178	410	3	2024-11-23
12179	150	1	2024-11-23
12180	498	2	2024-12-18
12181	131	3	2024-02-12
12182	356	3	2024-08-31
12183	339	2	2024-06-10
12185	242	2	2024-05-02
12187	175	2	2024-02-27
12188	301	2	2024-08-08
12189	475	2	2024-03-13
12190	132	2	2024-12-15
12191	361	3	2024-05-12
12192	156	2	2024-08-22
12194	187	3	2024-03-19
12195	1	1	2024-12-26
12196	206	3	2024-02-11
12197	30	2	2024-11-22
12198	92	2	2024-10-19
12199	142	1	2024-07-17
12200	138	1	2024-08-29
12201	393	2	2024-03-15
12202	357	1	2024-02-26
12203	79	2	2024-11-25
12204	54	2	2024-03-11
12205	272	1	2024-06-09
12206	83	1	2024-08-07
12207	207	2	2024-02-19
12208	167	2	2024-07-03
12209	180	1	2024-04-28
12210	200	2	2024-02-15
12211	376	2	2024-02-10
12212	244	3	2024-05-01
12213	222	3	2024-07-01
12214	429	1	2024-06-03
12215	394	1	2024-06-26
12216	395	1	2024-05-09
12217	230	2	2024-05-13
12218	317	1	2024-04-21
12219	264	3	2024-02-16
12220	17	3	2024-08-22
12221	486	2	2024-07-16
12222	241	1	2024-12-24
12223	361	3	2024-06-12
12224	463	1	2024-07-22
12226	174	3	2024-05-15
12227	54	2	2024-02-02
12228	389	3	2024-06-22
12229	108	1	2024-08-23
12230	217	3	2024-09-28
12231	377	1	2024-07-04
12232	454	3	2024-11-03
12233	412	3	2024-02-26
12234	275	2	2024-11-16
12235	295	3	2024-08-20
12236	352	1	2024-03-09
12237	36	3	2024-04-19
12238	1	1	2024-09-11
12239	129	2	2024-03-12
12240	55	3	2024-03-26
12241	442	3	2024-09-06
12242	259	1	2024-03-09
12243	365	3	2024-02-22
12244	200	1	2024-10-24
12245	107	3	2024-04-27
12246	428	3	2024-04-14
12247	425	1	2024-08-24
12248	500	2	2024-10-19
12250	492	2	2024-05-28
12251	322	1	2024-02-28
12252	484	2	2024-04-18
12253	488	2	2024-07-01
12254	388	2	2024-07-15
12255	65	2	2024-06-12
12256	380	3	2024-12-19
12257	243	1	2024-09-24
12258	95	2	2024-05-22
12259	184	1	2024-10-05
12261	447	3	2024-05-04
12262	375	3	2024-10-27
12263	460	1	2024-05-08
12264	217	1	2024-10-04
12265	435	3	2024-06-25
12266	312	3	2024-10-30
12267	204	1	2024-11-06
12268	497	2	2024-03-11
12269	373	1	2024-10-04
12270	494	1	2024-02-03
12271	441	2	2024-07-14
12272	297	2	2024-08-18
12273	391	2	2024-12-09
12274	438	2	2024-09-08
12275	64	1	2024-02-16
12276	259	1	2024-11-17
12277	292	1	2024-06-30
12278	232	1	2024-03-14
12281	411	3	2024-03-04
12282	300	2	2024-10-31
12283	23	2	2024-12-08
12284	236	3	2024-04-03
12285	240	2	2024-02-13
12286	316	3	2024-03-08
12288	239	1	2024-12-12
12289	435	3	2024-04-17
12290	209	2	2024-07-05
12291	393	2	2024-05-18
12292	489	3	2024-12-04
12293	244	2	2024-05-07
12294	335	2	2024-02-20
12295	229	1	2024-08-29
12296	422	3	2024-02-01
12297	300	1	2024-11-02
12298	477	2	2024-09-20
12299	317	3	2024-10-01
12300	485	3	2024-03-04
12301	327	1	2024-11-27
12302	225	3	2024-02-28
12303	231	2	2024-07-29
12304	384	2	2024-02-08
12306	190	1	2024-04-10
12307	344	3	2024-09-26
12308	153	2	2024-04-21
12309	56	2	2024-10-11
12311	371	2	2024-04-01
12312	309	3	2024-11-08
12313	161	3	2024-06-30
12314	488	3	2024-11-19
12315	293	3	2024-10-22
12317	76	1	2024-11-11
12318	276	1	2024-09-09
12319	419	1	2024-11-23
12320	35	2	2024-02-27
12321	274	2	2024-03-24
12322	185	3	2024-06-13
12323	271	2	2024-08-23
12324	175	2	2024-09-09
12325	81	2	2024-05-20
12327	199	2	2024-06-19
12328	436	2	2024-11-06
12330	153	2	2024-11-07
12331	80	2	2024-04-26
12332	166	1	2024-12-02
12333	302	2	2024-12-28
12334	168	3	2024-02-28
12335	425	3	2024-07-03
12336	163	1	2024-04-26
12337	211	1	2024-12-09
12338	468	1	2024-08-16
12339	86	1	2024-07-18
12340	330	1	2024-06-05
12341	271	3	2024-08-22
12342	30	1	2024-11-06
12343	150	3	2024-08-19
12344	139	3	2024-09-06
12345	383	2	2024-08-22
12346	309	3	2024-06-12
12347	130	2	2024-09-18
12348	483	2	2024-05-09
12349	180	1	2024-09-10
12350	464	3	2024-04-11
12351	377	1	2024-03-25
12352	100	2	2024-05-08
12353	52	3	2024-11-26
12354	126	2	2024-12-30
12355	394	1	2024-06-08
12356	416	1	2024-03-09
12357	18	3	2024-11-14
12358	268	1	2024-02-04
12359	289	1	2024-10-11
12361	266	2	2024-06-07
12362	150	1	2024-07-15
12363	460	3	2024-05-25
12364	456	1	2024-08-23
12365	114	1	2024-05-16
12366	350	3	2024-09-14
12369	34	3	2024-11-22
12370	198	2	2024-04-12
12371	151	2	2024-11-11
12372	61	2	2024-11-26
12373	233	3	2024-05-03
12374	153	3	2024-04-26
12375	218	1	2024-06-30
12377	359	1	2024-12-05
12378	48	2	2024-02-05
12379	175	2	2024-12-04
12380	407	3	2024-03-06
12381	40	1	2024-09-18
12382	104	3	2024-08-31
12386	224	1	2024-12-26
12387	70	2	2024-08-27
12388	309	2	2024-06-07
12389	298	2	2024-05-02
12390	177	2	2024-10-10
12391	245	3	2024-12-16
12392	316	3	2024-11-16
12393	496	3	2024-04-06
12394	62	3	2024-12-22
12395	386	1	2024-05-22
12396	413	3	2024-10-19
12397	259	1	2024-07-26
12399	238	1	2024-08-27
12401	172	2	2024-10-06
12402	149	1	2024-04-09
12403	343	3	2024-02-14
12404	423	1	2024-09-03
12405	56	1	2024-11-17
12406	361	2	2024-08-04
12407	280	2	2024-02-19
12409	228	2	2024-02-06
12411	254	3	2024-05-10
12412	224	1	2024-03-22
12413	239	1	2024-08-17
12414	397	3	2024-04-12
12415	114	1	2024-05-11
12416	77	2	2024-03-02
12417	65	1	2024-08-20
12418	433	2	2024-11-24
12420	220	2	2024-02-23
12421	4	2	2024-05-20
12422	374	1	2024-08-17
12424	62	2	2024-08-06
12425	16	1	2024-07-27
12426	326	3	2024-04-08
12427	366	2	2024-05-08
12428	11	2	2024-10-02
12429	255	2	2024-10-09
12430	263	2	2024-03-24
12431	367	3	2024-09-24
12432	482	2	2024-12-16
12433	24	3	2024-08-28
12434	383	1	2024-03-10
12435	52	1	2024-03-12
12437	72	3	2024-02-09
12438	200	1	2024-12-06
12439	209	3	2024-06-15
12440	158	2	2024-07-04
12441	46	3	2024-02-02
12442	223	3	2024-04-29
12443	417	2	2024-09-23
12445	186	1	2024-03-10
12446	400	3	2024-09-30
12447	236	3	2024-12-23
12449	385	2	2024-12-12
12450	408	1	2024-05-29
12451	244	1	2024-10-12
12452	241	3	2024-04-07
12453	475	1	2024-03-13
12455	328	2	2024-10-20
12456	36	3	2024-07-28
12458	112	2	2024-04-17
12459	495	3	2024-06-15
12460	114	3	2024-03-09
12461	313	2	2024-02-04
12462	116	1	2024-04-02
12463	245	1	2024-11-22
12465	107	2	2024-04-02
12467	322	1	2024-03-19
12468	37	3	2024-04-26
12469	442	3	2024-02-01
12470	290	2	2024-08-20
12471	494	2	2024-07-03
12472	209	3	2024-09-09
12474	314	3	2024-05-27
12475	379	3	2024-05-18
12476	494	3	2024-09-20
12477	46	2	2024-04-11
12478	51	3	2024-12-14
12479	326	3	2024-05-09
12480	23	1	2024-07-31
12481	255	2	2024-12-27
12482	241	3	2024-11-10
12483	459	1	2024-11-18
12484	358	1	2024-05-26
12485	438	1	2024-12-13
12486	257	2	2024-07-12
12488	231	3	2024-12-14
12489	108	3	2024-08-24
12490	475	1	2024-11-30
12492	364	1	2024-09-15
12493	40	3	2024-06-02
12496	284	3	2024-11-29
12498	12	3	2024-12-27
12499	92	2	2024-03-01
12500	317	1	2024-05-07
12501	250	2	2024-08-12
12503	37	1	2024-02-23
12504	13	3	2024-09-28
12505	254	2	2024-08-30
12506	291	2	2024-12-16
12507	452	1	2024-09-01
12508	27	2	2024-10-05
12509	305	2	2024-09-07
12510	265	2	2024-11-20
12511	32	3	2024-03-09
12512	341	1	2024-10-15
12513	223	3	2024-07-01
12514	430	3	2024-02-29
12516	401	2	2024-11-05
12517	299	1	2024-02-25
12519	262	1	2024-10-28
12521	185	3	2024-02-18
12522	334	2	2024-07-17
12523	184	3	2024-05-13
12524	327	3	2024-08-24
12526	413	1	2024-11-26
12527	466	2	2024-09-25
12528	485	2	2024-10-13
12529	258	2	2024-09-13
12530	325	3	2024-06-16
12531	405	2	2024-08-23
12532	456	2	2024-07-05
12533	223	3	2024-12-30
12534	191	3	2024-10-26
12535	103	3	2024-05-04
12536	239	3	2024-12-05
12537	167	1	2024-10-25
12538	314	3	2024-12-09
12539	313	3	2024-10-09
12540	480	2	2024-11-30
12541	414	3	2024-04-25
12542	188	2	2024-09-16
12543	335	1	2024-08-19
12544	98	2	2024-08-17
12545	422	3	2024-08-21
12546	123	3	2024-10-10
12547	489	2	2024-11-17
12548	276	3	2024-04-22
12549	29	3	2024-03-12
12551	129	2	2024-07-17
12552	255	2	2024-08-25
12553	459	3	2024-04-27
12554	89	2	2024-12-31
12555	408	1	2024-11-07
12556	23	1	2024-03-02
12557	384	3	2024-03-26
12558	176	2	2024-10-02
12559	364	2	2024-07-31
12560	146	1	2024-02-05
12561	57	2	2024-10-09
12562	427	2	2024-08-11
12563	36	2	2024-04-01
12564	360	2	2024-09-03
12565	1	2	2024-09-22
12566	81	2	2024-10-21
12567	180	1	2024-04-14
12568	35	3	2024-02-19
12569	354	2	2024-04-03
12570	146	3	2024-03-19
12571	101	1	2024-06-18
12572	320	2	2024-07-04
12573	27	1	2024-07-04
12574	400	2	2024-10-22
12575	105	2	2024-06-18
12576	430	2	2024-08-23
12577	9	2	2024-04-18
12578	349	1	2024-05-23
12579	382	2	2024-03-14
12580	165	2	2024-03-18
12581	194	3	2024-12-09
12582	211	3	2024-02-20
12583	164	3	2024-05-08
12584	441	2	2024-03-29
12585	413	2	2024-05-11
12586	86	3	2024-09-20
12587	251	3	2024-03-26
12590	402	3	2024-09-06
12591	25	2	2024-08-15
12592	157	2	2024-09-03
12593	190	1	2024-05-29
12595	194	1	2024-10-30
12596	473	3	2024-11-14
12597	212	3	2024-02-26
12598	156	3	2024-02-03
12599	353	2	2024-07-19
12601	436	3	2024-08-26
12602	298	1	2024-04-15
12603	10	1	2024-10-08
12604	410	2	2024-04-20
12605	245	1	2024-05-22
12606	130	1	2024-05-30
12607	56	3	2024-08-29
12608	213	3	2024-12-17
12609	164	2	2024-05-02
12610	372	3	2024-08-11
12611	88	2	2024-07-01
12612	118	2	2024-07-15
12613	39	1	2024-08-17
12614	101	3	2024-02-03
12615	9	3	2024-05-03
12616	424	2	2024-07-07
12617	343	2	2024-07-07
12618	124	2	2024-05-12
12619	205	2	2024-06-24
12620	103	3	2024-06-23
12621	185	3	2024-09-11
12622	347	2	2024-03-26
12623	238	2	2024-08-29
12624	27	2	2024-08-06
12626	419	2	2024-12-14
12627	421	2	2024-09-11
12628	268	1	2024-10-12
12629	150	2	2024-04-24
12630	456	2	2024-05-17
12631	117	2	2024-11-06
12632	344	1	2024-11-21
12633	271	1	2024-02-02
12634	373	3	2024-08-09
12635	316	2	2024-08-15
12636	305	2	2024-03-13
12637	242	2	2024-07-30
12639	308	2	2024-05-20
12640	387	1	2024-02-09
12641	108	2	2024-07-17
12642	181	3	2024-08-27
12643	43	3	2024-10-07
12644	422	3	2024-12-01
12645	137	3	2024-05-05
12646	246	3	2024-10-20
12647	184	3	2024-12-04
12648	379	3	2024-06-11
12650	194	1	2024-05-08
12651	213	2	2024-10-10
12652	206	2	2024-06-05
12653	97	2	2024-02-06
12654	183	1	2024-10-31
12655	279	1	2024-09-11
12656	405	3	2024-05-22
12657	207	1	2024-05-05
12658	37	2	2024-06-15
12659	239	2	2024-02-17
12660	397	2	2024-07-24
12662	303	3	2024-11-30
12663	479	2	2024-06-26
12664	391	1	2024-02-29
12665	88	3	2024-12-01
12666	435	1	2024-06-25
12667	382	1	2024-09-25
12668	82	3	2024-11-27
12669	215	3	2024-09-24
12670	282	1	2024-11-01
12671	130	1	2024-07-08
12672	389	1	2024-11-29
12673	120	1	2024-10-17
12674	432	2	2024-03-09
12675	252	1	2024-11-26
12676	483	2	2024-02-20
12677	281	1	2024-09-06
12680	72	2	2024-03-27
12681	490	1	2024-06-05
12682	417	1	2024-08-06
12683	475	2	2024-11-06
12684	365	1	2024-04-20
12685	15	1	2024-04-22
12686	207	3	2024-04-02
12687	195	1	2024-02-08
12688	486	1	2024-02-08
12689	429	1	2024-11-06
12690	168	2	2024-11-13
12691	447	2	2024-04-01
12692	284	2	2024-05-18
12693	147	2	2024-05-18
12694	54	1	2024-04-22
12697	93	2	2024-03-14
12698	106	3	2024-06-10
12699	67	2	2024-10-07
12700	223	2	2024-11-05
12701	430	1	2024-07-11
12702	394	2	2024-08-30
12703	357	2	2024-02-10
12704	302	1	2024-06-26
12705	316	3	2024-12-09
12707	313	2	2024-10-13
12708	192	1	2024-12-03
12709	75	2	2024-08-30
12710	148	2	2024-11-03
12711	23	1	2024-11-11
12712	252	3	2024-10-30
12715	365	3	2024-03-25
12716	44	3	2024-11-07
12717	323	1	2024-10-30
12718	311	1	2024-03-06
12719	40	2	2024-07-16
12720	431	2	2024-07-15
12721	250	1	2024-04-28
12722	357	1	2024-10-08
12723	297	3	2024-09-23
12724	130	3	2024-03-20
12725	496	3	2024-12-23
12727	266	1	2024-04-18
12728	224	2	2024-04-30
12729	283	1	2024-04-22
12730	279	3	2024-03-20
12731	287	2	2024-02-10
12732	457	1	2024-04-23
12733	290	2	2024-10-03
12735	73	1	2024-03-01
12736	145	2	2024-08-17
12738	393	3	2024-11-13
12739	49	3	2024-11-22
12740	147	1	2024-03-30
12741	280	2	2024-07-07
12742	303	1	2024-12-18
12743	364	2	2024-03-16
12744	35	1	2024-07-16
12745	447	1	2024-11-24
12746	295	2	2024-08-22
12747	410	3	2024-08-01
12748	454	2	2024-09-01
12749	45	2	2024-04-17
12750	27	1	2024-09-09
12751	486	3	2024-03-04
12752	297	1	2024-11-27
12753	20	2	2024-08-04
12754	62	2	2024-03-28
12755	205	1	2024-09-24
12756	344	2	2024-03-30
12757	355	3	2024-12-11
12758	458	3	2024-02-17
12759	463	3	2024-06-11
12760	236	2	2024-05-14
12761	378	1	2024-03-09
12762	330	2	2024-05-18
12763	250	1	2024-08-30
12764	160	1	2024-10-04
12765	16	1	2024-03-16
12766	247	3	2024-05-29
12767	296	1	2024-02-10
12768	133	2	2024-07-04
12769	360	3	2024-03-01
12770	463	1	2024-03-10
12771	450	3	2024-05-24
12772	336	2	2024-03-04
12773	140	1	2024-03-27
12774	281	3	2024-10-06
12775	85	2	2024-08-18
12776	144	1	2024-06-06
12777	41	1	2024-03-29
12778	78	3	2024-02-01
12779	386	3	2024-04-18
12780	134	1	2024-06-19
12781	268	3	2024-11-20
12782	20	1	2024-02-03
12783	70	3	2024-06-30
12785	490	3	2024-05-06
12786	442	1	2024-03-26
12787	154	3	2024-11-02
12788	150	1	2024-05-15
12789	406	1	2024-07-04
12790	320	3	2024-09-25
12791	361	1	2024-03-22
12792	357	3	2024-04-25
12793	138	1	2024-03-11
12795	185	1	2024-09-22
12796	288	1	2024-08-19
12797	128	1	2024-02-17
12798	390	3	2024-06-27
12799	172	2	2024-09-24
12800	358	3	2024-03-02
12802	17	2	2024-11-22
12804	287	3	2024-10-16
12805	280	1	2024-02-02
12807	396	1	2024-06-21
12808	92	2	2024-12-18
12809	183	1	2024-04-10
12810	404	1	2024-02-18
12811	454	2	2024-05-09
12812	194	2	2024-10-04
12814	178	1	2024-04-10
12815	332	1	2024-05-18
12816	434	1	2024-06-04
12818	381	2	2024-08-11
12820	123	3	2024-12-17
12821	305	1	2024-04-30
12822	193	2	2024-11-28
12823	403	3	2024-03-09
12824	15	1	2024-12-08
12825	143	3	2024-10-30
12826	469	1	2024-09-11
12827	80	1	2024-02-08
12828	293	3	2024-03-23
12829	331	3	2024-02-26
12830	35	2	2024-12-10
12831	489	2	2024-08-09
12832	305	1	2024-09-15
12833	416	2	2024-04-01
12835	96	3	2024-12-05
12836	169	2	2024-09-02
12838	114	3	2024-06-02
12839	196	2	2024-05-30
12841	225	2	2024-06-06
12843	357	2	2024-08-03
12844	343	2	2024-05-23
12845	204	2	2024-10-15
12846	424	2	2024-10-13
12847	127	2	2024-10-04
12849	246	2	2024-07-11
12850	109	3	2024-06-02
12851	134	2	2024-12-21
12852	345	1	2024-09-09
12853	301	2	2024-09-30
12854	280	2	2024-04-14
12855	238	3	2024-05-30
12856	251	2	2024-11-17
12857	268	3	2024-04-16
12858	370	1	2024-12-18
12859	246	1	2024-04-18
12860	8	2	2024-02-23
12861	306	2	2024-10-22
12862	282	3	2024-07-26
12863	277	2	2024-04-02
12864	137	3	2024-02-16
12865	250	1	2024-04-06
12867	286	1	2024-03-30
12868	62	3	2024-04-20
12869	318	2	2024-03-16
12870	240	3	2024-04-21
12871	321	2	2024-03-07
12872	11	1	2024-07-27
12873	103	2	2024-05-10
12874	141	3	2024-05-11
12876	492	2	2024-12-16
12877	439	1	2024-06-02
12878	323	3	2024-12-03
12879	274	3	2024-05-01
12880	216	3	2024-03-01
12881	378	2	2024-09-30
12882	170	2	2024-04-22
12883	377	2	2024-09-02
12884	418	3	2024-12-12
12885	134	1	2024-11-30
12886	143	3	2024-05-15
12887	3	2	2024-11-03
12888	341	3	2024-08-16
12889	347	2	2024-10-31
12890	117	1	2024-06-25
12891	235	1	2024-07-30
12893	409	1	2024-03-21
12894	88	1	2024-08-04
12895	331	1	2024-07-19
12896	316	1	2024-10-18
12897	68	1	2024-12-04
12898	189	1	2024-10-14
12899	215	2	2024-02-06
12900	495	1	2024-07-06
12901	164	1	2024-05-04
12902	202	1	2024-10-11
12903	243	1	2024-07-17
12904	254	3	2024-10-30
12906	450	2	2024-06-30
12908	171	2	2024-04-04
12909	251	1	2024-04-27
12910	90	1	2024-03-21
12911	208	1	2024-05-06
12912	430	2	2024-06-16
12913	427	1	2024-06-29
12914	296	2	2024-09-12
12915	194	3	2024-07-14
12916	350	1	2024-07-18
12917	298	3	2024-04-01
12918	162	2	2024-12-29
12919	16	2	2024-02-09
12920	365	3	2024-08-20
12921	213	3	2024-12-27
12922	336	3	2024-04-03
12923	194	1	2024-10-14
12925	179	1	2024-08-13
12926	282	2	2024-08-13
12927	209	2	2024-10-29
12928	306	1	2024-12-08
12930	148	2	2024-09-04
12931	27	1	2024-09-29
12932	197	3	2024-08-08
12933	61	2	2024-06-14
12934	282	1	2024-02-27
12935	359	2	2024-06-17
12936	107	1	2024-02-24
12937	150	2	2024-07-02
12938	307	1	2024-05-27
12939	444	2	2024-04-21
12940	387	3	2024-03-18
12941	225	3	2024-11-24
12943	305	3	2024-10-20
12944	257	2	2024-10-30
12945	19	3	2024-09-08
12946	448	1	2024-12-05
12950	323	2	2024-03-13
12951	171	3	2024-06-10
12952	107	2	2024-04-24
12953	303	2	2024-06-04
12954	305	1	2024-09-28
12955	343	2	2024-12-20
12956	84	2	2024-06-23
12958	229	2	2024-07-16
12959	257	2	2024-12-29
12960	118	3	2024-05-24
12961	367	3	2024-05-20
12962	373	1	2024-12-11
12963	342	3	2024-03-08
12964	308	2	2024-07-07
12966	316	1	2024-07-28
12967	492	2	2024-07-15
12968	20	2	2024-02-19
12969	363	1	2024-09-28
12970	390	3	2024-03-25
12971	6	3	2024-12-22
12972	165	3	2024-02-17
12974	357	3	2024-02-04
12975	135	3	2024-06-29
12976	17	2	2024-11-11
12977	183	1	2024-04-12
12978	447	3	2024-02-16
12979	470	1	2024-06-21
12980	448	3	2024-11-17
12981	219	1	2024-06-02
12982	165	3	2024-04-16
12984	35	3	2024-02-15
12985	39	3	2024-12-25
12986	238	3	2024-04-23
12987	429	2	2024-08-30
12988	402	2	2024-04-16
12989	218	3	2024-11-23
12990	408	2	2024-07-06
12991	92	1	2024-04-12
12993	378	3	2024-09-01
12995	142	1	2024-10-30
12996	247	2	2024-06-20
12997	499	3	2024-03-08
12998	37	2	2024-06-29
12999	49	3	2024-09-03
13001	190	1	2024-08-23
13002	259	3	2024-06-07
13003	204	2	2024-05-15
13004	158	3	2024-05-13
13005	238	3	2024-10-02
13006	494	2	2024-06-15
13007	267	1	2024-06-15
13008	375	2	2024-07-17
13009	427	2	2024-04-05
13010	396	2	2024-06-03
13011	14	3	2024-12-25
13012	172	1	2024-05-29
13013	500	2	2024-05-09
13015	71	1	2024-07-06
13016	59	2	2024-04-15
13017	329	2	2024-09-02
13018	206	2	2024-06-13
13019	216	3	2024-05-10
13021	34	1	2024-05-29
13022	472	1	2024-07-17
13023	220	1	2024-06-03
13024	462	2	2024-03-11
13025	322	2	2024-03-29
13027	273	2	2024-03-15
13028	203	3	2024-07-04
13030	105	2	2024-05-26
13031	435	3	2024-10-19
13032	220	1	2024-11-15
13033	257	3	2024-05-03
13034	403	2	2024-03-08
13035	354	2	2024-10-23
13036	82	2	2024-02-11
13037	329	3	2024-07-17
13039	63	1	2024-08-03
13040	162	3	2024-02-22
13042	155	2	2024-06-07
13043	46	2	2024-09-03
13044	196	3	2024-10-09
13045	181	2	2024-05-28
13046	455	1	2024-04-01
13047	382	3	2024-05-03
13048	331	1	2024-06-16
13049	383	1	2024-03-08
13050	441	3	2024-12-26
13051	496	3	2024-09-02
13052	301	3	2024-10-24
13053	99	3	2024-02-28
13055	194	3	2024-12-01
13056	241	3	2024-04-06
13057	207	2	2024-09-20
13058	271	2	2024-04-08
13059	61	3	2024-02-10
13060	316	1	2024-07-14
13061	216	3	2024-03-03
13062	461	1	2024-05-11
13063	57	2	2024-11-22
13064	2	2	2024-02-12
13066	198	1	2024-08-29
13067	211	2	2024-08-24
13068	399	2	2024-10-26
13069	209	1	2024-06-18
13070	163	2	2024-06-10
13071	176	2	2024-05-02
13072	446	1	2024-03-02
13073	28	3	2024-12-15
13074	21	1	2024-12-15
13075	216	2	2024-05-11
13076	186	3	2024-04-07
13077	250	2	2024-04-29
13078	313	1	2024-06-06
13079	326	2	2024-04-27
13080	346	1	2024-11-23
13081	147	3	2024-07-06
13082	325	2	2024-11-30
13083	469	2	2024-11-11
13084	181	1	2024-12-10
13085	356	1	2024-06-05
13086	175	3	2024-04-09
13087	135	1	2024-12-20
13088	23	2	2024-04-19
13091	398	2	2024-06-06
13092	131	2	2024-11-05
13093	72	3	2024-03-09
13094	258	3	2024-05-25
13095	488	2	2024-09-26
13096	191	2	2024-06-20
13097	357	2	2024-04-08
13098	252	2	2024-07-26
13099	150	2	2024-12-14
13101	105	3	2024-08-17
13103	257	3	2024-07-26
13104	145	1	2024-10-09
13105	374	2	2024-07-22
13106	452	1	2024-11-12
13107	178	1	2024-07-11
13108	369	2	2024-09-22
13109	13	3	2024-04-02
13110	40	2	2024-11-22
13111	264	3	2024-09-29
13112	496	2	2024-08-27
13113	440	2	2024-12-31
13114	163	2	2024-06-06
13115	252	1	2024-08-31
13116	108	1	2024-08-04
13117	62	3	2024-11-24
13118	269	3	2024-03-18
13119	309	1	2024-09-08
13121	312	3	2024-05-30
13123	11	1	2024-04-23
13124	134	2	2024-03-30
13125	239	3	2024-02-17
13126	437	1	2024-04-11
13127	137	1	2024-12-29
13128	464	1	2024-06-19
13129	301	1	2024-02-02
13130	466	1	2024-05-27
13131	377	1	2024-09-04
13132	247	1	2024-05-09
13133	279	2	2024-05-27
13134	331	2	2024-04-21
13135	418	3	2024-11-03
13137	394	2	2024-10-11
13138	87	3	2024-04-21
13139	485	1	2024-10-08
13140	466	2	2024-05-02
13142	153	2	2024-02-11
13143	97	1	2024-10-27
13144	85	1	2024-10-18
13146	144	2	2024-04-30
13147	58	2	2024-05-30
13148	159	3	2024-09-15
13149	319	1	2024-09-01
13151	7	2	2024-04-13
13152	437	1	2024-09-08
13153	445	3	2024-09-15
13154	45	2	2024-08-31
13155	432	2	2024-08-02
13156	192	1	2024-04-03
13157	127	3	2024-09-08
13158	448	1	2024-10-03
13159	71	3	2024-05-15
13160	420	1	2024-12-31
13161	149	2	2024-04-03
13162	371	1	2024-07-17
13163	324	3	2024-10-04
13164	343	1	2024-04-07
13165	394	1	2024-02-14
13166	276	2	2024-08-05
13167	349	2	2024-03-02
13168	338	3	2024-09-15
13169	438	3	2024-12-29
13170	308	2	2024-11-09
13171	79	2	2024-03-16
13172	177	1	2024-06-11
13173	265	3	2024-04-07
13174	193	1	2024-09-02
13175	478	3	2024-05-21
13176	221	2	2024-04-16
13177	106	3	2024-08-04
13180	272	1	2024-10-13
13181	142	1	2024-12-18
13182	437	2	2024-02-23
13183	131	3	2024-09-07
13184	33	3	2024-09-28
13185	54	2	2024-05-03
13186	281	2	2024-11-09
13187	330	1	2024-12-02
13188	10	3	2024-11-02
13189	264	1	2024-06-09
13190	109	1	2024-05-24
13191	60	1	2024-05-29
13193	57	1	2024-03-14
13194	446	1	2024-03-26
13195	72	2	2024-08-06
13196	457	3	2024-08-20
13199	53	2	2024-08-04
13200	80	1	2024-02-24
13201	299	3	2024-08-05
13202	166	1	2024-05-23
13203	114	3	2024-06-05
13204	455	2	2024-10-11
13206	269	3	2024-12-11
13207	290	3	2024-05-20
13208	419	2	2024-05-20
13209	438	2	2024-10-04
13210	24	1	2024-02-21
13211	465	1	2024-11-28
13212	244	1	2024-07-14
13213	13	3	2024-02-15
13214	233	3	2024-12-12
13215	110	3	2024-07-26
13216	457	2	2024-12-20
13217	143	1	2024-02-17
13218	96	3	2024-11-27
13219	369	1	2024-07-04
13220	456	2	2024-09-01
13221	332	2	2024-07-14
13223	120	1	2024-05-03
13224	421	3	2024-07-05
13225	348	3	2024-11-05
13227	410	3	2024-06-22
13228	395	1	2024-09-18
13229	259	2	2024-09-08
13230	222	2	2024-11-22
13231	101	1	2024-04-13
13232	280	1	2024-03-31
13233	389	3	2024-08-25
13234	200	3	2024-10-17
13235	73	2	2024-03-03
13236	218	1	2024-05-06
13237	143	2	2024-08-22
13239	70	2	2024-02-18
13240	138	1	2024-03-13
13241	418	3	2024-07-22
13242	351	3	2024-04-05
13244	116	3	2024-09-23
13245	234	3	2024-07-08
13246	19	1	2024-07-30
13247	262	3	2024-11-19
13248	337	3	2024-06-12
13249	443	1	2024-02-10
13252	191	3	2024-05-28
13253	22	3	2024-08-27
13254	199	1	2024-08-28
13255	345	2	2024-02-18
13256	170	2	2024-10-05
13257	48	1	2024-09-20
13259	497	1	2024-12-30
13260	242	3	2024-10-25
13261	395	1	2024-03-13
13262	457	3	2024-12-02
13263	334	1	2024-10-23
13264	189	2	2024-12-10
13267	396	1	2024-11-05
13268	83	3	2024-09-13
13269	50	1	2024-03-07
13270	6	1	2024-09-07
13271	147	2	2024-04-25
13272	231	1	2024-02-09
13273	299	1	2024-08-30
13274	262	2	2024-11-26
13275	459	1	2024-09-01
13276	73	1	2024-02-21
13277	287	2	2024-06-29
13278	423	3	2024-05-29
13280	180	3	2024-11-05
13282	7	2	2024-06-19
13283	328	3	2024-06-21
13284	445	2	2024-10-09
13285	400	1	2024-12-19
13286	41	1	2024-06-29
13287	191	3	2024-07-02
13288	155	1	2024-09-14
13290	373	2	2024-06-09
13291	307	3	2024-07-07
13292	455	2	2024-04-21
13293	375	2	2024-04-17
13295	311	3	2024-08-19
13296	415	3	2024-07-01
13297	323	3	2024-05-14
13298	239	3	2024-07-29
13300	393	2	2024-04-24
13302	277	2	2024-03-07
13303	325	3	2024-12-12
13304	154	1	2024-05-30
13305	128	3	2024-10-23
13306	484	3	2024-11-12
13307	430	1	2024-12-06
13308	474	2	2024-03-27
13309	358	3	2024-06-04
13310	273	3	2024-05-31
13311	275	1	2024-11-16
13312	441	2	2024-06-13
13313	358	1	2024-04-12
13315	88	3	2024-08-21
13316	122	3	2024-05-24
13317	252	2	2024-02-25
13318	201	2	2024-09-19
13319	104	2	2024-11-07
13322	138	3	2024-10-30
13323	249	2	2024-03-24
13324	471	2	2024-06-29
13326	412	2	2024-11-25
13327	485	2	2024-07-19
13329	252	2	2024-08-04
13330	489	3	2024-03-03
13331	106	1	2024-06-08
13332	70	3	2024-11-30
13333	283	1	2024-12-29
13334	149	3	2024-04-20
13335	163	3	2024-06-25
13336	175	1	2024-08-17
13337	289	3	2024-10-26
13338	234	3	2024-09-01
13340	317	2	2024-05-28
13341	408	3	2024-06-30
13342	94	3	2024-03-16
13344	204	1	2024-10-29
13345	385	2	2024-07-25
13346	23	2	2024-06-24
13347	108	1	2024-10-01
13348	15	2	2024-11-28
13349	179	1	2024-07-02
13350	445	2	2024-03-03
13351	402	1	2024-07-02
13352	379	1	2024-07-25
13353	50	3	2024-10-10
13354	387	3	2024-08-18
13355	66	1	2024-04-13
13356	190	3	2024-10-24
13357	358	3	2024-03-30
13358	38	2	2024-12-04
13360	333	2	2024-06-25
13361	369	2	2024-12-06
13362	76	2	2024-12-24
13363	313	2	2024-10-11
13364	405	1	2024-12-29
13366	354	3	2024-08-25
13367	303	2	2024-06-27
13368	482	2	2024-05-02
13369	273	3	2024-02-18
13370	188	1	2024-05-22
13371	176	3	2024-04-20
13372	396	1	2024-09-21
13373	131	2	2024-05-27
13374	107	2	2024-11-13
13375	308	1	2024-06-03
13376	114	3	2024-04-04
13377	361	3	2024-04-23
13378	245	2	2024-10-15
13379	399	2	2024-05-31
13380	416	1	2024-04-06
13381	247	2	2024-03-03
13382	479	1	2024-08-14
13383	169	3	2024-05-09
13384	34	2	2024-02-08
13385	40	3	2024-11-03
13386	248	2	2024-12-21
13387	141	2	2024-04-02
13388	106	1	2024-03-30
13390	398	1	2024-02-22
13391	349	3	2024-04-18
13392	278	3	2024-11-04
13393	211	3	2024-05-21
13395	426	1	2024-04-13
13396	388	2	2024-05-01
13397	63	3	2024-11-29
13398	425	1	2024-04-15
13399	233	2	2024-05-04
13400	395	1	2024-09-05
13401	103	2	2024-09-23
13402	456	2	2024-04-25
13403	21	3	2024-05-18
13404	235	3	2024-05-30
13405	343	3	2024-07-26
13406	59	3	2024-09-15
13407	234	1	2024-12-17
13408	439	3	2024-11-21
13409	330	3	2024-05-14
13410	395	3	2024-10-28
13411	40	2	2024-05-02
13412	104	1	2024-03-14
13413	309	2	2024-08-10
13414	110	3	2024-10-17
13415	360	2	2024-05-02
13416	374	2	2024-11-20
13417	398	3	2024-02-10
13419	298	3	2024-02-06
13420	307	2	2024-02-09
13421	179	3	2024-12-13
13422	55	2	2024-12-28
13423	199	3	2024-07-10
13424	172	2	2024-10-24
13425	338	1	2024-04-11
13427	113	1	2024-09-15
13428	296	1	2024-08-08
13429	25	1	2024-09-20
13431	83	3	2024-11-03
13432	428	2	2024-02-26
13433	321	1	2024-09-25
13434	366	1	2024-07-16
13436	36	1	2024-08-09
13437	301	3	2024-07-31
13438	314	1	2024-04-14
13439	180	2	2024-10-15
13441	244	1	2024-09-23
13442	156	1	2024-04-20
13444	256	1	2024-09-01
13445	298	2	2024-11-17
13446	260	2	2024-08-28
13447	193	2	2024-05-17
13448	93	3	2024-07-24
13449	254	2	2024-12-07
13450	300	3	2024-10-09
13451	147	3	2024-07-16
13452	32	2	2024-06-24
13454	107	3	2024-02-07
13455	65	2	2024-11-24
13456	28	1	2024-04-19
13457	470	3	2024-03-05
13458	324	1	2024-06-20
13459	3	3	2024-10-02
13460	471	2	2024-02-03
13461	110	1	2024-04-01
13462	181	3	2024-11-06
13464	272	2	2024-09-14
13465	494	2	2024-12-20
13466	173	3	2024-04-24
13467	67	1	2024-08-22
13469	378	2	2024-08-13
13470	148	1	2024-06-04
13472	408	2	2024-03-31
13473	378	2	2024-10-17
13475	182	2	2024-05-18
13476	7	2	2024-05-11
13477	368	1	2024-08-07
13478	392	1	2024-09-29
13479	393	3	2024-04-20
13480	221	3	2024-09-01
13481	33	2	2024-03-22
13482	337	3	2024-02-02
13483	128	3	2024-04-09
13484	194	3	2024-09-01
13485	141	2	2024-07-01
13488	46	2	2024-03-08
13489	115	1	2024-08-27
13490	278	3	2024-09-17
13491	275	2	2024-06-23
13492	413	2	2024-11-04
13493	387	3	2024-02-27
13494	215	1	2024-03-22
13495	336	2	2024-03-29
13496	232	3	2024-03-19
13497	209	1	2024-11-13
13498	347	3	2024-05-20
13499	121	1	2024-12-31
13501	246	3	2024-11-14
13502	163	1	2024-06-01
13503	198	2	2024-02-23
13504	436	3	2024-03-26
13505	69	1	2024-02-19
13506	166	2	2024-06-13
13507	305	2	2024-04-24
13508	185	3	2024-07-03
13509	103	2	2024-03-05
13510	357	2	2024-06-26
13511	500	3	2024-07-27
13512	107	3	2024-10-24
13513	238	3	2024-10-01
13514	34	1	2024-03-02
13515	53	2	2024-12-04
13517	35	2	2024-06-10
13519	448	3	2024-10-24
13520	477	3	2024-02-22
13521	331	3	2024-10-08
13522	308	2	2024-07-26
13523	290	2	2024-09-18
13524	119	2	2024-11-27
13525	460	1	2024-03-25
13526	66	3	2024-11-02
13528	55	2	2024-05-08
13529	84	3	2024-02-29
13530	309	2	2024-05-29
13531	192	2	2024-09-11
13532	337	3	2024-10-07
13533	119	1	2024-03-16
13534	293	1	2024-09-22
13535	133	2	2024-11-05
13536	31	2	2024-10-21
13537	416	1	2024-09-18
13539	132	3	2024-03-18
13540	150	1	2024-10-01
13541	238	1	2024-03-02
13542	91	3	2024-07-11
13543	424	2	2024-05-17
13544	284	2	2024-02-04
13545	198	2	2024-08-28
13547	184	1	2024-11-26
13548	352	3	2024-09-15
13549	397	1	2024-10-20
13550	394	2	2024-03-06
13551	242	2	2024-07-17
13552	347	1	2024-02-20
13554	235	3	2024-10-06
13555	218	2	2024-10-20
13556	432	3	2024-02-25
13557	169	3	2024-08-25
13558	71	2	2024-05-30
13559	297	3	2024-04-25
13560	305	3	2024-04-25
13561	176	1	2024-11-05
13562	375	1	2024-08-10
13564	241	2	2024-10-03
13565	317	2	2024-12-10
13567	495	3	2024-05-18
13568	295	3	2024-08-27
13569	379	1	2024-11-23
13570	201	3	2024-10-29
13572	400	2	2024-08-28
13573	358	3	2024-10-24
13575	292	1	2024-10-25
13576	175	1	2024-08-04
13577	281	3	2024-10-30
13579	108	1	2024-05-15
13580	314	3	2024-02-07
13582	128	1	2024-11-07
13583	160	3	2024-03-31
13584	133	3	2024-03-26
13585	466	1	2024-12-22
13586	83	3	2024-03-30
13587	191	2	2024-08-06
13588	116	3	2024-11-13
13589	476	2	2024-02-27
13590	344	3	2024-07-19
13591	75	1	2024-06-18
13592	496	1	2024-10-01
13593	215	3	2024-03-24
13595	37	2	2024-07-15
13596	74	3	2024-02-27
13597	199	2	2024-08-22
13598	382	3	2024-05-23
13599	208	3	2024-06-30
13600	436	1	2024-04-16
13602	418	2	2024-09-21
13603	471	3	2024-04-21
13604	350	3	2024-02-07
13606	345	3	2024-10-04
13607	423	2	2024-09-22
13608	64	1	2024-12-21
13609	291	1	2024-12-29
13610	201	3	2024-10-03
13611	43	3	2024-06-26
13613	86	1	2024-09-03
13614	311	3	2024-08-30
13615	284	1	2024-03-10
13616	395	3	2024-02-05
13617	396	3	2024-08-12
13618	178	1	2024-07-03
13619	265	2	2024-05-08
13620	348	3	2024-07-08
13621	59	3	2024-02-26
13622	468	1	2024-07-15
13623	306	1	2024-03-24
13624	448	3	2024-05-06
13625	91	2	2024-03-27
13626	248	3	2024-07-07
13627	219	2	2024-10-17
13628	350	1	2024-12-20
13629	280	2	2024-11-22
13630	229	3	2024-04-01
13631	111	2	2024-06-18
13632	227	1	2024-08-25
13634	345	1	2024-10-25
13635	19	2	2024-08-07
13636	202	1	2024-07-28
13637	379	1	2024-05-30
13638	252	1	2024-02-27
13639	142	2	2024-05-19
13640	5	1	2024-03-15
13641	265	3	2024-03-25
13642	290	2	2024-06-24
13643	87	3	2024-12-13
13645	61	1	2024-08-10
13646	51	3	2024-08-17
13647	134	2	2024-05-28
13648	41	2	2024-12-14
13649	245	2	2024-04-09
13650	86	2	2024-12-08
13652	436	2	2024-03-03
13653	235	1	2024-03-04
13654	148	3	2024-07-08
13655	262	3	2024-07-11
13656	498	2	2024-12-14
13657	496	3	2024-10-06
13658	380	3	2024-10-12
13659	71	3	2024-08-20
13660	198	2	2024-02-16
13661	191	2	2024-05-02
13662	369	2	2024-09-11
13663	494	1	2024-09-01
13664	289	1	2024-09-16
13665	28	1	2024-08-02
13666	437	2	2024-07-26
13667	262	2	2024-11-10
13668	277	1	2024-10-29
13671	48	1	2024-09-06
13672	283	2	2024-11-14
13673	191	2	2024-03-20
13674	294	2	2024-10-02
13675	495	1	2024-06-29
13676	60	3	2024-05-19
13677	373	3	2024-09-24
13678	350	3	2024-05-24
13679	449	1	2024-06-18
13680	223	1	2024-02-22
13681	190	3	2024-03-28
13682	176	3	2024-05-26
13683	361	2	2024-10-03
13684	21	3	2024-04-15
13685	392	1	2024-12-12
13686	362	3	2024-07-28
13688	451	3	2024-06-14
13689	153	2	2024-02-15
13690	138	2	2024-06-30
13691	75	2	2024-12-10
13692	319	2	2024-05-05
13693	31	2	2024-04-05
13695	353	3	2024-07-23
13696	340	3	2024-09-06
13698	354	2	2024-10-02
13699	432	1	2024-11-01
13700	394	1	2024-06-18
13701	425	2	2024-08-11
13702	479	3	2024-10-03
13704	75	2	2024-08-02
13705	19	2	2024-07-28
13706	448	1	2024-10-25
13707	462	3	2024-04-20
13708	310	2	2024-08-08
13709	132	3	2024-10-08
13710	361	2	2024-07-04
13711	112	3	2024-12-14
13712	208	1	2024-09-12
13714	229	1	2024-05-01
13715	421	2	2024-04-28
13716	127	1	2024-11-15
13717	187	1	2024-02-12
13718	426	3	2024-07-02
13719	16	2	2024-11-24
13720	216	3	2024-08-05
13721	70	1	2024-09-14
13722	306	2	2024-07-29
13723	441	3	2024-02-23
13725	448	2	2024-05-22
13726	258	3	2024-04-12
13728	404	1	2024-04-10
13729	478	2	2024-02-03
13730	29	1	2024-10-27
13732	456	2	2024-10-28
13733	170	3	2024-09-24
13734	371	2	2024-10-14
13735	279	2	2024-04-30
13736	460	1	2024-08-23
13737	114	3	2024-02-09
13738	308	2	2024-10-14
13739	223	3	2024-04-23
13740	209	2	2024-11-22
13742	226	3	2024-10-04
13744	202	3	2024-02-02
13747	118	2	2024-05-28
13748	253	2	2024-05-12
13749	188	2	2024-06-16
13750	150	1	2024-12-03
13752	195	1	2024-08-06
13753	137	3	2024-06-29
13754	125	3	2024-11-12
13755	62	1	2024-08-15
13756	409	2	2024-07-28
13757	35	1	2024-03-07
13758	60	2	2024-02-12
13759	259	2	2024-12-20
13760	204	2	2024-12-30
13761	298	1	2024-08-14
13762	133	1	2024-12-01
13763	418	1	2024-11-23
13764	335	1	2024-10-30
13766	177	1	2024-08-28
13767	209	2	2024-07-17
13768	308	1	2024-03-07
13769	7	3	2024-02-09
13770	281	1	2024-12-07
13771	394	1	2024-07-07
13772	439	1	2024-09-26
13773	82	1	2024-05-19
13774	76	2	2024-08-09
13775	257	2	2024-09-09
13776	462	2	2024-07-20
13777	405	2	2024-05-15
13778	271	2	2024-05-21
13779	27	2	2024-03-31
13781	242	1	2024-07-16
13782	472	1	2024-09-02
13783	309	2	2024-04-11
13784	319	1	2024-07-20
13785	452	2	2024-02-27
13787	283	3	2024-12-06
13788	6	1	2024-03-10
13789	408	2	2024-09-05
13790	55	1	2024-02-10
13791	108	3	2024-07-08
13792	302	2	2024-04-24
13793	290	1	2024-08-19
13794	285	3	2024-11-15
13795	408	1	2024-04-05
13796	438	1	2024-05-26
13797	284	1	2024-04-26
13799	22	2	2024-06-08
13800	347	3	2024-10-09
13801	386	2	2024-07-07
13802	299	3	2024-09-10
13803	135	2	2024-07-29
13804	302	2	2024-10-29
13805	188	2	2024-05-08
13806	346	3	2024-03-18
13807	374	1	2024-05-11
13808	358	2	2024-02-03
13809	443	2	2024-12-04
13810	388	1	2024-05-22
13812	456	2	2024-11-24
13813	59	2	2024-06-22
13814	98	3	2024-07-30
13815	457	1	2024-05-10
13816	282	2	2024-07-12
13817	28	2	2024-08-10
13818	348	3	2024-07-21
13819	500	3	2024-06-12
13820	271	1	2024-05-02
13822	249	3	2024-12-03
13823	401	3	2024-04-29
13824	354	3	2024-11-10
13825	500	3	2024-08-19
13826	23	2	2024-05-09
13827	79	2	2024-11-18
13828	464	1	2024-05-09
13829	246	3	2024-12-24
13830	335	3	2024-09-19
13831	241	1	2024-10-14
13832	20	3	2024-10-22
13833	112	2	2024-09-13
13834	386	2	2024-11-28
13835	493	2	2024-04-02
13836	302	2	2024-02-07
13837	379	2	2024-03-18
13838	184	1	2024-07-12
13839	37	2	2024-08-26
13840	461	1	2024-09-18
13841	353	2	2024-10-16
13843	481	1	2024-05-07
13844	230	2	2024-09-06
13845	171	1	2024-08-21
13846	264	2	2024-04-12
13847	446	3	2024-06-19
13848	116	3	2024-07-22
13849	35	3	2024-12-13
13850	107	3	2024-03-17
13851	283	3	2024-05-02
13852	56	3	2024-03-04
13853	241	1	2024-02-12
13854	476	1	2024-03-28
13855	308	3	2024-06-10
13856	354	2	2024-10-08
13857	85	2	2024-11-14
13858	228	1	2024-08-08
13859	364	2	2024-07-03
13860	464	2	2024-02-03
13861	136	3	2024-12-01
13862	454	2	2024-05-16
13863	412	1	2024-10-17
13864	75	3	2024-07-22
13865	2	1	2024-05-10
13866	281	3	2024-08-09
13867	452	3	2024-06-11
13868	321	1	2024-03-03
13869	65	3	2024-02-23
13870	474	3	2024-07-04
13872	426	1	2024-12-24
13873	124	2	2024-08-17
13874	73	3	2024-09-07
13875	236	3	2024-02-29
13876	153	2	2024-03-30
13878	92	3	2024-10-20
13879	56	3	2024-07-03
13880	236	1	2024-05-08
13881	305	3	2024-03-13
13882	383	3	2024-07-10
13883	289	3	2024-08-09
13884	270	1	2024-10-02
13885	280	3	2024-08-03
13886	236	1	2024-09-28
13887	134	2	2024-05-19
13889	489	3	2024-05-15
13891	469	1	2024-05-05
13892	374	1	2024-05-16
13894	417	3	2024-07-10
13895	314	1	2024-10-23
13896	44	1	2024-12-29
13898	61	2	2024-03-23
13899	41	3	2024-04-26
13900	320	2	2024-03-18
13901	26	2	2024-12-05
13903	255	2	2024-05-22
13904	495	1	2024-04-29
13905	119	2	2024-12-08
13906	222	1	2024-04-16
13907	265	1	2024-10-15
13908	321	3	2024-02-16
13909	76	1	2024-12-07
13910	251	2	2024-11-20
13912	363	2	2024-04-06
13913	192	2	2024-03-15
13914	479	1	2024-06-22
13915	183	1	2024-11-24
13916	277	1	2024-11-18
13917	112	2	2024-03-13
13918	480	3	2024-06-12
13919	7	2	2024-10-15
13920	81	1	2024-09-29
13921	459	1	2024-12-09
13922	73	2	2024-08-05
13923	140	3	2024-09-15
13924	209	2	2024-05-01
13925	264	2	2024-02-21
13926	154	2	2024-03-20
13927	291	3	2024-12-09
13928	196	3	2024-08-15
13930	18	3	2024-08-07
13931	432	2	2024-04-15
13932	355	3	2024-02-10
13933	317	1	2024-08-07
13934	41	2	2024-10-14
13935	290	3	2024-05-16
13937	236	1	2024-12-23
13938	106	2	2024-05-12
13939	31	3	2024-12-07
13940	186	3	2024-06-01
13941	74	3	2024-04-14
13942	5	3	2024-03-06
13943	452	1	2024-07-17
13944	19	3	2024-08-22
13945	205	3	2024-03-18
13947	274	2	2024-08-03
13948	454	3	2024-02-16
13949	137	1	2024-05-08
13950	368	3	2024-09-24
13951	381	1	2024-03-09
13952	371	3	2024-09-21
13953	215	3	2024-05-13
13955	481	2	2024-08-01
13957	33	1	2024-03-18
13958	201	1	2024-03-26
13960	490	1	2024-10-26
13961	422	1	2024-10-06
13962	379	3	2024-12-26
13963	98	3	2024-05-02
13964	252	3	2024-04-12
13965	304	3	2024-04-18
13967	106	2	2024-02-10
13968	76	3	2024-10-12
13969	152	1	2024-06-28
13970	382	2	2024-12-08
13971	35	3	2024-04-13
13972	397	3	2024-09-05
13973	309	1	2024-10-12
13974	43	1	2024-12-14
13975	250	3	2024-07-23
13976	351	2	2024-02-21
13977	13	1	2024-03-13
13978	303	1	2024-10-28
13979	54	2	2024-07-13
13980	26	2	2024-05-21
13981	200	1	2024-03-08
13982	97	3	2024-10-04
13983	218	2	2024-10-19
13984	239	2	2024-04-21
13985	315	3	2024-06-16
13986	291	2	2024-10-02
13989	499	1	2024-11-17
13990	250	1	2024-12-22
13991	101	2	2024-09-03
13992	5	2	2024-05-25
13994	311	1	2024-04-07
13995	75	2	2024-04-11
13996	337	2	2024-06-06
13997	241	3	2024-09-19
13998	394	3	2024-05-16
13999	112	2	2024-02-25
14000	79	2	2024-06-28
14001	184	1	2024-08-16
14002	144	2	2024-09-07
14003	403	2	2024-04-04
14004	493	2	2024-08-25
14005	62	1	2024-07-25
14006	200	3	2024-12-05
14007	376	3	2024-02-20
14008	470	3	2024-07-21
14009	75	3	2024-06-29
14010	417	1	2024-04-02
14011	77	1	2024-06-16
14012	318	2	2024-09-30
14013	456	2	2024-04-07
14014	317	3	2024-08-28
14015	88	1	2024-08-01
14016	340	1	2024-11-11
14017	446	3	2024-08-15
14018	291	3	2024-12-15
14019	299	3	2024-09-11
14020	145	2	2024-09-23
14021	396	1	2024-09-24
14022	479	2	2024-05-22
14023	149	3	2024-09-17
14024	160	3	2024-07-11
14025	168	2	2024-12-15
14026	108	1	2024-10-16
14027	200	3	2024-07-03
14028	387	2	2024-02-07
14029	194	1	2024-12-13
14031	486	3	2024-04-07
14032	460	3	2024-04-21
14034	231	3	2024-04-07
14035	170	1	2024-06-26
14036	227	2	2024-09-19
14037	207	2	2024-11-17
14038	212	2	2024-12-30
14039	497	2	2024-10-30
14040	324	3	2024-10-25
14042	77	1	2024-07-13
14043	488	1	2024-02-14
14044	379	1	2024-09-05
14045	394	2	2024-10-20
14046	300	2	2024-04-27
14047	12	1	2024-06-17
14048	74	3	2024-12-24
14049	271	3	2024-03-31
14050	401	2	2024-02-26
14051	204	1	2024-04-28
14053	447	1	2024-11-22
14055	19	2	2024-10-25
14056	401	2	2024-07-16
14058	338	2	2024-02-21
14059	336	1	2024-10-15
14060	435	3	2024-07-13
14061	176	1	2024-12-04
14062	98	3	2024-10-01
14063	364	1	2024-04-13
14064	103	2	2024-03-26
14065	372	2	2024-06-05
14066	381	3	2024-03-17
14067	273	2	2024-02-01
14068	345	3	2024-04-01
14070	371	1	2024-12-26
14071	80	1	2024-07-20
14072	187	2	2024-12-19
14073	428	1	2024-11-17
14074	443	3	2024-03-21
14075	298	1	2024-06-20
14076	198	3	2024-12-01
14077	108	2	2024-10-19
14078	273	2	2024-07-31
14079	94	3	2024-12-26
14080	146	2	2024-04-15
14081	253	2	2024-08-26
14082	162	2	2024-11-15
14083	82	2	2024-03-06
14084	424	2	2024-03-03
14085	120	3	2024-05-18
14087	261	3	2024-04-19
14088	138	3	2024-04-09
14089	8	3	2024-10-06
14090	235	1	2024-09-21
14091	216	2	2024-08-23
14092	480	2	2024-05-04
14093	116	1	2024-06-10
14094	354	1	2024-02-10
14096	26	2	2024-03-01
14097	269	1	2024-03-19
14098	24	3	2024-12-30
14099	346	1	2024-05-09
14100	250	1	2024-06-15
14103	82	1	2024-07-16
14104	178	1	2024-11-07
14105	5	1	2024-10-02
14106	167	1	2024-06-11
14107	289	1	2024-08-14
14108	193	1	2024-06-19
14110	480	1	2024-08-09
14111	132	1	2024-06-06
14112	225	1	2024-10-31
14113	181	1	2024-04-28
14114	23	3	2024-09-04
14115	255	3	2024-11-06
14116	321	1	2024-08-08
14117	146	3	2024-08-13
14118	275	3	2024-12-21
14119	68	1	2024-06-10
14120	171	2	2024-10-10
14121	440	3	2024-08-01
14122	49	2	2024-07-25
14123	174	2	2024-12-31
14124	88	2	2024-11-26
14125	18	3	2024-12-27
14126	221	1	2024-12-29
14127	94	3	2024-02-19
14129	397	2	2024-02-16
14131	246	2	2024-05-12
14132	79	2	2024-05-15
14133	131	1	2024-10-29
14134	406	3	2024-06-15
14136	33	1	2024-04-01
14137	36	1	2024-10-21
14138	418	2	2024-04-21
14139	124	2	2024-12-05
14140	208	1	2024-06-16
14141	497	3	2024-09-10
14142	254	2	2024-07-12
14143	77	2	2024-09-04
14144	143	3	2024-02-29
14145	267	2	2024-02-09
14146	158	2	2024-03-13
14147	286	3	2024-12-10
14148	112	1	2024-11-21
14149	49	2	2024-08-05
14150	393	2	2024-07-12
14151	265	3	2024-08-31
14152	210	3	2024-09-14
14153	475	3	2024-05-22
14154	82	1	2024-07-05
14155	66	3	2024-06-02
14156	272	1	2024-02-15
14157	156	1	2024-05-25
14158	238	2	2024-07-11
14159	329	2	2024-04-20
14161	18	1	2024-10-13
14163	319	2	2024-02-11
14164	198	1	2024-09-29
14165	425	1	2024-05-06
14166	182	1	2024-06-30
14167	66	1	2024-07-17
14168	439	2	2024-07-29
14169	85	2	2024-10-22
14170	233	3	2024-08-04
14172	236	3	2024-09-08
14173	221	1	2024-08-06
14174	288	2	2024-05-19
14177	8	1	2024-11-19
14178	263	2	2024-04-29
14179	191	2	2024-06-10
14180	29	2	2024-09-05
14181	452	3	2024-11-05
14182	223	3	2024-08-02
14183	279	1	2024-09-13
14184	209	2	2024-07-20
14185	16	3	2024-04-05
14186	393	3	2024-05-13
14187	333	1	2024-06-16
14188	259	1	2024-04-21
14189	385	1	2024-08-16
14190	7	1	2024-10-09
14191	277	1	2024-04-11
14192	171	3	2024-05-19
14193	3	3	2024-02-10
14194	292	1	2024-04-13
14195	211	2	2024-03-10
14196	353	2	2024-03-27
14197	393	2	2024-04-22
14198	306	1	2024-03-10
14199	190	2	2024-07-06
14201	7	2	2024-02-05
14202	22	2	2024-02-18
14203	70	1	2024-08-06
14204	439	1	2024-10-10
14205	118	3	2024-09-11
14206	498	2	2024-04-29
14208	294	2	2024-09-12
14209	202	3	2024-02-17
14210	253	2	2024-06-22
14211	251	2	2024-10-07
14212	315	3	2024-07-21
14213	299	2	2024-07-25
14214	18	3	2024-04-30
14215	204	3	2024-11-01
14216	435	2	2024-10-18
14217	240	2	2024-05-01
14218	495	1	2024-05-08
14219	422	1	2024-03-24
14220	277	3	2024-02-24
14221	166	2	2024-05-04
14222	55	1	2024-10-01
14223	383	3	2024-04-30
14224	479	3	2024-10-18
14225	479	2	2024-11-04
14226	204	1	2024-08-26
14227	470	1	2024-12-07
14228	391	1	2024-06-09
14229	39	2	2024-10-24
14230	249	2	2024-06-19
14231	473	1	2024-07-08
14232	2	1	2024-07-08
14233	174	2	2024-09-04
14234	372	2	2024-03-21
14235	135	3	2024-04-19
14236	453	1	2024-12-22
14237	279	3	2024-06-09
14238	49	1	2024-06-01
14239	145	3	2024-03-11
14240	339	1	2024-08-05
14241	310	3	2024-03-20
14242	32	1	2024-06-03
14243	137	1	2024-12-27
14244	419	1	2024-05-02
14245	119	1	2024-12-29
14246	395	2	2024-02-24
14247	488	3	2024-02-19
14250	214	2	2024-08-09
14251	216	3	2024-02-02
14252	473	3	2024-11-12
14253	304	1	2024-02-12
14254	95	1	2024-05-18
14255	66	1	2024-04-18
14256	63	1	2024-12-15
14257	320	2	2024-11-09
14258	259	2	2024-08-05
14259	199	2	2024-12-15
14260	218	3	2024-05-25
14261	16	1	2024-02-10
14264	120	2	2024-02-26
14265	188	2	2024-03-14
14266	352	2	2024-09-17
14267	343	1	2024-06-09
14268	381	1	2024-03-30
14269	391	3	2024-05-01
14270	35	1	2024-03-20
14271	330	1	2024-06-23
14272	284	2	2024-07-27
14274	106	1	2024-05-15
14275	186	2	2024-06-27
14276	339	3	2024-02-17
14277	23	2	2024-04-12
14279	467	1	2024-02-29
14280	45	1	2024-09-19
14281	317	2	2024-07-09
14282	249	3	2024-11-18
14283	395	1	2024-02-29
14284	13	1	2024-11-24
14285	172	3	2024-12-11
14286	3	3	2024-07-26
14287	489	3	2024-10-20
14288	143	3	2024-11-16
14289	286	1	2024-05-04
14290	466	2	2024-04-17
14291	117	3	2024-05-27
14292	48	1	2024-10-18
14293	28	3	2024-12-29
14294	338	1	2024-03-25
14295	437	1	2024-12-10
14296	122	1	2024-11-03
14297	411	3	2024-11-19
14298	369	2	2024-03-07
14299	67	1	2024-03-04
14300	292	3	2024-02-22
14301	160	3	2024-11-09
14302	263	2	2024-10-09
14303	433	2	2024-06-12
14304	286	3	2024-04-18
14305	35	1	2024-06-15
14306	50	2	2024-02-25
14307	152	3	2024-06-12
14308	207	2	2024-06-18
14310	454	3	2024-06-06
14312	143	2	2024-05-16
14313	312	2	2024-06-01
14314	355	1	2024-10-24
14315	177	3	2024-09-29
14316	278	2	2024-10-02
14317	159	2	2024-07-26
14318	172	1	2024-09-29
14319	406	3	2024-04-09
14320	84	1	2024-06-17
14321	179	1	2024-11-25
14322	482	2	2024-10-14
14324	374	2	2024-12-13
14325	76	2	2024-09-07
14326	480	2	2024-09-13
14327	253	2	2024-06-06
14328	284	1	2024-06-01
14329	492	2	2024-12-03
14330	153	2	2024-05-15
14331	444	3	2024-06-05
14332	130	1	2024-08-03
14333	461	3	2024-07-16
14334	25	3	2024-06-02
14335	238	1	2024-02-19
14336	47	2	2024-03-25
14337	12	1	2024-02-04
14338	407	3	2024-10-24
14339	464	2	2024-12-14
14340	327	3	2024-12-28
14341	94	1	2024-03-03
14342	212	2	2024-05-17
14343	217	2	2024-10-23
14344	452	2	2024-06-25
14345	218	3	2024-06-26
14346	224	3	2024-11-18
14347	409	3	2024-07-09
14348	434	1	2024-08-18
14349	189	1	2024-10-18
14350	392	1	2024-06-22
14351	126	3	2024-06-18
14352	284	1	2024-10-19
14353	300	3	2024-08-26
14354	390	2	2024-03-02
14355	444	3	2024-11-18
14356	104	3	2024-07-11
14357	482	1	2024-09-03
14360	292	3	2024-10-01
14362	293	1	2024-04-15
14363	267	1	2024-07-23
14364	68	1	2024-05-18
14365	490	3	2024-10-24
14366	245	3	2024-04-30
14367	276	2	2024-09-03
14368	188	1	2024-03-03
14369	498	3	2024-08-19
14370	149	2	2024-09-27
14371	155	3	2024-10-04
14372	190	2	2024-02-24
14373	123	2	2024-04-03
14374	301	1	2024-10-02
14375	463	3	2024-05-19
14376	479	3	2024-07-05
14377	367	1	2024-02-19
14378	453	1	2024-08-02
14380	3	3	2024-10-31
14381	223	3	2024-12-28
14382	320	1	2024-08-20
14383	460	1	2024-02-12
14384	34	1	2024-06-09
14385	481	2	2024-11-02
14386	154	2	2024-07-29
14387	388	3	2024-06-24
14388	19	1	2024-04-08
14389	430	2	2024-07-13
14390	202	2	2024-07-17
14391	60	3	2024-07-27
14392	413	2	2024-05-13
14393	417	3	2024-10-31
14394	212	1	2024-09-16
14395	283	1	2024-02-22
14396	265	2	2024-11-11
14397	245	1	2024-02-19
14398	421	1	2024-07-08
14399	275	3	2024-10-25
14400	190	2	2024-05-21
14401	247	1	2024-09-06
14403	8	1	2024-10-01
14404	83	3	2024-06-23
14405	10	1	2024-08-09
14406	90	3	2024-04-22
14407	196	3	2024-02-07
14409	408	2	2024-05-19
14410	295	1	2024-10-27
14412	53	3	2024-11-12
14413	29	1	2024-04-25
14414	426	3	2024-08-10
14415	455	3	2024-12-05
14416	369	3	2024-10-16
14417	95	2	2024-11-12
14418	99	3	2024-05-19
14419	412	1	2024-03-17
14420	490	3	2024-07-11
14421	264	1	2024-06-18
14422	495	2	2024-05-08
14423	497	2	2024-10-23
14424	359	3	2024-09-26
14425	258	3	2024-02-13
14426	357	3	2024-05-13
14427	402	2	2024-08-08
14428	113	3	2024-11-14
14429	212	3	2024-06-22
14431	292	1	2024-09-14
14433	412	2	2024-09-01
14434	153	2	2024-04-17
14435	229	3	2024-02-22
14436	101	2	2024-07-23
14437	116	3	2024-03-10
14438	103	3	2024-06-25
14439	339	2	2024-06-27
14440	367	1	2024-12-20
14442	458	3	2024-12-14
14443	498	3	2024-03-02
14444	143	1	2024-03-11
14446	309	2	2024-05-31
14447	10	2	2024-02-21
14448	298	1	2024-03-04
14449	191	1	2024-03-31
14450	201	2	2024-03-14
14451	43	3	2024-06-06
14452	43	2	2024-11-19
14453	425	2	2024-05-13
14454	4	2	2024-08-12
14455	310	3	2024-08-13
14456	312	3	2024-07-17
14457	208	1	2024-03-24
14458	431	1	2024-10-31
14459	103	2	2024-08-25
14460	145	2	2024-05-03
14461	59	3	2024-07-26
14462	404	3	2024-09-01
14463	440	3	2024-04-11
14464	344	3	2024-10-01
14465	32	1	2024-07-03
14466	432	1	2024-08-15
14468	371	2	2024-07-14
14469	444	2	2024-06-20
14470	154	1	2024-12-05
14471	387	1	2024-07-01
14472	331	2	2024-06-01
14473	397	3	2024-12-01
14474	456	3	2024-10-22
14475	90	3	2024-05-30
14476	17	1	2024-07-17
14477	177	1	2024-06-03
14478	65	3	2024-02-10
14479	256	3	2024-05-09
14480	446	1	2024-02-26
14481	315	1	2024-11-25
14482	56	3	2024-12-16
14483	73	1	2024-12-19
14484	130	3	2024-05-05
14485	397	1	2024-07-28
14486	244	2	2024-04-13
14487	404	2	2024-03-22
14488	375	1	2024-09-01
14489	66	1	2024-10-28
14491	127	1	2024-02-20
14492	70	2	2024-05-03
14493	146	1	2024-03-27
14494	111	1	2024-09-07
14495	283	3	2024-05-10
14496	409	2	2024-02-25
14498	9	3	2024-03-26
14499	340	3	2024-06-14
14500	193	1	2024-02-24
14501	55	3	2024-08-04
14502	161	3	2024-09-30
14503	137	3	2024-09-19
14504	444	3	2024-02-25
14505	231	3	2024-05-13
14506	89	2	2024-02-16
14507	288	2	2024-11-08
14508	45	1	2024-09-06
14509	337	1	2024-12-18
14510	414	3	2024-11-25
14511	468	1	2024-02-12
14512	131	2	2024-11-04
14513	117	3	2024-10-22
14515	223	2	2024-09-21
14516	246	2	2024-02-08
14517	132	1	2024-11-29
14518	221	3	2024-07-13
14519	10	2	2024-04-29
14520	284	3	2024-03-24
14521	136	3	2024-10-01
14522	211	3	2024-03-07
14523	246	2	2024-04-08
14524	202	2	2024-04-15
14525	484	1	2024-02-04
14527	161	1	2024-09-15
14528	198	3	2024-03-18
14530	244	1	2024-03-04
14531	238	2	2024-06-04
14532	321	3	2024-04-22
14533	298	1	2024-08-26
14534	488	1	2024-02-09
14535	133	2	2024-03-21
14536	355	3	2024-07-27
14538	135	1	2024-11-20
14539	334	1	2024-09-16
14540	434	2	2024-04-21
14541	373	1	2024-07-18
14542	496	1	2024-11-11
14543	391	2	2024-09-02
14545	338	1	2024-10-10
14546	203	2	2024-08-30
14547	58	2	2024-12-07
14549	156	2	2024-08-29
14550	340	1	2024-02-25
14551	443	2	2024-12-15
14552	321	1	2024-10-09
14553	403	2	2024-05-07
14554	384	2	2024-11-22
14555	154	3	2024-06-04
14556	142	3	2024-05-21
14557	471	1	2024-05-14
14558	412	1	2024-02-16
14559	292	2	2024-11-20
14560	101	2	2024-12-26
14561	21	3	2024-04-01
14562	3	1	2024-11-08
14563	444	2	2024-08-30
14564	166	1	2024-06-14
14565	460	3	2024-12-11
14566	343	3	2024-10-15
14567	110	2	2024-10-23
14569	113	1	2024-09-17
14570	343	3	2024-08-28
14571	317	3	2024-06-30
14572	107	2	2024-09-09
14573	183	3	2024-06-30
14574	400	2	2024-10-31
14575	161	3	2024-02-14
14577	195	3	2024-02-07
14578	114	3	2024-07-07
14579	467	1	2024-05-12
14580	103	3	2024-04-21
14581	119	1	2024-03-19
14582	464	2	2024-04-23
14583	241	1	2024-09-10
14584	345	3	2024-03-21
14585	154	1	2024-11-07
14586	452	1	2024-03-07
14587	120	1	2024-05-01
14588	411	1	2024-12-18
14589	314	3	2024-09-16
14591	365	3	2024-09-21
14592	416	2	2024-02-13
14593	487	3	2024-04-18
14594	344	1	2024-02-08
14595	148	2	2024-05-12
14597	494	2	2024-11-29
14598	444	3	2024-07-18
14599	42	1	2024-08-18
14600	241	3	2024-11-27
14601	251	3	2024-09-14
14602	400	2	2024-06-21
14603	203	1	2024-05-23
14604	399	3	2024-02-12
14605	309	1	2024-08-14
14606	408	1	2024-11-30
14607	438	1	2024-02-24
14610	472	2	2024-06-16
14611	171	3	2024-02-29
14612	54	2	2024-06-12
14613	231	1	2024-07-13
14614	139	1	2024-03-11
14615	425	2	2024-11-01
14616	318	3	2024-04-04
14617	496	1	2024-03-20
14618	71	2	2024-03-09
14619	154	2	2024-10-02
14620	445	2	2024-04-23
14621	68	3	2024-10-30
14623	90	2	2024-11-28
14624	361	3	2024-06-22
14625	182	3	2024-06-03
14626	314	3	2024-03-20
14627	480	1	2024-03-21
14629	311	1	2024-02-15
14630	189	2	2024-10-25
14632	384	1	2024-04-23
14633	185	1	2024-04-27
14634	340	3	2024-03-18
14635	79	2	2024-06-15
14636	445	1	2024-08-10
14637	94	3	2024-06-17
14639	45	3	2024-05-14
14641	251	2	2024-04-20
14642	159	3	2024-05-10
14643	455	3	2024-06-22
14644	77	3	2024-11-23
14645	321	3	2024-07-06
14646	456	1	2024-02-06
14647	301	2	2024-08-07
14648	288	3	2024-09-11
14649	294	2	2024-04-14
14650	143	3	2024-02-16
14651	401	1	2024-06-04
14652	120	2	2024-08-31
14654	436	3	2024-09-24
14655	297	2	2024-11-05
14656	494	3	2024-02-04
14657	350	2	2024-09-10
14658	408	3	2024-05-01
14659	384	3	2024-02-02
14661	119	2	2024-08-22
14662	484	2	2024-08-15
14663	316	3	2024-07-26
14664	475	1	2024-02-04
14665	359	3	2024-06-27
14667	241	1	2024-07-15
14668	189	3	2024-08-23
14669	463	3	2024-03-15
14671	152	3	2024-04-19
14672	208	3	2024-03-16
14673	232	1	2024-10-03
14674	413	2	2024-09-08
14675	378	2	2024-12-26
14676	34	3	2024-08-11
14677	411	1	2024-02-20
14678	267	3	2024-02-11
14679	434	3	2024-08-20
14680	191	3	2024-02-27
14681	147	1	2024-07-07
14682	404	3	2024-10-15
14683	330	3	2024-05-18
14684	154	2	2024-11-20
14685	30	2	2024-07-24
14686	360	1	2024-02-14
14687	171	1	2024-06-23
14688	1	1	2024-12-05
14689	403	1	2024-07-24
14691	338	2	2024-05-12
14692	312	1	2024-10-21
14693	226	1	2024-02-27
14694	216	3	2024-12-13
14695	289	2	2024-08-25
14696	385	2	2024-04-29
14697	57	3	2024-11-18
14698	426	3	2024-05-22
14699	422	3	2024-02-03
14700	38	1	2024-03-16
14701	13	1	2024-04-09
14702	499	3	2024-02-13
14703	469	1	2024-03-25
14704	113	3	2024-08-16
14705	58	2	2024-08-07
14706	29	3	2024-05-30
14707	138	1	2024-07-30
14710	324	1	2024-04-18
14711	190	3	2024-11-07
14712	183	1	2024-11-18
14713	72	2	2024-11-20
14714	219	2	2024-02-04
14715	287	1	2024-08-14
14716	247	3	2024-11-22
14717	185	1	2024-09-19
14719	419	2	2024-12-21
14720	442	1	2024-07-10
14721	248	3	2024-11-03
14722	429	2	2024-12-25
14723	467	1	2024-12-28
14724	41	2	2024-04-30
14725	273	3	2024-03-11
14726	247	1	2024-12-03
14727	280	1	2024-12-11
14728	123	1	2024-05-13
14729	103	3	2024-11-01
14730	50	2	2024-08-21
14731	429	2	2024-08-13
14733	124	3	2024-07-23
14735	122	2	2024-07-10
14736	24	3	2024-03-14
14737	121	2	2024-11-08
14738	28	2	2024-11-11
14739	80	3	2024-12-19
14740	444	1	2024-02-10
14741	432	1	2024-10-19
14742	138	2	2024-04-23
14743	130	1	2024-07-12
14745	421	1	2024-11-29
14746	220	1	2024-12-19
14747	143	2	2024-11-14
14748	190	2	2024-11-30
14749	421	2	2024-09-24
14750	106	2	2024-08-16
14751	114	1	2024-10-18
14752	212	3	2024-05-12
14753	203	3	2024-12-29
14754	426	1	2024-02-29
14755	241	1	2024-08-30
14756	317	1	2024-06-27
14757	135	2	2024-10-16
14759	258	3	2024-05-23
14760	277	1	2024-08-31
14761	172	3	2024-12-07
14762	442	1	2024-08-31
14764	16	3	2024-02-04
14765	158	1	2024-11-05
14766	299	1	2024-04-30
14767	474	3	2024-04-21
14768	400	3	2024-11-18
14769	350	1	2024-04-17
14771	186	3	2024-07-05
14772	270	1	2024-08-02
14774	459	1	2024-11-21
14775	251	2	2024-06-14
14776	59	3	2024-05-17
14777	269	1	2024-05-28
14778	144	3	2024-08-10
14779	170	1	2024-10-24
14780	93	3	2024-07-23
14781	106	1	2024-05-14
14782	424	2	2024-05-22
14784	252	3	2024-06-22
14785	113	2	2024-03-09
14786	220	2	2024-11-09
14787	490	1	2024-11-17
14788	93	3	2024-07-21
14789	428	2	2024-05-10
14790	174	1	2024-10-27
14791	353	3	2024-09-04
14792	179	1	2024-04-17
14793	409	2	2024-08-27
14794	498	3	2024-10-11
14795	75	1	2024-03-14
14796	73	2	2024-03-27
14797	173	1	2024-05-19
14799	458	2	2024-04-21
14801	315	2	2024-10-10
14802	20	1	2024-04-05
14803	116	2	2024-10-11
14804	262	3	2024-04-06
14805	416	2	2024-11-23
14806	179	1	2024-07-30
14807	120	3	2024-09-14
14808	133	1	2024-06-25
14809	412	3	2024-12-29
14810	254	3	2024-10-18
14811	246	2	2024-09-27
14812	89	2	2024-07-17
14813	192	2	2024-10-17
14814	491	1	2024-02-11
14815	485	3	2024-08-03
14816	262	2	2024-11-15
14817	37	2	2024-10-05
14818	244	1	2024-04-24
14819	480	2	2024-04-03
14820	204	3	2024-07-11
14821	447	1	2024-05-13
14822	193	2	2024-02-24
14823	416	2	2024-09-16
14824	5	1	2024-03-20
14825	385	2	2024-11-13
14826	183	2	2024-05-23
14829	387	1	2024-06-10
14830	160	3	2024-12-29
14831	155	1	2024-02-08
14832	300	2	2024-09-22
14833	36	1	2024-05-29
14834	435	3	2024-09-26
14835	300	1	2024-07-02
14836	5	2	2024-08-14
14838	160	3	2024-05-21
14839	202	1	2024-04-18
14841	438	3	2024-11-13
14842	491	3	2024-05-25
14843	186	2	2024-12-23
14844	269	3	2024-12-18
14845	54	3	2024-06-22
14847	13	2	2024-04-11
14848	468	1	2024-05-06
14850	393	2	2024-05-04
14853	129	3	2024-03-25
14855	412	1	2024-11-26
14856	42	1	2024-07-16
14857	176	3	2024-10-22
14858	150	1	2024-08-04
14859	224	2	2024-10-24
14860	477	1	2024-03-30
14861	127	2	2024-10-19
14862	454	2	2024-12-15
14863	488	2	2024-04-05
14864	172	2	2024-02-02
14866	491	2	2024-03-25
14867	340	2	2024-10-25
14868	160	3	2024-04-07
14869	417	3	2024-08-26
14870	287	1	2024-12-25
14871	377	2	2024-03-08
14872	302	1	2024-07-18
14873	168	2	2024-06-20
14874	15	3	2024-08-12
14875	200	3	2024-08-28
14876	45	3	2024-06-22
14877	69	2	2024-03-06
14878	55	2	2024-05-02
14879	289	2	2024-08-03
14880	117	3	2024-04-21
14881	366	1	2024-03-16
14882	75	1	2024-03-29
14883	477	1	2024-07-09
14884	485	1	2024-10-18
14885	92	1	2024-11-26
14886	13	2	2024-02-09
14887	220	2	2024-03-20
14888	257	3	2024-06-17
14889	58	2	2024-06-17
14890	78	1	2024-02-21
14891	31	3	2024-10-09
14892	154	1	2024-03-31
14893	412	2	2024-07-08
14894	300	1	2024-11-07
14895	337	2	2024-02-04
14896	83	1	2024-05-09
14898	222	2	2024-10-26
14899	310	2	2024-09-04
14900	89	3	2024-12-21
14902	376	1	2024-06-12
14903	61	1	2024-02-01
14904	161	2	2024-08-15
14905	157	3	2024-06-09
14907	113	1	2024-10-04
14908	470	2	2024-02-06
14909	37	1	2024-12-22
14910	277	2	2024-03-22
14911	273	3	2024-09-02
14914	301	1	2024-10-21
14915	500	1	2024-08-28
14916	356	1	2024-02-14
14917	86	3	2024-06-27
14918	91	1	2024-07-30
14920	90	1	2024-08-19
14921	472	1	2024-06-25
14922	23	2	2024-09-19
14923	229	1	2024-02-19
14924	449	1	2024-10-16
14925	283	2	2024-09-13
14927	89	1	2024-04-03
14928	490	1	2024-07-04
14929	75	3	2024-07-10
14930	182	3	2024-12-06
14931	135	1	2024-03-27
14932	485	3	2024-03-20
14933	144	2	2024-03-26
14934	169	2	2024-09-22
14935	295	3	2024-07-28
14936	253	2	2024-11-24
14937	57	1	2024-05-07
14939	69	2	2024-10-21
14940	393	3	2024-10-06
14942	342	1	2024-03-07
14944	231	3	2024-05-03
14945	468	3	2024-09-23
14946	115	2	2024-10-04
14948	416	2	2024-10-15
14949	56	2	2024-06-18
14950	325	2	2024-04-25
14951	303	3	2024-10-23
14952	75	2	2024-04-21
14953	282	1	2024-07-20
14954	207	3	2024-09-11
14955	138	2	2024-04-28
14956	383	2	2024-06-21
14957	193	2	2024-05-29
14958	363	1	2024-08-26
14959	166	3	2024-10-21
14960	164	1	2024-09-15
14961	325	3	2024-12-03
14962	164	1	2024-05-25
14963	14	1	2024-07-28
14964	387	2	2024-08-25
14965	340	1	2024-03-02
14966	238	2	2024-10-16
14967	359	3	2024-12-10
14968	344	2	2024-12-30
14969	133	2	2024-02-22
14970	149	2	2024-06-22
14971	259	1	2024-06-12
14972	55	2	2024-07-02
14973	267	2	2024-02-27
14974	191	2	2024-03-24
14975	55	3	2024-09-22
14976	124	3	2024-09-29
14977	224	2	2024-07-10
14979	448	1	2024-10-27
14980	141	3	2024-02-09
14981	433	3	2024-05-27
14982	113	2	2024-12-07
14983	453	2	2024-11-25
14984	223	3	2024-02-07
14985	5	2	2024-06-18
14986	206	1	2024-08-03
14987	488	2	2024-07-28
14988	4	3	2024-06-10
14989	307	1	2024-06-06
14990	114	3	2024-05-03
14991	3	1	2024-09-01
14992	418	1	2024-12-20
14993	378	3	2024-09-03
14994	211	3	2024-09-24
14995	6	3	2024-07-13
14996	104	2	2024-12-06
14997	408	1	2024-07-29
14998	380	2	2024-08-30
14999	350	2	2024-08-11
15000	149	3	2024-08-30
15001	157	3	2024-11-24
15002	304	1	2024-08-24
15003	56	3	2024-06-23
15005	46	1	2024-08-15
15006	321	3	2024-02-18
15007	311	1	2024-10-04
15008	3	1	2024-09-29
15010	163	2	2024-06-02
15011	388	3	2024-07-22
15012	251	3	2024-08-18
15014	326	3	2024-08-02
15016	376	2	2024-09-19
15017	448	2	2024-04-26
15018	364	2	2024-05-27
15020	366	3	2024-09-11
15021	404	3	2024-06-21
15022	63	1	2024-06-21
15023	222	2	2024-08-20
15024	206	3	2024-07-27
15025	464	1	2024-10-03
15027	67	2	2024-10-15
15028	406	1	2024-05-01
15029	410	1	2024-03-13
15030	174	1	2024-09-15
15031	38	3	2024-11-01
15033	53	3	2024-04-03
15034	58	3	2024-05-12
15035	206	1	2024-10-04
15036	332	3	2024-04-28
15038	425	3	2024-08-14
15043	267	3	2024-11-15
15044	125	2	2024-03-14
15045	400	1	2024-06-06
15046	196	2	2024-12-08
15047	60	3	2024-05-16
15049	442	2	2024-12-28
15050	181	1	2024-12-15
15051	14	1	2024-11-13
15052	171	3	2024-07-08
15053	278	3	2024-07-03
15054	96	2	2024-10-19
15055	321	2	2024-06-03
15056	478	3	2024-02-19
15057	117	1	2024-07-18
15058	166	3	2024-02-23
15060	265	3	2024-06-29
15061	102	2	2024-08-17
15062	35	3	2024-03-14
15063	19	1	2024-08-02
15064	500	1	2024-09-01
15065	176	3	2024-04-11
15066	477	1	2024-09-18
15067	494	2	2024-10-10
15068	299	1	2024-08-25
15069	290	1	2024-12-05
15070	315	3	2024-09-15
15071	12	1	2024-02-06
15072	290	3	2024-07-12
15073	366	2	2024-12-10
15074	228	3	2024-11-14
15075	101	1	2024-10-08
15076	238	3	2024-07-11
15077	402	1	2024-11-01
15078	94	1	2024-03-11
15079	404	3	2024-05-24
15080	340	1	2024-09-30
15081	144	2	2024-08-08
15082	137	1	2024-11-06
15083	118	1	2024-05-07
15084	163	2	2024-02-29
15085	346	2	2024-06-08
15086	52	2	2024-03-15
15087	320	1	2024-05-01
15088	41	1	2024-09-25
15089	412	3	2024-11-05
15090	258	2	2024-08-06
15091	71	2	2024-12-15
15092	295	1	2024-07-26
15093	170	3	2024-03-07
15094	418	3	2024-12-02
15095	289	3	2024-06-24
15096	16	1	2024-07-28
15097	480	2	2024-10-23
15098	427	2	2024-07-05
15099	278	3	2024-03-17
15100	488	1	2024-10-30
15101	7	2	2024-05-30
15102	361	2	2024-04-01
15103	262	1	2024-11-10
15104	61	3	2024-02-03
15105	273	1	2024-02-06
15106	358	2	2024-03-18
15107	433	2	2024-06-01
15108	56	3	2024-09-23
15109	56	2	2024-06-14
15110	109	1	2024-11-29
15111	273	3	2024-10-17
15112	146	2	2024-12-16
15113	375	3	2024-08-01
15114	136	2	2024-04-18
15115	103	2	2024-04-26
15117	419	2	2024-11-18
15118	355	3	2024-10-02
15119	283	2	2024-07-21
15120	178	3	2024-04-14
15121	279	3	2024-12-10
15122	197	2	2024-06-02
15123	441	1	2024-05-06
15124	293	3	2024-06-18
15125	230	1	2024-05-14
15127	84	2	2024-05-09
15128	337	3	2024-03-18
15129	230	2	2024-12-01
15130	108	3	2024-05-14
15131	374	3	2024-08-26
15132	73	2	2024-09-11
15133	119	1	2024-07-10
15134	176	3	2024-02-16
15135	195	2	2024-07-14
15136	467	3	2024-06-05
15137	411	2	2024-05-26
15138	71	2	2024-11-10
15140	23	2	2024-02-15
15141	403	3	2024-10-25
15142	306	2	2024-09-18
15143	346	1	2024-09-19
15144	351	2	2024-09-18
15145	37	1	2024-06-28
15147	71	1	2024-06-30
15148	345	3	2024-07-10
15150	343	2	2024-09-11
15151	202	1	2024-07-24
15152	404	2	2024-03-20
15154	308	2	2024-06-09
15156	416	3	2024-07-18
15157	260	1	2024-03-21
15160	137	3	2024-07-10
15161	489	1	2024-10-31
15162	415	1	2024-08-13
15163	207	3	2024-03-10
15164	414	2	2024-09-20
15166	93	2	2024-07-28
15167	205	3	2024-05-26
15168	350	1	2024-04-22
15169	211	2	2024-04-20
15170	457	3	2024-03-29
15171	371	1	2024-02-15
15172	170	2	2024-05-15
15173	186	2	2024-06-11
15174	55	2	2024-03-14
15175	240	1	2024-08-29
15176	448	3	2024-11-10
15177	339	2	2024-11-07
15178	151	1	2024-03-22
15179	209	1	2024-04-17
15180	491	3	2024-05-20
15181	451	1	2024-12-28
15183	149	2	2024-11-29
15184	403	1	2024-08-18
15185	53	2	2024-02-22
15186	178	3	2024-04-27
15187	130	2	2024-07-16
15188	464	3	2024-06-01
15189	419	3	2024-04-19
15190	498	1	2024-07-08
15191	449	3	2024-08-08
15192	207	3	2024-05-03
15193	430	3	2024-03-05
15194	24	3	2024-07-21
15195	449	2	2024-07-25
15196	281	1	2024-03-02
15197	313	3	2024-07-13
15198	119	1	2024-03-21
15200	406	3	2024-04-21
15201	454	1	2024-10-03
15202	423	1	2024-08-04
15203	260	2	2024-12-29
15204	338	3	2024-09-20
15205	162	3	2024-11-15
15206	156	2	2024-09-15
15207	111	1	2024-03-13
15208	348	1	2024-12-18
15210	152	2	2024-07-16
15211	425	2	2024-04-17
15212	277	2	2024-06-27
15213	29	2	2024-07-22
15214	264	2	2024-11-23
15215	312	2	2024-07-25
15216	272	2	2024-12-23
15217	280	3	2024-08-16
15218	370	1	2024-03-05
15219	221	3	2024-05-01
15220	495	2	2024-06-18
15221	127	3	2024-04-18
15222	187	1	2024-04-13
15224	65	2	2024-09-26
15227	487	3	2024-09-26
15230	35	1	2024-03-02
15231	143	1	2024-10-13
15233	368	3	2024-08-22
15234	24	2	2024-07-05
15235	133	1	2024-02-28
15236	178	3	2024-05-19
15237	265	3	2024-09-17
15238	109	3	2024-08-06
15239	58	3	2024-11-13
15240	202	3	2024-05-04
15242	63	3	2024-10-17
15243	496	1	2024-06-18
15244	216	2	2024-10-24
15245	482	2	2024-06-08
15246	473	1	2024-07-14
15247	105	2	2024-10-12
15248	349	2	2024-06-01
15250	102	3	2024-11-02
15251	100	2	2024-05-30
15252	28	1	2024-09-29
15253	52	2	2024-06-27
15254	325	2	2024-08-01
15255	328	3	2024-11-14
15256	491	1	2024-02-06
15257	27	1	2024-05-11
15258	40	1	2024-11-21
15259	149	1	2024-06-21
15260	8	1	2024-08-16
15261	169	2	2024-07-26
15262	493	2	2024-07-15
15263	148	3	2024-02-18
15264	124	3	2024-07-11
15265	235	1	2024-06-13
15266	299	3	2024-03-09
15267	37	1	2024-02-14
15268	409	3	2024-09-17
15269	7	2	2024-10-05
15270	17	2	2024-12-29
15271	120	1	2024-12-03
15272	391	2	2024-07-18
15273	296	1	2024-07-11
15274	333	3	2024-09-28
15275	5	1	2024-11-14
15276	66	1	2024-03-11
15277	134	1	2024-08-09
15278	70	2	2024-12-02
15279	387	2	2024-09-29
15280	73	1	2024-02-15
15282	422	1	2024-12-14
15283	81	3	2024-04-21
15284	103	1	2024-07-04
15285	367	1	2024-10-23
15286	120	1	2024-11-21
15287	57	2	2024-02-07
15288	467	2	2024-11-19
15289	348	2	2024-10-13
15290	83	1	2024-11-18
15291	325	1	2024-08-21
15292	489	1	2024-06-12
15293	229	2	2024-04-14
15294	395	1	2024-07-24
15295	262	1	2024-06-04
15296	211	2	2024-11-02
15297	308	2	2024-10-04
15298	420	1	2024-05-02
15299	178	1	2024-02-20
15300	231	1	2024-09-21
15301	22	2	2024-11-21
15302	108	2	2024-05-12
15303	50	2	2024-12-24
15304	79	1	2024-06-22
15305	198	1	2024-09-21
15306	114	1	2024-08-12
15307	285	1	2024-02-15
15308	306	1	2024-03-25
15309	242	1	2024-03-15
15310	187	2	2024-06-30
15311	32	2	2024-11-14
15312	292	3	2024-05-18
15313	375	2	2024-12-08
15314	398	1	2024-06-23
15315	334	3	2024-05-02
15316	108	2	2024-12-19
15317	243	1	2024-08-06
15319	197	1	2024-03-21
15320	104	1	2024-03-25
15321	146	3	2024-07-03
15322	352	2	2024-12-29
15323	138	3	2024-09-06
15324	75	2	2024-09-18
15325	99	1	2024-04-10
15326	243	2	2024-04-01
15327	227	2	2024-10-14
15328	441	1	2024-12-07
15329	443	1	2024-03-09
15330	26	1	2024-10-27
15331	336	2	2024-03-27
15332	150	1	2024-02-06
15333	400	1	2024-05-16
15335	12	1	2024-09-11
15336	468	1	2024-09-20
15337	456	1	2024-02-02
15338	268	1	2024-11-08
15339	399	1	2024-05-17
15340	41	1	2024-03-03
15341	237	1	2024-09-26
15342	125	3	2024-06-02
15343	59	3	2024-09-11
15344	462	3	2024-12-07
15345	21	3	2024-09-12
15347	308	2	2024-03-25
15348	249	2	2024-06-18
15349	481	3	2024-05-25
15350	153	3	2024-03-15
15351	348	3	2024-09-06
15352	63	3	2024-10-14
15353	148	3	2024-02-20
15354	30	2	2024-09-19
15355	433	3	2024-12-04
15357	410	2	2024-07-28
15358	6	1	2024-12-27
15359	318	3	2024-02-26
15360	466	3	2024-08-15
15361	498	3	2024-12-11
15362	340	3	2024-10-05
15363	499	3	2024-06-23
15364	61	2	2024-02-21
15365	395	3	2024-07-11
15366	274	3	2024-10-21
15368	16	2	2024-06-15
15369	152	1	2024-05-23
15370	463	2	2024-04-17
15371	177	1	2024-10-13
15372	283	3	2024-06-22
15373	226	3	2024-04-12
15374	263	3	2024-03-30
15375	496	3	2024-11-18
15376	485	3	2024-10-21
15377	189	2	2024-09-29
15378	193	3	2024-04-03
15379	175	3	2024-03-25
15380	307	2	2024-02-11
15381	65	1	2024-03-22
15382	278	1	2024-06-20
15383	411	3	2024-02-25
15384	370	2	2024-04-08
15386	38	3	2024-08-18
15387	119	2	2024-05-11
15388	136	3	2024-06-23
15389	187	1	2024-10-04
15390	425	1	2024-02-13
15391	342	1	2024-04-13
15392	64	3	2024-11-06
15393	296	3	2024-06-28
15394	482	3	2024-12-08
15396	445	2	2024-02-02
15397	146	1	2024-10-10
15398	133	1	2024-11-02
15399	155	3	2024-11-10
15400	457	2	2024-12-24
15401	201	2	2024-09-03
15402	480	2	2024-06-05
15403	225	2	2024-04-22
15404	345	2	2024-08-20
15405	26	2	2024-11-13
15406	232	3	2024-06-26
15408	208	3	2024-08-02
15409	139	2	2024-10-23
15411	209	1	2024-10-29
15412	64	1	2024-05-01
15413	291	3	2024-04-13
15414	395	1	2024-08-22
15415	339	2	2024-08-30
15416	304	1	2024-07-08
15418	433	2	2024-11-28
15419	374	3	2024-03-02
15420	11	1	2024-05-06
15421	282	1	2024-03-16
15422	411	2	2024-09-23
15423	291	2	2024-05-10
15424	272	3	2024-02-16
15425	70	2	2024-02-21
15426	368	1	2024-03-19
15427	235	3	2024-11-16
15428	325	1	2024-08-09
15429	34	1	2024-03-31
15430	74	1	2024-07-10
15431	153	3	2024-04-07
15432	415	1	2024-09-09
15433	336	2	2024-03-20
15434	452	2	2024-05-10
15435	205	3	2024-08-06
15437	482	2	2024-08-21
15438	45	3	2024-06-19
15439	370	1	2024-07-04
15440	208	1	2024-10-11
15441	196	3	2024-04-18
15442	44	2	2024-12-29
15443	338	1	2024-07-21
15444	340	1	2024-02-11
15445	453	2	2024-08-28
15446	321	1	2024-03-13
15448	464	3	2024-05-29
15449	186	1	2024-09-13
15450	259	1	2024-11-29
15451	86	2	2024-04-24
15453	124	1	2024-08-01
15454	368	3	2024-09-11
15455	395	1	2024-02-13
15457	348	2	2024-09-26
15459	135	2	2024-07-08
15460	235	3	2024-10-31
15461	197	3	2024-03-06
15462	328	3	2024-12-19
15463	438	1	2024-05-24
15464	271	2	2024-04-04
15465	445	3	2024-07-04
15466	468	3	2024-10-23
15467	349	2	2024-08-31
15469	47	2	2024-02-05
15470	194	3	2024-10-24
15471	39	1	2024-11-21
15472	479	3	2024-05-17
15473	243	3	2024-10-10
15474	346	3	2024-06-09
15475	486	2	2024-10-18
15476	36	2	2024-10-05
15477	462	2	2024-03-15
15478	239	1	2024-12-28
15479	372	2	2024-10-15
15480	275	1	2024-04-22
15481	495	1	2024-03-14
15482	222	2	2024-09-12
15483	106	3	2024-06-11
15484	236	2	2024-04-30
15486	180	3	2024-03-16
15487	356	3	2024-11-13
15488	231	1	2024-07-04
15489	200	1	2024-12-25
15490	76	1	2024-02-21
15491	491	2	2024-07-31
15492	474	3	2024-04-29
15493	197	2	2024-07-26
15495	468	2	2024-11-22
15496	55	2	2024-09-27
15498	122	1	2024-08-15
15499	337	3	2024-07-12
15500	146	1	2024-02-06
15501	111	3	2024-09-19
15502	150	2	2024-04-11
15503	17	2	2024-03-18
15504	257	1	2024-10-23
15505	280	1	2024-10-28
15506	445	3	2024-04-08
15507	350	3	2024-11-03
15508	448	2	2024-05-09
15509	214	1	2024-11-26
15510	499	2	2024-12-17
15511	453	3	2024-04-03
15513	111	1	2024-04-19
15514	148	3	2024-07-14
15515	414	1	2024-12-23
15516	6	3	2024-11-04
15517	243	2	2024-12-31
15518	93	3	2024-11-03
15519	271	3	2024-11-21
15520	487	2	2024-10-31
15521	228	3	2024-07-30
15522	19	1	2024-11-04
15523	184	2	2024-12-29
15524	200	2	2024-07-05
15525	270	3	2024-07-27
15527	482	1	2024-10-28
15528	180	3	2024-10-12
15529	357	1	2024-07-27
15530	458	2	2024-08-19
15531	162	3	2024-12-19
15532	327	1	2024-04-26
15533	453	2	2024-11-26
15534	161	2	2024-02-03
15535	44	2	2024-07-19
15537	500	1	2024-09-18
15538	482	1	2024-10-07
15539	449	1	2024-10-14
15540	287	3	2024-09-22
15541	448	1	2024-07-25
15542	132	2	2024-03-15
15544	411	2	2024-05-21
15545	265	1	2024-04-16
15546	420	2	2024-04-24
15547	91	3	2024-11-03
15548	186	1	2024-06-18
15549	497	2	2024-10-20
15551	181	2	2024-04-29
15552	396	2	2024-12-08
15553	292	1	2024-02-01
15554	424	3	2024-03-09
15555	42	1	2024-05-17
15556	264	3	2024-09-03
15557	26	3	2024-10-17
15558	493	1	2024-12-04
15559	141	1	2024-09-16
15561	407	3	2024-12-21
15562	83	2	2024-06-05
15563	71	3	2024-08-06
15564	271	2	2024-12-13
15565	156	1	2024-03-06
15567	245	1	2024-04-17
15568	90	1	2024-10-12
15569	174	2	2024-03-20
15571	365	2	2024-09-24
15572	221	1	2024-12-30
15573	402	3	2024-09-26
15574	79	3	2024-10-02
15576	252	1	2024-03-06
15577	284	3	2024-09-09
15578	203	2	2024-02-18
15579	93	2	2024-02-15
15580	437	3	2024-12-15
15582	429	3	2024-08-25
15583	48	3	2024-11-07
15584	167	3	2024-06-06
15585	85	1	2024-11-28
15586	19	2	2024-05-22
15587	391	2	2024-10-29
15588	244	2	2024-05-03
15589	338	2	2024-10-02
15590	341	2	2024-12-27
15591	449	2	2024-06-10
15592	402	3	2024-07-19
15593	321	3	2024-11-19
15594	480	3	2024-06-01
15595	419	2	2024-12-20
15596	162	1	2024-03-27
15597	497	2	2024-12-15
15598	408	2	2024-10-29
15599	290	1	2024-09-17
15600	123	3	2024-02-08
15601	215	2	2024-08-26
15602	344	3	2024-11-29
15603	375	2	2024-11-17
15604	375	3	2024-06-10
15606	349	2	2024-06-26
15607	394	2	2024-07-23
15609	202	1	2024-02-10
15610	85	2	2024-12-05
15611	432	3	2024-10-11
15612	450	2	2024-12-26
15613	436	3	2024-09-27
15614	71	1	2024-08-18
15615	57	3	2024-04-23
15616	62	3	2024-02-12
15617	407	2	2024-06-14
15618	327	1	2024-03-11
15619	286	2	2024-08-14
15620	217	2	2024-07-17
15622	217	3	2024-04-20
15623	51	3	2024-03-02
15624	58	2	2024-08-21
15626	203	1	2024-12-18
15627	20	2	2024-07-17
15628	17	1	2024-03-17
15629	194	3	2024-03-12
15630	88	1	2024-04-01
15632	21	1	2024-08-30
15633	282	1	2024-02-25
15634	191	2	2024-03-31
15635	327	1	2024-03-07
15637	119	2	2024-05-14
15638	123	3	2024-06-17
15640	356	3	2024-09-09
15641	169	2	2024-06-30
15642	106	2	2024-02-25
15643	282	1	2024-10-31
15645	224	3	2024-02-28
15647	280	2	2024-12-05
15648	241	1	2024-12-29
15649	359	3	2024-03-14
15650	339	2	2024-07-07
15651	366	1	2024-04-15
15653	342	3	2024-05-27
15654	115	2	2024-03-22
15655	28	2	2024-07-04
15656	48	2	2024-08-29
15657	274	2	2024-09-22
15658	411	3	2024-08-21
15659	472	1	2024-12-19
15660	398	1	2024-07-05
15661	154	1	2024-12-13
15662	136	1	2024-08-08
15663	129	1	2024-05-13
15664	455	3	2024-12-24
15665	319	1	2024-11-01
15666	133	2	2024-07-13
15667	472	2	2024-10-20
15668	208	3	2024-10-04
15670	40	2	2024-10-22
15671	437	3	2024-05-25
15672	21	2	2024-02-15
15673	301	1	2024-02-14
15675	443	2	2024-08-06
15677	17	2	2024-10-31
15678	316	2	2024-03-25
15679	53	1	2024-04-08
15680	211	3	2024-12-28
15682	248	1	2024-02-25
15683	429	1	2024-05-09
15684	119	1	2024-06-02
15685	97	2	2024-08-01
15686	293	2	2024-10-28
15687	175	3	2024-12-29
15688	249	1	2024-02-04
15689	239	2	2024-04-30
15690	278	3	2024-11-07
15691	220	1	2024-06-15
15692	352	2	2024-03-19
15693	213	2	2024-05-16
15694	442	3	2024-09-15
15695	463	1	2024-04-30
15696	473	2	2024-04-25
15697	325	1	2024-06-17
15698	425	1	2024-02-10
15700	14	3	2024-08-19
15701	147	2	2024-05-02
15702	371	2	2024-07-08
15703	30	1	2024-03-15
15704	429	1	2024-12-20
15705	88	1	2024-08-20
15707	151	2	2024-05-03
15708	107	3	2024-03-24
15709	163	3	2024-02-27
15710	154	1	2024-07-04
15712	240	3	2024-09-03
15714	130	2	2024-09-19
15715	362	3	2024-11-09
15716	493	2	2024-04-10
15717	482	1	2024-09-01
15718	109	3	2024-07-11
15719	358	3	2024-05-19
15720	212	2	2024-06-23
15721	190	3	2024-07-04
15722	434	3	2024-11-28
15725	125	2	2024-10-29
15726	321	1	2024-12-26
15727	177	2	2024-04-27
15728	256	1	2024-06-26
15729	150	1	2024-06-08
15730	5	1	2024-08-23
15731	63	1	2024-03-02
15733	274	1	2024-12-05
15734	274	3	2024-10-13
15735	159	2	2024-08-12
15736	209	2	2024-03-02
15737	140	1	2024-03-30
15739	285	3	2024-11-20
15740	472	1	2024-12-05
15741	148	3	2024-05-05
15742	107	3	2024-08-02
15743	474	3	2024-02-21
15744	436	2	2024-10-12
15745	328	2	2024-03-10
15746	451	1	2024-09-13
15747	241	3	2024-11-09
15748	240	2	2024-12-23
15749	132	2	2024-08-20
15750	290	1	2024-12-13
15751	188	3	2024-05-06
15752	429	3	2024-04-29
15753	93	2	2024-03-01
15755	412	1	2024-04-15
15756	286	2	2024-10-22
15757	144	1	2024-04-01
15758	472	2	2024-09-28
15759	236	2	2024-11-19
15760	154	1	2024-06-04
15761	93	1	2024-11-04
15762	144	3	2024-05-25
15763	357	1	2024-07-07
15764	88	1	2024-10-30
15765	59	3	2024-07-30
15766	284	2	2024-12-28
15767	408	2	2024-02-14
15769	307	1	2024-09-20
15770	139	1	2024-02-08
15772	397	1	2024-12-19
15773	113	1	2024-10-07
15774	303	2	2024-05-14
15775	312	1	2024-05-02
15776	465	2	2024-08-27
15777	489	3	2024-12-29
15778	357	3	2024-04-19
15779	373	2	2024-06-20
15780	189	1	2024-11-01
15781	128	3	2024-11-17
15782	311	3	2024-10-20
15783	101	2	2024-09-27
15784	374	3	2024-02-07
15785	119	2	2024-03-15
15786	420	3	2024-04-18
15787	422	3	2024-08-22
15788	200	1	2024-11-26
15789	21	3	2024-04-07
15790	388	3	2024-10-30
15792	286	2	2024-11-20
15793	69	2	2024-04-06
15794	54	3	2024-03-10
15795	62	2	2024-03-31
15797	140	1	2024-10-18
15798	37	3	2024-06-13
15799	420	3	2024-02-15
15800	339	3	2024-03-14
15801	410	2	2024-09-12
15802	278	1	2024-08-09
15803	271	3	2024-06-09
15804	493	3	2024-04-04
15805	85	2	2024-02-10
15806	201	3	2024-07-29
15808	484	1	2024-06-24
15809	437	2	2024-07-09
15810	57	2	2024-09-05
15811	230	3	2024-02-28
15812	350	1	2024-07-11
15813	250	3	2024-10-12
15814	394	3	2024-02-05
15815	373	3	2024-08-25
15816	399	1	2024-02-13
15817	275	2	2024-10-07
15818	231	3	2024-11-11
15819	244	2	2024-02-24
15820	12	2	2024-02-03
15821	121	1	2024-02-08
15822	475	2	2024-05-24
15823	356	2	2024-03-19
15824	133	3	2024-11-13
15826	303	3	2024-08-12
15827	438	1	2024-10-05
15828	252	1	2024-07-28
15829	416	2	2024-09-23
15830	126	2	2024-07-12
15831	445	2	2024-10-27
15832	96	3	2024-12-18
15833	311	2	2024-02-22
15834	408	1	2024-06-22
15835	332	1	2024-07-20
15836	488	2	2024-03-21
15837	44	2	2024-08-24
15838	91	3	2024-03-10
15839	111	1	2024-07-04
15840	180	2	2024-08-10
15841	182	3	2024-07-05
15842	19	3	2024-05-19
15843	441	2	2024-07-05
15844	250	2	2024-12-25
15845	367	3	2024-03-02
15846	475	2	2024-08-04
15847	391	2	2024-02-27
15848	317	2	2024-02-05
15849	49	1	2024-04-11
15850	416	3	2024-09-22
15851	248	1	2024-09-10
15852	380	1	2024-10-31
15853	418	3	2024-08-25
15854	246	2	2024-03-12
15855	164	1	2024-05-11
15856	444	3	2024-09-05
15857	195	3	2024-10-11
15858	329	3	2024-02-14
15859	350	1	2024-08-01
15861	93	3	2024-06-23
15862	258	3	2024-10-11
15863	346	2	2024-12-10
15864	490	2	2024-09-09
15865	56	2	2024-10-05
15866	252	3	2024-12-30
15867	323	2	2024-10-19
15869	10	1	2024-07-07
15870	317	2	2024-12-21
15871	89	3	2024-03-19
15872	400	1	2024-08-31
15873	292	1	2024-07-12
15874	222	3	2024-06-02
15875	122	2	2024-08-26
15876	75	3	2024-11-29
15877	481	1	2024-04-25
15878	41	3	2024-12-09
15879	285	2	2024-09-21
15880	386	1	2024-10-20
15881	351	3	2024-02-03
15882	194	1	2024-09-28
15883	285	2	2024-02-21
15885	184	1	2024-10-19
15887	346	2	2024-06-06
15888	405	2	2024-02-17
15889	27	3	2024-12-04
15890	444	2	2024-04-27
15891	103	2	2024-10-31
15892	314	3	2024-11-14
15893	282	3	2024-11-18
15894	403	2	2024-12-12
15895	337	3	2024-04-26
15896	100	3	2024-07-05
15898	261	2	2024-02-27
15899	111	1	2024-03-22
15900	208	1	2024-11-01
15901	296	1	2024-02-24
15902	348	1	2024-10-08
15903	53	2	2024-07-29
15904	263	1	2024-02-20
15905	311	2	2024-06-02
15906	454	2	2024-10-06
15907	295	3	2024-05-07
15908	310	1	2024-10-07
15909	230	3	2024-02-20
15910	390	2	2024-08-01
15911	13	1	2024-02-17
15912	370	3	2024-07-13
15913	159	1	2024-09-06
15914	187	3	2024-09-12
15915	102	1	2024-10-11
15916	126	2	2024-06-26
15917	239	3	2024-07-27
15918	36	1	2024-11-16
15919	86	3	2024-12-20
15920	21	1	2024-05-15
15921	175	2	2024-11-25
15923	33	3	2024-10-05
15925	183	2	2024-05-10
15926	317	1	2024-06-12
15927	323	1	2024-03-28
15928	11	2	2024-06-19
15929	216	2	2024-03-13
15930	448	1	2024-08-27
15931	333	2	2024-08-26
15932	428	2	2024-03-19
15933	55	3	2024-09-16
15934	307	2	2024-06-13
15935	380	1	2024-08-25
15936	197	3	2024-02-05
15937	432	3	2024-04-30
15938	45	2	2024-04-06
15940	115	1	2024-08-15
15941	30	2	2024-11-05
15942	330	1	2024-05-14
15943	415	2	2024-02-07
15944	126	1	2024-12-10
15945	249	1	2024-11-19
15946	140	1	2024-07-23
15948	310	3	2024-08-20
15949	156	1	2024-03-05
15951	343	1	2024-10-03
15952	172	3	2024-11-30
15953	255	2	2024-10-12
15954	298	3	2024-12-11
15956	88	1	2024-04-15
15957	471	1	2024-07-03
15958	398	1	2024-08-02
15960	372	2	2024-09-06
15961	145	1	2024-05-20
15962	248	2	2024-07-15
15963	161	1	2024-07-24
15964	448	1	2024-09-08
15965	306	3	2024-05-04
15966	287	2	2024-08-21
15967	218	3	2024-09-04
15968	23	2	2024-08-11
15969	280	3	2024-07-01
15970	303	1	2024-11-24
15971	448	1	2024-03-10
15972	7	1	2024-08-25
15973	76	3	2024-04-28
15974	280	1	2024-08-08
15975	71	1	2024-06-07
15976	33	2	2024-12-14
15977	61	2	2024-07-13
15978	86	2	2024-05-24
15979	121	3	2024-02-16
15980	210	3	2024-08-17
15981	62	2	2024-03-30
15982	441	2	2024-03-18
15983	276	3	2024-03-06
15984	90	3	2024-11-20
15985	222	1	2024-11-21
15986	404	1	2024-05-14
15987	3	2	2024-04-23
15988	460	3	2024-09-06
15989	458	1	2024-08-18
15990	241	3	2024-04-29
15992	254	1	2024-12-22
15993	271	2	2024-12-04
15994	343	3	2024-06-29
15996	314	3	2024-04-28
15997	327	2	2024-05-02
15998	338	3	2024-09-14
15999	466	3	2024-02-27
16000	42	3	2024-02-06
16001	83	3	2024-09-04
16002	179	2	2024-06-29
16003	107	3	2024-02-01
16004	353	3	2024-07-06
16006	140	3	2024-05-21
16007	253	3	2024-11-06
16009	86	3	2024-11-12
16010	61	2	2024-12-22
16011	226	2	2024-07-01
16012	235	2	2024-09-10
16013	392	1	2024-07-04
16014	72	2	2024-06-13
16015	48	2	2024-11-16
16016	341	3	2024-05-30
16017	126	3	2024-02-08
16018	348	1	2024-08-06
16019	491	3	2024-03-03
16020	185	3	2024-08-14
16021	414	1	2024-02-06
16022	313	3	2024-12-26
16023	56	1	2024-09-11
16024	39	1	2024-07-11
16025	380	3	2024-07-26
16026	500	1	2024-09-28
16027	185	1	2024-12-10
16028	120	1	2024-12-17
16029	372	1	2024-02-03
16030	11	1	2024-12-05
16031	44	3	2024-07-26
16032	134	3	2024-09-21
16033	301	3	2024-09-02
16034	438	1	2024-03-20
16035	238	1	2024-10-13
16036	250	3	2024-09-28
16037	219	1	2024-06-04
16038	433	2	2024-09-25
16039	341	2	2024-08-24
16040	411	3	2024-10-11
16041	440	2	2024-07-20
16042	45	3	2024-11-21
16044	175	2	2024-03-08
16045	326	2	2024-12-20
16046	187	3	2024-11-04
16047	395	3	2024-05-06
16048	385	1	2024-08-08
16049	345	1	2024-03-07
16050	432	3	2024-03-12
16051	32	3	2024-11-26
16052	429	2	2024-06-17
16053	415	3	2024-11-19
16055	499	2	2024-02-03
16056	273	2	2024-02-02
16057	21	2	2024-08-11
16058	114	2	2024-04-15
16059	416	1	2024-06-21
16060	41	2	2024-12-21
16061	465	1	2024-04-10
16062	332	3	2024-10-05
16063	363	3	2024-11-05
16064	25	3	2024-09-17
16065	473	3	2024-03-13
16066	346	2	2024-05-17
16067	122	3	2024-06-06
16068	113	3	2024-09-24
16069	430	2	2024-06-11
16070	145	2	2024-08-31
16071	95	2	2024-03-14
16072	233	2	2024-05-26
16073	344	3	2024-12-03
16074	480	1	2024-10-20
16075	374	3	2024-11-25
16076	100	1	2024-12-12
16077	354	3	2024-06-28
16078	183	1	2024-11-08
16080	423	3	2024-04-04
16081	445	3	2024-03-08
16082	422	3	2024-12-16
16083	409	2	2024-02-08
16085	471	2	2024-08-28
16086	6	2	2024-07-17
16087	14	1	2024-08-17
16088	485	1	2024-06-03
16089	253	3	2024-07-08
16090	205	3	2024-08-18
16091	386	3	2024-02-23
16092	29	1	2024-12-08
16095	60	3	2024-10-31
16096	379	3	2024-02-11
16097	98	2	2024-03-15
16098	192	2	2024-11-02
16099	85	1	2024-07-17
16100	171	2	2024-04-25
16101	428	3	2024-11-27
16103	71	1	2024-07-22
16104	205	2	2024-04-13
16105	210	1	2024-07-21
16106	494	2	2024-03-20
16107	415	2	2024-02-27
16108	28	3	2024-02-18
16109	11	2	2024-11-18
16110	303	1	2024-05-12
16111	413	3	2024-12-25
16112	41	1	2024-06-03
16113	375	2	2024-12-11
16114	264	1	2024-09-08
16115	419	1	2024-06-09
16116	49	3	2024-05-08
16118	109	1	2024-02-18
16119	364	2	2024-12-16
16120	229	1	2024-07-07
16121	23	1	2024-10-15
16122	282	2	2024-02-05
16123	208	2	2024-10-08
16124	89	2	2024-08-23
16126	90	3	2024-02-15
16127	186	1	2024-03-14
16128	122	3	2024-04-14
16129	500	2	2024-11-14
16131	94	1	2024-08-05
16132	186	1	2024-08-15
16133	393	1	2024-05-27
16134	267	3	2024-04-23
16135	359	1	2024-06-04
16137	188	3	2024-08-24
16138	207	1	2024-10-27
16139	467	1	2024-08-22
16140	15	1	2024-05-10
16141	87	3	2024-07-29
16142	174	1	2024-06-06
16143	25	2	2024-09-03
16144	235	1	2024-02-25
16146	10	3	2024-02-18
16147	338	1	2024-07-09
16148	140	3	2024-04-06
16149	254	2	2024-06-02
16150	275	1	2024-10-11
16151	341	2	2024-11-16
16152	377	3	2024-11-12
16153	398	2	2024-04-07
16154	237	1	2024-02-22
16155	397	3	2024-08-25
16156	367	3	2024-12-26
16158	25	1	2024-05-12
16159	363	1	2024-09-14
16160	270	3	2024-05-19
16161	179	2	2024-06-03
16162	379	1	2024-05-25
16163	152	1	2024-12-22
16164	410	3	2024-05-01
16165	247	3	2024-02-10
16166	413	1	2024-06-16
16167	386	2	2024-04-17
16168	335	3	2024-06-15
16169	198	3	2024-07-26
16170	26	2	2024-10-27
16171	197	3	2024-11-23
16172	27	1	2024-07-28
16173	377	3	2024-03-11
16174	305	3	2024-05-01
16175	118	3	2024-07-11
16176	354	1	2024-06-23
16177	490	3	2024-09-23
16178	411	3	2024-03-16
16179	227	1	2024-05-23
16180	77	2	2024-06-10
16182	281	3	2024-02-26
16183	250	1	2024-07-27
16184	313	3	2024-04-25
16185	13	3	2024-07-19
16186	62	1	2024-03-20
16189	415	3	2024-05-18
16190	54	1	2024-10-05
16191	129	2	2024-05-04
16192	301	3	2024-05-08
16193	211	3	2024-12-11
16194	287	2	2024-10-05
16195	342	1	2024-08-03
16196	301	3	2024-12-20
16197	323	2	2024-06-28
16198	374	2	2024-10-09
16199	495	3	2024-07-24
16201	284	2	2024-05-14
16203	446	2	2024-10-27
16205	133	3	2024-07-31
16206	272	2	2024-02-09
16207	436	2	2024-09-01
16208	95	2	2024-11-29
16209	210	3	2024-12-12
16210	212	2	2024-07-06
16211	379	3	2024-05-01
16212	309	1	2024-08-10
16213	450	1	2024-09-22
16214	380	1	2024-06-10
16215	91	2	2024-05-16
16216	192	1	2024-11-24
16217	253	1	2024-11-30
16218	104	1	2024-12-31
16219	276	3	2024-09-19
16220	279	2	2024-07-03
16221	307	1	2024-05-15
16222	174	1	2024-03-19
16223	452	1	2024-11-30
16224	255	1	2024-02-06
16226	26	1	2024-11-11
16227	448	1	2024-11-06
16228	500	3	2024-03-22
16229	218	1	2024-08-16
16230	231	1	2024-07-29
16231	301	3	2024-08-12
16232	464	3	2024-06-14
16233	415	2	2024-12-19
16234	353	2	2024-06-20
16235	306	3	2024-05-13
16236	273	2	2024-10-14
16237	416	1	2024-08-17
16238	496	1	2024-06-03
16239	335	1	2024-03-10
16240	156	1	2024-02-08
16241	101	3	2024-12-18
16242	318	1	2024-06-06
16243	449	2	2024-05-24
16244	328	1	2024-04-20
16246	136	3	2024-03-20
16247	63	3	2024-12-24
16248	386	3	2024-09-15
16249	186	1	2024-02-20
16250	277	3	2024-09-06
16252	422	2	2024-03-22
16253	417	3	2024-04-02
16254	266	3	2024-06-24
16255	455	3	2024-11-20
16256	217	3	2024-02-11
16257	172	1	2024-04-21
16258	36	1	2024-11-02
16259	384	2	2024-04-06
16260	290	2	2024-07-03
16261	114	3	2024-04-01
16263	60	3	2024-09-13
16264	300	3	2024-02-07
16265	479	2	2024-10-02
16266	34	2	2024-08-03
16267	118	1	2024-07-04
16268	404	2	2024-05-25
16269	304	3	2024-09-05
16270	472	2	2024-11-04
16271	253	3	2024-05-21
16272	76	1	2024-12-17
16274	32	1	2024-05-28
16275	129	3	2024-04-05
16276	481	3	2024-10-13
16277	222	3	2024-02-17
16278	384	2	2024-02-20
16279	415	2	2024-08-30
16280	411	1	2024-09-22
16281	323	2	2024-12-26
16282	269	2	2024-10-15
16283	280	2	2024-04-11
16284	112	3	2024-05-25
16285	22	1	2024-12-16
16286	407	1	2024-11-27
16287	387	3	2024-12-28
16288	302	3	2024-08-21
16289	322	1	2024-07-18
16290	306	2	2024-09-30
16291	440	2	2024-02-19
16292	423	2	2024-11-27
16293	449	1	2024-07-03
16294	345	1	2024-05-25
16295	105	3	2024-03-03
16296	257	1	2024-05-12
16297	273	3	2024-10-28
16298	470	2	2024-04-16
16299	155	1	2024-08-01
16300	64	3	2024-07-15
16301	251	1	2024-09-30
16302	414	1	2024-02-04
16303	242	1	2024-12-07
16304	69	1	2024-09-06
16305	107	1	2024-12-18
16306	177	3	2024-04-18
16308	167	2	2024-10-01
16309	265	2	2024-02-03
16310	20	1	2024-10-01
16311	328	1	2024-12-24
16312	92	3	2024-08-03
16313	164	3	2024-02-28
16314	366	3	2024-06-06
16315	448	2	2024-09-19
16316	1	1	2024-10-27
16317	440	3	2024-11-01
16318	474	2	2024-06-05
16319	93	1	2024-12-04
16320	219	2	2024-11-22
16321	176	2	2024-09-17
16322	155	3	2024-08-09
16323	289	3	2024-07-14
16324	387	2	2024-07-06
16325	97	2	2024-02-14
16326	168	1	2024-06-02
16327	217	1	2024-06-02
16328	181	1	2024-09-19
16330	105	1	2024-08-20
16331	285	1	2024-07-04
16332	487	3	2024-07-15
16333	68	3	2024-06-29
16334	119	1	2024-07-26
16335	238	3	2024-05-02
16336	281	2	2024-11-28
16337	84	3	2024-08-27
16338	43	3	2024-12-06
16340	94	1	2024-03-25
16341	113	1	2024-06-30
16342	176	3	2024-08-21
16343	351	2	2024-11-08
16345	265	3	2024-12-31
16346	402	2	2024-03-01
16347	202	2	2024-07-15
16348	209	2	2024-11-07
16349	403	2	2024-06-26
16350	475	3	2024-04-07
16351	93	1	2024-06-10
16352	279	1	2024-05-24
16353	396	3	2024-09-13
16354	280	3	2024-02-26
16356	400	3	2024-12-15
16357	15	1	2024-02-15
16358	298	2	2024-09-06
16359	12	3	2024-10-20
16360	1	3	2024-03-30
16361	221	1	2024-06-27
16362	416	2	2024-02-25
16363	27	3	2024-07-13
16364	171	2	2024-09-30
16365	263	1	2024-06-16
16366	121	1	2024-09-14
16367	320	1	2024-05-10
16368	389	3	2024-07-22
16370	458	3	2024-10-12
16371	299	1	2024-04-21
16372	489	2	2024-12-20
16373	80	2	2024-10-29
16374	319	3	2024-07-04
16375	402	2	2024-10-17
16376	59	1	2024-11-26
16377	149	2	2024-07-24
16378	496	3	2024-07-23
16379	296	1	2024-09-15
16380	428	1	2024-12-12
16381	94	1	2024-08-12
16382	76	1	2024-06-15
16384	470	1	2024-11-20
16385	156	3	2024-07-09
16386	159	2	2024-09-02
16387	16	3	2024-06-28
16388	192	2	2024-06-23
16389	434	2	2024-03-12
16390	451	1	2024-09-15
16391	69	1	2024-05-30
16392	196	3	2024-08-23
16393	239	3	2024-09-12
16394	121	3	2024-03-12
16395	318	2	2024-09-02
16397	216	2	2024-06-21
16398	127	1	2024-04-29
16399	259	3	2024-10-15
16400	474	1	2024-05-16
16401	443	1	2024-07-04
16403	72	1	2024-11-22
16405	170	3	2024-07-01
16406	330	1	2024-08-08
16407	279	3	2024-11-17
16408	25	1	2024-07-12
16409	257	2	2024-11-09
16411	73	1	2024-02-20
16412	120	1	2024-03-25
16413	275	2	2024-02-01
16414	315	2	2024-12-23
16415	74	2	2024-07-08
16416	493	2	2024-02-26
16417	186	3	2024-05-03
16418	395	3	2024-09-28
16419	327	1	2024-02-08
16420	53	2	2024-12-13
16421	149	1	2024-11-06
16422	475	3	2024-08-07
16423	262	2	2024-08-16
16425	277	2	2024-10-13
16426	8	2	2024-07-12
16427	41	1	2024-12-30
16428	155	2	2024-11-06
16429	172	3	2024-09-05
16430	377	1	2024-07-08
16431	435	1	2024-07-20
16432	101	3	2024-10-12
16433	299	3	2024-07-13
16434	251	1	2024-03-04
16435	177	1	2024-11-20
16436	79	1	2024-08-11
16437	45	2	2024-02-02
16438	238	3	2024-06-27
16439	115	3	2024-05-07
16440	119	1	2024-06-03
16441	262	1	2024-03-16
16442	380	1	2024-09-27
16443	446	3	2024-08-17
16444	17	3	2024-04-15
16445	80	2	2024-03-01
16446	439	1	2024-12-11
16448	269	3	2024-02-19
16449	216	1	2024-10-20
16450	34	3	2024-07-18
16451	422	3	2024-11-06
16452	328	1	2024-03-15
16453	492	2	2024-12-31
16454	26	3	2024-06-28
16455	52	1	2024-12-29
16456	455	1	2024-06-10
16457	331	3	2024-08-30
16458	19	3	2024-05-24
16459	124	2	2024-04-29
16460	25	3	2024-08-16
16461	499	3	2024-07-02
16462	318	1	2024-07-19
16463	6	1	2024-02-18
16464	264	2	2024-05-31
16465	200	1	2024-11-24
16466	458	2	2024-02-22
16467	25	2	2024-12-29
16470	467	1	2024-09-13
16471	484	3	2024-12-23
16472	86	1	2024-05-23
16473	471	1	2024-06-05
16474	384	1	2024-03-18
16475	88	1	2024-05-15
16476	456	2	2024-09-09
16477	60	2	2024-06-22
16479	381	3	2024-08-12
16480	401	1	2024-05-01
16481	170	3	2024-02-14
16482	496	2	2024-05-19
16483	345	3	2024-05-18
16484	318	3	2024-10-12
16488	205	2	2024-09-04
16489	22	2	2024-03-16
16490	364	2	2024-09-03
16491	131	1	2024-10-14
16492	332	3	2024-05-12
16493	312	2	2024-05-13
16494	480	3	2024-12-25
16495	19	2	2024-07-17
16496	112	1	2024-10-29
16497	24	1	2024-02-07
16498	297	1	2024-07-20
16499	30	3	2024-04-04
16501	96	2	2024-03-10
16502	485	1	2024-02-05
16503	90	1	2024-05-05
16504	260	1	2024-09-13
16505	176	3	2024-06-16
16506	36	3	2024-11-29
16507	121	2	2024-05-10
16508	219	3	2024-12-14
16509	147	2	2024-04-21
16510	63	2	2024-02-10
16511	151	3	2024-10-07
16512	39	2	2024-02-25
16513	269	2	2024-11-24
16514	225	1	2024-06-02
16515	299	2	2024-11-13
16516	389	1	2024-06-14
16517	8	2	2024-11-15
16518	30	1	2024-07-07
16519	223	1	2024-11-19
16520	367	1	2024-06-16
16522	463	2	2024-09-29
16523	442	1	2024-12-04
16524	406	1	2024-06-18
16525	315	2	2024-02-15
16526	202	2	2024-05-23
16527	209	1	2024-04-28
16528	460	1	2024-12-04
16529	141	3	2024-11-03
16530	199	3	2024-09-07
16531	223	2	2024-09-18
16532	26	1	2024-11-24
16533	466	2	2024-10-20
16534	416	3	2024-04-29
16536	245	3	2024-02-02
16537	96	1	2024-11-21
16538	442	1	2024-06-30
16539	436	1	2024-06-30
16540	244	3	2024-02-04
16541	331	1	2024-04-24
16542	274	1	2024-08-10
16543	246	2	2024-02-16
16544	260	1	2024-09-10
16545	447	1	2024-04-25
16546	120	1	2024-03-23
16547	460	3	2024-12-28
16548	309	2	2024-05-08
16549	233	3	2024-06-06
16550	409	3	2024-06-14
16551	156	2	2024-08-20
16552	393	1	2024-06-21
16554	460	3	2024-05-04
16555	390	3	2024-10-13
16556	104	3	2024-04-29
16557	376	3	2024-07-15
16558	154	2	2024-05-22
16559	171	2	2024-03-29
16560	154	3	2024-07-07
16561	462	2	2024-03-23
16562	83	3	2024-04-26
16563	262	3	2024-10-18
16564	181	3	2024-10-27
16565	481	3	2024-05-19
16566	303	3	2024-10-30
16567	277	3	2024-03-04
16568	271	2	2024-05-12
16569	147	1	2024-08-19
16570	78	3	2024-07-05
16571	500	1	2024-04-11
16572	486	2	2024-05-29
16573	126	2	2024-10-27
16574	377	3	2024-04-17
16575	102	1	2024-04-22
16576	264	1	2024-08-25
16577	291	1	2024-08-29
16578	358	1	2024-11-21
16579	253	2	2024-09-30
16580	408	2	2024-11-22
16581	169	3	2024-05-20
16582	403	2	2024-08-15
16583	205	1	2024-11-27
16584	323	3	2024-07-10
16585	279	1	2024-09-25
16586	268	3	2024-06-14
16587	213	3	2024-08-07
16588	122	1	2024-02-08
16589	52	1	2024-07-18
16590	327	2	2024-09-14
16591	431	2	2024-12-23
16592	128	2	2024-02-19
16594	64	2	2024-04-28
16595	341	2	2024-08-02
16596	405	1	2024-08-23
16597	471	3	2024-12-14
16598	284	2	2024-12-17
16599	285	1	2024-09-01
16600	226	1	2024-06-08
16601	379	3	2024-07-09
16602	105	1	2024-08-09
16603	257	3	2024-08-15
16604	471	1	2024-09-09
16605	356	1	2024-10-06
16607	362	2	2024-07-06
16608	132	2	2024-08-24
16609	308	2	2024-05-31
16610	439	3	2024-06-05
16611	479	2	2024-03-26
16612	183	3	2024-04-30
16613	278	1	2024-02-15
16614	155	2	2024-08-01
16615	123	2	2024-07-04
16616	88	3	2024-05-18
16617	162	3	2024-02-08
16618	337	1	2024-03-10
16619	193	1	2024-07-15
16620	271	2	2024-09-12
16622	333	3	2024-04-17
16623	269	2	2024-06-29
16625	430	1	2024-09-09
16626	366	3	2024-08-23
16627	410	2	2024-11-24
16628	163	3	2024-12-24
16629	461	3	2024-02-13
16630	357	2	2024-10-03
16631	126	1	2024-05-10
16632	463	2	2024-03-13
16633	225	1	2024-02-21
16635	274	3	2024-08-17
16636	247	3	2024-03-18
16637	459	2	2024-11-28
16638	280	2	2024-02-24
16639	411	1	2024-04-12
16640	275	2	2024-03-05
16641	418	2	2024-02-27
16642	56	3	2024-02-04
16643	365	2	2024-05-05
16644	234	3	2024-04-01
16645	418	1	2024-02-09
16646	299	1	2024-10-23
16647	256	3	2024-12-22
16648	233	1	2024-12-21
16649	175	2	2024-12-29
16651	173	2	2024-02-09
16652	129	3	2024-09-30
16653	450	3	2024-11-01
16654	299	1	2024-10-05
16655	479	1	2024-12-05
16656	379	1	2024-04-22
16658	248	1	2024-02-10
16659	180	2	2024-09-17
16660	57	3	2024-04-11
16661	33	1	2024-12-01
16663	17	3	2024-05-07
16664	28	3	2024-02-08
16666	373	1	2024-10-07
16667	435	3	2024-07-25
16668	55	2	2024-03-15
16670	317	3	2024-10-10
16671	216	3	2024-08-21
16672	75	1	2024-05-21
16673	167	2	2024-09-11
16674	402	1	2024-08-17
16675	47	1	2024-09-15
16676	127	1	2024-07-19
16677	262	1	2024-12-17
16678	132	2	2024-07-16
16679	41	3	2024-04-10
16680	426	2	2024-03-31
16681	258	3	2024-02-07
16683	117	2	2024-07-12
16684	387	2	2024-03-20
16685	471	2	2024-11-18
16686	467	3	2024-06-03
16687	352	3	2024-03-31
16689	395	3	2024-05-14
16690	159	1	2024-02-20
16691	59	2	2024-08-05
16693	367	3	2024-09-04
16694	48	3	2024-09-06
16695	247	2	2024-11-20
16696	13	3	2024-12-13
16697	192	3	2024-02-06
16698	431	2	2024-11-18
16699	297	2	2024-02-04
16700	412	3	2024-10-08
16701	422	2	2024-04-11
16702	213	1	2024-10-22
16703	106	3	2024-10-09
16704	178	3	2024-05-10
16705	338	3	2024-10-27
16706	403	2	2024-12-22
16707	404	3	2024-09-24
16708	189	2	2024-11-21
16709	349	3	2024-10-07
16710	149	1	2024-11-08
16711	239	3	2024-11-01
16712	318	2	2024-07-02
16713	239	1	2024-04-04
16714	217	2	2024-02-16
16715	410	3	2024-10-30
16716	293	3	2024-05-14
16717	22	3	2024-07-29
16718	68	3	2024-05-06
16719	354	3	2024-08-19
16720	473	1	2024-04-20
16721	417	3	2024-02-11
16722	195	1	2024-04-04
16723	251	1	2024-12-04
16724	349	3	2024-03-24
16725	332	1	2024-10-17
16726	401	3	2024-09-23
16727	464	2	2024-09-12
16731	189	2	2024-04-07
16732	440	2	2024-03-28
16733	447	1	2024-03-03
16734	413	2	2024-04-06
16735	276	3	2024-11-05
16736	174	1	2024-10-25
16738	476	1	2024-10-16
16739	40	2	2024-06-15
16740	300	2	2024-05-26
16741	199	2	2024-12-17
16742	495	3	2024-09-01
16743	409	1	2024-06-30
16744	500	2	2024-08-17
16745	49	2	2024-11-28
16746	484	1	2024-07-20
16748	14	1	2024-09-27
16749	256	1	2024-08-01
16750	196	3	2024-07-30
16751	287	3	2024-05-31
16752	427	2	2024-12-13
16753	238	2	2024-02-23
16754	217	2	2024-04-20
16755	348	1	2024-11-25
16757	261	1	2024-06-23
16758	321	3	2024-12-06
16759	464	2	2024-07-15
16760	160	1	2024-10-05
16761	85	2	2024-03-20
16762	280	1	2024-11-22
16763	313	1	2024-05-31
16764	74	3	2024-09-18
16766	173	3	2024-05-05
16767	87	2	2024-09-11
16768	256	1	2024-02-03
16769	11	3	2024-05-08
16770	475	3	2024-05-26
16771	283	3	2024-06-12
16772	376	1	2024-12-15
16773	129	3	2024-10-05
16774	448	3	2024-10-01
16775	218	3	2024-04-16
16776	330	3	2024-09-02
16777	36	2	2024-02-26
16778	175	3	2024-10-03
16779	90	3	2024-06-07
16780	101	2	2024-02-07
16781	409	3	2024-03-16
16782	453	1	2024-11-29
16783	164	1	2024-05-22
16784	219	3	2024-03-27
16785	345	2	2024-02-09
16786	471	3	2024-10-06
16787	22	1	2024-05-03
16788	342	3	2024-03-16
16789	166	2	2024-05-17
16790	160	1	2024-10-03
16791	417	1	2024-12-16
16792	65	3	2024-07-19
16793	375	3	2024-11-21
16794	73	2	2024-03-25
16796	200	3	2024-09-12
16798	365	2	2024-04-19
16799	49	1	2024-03-10
16800	155	1	2024-10-29
16801	450	3	2024-06-03
16802	85	2	2024-03-24
16803	157	2	2024-03-01
16804	197	3	2024-03-18
16805	45	1	2024-07-14
16806	96	1	2024-03-01
16807	203	1	2024-06-24
16808	66	3	2024-08-04
16809	87	3	2024-09-02
16810	344	3	2024-12-22
16811	207	3	2024-10-17
16812	203	3	2024-07-15
16813	449	2	2024-10-17
16814	409	2	2024-08-06
16815	138	1	2024-06-08
16817	361	3	2024-12-26
16818	290	3	2024-07-21
16819	172	3	2024-07-03
16822	489	1	2024-11-29
16823	61	3	2024-03-17
16824	108	2	2024-12-03
16825	6	2	2024-07-27
16826	96	3	2024-07-29
16827	164	1	2024-06-12
16829	460	3	2024-02-23
16830	370	1	2024-08-09
16831	288	2	2024-07-18
16832	276	2	2024-09-16
16833	206	2	2024-10-25
16834	334	3	2024-05-18
16835	101	1	2024-06-23
16836	9	2	2024-12-13
16838	498	2	2024-07-31
16839	55	3	2024-11-08
16840	169	1	2024-05-04
16841	390	2	2024-09-26
16842	147	3	2024-12-27
16843	393	1	2024-09-18
16844	152	2	2024-09-27
16845	365	1	2024-03-15
16846	230	3	2024-04-04
16847	78	3	2024-09-20
16848	453	3	2024-06-04
16849	202	3	2024-08-13
16850	190	3	2024-04-05
16851	243	2	2024-02-07
16852	346	2	2024-06-30
16853	274	1	2024-12-26
16854	115	2	2024-09-05
16855	77	1	2024-08-25
16856	334	1	2024-12-28
16857	496	3	2024-11-08
16858	29	1	2024-04-18
16859	72	2	2024-12-22
16860	125	2	2024-02-28
16861	442	1	2024-10-10
16862	110	2	2024-09-18
16863	165	3	2024-06-27
16864	248	1	2024-08-14
16867	416	2	2024-09-22
16868	343	2	2024-07-26
16869	330	1	2024-09-22
16870	122	2	2024-05-26
16872	340	2	2024-06-28
16873	476	3	2024-08-07
16874	423	3	2024-09-16
16875	261	3	2024-08-03
16876	173	2	2024-04-04
16877	119	1	2024-11-13
16879	306	2	2024-07-26
16880	217	2	2024-04-17
16881	276	3	2024-06-29
16882	152	2	2024-02-02
16884	206	1	2024-11-04
16885	27	2	2024-06-06
16886	417	3	2024-08-28
16887	124	2	2024-02-08
16888	365	1	2024-04-19
16889	167	3	2024-04-24
16890	277	2	2024-10-30
16891	407	1	2024-02-21
16892	183	2	2024-09-20
16893	242	3	2024-06-15
16894	393	2	2024-11-17
16895	43	3	2024-06-18
16896	284	3	2024-06-27
16897	137	2	2024-11-30
16898	79	3	2024-03-24
16899	68	2	2024-02-20
16900	370	3	2024-02-20
16901	254	2	2024-11-17
16902	398	3	2024-11-08
16903	232	2	2024-07-16
16904	17	2	2024-05-13
16905	78	1	2024-04-01
16906	490	3	2024-02-20
16907	89	3	2024-04-24
16908	275	1	2024-04-28
16910	394	3	2024-12-19
16911	280	3	2024-12-28
16912	432	1	2024-09-12
16913	325	2	2024-06-06
16914	199	1	2024-11-14
16915	10	3	2024-09-24
16916	204	2	2024-02-26
16917	367	3	2024-02-21
16918	96	1	2024-06-22
16919	115	2	2024-10-14
16920	199	1	2024-03-21
16921	466	3	2024-08-21
16922	216	3	2024-12-16
16923	267	1	2024-05-18
16924	125	2	2024-12-23
16925	399	1	2024-05-19
16926	59	1	2024-11-18
16927	31	1	2024-11-22
16928	44	2	2024-06-02
16929	271	1	2024-11-03
16930	303	1	2024-03-01
16931	434	3	2024-09-18
16933	334	2	2024-03-21
16934	382	2	2024-08-19
16935	185	1	2024-04-05
16936	464	3	2024-12-26
16937	435	3	2024-10-27
16938	349	3	2024-03-27
16940	28	3	2024-06-28
16941	401	2	2024-06-02
16942	284	2	2024-04-25
16943	220	3	2024-12-03
16944	333	1	2024-10-27
16945	210	3	2024-03-04
16946	413	3	2024-08-30
16947	158	3	2024-10-17
16948	487	3	2024-10-11
16949	177	3	2024-03-19
16950	313	1	2024-11-02
16951	29	1	2024-04-13
16953	202	2	2024-02-28
16954	421	2	2024-05-25
16955	144	3	2024-06-24
16956	414	3	2024-02-23
16957	132	3	2024-12-22
16958	453	1	2024-12-31
16959	43	2	2024-08-23
16960	334	3	2024-02-06
16961	188	1	2024-08-25
16962	106	1	2024-02-27
16963	259	2	2024-10-06
16964	372	1	2024-10-04
16965	441	1	2024-02-23
16966	410	2	2024-02-26
16967	448	1	2024-09-04
16968	264	1	2024-06-30
16969	75	3	2024-08-06
16970	17	3	2024-11-01
16971	466	3	2024-11-08
16972	214	1	2024-06-01
16973	128	3	2024-11-30
16974	419	2	2024-07-11
16975	336	1	2024-02-07
16976	22	2	2024-05-01
16977	482	1	2024-05-14
16978	64	2	2024-02-11
16979	323	2	2024-07-05
16980	36	2	2024-11-07
16981	76	3	2024-11-04
16982	460	1	2024-12-27
16983	98	2	2024-12-04
16984	92	3	2024-08-22
16985	270	1	2024-04-30
16986	381	1	2024-09-01
16987	472	3	2024-11-27
16988	429	3	2024-10-22
16989	207	2	2024-05-19
16991	177	3	2024-03-13
16992	466	1	2024-03-07
16993	236	2	2024-08-21
16994	339	2	2024-02-11
16996	200	1	2024-11-28
16997	191	1	2024-10-29
16998	166	2	2024-04-02
16999	59	1	2024-05-15
17000	490	1	2024-10-24
17001	301	3	2024-10-31
17002	331	2	2024-03-21
17003	291	1	2024-07-28
17004	238	2	2024-07-28
17006	347	2	2024-09-15
17007	99	2	2024-09-24
17008	180	3	2024-08-08
17009	202	1	2024-12-02
17010	277	2	2024-12-14
17011	68	1	2024-04-06
17012	314	2	2024-06-27
17013	409	1	2024-08-20
17014	185	1	2024-10-03
17015	414	1	2024-04-05
17016	211	1	2024-03-26
17017	320	2	2024-10-29
17018	355	2	2024-06-26
17020	417	3	2024-05-24
17021	56	1	2024-06-01
17022	262	2	2024-07-02
17023	292	2	2024-12-09
17024	133	2	2024-02-23
17025	68	1	2024-06-05
17026	326	2	2024-06-27
17028	292	2	2024-08-03
17029	190	1	2024-03-04
17030	242	1	2024-03-06
17031	98	1	2024-11-09
17032	157	3	2024-04-25
17033	183	3	2024-06-13
17035	96	2	2024-08-22
17036	436	2	2024-06-14
17037	36	2	2024-03-21
17038	309	3	2024-12-12
17039	122	2	2024-07-25
17040	358	1	2024-12-13
17041	375	3	2024-12-02
17042	327	2	2024-04-01
17043	132	2	2024-04-15
17044	265	3	2024-08-21
17045	141	2	2024-03-12
17047	127	3	2024-08-12
17048	466	2	2024-07-18
17049	199	1	2024-11-19
17050	192	3	2024-04-14
17051	495	2	2024-12-25
17052	304	2	2024-06-18
17053	367	3	2024-09-25
17054	331	1	2024-12-07
17055	127	3	2024-09-26
17057	206	1	2024-07-10
17059	393	3	2024-08-04
17060	436	1	2024-10-31
17062	479	1	2024-09-08
17063	68	1	2024-09-27
17064	470	3	2024-04-05
17065	376	2	2024-09-01
17066	320	2	2024-11-15
17067	110	1	2024-07-31
17068	211	3	2024-10-19
17069	482	2	2024-11-09
17070	358	2	2024-12-26
17071	211	3	2024-03-04
17072	221	2	2024-02-20
17073	162	1	2024-02-17
17074	51	3	2024-12-28
17075	132	1	2024-07-20
17076	160	1	2024-07-16
17077	102	1	2024-12-18
17078	337	3	2024-09-24
17079	256	3	2024-05-19
17080	475	3	2024-08-25
17081	384	3	2024-11-24
17082	444	3	2024-07-06
17083	302	1	2024-04-01
17084	397	1	2024-03-11
17085	182	1	2024-04-14
17086	456	1	2024-04-10
17087	365	3	2024-02-17
17088	290	3	2024-10-11
17089	447	2	2024-04-24
17090	375	1	2024-04-09
17091	41	2	2024-12-28
17092	122	1	2024-12-07
17093	480	3	2024-12-29
17094	231	2	2024-06-09
17095	40	1	2024-06-05
17096	98	2	2024-04-25
17097	372	3	2024-04-30
17098	90	1	2024-12-01
17099	6	1	2024-02-10
17100	252	3	2024-09-19
17101	60	3	2024-02-12
17103	283	1	2024-09-24
17104	99	1	2024-09-15
17105	246	2	2024-10-24
17106	158	3	2024-03-20
17107	263	1	2024-09-15
17108	472	1	2024-10-27
17109	356	1	2024-04-27
17110	462	2	2024-07-12
17111	159	1	2024-02-23
17112	27	3	2024-05-26
17113	288	1	2024-04-03
17114	367	3	2024-11-21
17115	111	2	2024-05-20
17116	5	1	2024-08-13
17117	119	3	2024-09-16
17118	377	1	2024-10-08
17119	80	1	2024-03-08
17120	108	3	2024-06-28
17121	236	2	2024-05-01
17122	302	1	2024-05-31
17123	273	3	2024-03-12
17124	160	3	2024-03-24
17125	195	2	2024-02-08
17126	31	3	2024-11-26
17127	238	2	2024-09-12
17128	491	1	2024-05-24
17130	272	2	2024-05-11
17131	60	1	2024-03-17
17132	153	3	2024-02-20
17133	88	1	2024-06-20
17134	332	3	2024-03-10
17135	485	3	2024-07-25
17136	461	1	2024-10-31
17137	209	2	2024-03-18
17138	436	2	2024-08-28
17139	104	2	2024-03-14
17140	341	2	2024-12-31
17141	410	1	2024-05-11
17142	66	1	2024-04-21
17143	202	2	2024-07-18
17145	470	3	2024-07-13
17146	367	2	2024-11-15
17147	183	1	2024-03-18
17148	288	2	2024-04-17
17150	487	3	2024-05-24
17151	85	2	2024-10-01
17152	50	3	2024-03-12
17153	142	1	2024-09-09
17154	144	1	2024-12-17
17155	397	1	2024-11-10
17156	16	3	2024-12-16
17157	15	2	2024-08-16
17159	226	3	2024-02-18
17160	132	3	2024-07-18
17161	97	1	2024-08-28
17162	243	3	2024-04-20
17163	18	3	2024-06-17
17164	277	1	2024-09-21
17165	471	3	2024-10-14
17166	418	1	2024-07-23
17167	200	1	2024-10-28
17168	217	2	2024-04-29
17169	60	2	2024-02-27
17170	486	2	2024-10-30
17171	330	2	2024-03-14
17172	468	3	2024-08-09
17173	117	3	2024-09-20
17174	396	2	2024-03-06
17175	293	1	2024-10-25
17177	420	2	2024-10-06
17178	239	3	2024-10-18
17179	389	2	2024-05-30
17180	324	2	2024-11-06
17181	66	3	2024-04-20
17182	353	3	2024-09-02
17183	145	1	2024-05-29
17184	484	2	2024-07-02
17185	392	3	2024-10-06
17186	396	3	2024-03-14
17188	38	3	2024-05-06
17189	140	1	2024-10-19
17190	494	1	2024-06-04
17191	369	3	2024-12-19
17192	56	3	2024-04-05
17193	461	1	2024-12-14
17194	124	2	2024-05-29
17195	243	2	2024-05-31
17196	271	2	2024-05-24
17197	264	1	2024-05-19
17198	441	1	2024-10-10
17199	449	2	2024-02-10
17200	247	1	2024-05-27
17201	490	2	2024-02-09
17203	307	2	2024-07-15
17205	135	3	2024-11-27
17206	199	3	2024-05-30
17207	347	3	2024-09-27
17210	396	3	2024-02-29
17211	150	2	2024-05-10
17212	260	3	2024-05-29
17214	252	2	2024-02-10
17215	287	1	2024-07-06
17216	159	1	2024-02-14
17217	275	3	2024-07-23
17218	76	1	2024-12-04
17219	295	2	2024-06-01
17220	198	1	2024-05-02
17221	211	2	2024-06-25
17222	106	2	2024-08-03
17224	48	2	2024-10-03
17225	5	2	2024-02-06
17226	306	2	2024-09-04
17227	497	2	2024-08-25
17228	174	2	2024-05-28
17229	200	2	2024-05-24
17230	110	2	2024-04-01
17231	80	2	2024-04-05
17233	263	1	2024-08-04
17234	21	1	2024-04-20
17235	86	2	2024-06-06
17236	285	3	2024-12-18
17237	49	3	2024-05-14
17238	150	1	2024-11-29
17239	442	2	2024-12-01
17240	9	1	2024-06-14
17241	471	3	2024-06-10
17242	244	2	2024-05-31
17243	265	2	2024-05-25
17244	489	3	2024-10-22
17245	474	1	2024-05-29
17246	32	3	2024-04-11
17247	23	2	2024-08-31
17248	426	2	2024-04-26
17249	322	3	2024-09-17
17250	399	2	2024-12-22
17252	181	2	2024-05-26
17253	255	1	2024-05-13
17254	18	3	2024-03-11
17255	28	3	2024-10-12
17256	367	3	2024-05-28
17257	358	3	2024-03-07
17258	410	2	2024-02-23
17259	110	1	2024-08-12
17261	85	1	2024-08-22
17263	350	2	2024-12-30
17264	493	1	2024-08-23
17265	25	2	2024-05-27
17266	118	3	2024-03-25
17267	161	3	2024-04-26
17268	213	2	2024-05-02
17269	402	1	2024-04-20
17270	428	2	2024-06-15
17271	2	1	2024-07-23
17272	94	2	2024-11-01
17274	500	3	2024-04-30
17275	231	2	2024-04-22
17276	355	1	2024-04-04
17277	448	2	2024-10-24
17278	252	3	2024-02-20
17279	39	1	2024-05-28
17281	92	2	2024-06-05
17282	55	3	2024-05-11
17283	235	1	2024-03-28
17284	195	3	2024-04-13
17285	214	2	2024-11-04
17286	150	3	2024-05-14
17288	137	1	2024-09-11
17289	398	3	2024-02-02
17291	188	2	2024-02-14
17292	213	2	2024-12-09
17293	82	2	2024-10-17
17294	181	1	2024-11-18
17295	355	3	2024-12-19
17297	313	2	2024-02-15
17299	457	1	2024-09-18
17300	104	3	2024-10-08
17301	191	2	2024-02-26
17302	488	2	2024-09-07
17303	389	1	2024-09-17
17304	153	3	2024-02-03
17305	292	3	2024-05-15
17306	365	2	2024-02-09
17307	96	2	2024-05-22
17308	336	2	2024-09-04
17309	431	2	2024-02-03
17310	132	3	2024-11-20
17311	140	2	2024-09-16
17312	53	1	2024-02-28
17313	442	2	2024-04-30
17314	226	3	2024-08-28
17316	395	2	2024-06-28
17317	51	1	2024-06-04
17318	316	1	2024-08-21
17319	115	1	2024-02-17
17320	472	3	2024-06-03
17322	174	2	2024-08-06
17323	108	2	2024-10-02
17324	132	1	2024-10-11
17325	398	3	2024-09-24
17326	378	2	2024-06-02
17327	156	1	2024-12-29
17329	495	1	2024-07-10
17330	497	2	2024-05-11
17331	206	1	2024-03-22
17332	195	1	2024-11-10
17333	435	3	2024-09-05
17334	408	1	2024-09-23
17335	310	3	2024-02-02
17336	466	3	2024-11-11
17337	9	2	2024-10-19
17339	475	2	2024-12-31
17341	448	3	2024-06-22
17342	445	1	2024-04-01
17343	117	3	2024-06-23
17344	430	2	2024-08-20
17345	268	1	2024-02-03
17346	32	2	2024-11-18
17347	293	3	2024-03-07
17349	239	1	2024-12-25
17350	446	1	2024-09-07
17351	9	1	2024-09-27
17352	341	3	2024-10-18
17353	495	3	2024-09-20
17354	116	1	2024-02-22
17355	437	2	2024-05-04
17356	20	1	2024-03-03
17357	131	1	2024-03-28
17358	14	1	2024-02-19
17359	314	1	2024-03-07
17360	82	2	2024-07-09
17361	1	3	2024-04-13
17362	386	3	2024-11-02
17363	202	1	2024-02-18
17364	348	3	2024-04-08
17365	203	1	2024-03-22
17367	424	3	2024-12-05
17368	382	3	2024-05-08
17369	235	1	2024-04-08
17370	396	2	2024-10-20
17371	437	2	2024-06-18
17372	499	3	2024-09-10
17373	428	1	2024-03-26
17375	496	2	2024-11-19
17376	301	1	2024-08-18
17377	198	2	2024-09-24
17378	85	3	2024-03-15
17379	194	2	2024-05-16
17380	344	1	2024-11-25
17381	40	2	2024-05-27
17382	427	1	2024-11-26
17383	368	1	2024-10-25
17384	453	2	2024-08-16
17385	253	2	2024-12-22
17386	299	2	2024-09-23
17387	310	1	2024-02-24
17388	322	3	2024-10-30
17389	68	1	2024-04-29
17390	110	1	2024-09-17
17391	343	3	2024-03-26
17392	379	3	2024-07-13
17393	217	2	2024-10-22
17394	51	1	2024-10-18
17395	365	3	2024-08-30
17396	350	3	2024-10-02
17397	468	3	2024-09-12
17398	11	2	2024-10-03
17401	5	2	2024-12-23
17402	83	2	2024-04-09
17403	76	2	2024-12-03
17404	303	2	2024-12-28
17405	310	2	2024-02-23
17406	342	1	2024-07-25
17407	204	3	2024-06-12
17408	109	1	2024-09-02
17409	48	2	2024-04-20
17410	372	3	2024-11-11
17411	337	2	2024-02-05
17413	16	1	2024-11-23
17414	123	3	2024-03-03
17415	415	2	2024-02-14
17416	232	3	2024-08-26
17418	442	1	2024-03-23
17419	475	3	2024-03-12
17421	353	2	2024-02-10
17423	269	3	2024-02-08
17424	219	2	2024-06-06
17425	240	2	2024-10-29
17426	43	1	2024-07-25
17427	31	1	2024-11-16
17428	26	1	2024-10-05
17429	434	1	2024-07-31
17430	335	2	2024-05-24
17431	208	3	2024-03-22
17432	166	3	2024-04-05
17433	355	1	2024-06-07
17434	474	3	2024-08-27
17435	277	3	2024-03-16
17436	376	3	2024-07-05
17438	344	3	2024-07-25
17439	152	3	2024-10-25
17440	21	2	2024-10-19
17441	260	3	2024-08-27
17442	143	3	2024-04-23
17443	427	2	2024-11-25
17444	34	3	2024-02-07
17445	401	1	2024-07-21
17446	32	1	2024-10-05
17448	423	1	2024-02-05
17449	319	2	2024-06-03
17450	252	1	2024-03-21
17451	350	3	2024-07-05
17453	453	2	2024-10-11
17454	134	3	2024-11-13
17455	306	2	2024-11-14
17456	426	2	2024-08-26
17457	320	1	2024-07-04
17458	275	1	2024-07-16
17459	480	3	2024-08-07
17460	451	2	2024-03-04
17461	72	3	2024-08-15
17462	481	3	2024-03-04
17463	141	2	2024-12-15
17464	31	3	2024-03-27
17465	41	1	2024-02-29
17467	321	1	2024-09-12
17468	397	2	2024-07-11
17469	287	3	2024-04-16
17470	329	1	2024-06-25
17471	136	3	2024-06-27
17472	167	3	2024-03-07
17473	476	3	2024-03-29
17474	354	2	2024-10-15
17475	155	1	2024-06-21
17476	262	3	2024-07-24
17477	231	2	2024-08-01
17478	480	2	2024-08-09
17479	315	3	2024-11-12
17480	14	3	2024-07-29
17483	77	2	2024-05-10
17485	339	2	2024-02-04
17486	121	3	2024-12-02
17487	179	3	2024-10-09
17488	87	1	2024-09-04
17489	204	1	2024-12-10
17490	49	2	2024-03-27
17491	306	3	2024-11-03
17493	480	2	2024-12-01
17494	113	1	2024-09-18
17495	130	3	2024-03-01
17496	36	2	2024-06-11
17497	216	2	2024-08-11
17498	297	1	2024-11-28
17499	369	2	2024-12-08
17500	265	3	2024-11-13
17501	75	3	2024-05-21
17502	354	2	2024-03-19
17503	94	2	2024-08-10
17504	377	2	2024-03-21
17505	59	2	2024-05-01
17506	312	3	2024-12-25
17507	205	2	2024-03-17
17509	57	3	2024-10-20
17510	294	2	2024-10-28
17511	129	3	2024-03-10
17512	29	1	2024-09-05
17513	67	3	2024-09-21
17514	466	3	2024-02-10
17515	500	1	2024-06-21
17516	227	1	2024-08-05
17517	240	2	2024-05-07
17518	180	3	2024-03-02
17519	427	2	2024-10-09
17521	203	1	2024-07-22
17522	168	3	2024-03-05
17523	377	2	2024-11-27
17525	425	2	2024-04-23
17526	493	2	2024-03-18
17527	261	2	2024-04-06
17528	171	1	2024-02-07
17529	353	1	2024-12-10
17530	389	3	2024-09-02
17531	128	3	2024-04-24
17532	242	1	2024-04-13
17533	390	2	2024-10-05
17534	190	2	2024-12-18
17535	47	1	2024-02-09
17536	387	2	2024-09-13
17537	288	2	2024-12-31
17538	478	2	2024-11-30
17539	390	2	2024-05-15
17540	186	3	2024-03-03
17541	370	3	2024-09-05
17542	261	1	2024-09-24
17543	257	3	2024-03-22
17544	356	2	2024-11-02
17546	84	1	2024-12-29
17547	397	1	2024-04-24
17548	323	1	2024-04-09
17549	259	2	2024-04-10
17550	199	2	2024-05-01
17551	182	1	2024-11-07
17552	326	2	2024-03-25
17553	150	2	2024-12-11
17554	473	1	2024-07-03
17555	457	2	2024-08-14
17556	196	3	2024-02-02
17557	63	3	2024-08-11
17558	127	2	2024-09-25
17559	84	2	2024-08-04
17560	60	2	2024-02-05
17561	96	2	2024-10-10
17562	77	3	2024-09-25
17563	365	2	2024-10-09
17564	83	2	2024-12-15
17565	9	1	2024-12-09
17566	266	2	2024-11-14
17567	71	3	2024-12-02
17568	199	2	2024-03-02
17569	91	2	2024-07-09
17570	208	3	2024-07-06
17571	431	3	2024-08-10
17572	69	1	2024-03-25
17573	245	3	2024-02-10
17574	102	1	2024-12-02
17575	450	2	2024-03-06
17576	379	1	2024-08-29
17577	334	3	2024-12-01
17578	415	3	2024-05-09
17579	265	1	2024-08-15
17580	26	3	2024-08-29
17581	357	3	2024-12-03
17582	284	1	2024-10-03
17584	95	3	2024-02-17
17586	349	3	2024-11-04
17587	383	3	2024-05-23
17588	345	1	2024-07-02
17591	182	1	2024-04-17
17592	265	3	2024-09-08
17593	43	3	2024-06-22
17595	234	3	2024-03-02
17597	365	3	2024-05-03
17598	114	2	2024-09-11
17599	34	1	2024-12-29
17600	310	3	2024-10-14
17601	277	3	2024-07-11
17602	129	2	2024-09-14
17603	372	1	2024-06-22
17604	37	1	2024-09-08
17605	244	1	2024-06-20
17606	43	2	2024-02-03
17607	454	1	2024-02-23
17608	263	1	2024-11-29
17609	383	2	2024-09-18
17610	464	3	2024-11-30
17611	282	1	2024-04-15
17613	35	3	2024-12-02
17614	287	2	2024-11-11
17615	99	1	2024-06-18
17616	3	1	2024-04-04
17617	195	1	2024-08-12
17618	491	3	2024-12-30
17619	209	1	2024-03-14
17620	253	3	2024-10-25
17621	432	1	2024-09-17
17622	136	1	2024-03-30
17623	144	1	2024-05-29
17624	149	3	2024-09-19
17625	462	2	2024-10-24
17626	301	3	2024-05-12
17627	294	2	2024-02-05
17628	197	3	2024-02-12
17629	166	3	2024-02-22
17630	440	1	2024-09-21
17631	273	2	2024-12-05
17632	413	3	2024-10-15
17633	360	1	2024-11-18
17634	392	3	2024-08-27
17635	22	1	2024-06-25
17636	482	1	2024-02-07
17637	13	2	2024-12-07
17639	149	1	2024-05-26
17640	478	3	2024-03-17
17641	288	3	2024-08-02
17642	382	2	2024-08-16
17643	202	2	2024-08-04
17644	290	3	2024-04-02
17645	360	1	2024-12-06
17646	59	2	2024-02-24
17647	392	1	2024-07-06
17648	86	2	2024-11-21
17649	400	3	2024-04-15
17650	297	3	2024-07-15
17651	153	2	2024-03-12
17652	339	2	2024-10-30
17653	169	1	2024-12-14
17654	223	1	2024-11-05
17655	125	2	2024-02-23
17656	282	1	2024-09-19
17657	405	1	2024-04-18
17658	53	3	2024-09-16
17659	110	2	2024-07-24
17660	365	1	2024-07-01
17661	303	3	2024-02-01
17662	341	3	2024-11-06
17664	196	1	2024-03-28
17665	268	3	2024-04-11
17666	15	3	2024-09-11
17667	153	3	2024-04-09
17668	185	1	2024-03-07
17669	27	1	2024-04-23
17670	181	1	2024-10-17
17671	48	3	2024-12-04
17672	275	1	2024-09-15
17673	33	2	2024-07-31
17675	57	3	2024-07-23
17676	170	3	2024-03-30
17677	285	2	2024-05-21
17678	204	2	2024-02-20
17679	218	3	2024-10-08
17680	159	2	2024-05-23
17681	250	1	2024-07-19
17682	48	1	2024-11-23
17683	164	3	2024-04-21
17684	60	2	2024-07-09
17685	171	2	2024-03-13
17686	458	3	2024-07-06
17687	274	1	2024-07-21
17688	103	3	2024-07-12
17689	140	3	2024-06-11
17690	90	2	2024-07-07
17691	290	2	2024-12-02
17692	136	2	2024-09-15
17693	113	3	2024-10-17
17694	298	2	2024-08-09
17695	434	3	2024-10-14
17696	275	1	2024-05-12
17697	417	2	2024-11-26
17700	91	2	2024-07-26
17701	485	3	2024-07-23
17702	154	1	2024-04-02
17703	475	2	2024-12-02
17704	326	1	2024-07-28
17705	96	1	2024-02-27
17706	433	1	2024-10-07
17707	109	3	2024-09-24
17708	254	3	2024-09-27
17709	403	2	2024-08-14
17711	450	1	2024-07-21
17712	394	1	2024-04-02
17713	354	3	2024-09-07
17714	325	2	2024-06-27
17715	205	2	2024-08-10
17716	44	1	2024-08-31
17717	340	1	2024-05-31
17719	336	3	2024-12-21
17720	5	3	2024-09-30
17721	473	2	2024-08-23
17723	123	1	2024-08-19
17724	344	1	2024-09-15
17725	45	3	2024-03-25
17726	271	3	2024-09-25
17727	452	2	2024-12-29
17728	117	1	2024-07-22
17730	48	2	2024-10-04
17732	434	2	2024-07-20
17733	425	1	2024-12-09
17734	305	1	2024-05-08
17735	193	1	2024-12-29
17736	319	3	2024-08-22
17737	441	1	2024-12-14
17738	296	3	2024-03-18
17739	342	1	2024-08-04
17740	281	2	2024-10-21
17741	322	1	2024-10-17
17742	334	2	2024-09-30
17743	279	1	2024-06-06
17745	425	2	2024-04-11
17747	89	1	2024-12-10
17748	156	1	2024-11-07
17749	160	3	2024-02-27
17750	483	1	2024-05-11
17751	416	1	2024-03-06
17752	471	2	2024-11-01
17753	364	2	2024-07-05
17754	128	1	2024-08-03
17755	168	3	2024-09-28
17756	268	2	2024-03-22
17757	260	3	2024-04-15
17758	100	1	2024-07-30
17759	472	2	2024-03-12
17760	381	3	2024-07-15
17761	36	3	2024-10-28
17762	380	3	2024-02-03
17763	54	2	2024-11-14
17764	52	3	2024-04-15
17765	245	1	2024-09-14
17766	7	1	2024-12-23
17767	201	3	2024-06-03
17769	425	1	2024-07-09
17770	228	3	2024-11-20
17771	209	3	2024-07-25
17773	193	2	2024-11-08
17774	164	3	2024-08-05
17775	124	1	2024-05-13
17776	457	3	2024-11-16
17777	136	3	2024-09-27
17778	248	3	2024-11-08
17779	77	3	2024-10-04
17780	325	2	2024-07-01
17781	416	1	2024-12-15
17782	45	1	2024-04-14
17783	389	1	2024-10-31
17784	247	2	2024-05-17
17785	86	2	2024-10-17
17786	434	1	2024-03-15
17787	213	3	2024-08-12
17788	23	3	2024-08-24
17789	36	2	2024-07-07
17791	370	3	2024-02-24
17792	165	3	2024-06-15
17793	182	1	2024-07-30
17794	43	2	2024-07-06
17796	361	1	2024-02-03
17797	141	1	2024-04-15
17798	321	2	2024-11-10
17800	479	1	2024-08-08
17801	284	2	2024-09-10
17802	318	1	2024-10-11
17803	282	2	2024-09-08
17804	434	2	2024-12-19
17805	154	3	2024-07-06
17807	85	3	2024-03-08
17808	430	1	2024-06-11
17809	117	2	2024-11-25
17810	95	3	2024-12-23
17811	492	1	2024-08-12
17812	117	3	2024-11-15
17813	147	1	2024-09-06
17814	454	3	2024-03-16
17815	229	2	2024-10-22
17816	499	3	2024-05-21
17817	247	2	2024-09-07
17818	183	3	2024-02-08
17819	337	3	2024-10-20
17820	153	1	2024-10-04
17821	377	1	2024-03-27
17822	102	2	2024-05-14
17823	472	1	2024-07-21
17824	102	3	2024-05-29
17826	269	3	2024-07-06
17827	273	3	2024-05-23
17828	216	3	2024-02-21
17829	355	3	2024-04-05
17830	88	3	2024-08-14
17831	131	1	2024-09-28
17832	248	2	2024-04-20
17833	90	1	2024-04-18
17834	341	3	2024-08-04
17835	169	3	2024-12-29
17836	33	2	2024-04-29
17837	117	3	2024-07-19
17838	270	1	2024-08-30
17839	96	1	2024-04-01
17842	434	1	2024-12-19
17844	70	3	2024-03-14
17845	391	2	2024-04-07
17847	360	3	2024-06-29
17848	113	2	2024-09-02
17849	342	2	2024-07-01
17851	349	3	2024-07-24
17852	322	2	2024-12-20
17853	87	3	2024-07-21
17854	228	2	2024-02-20
17855	59	1	2024-06-03
17856	434	2	2024-02-18
17857	170	1	2024-04-05
17858	29	1	2024-10-07
17859	366	1	2024-10-08
17860	109	1	2024-03-14
17861	305	2	2024-09-23
17862	365	2	2024-06-11
17863	344	1	2024-05-14
17865	124	1	2024-07-16
17866	236	2	2024-07-01
17869	187	1	2024-02-06
17870	69	1	2024-07-06
17871	172	2	2024-11-30
17872	4	2	2024-11-12
17873	132	2	2024-03-23
17874	308	3	2024-10-04
17876	115	2	2024-05-18
17877	162	3	2024-07-21
17879	353	3	2024-02-24
17880	353	3	2024-11-12
17882	492	1	2024-12-04
17883	84	3	2024-10-27
17885	99	2	2024-10-20
17886	280	1	2024-04-10
17888	359	2	2024-08-21
17889	271	1	2024-10-25
17891	84	1	2024-12-17
17892	287	1	2024-02-04
17893	287	1	2024-07-07
17894	283	1	2024-09-02
17895	131	2	2024-02-13
17896	319	2	2024-03-14
17897	183	2	2024-09-08
17898	454	3	2024-08-27
17899	353	3	2024-04-27
17900	413	3	2024-04-28
17902	409	2	2024-10-13
17903	310	1	2024-03-22
17904	228	3	2024-09-02
17905	53	1	2024-03-14
17906	58	2	2024-06-19
17907	358	1	2024-06-07
17908	407	3	2024-12-11
17909	115	2	2024-02-23
17910	223	1	2024-07-23
17911	198	2	2024-08-07
17912	183	1	2024-05-07
17914	91	3	2024-02-09
17915	362	3	2024-04-21
17916	192	2	2024-07-15
17917	36	2	2024-12-29
17918	383	2	2024-12-09
17919	46	2	2024-11-15
17920	276	3	2024-06-23
17921	205	2	2024-04-19
17922	278	2	2024-02-10
17923	307	1	2024-04-01
17924	481	3	2024-12-11
17925	199	3	2024-03-05
17926	427	3	2024-06-20
17927	355	1	2024-03-02
17928	448	2	2024-10-18
17929	25	1	2024-12-17
17930	26	3	2024-12-05
17931	140	2	2024-02-15
17932	305	2	2024-12-10
17934	479	1	2024-04-02
17935	416	3	2024-03-29
17936	497	3	2024-10-04
17937	179	3	2024-12-29
17938	488	3	2024-03-15
17939	289	2	2024-09-16
17941	49	2	2024-10-04
17942	320	3	2024-05-12
17943	413	2	2024-07-28
17945	350	1	2024-02-19
17946	247	1	2024-12-09
17947	26	1	2024-10-01
17948	61	2	2024-02-18
17949	24	1	2024-07-06
17950	288	1	2024-03-06
17951	83	2	2024-08-12
17952	429	1	2024-09-19
17953	179	3	2024-07-01
17954	321	2	2024-10-12
17955	234	3	2024-09-05
17956	369	3	2024-05-07
17958	277	3	2024-03-06
17959	363	1	2024-07-06
17960	76	3	2024-12-02
17961	194	3	2024-11-09
17962	64	2	2024-03-24
17964	276	1	2024-08-02
17965	367	1	2024-12-24
17966	372	3	2024-11-09
17967	213	3	2024-06-01
17968	411	1	2024-06-25
17969	106	3	2024-02-01
17970	273	1	2024-02-14
17971	480	2	2024-09-27
17972	102	2	2024-03-14
17973	118	1	2024-08-04
17974	184	2	2024-12-14
17975	14	1	2024-08-25
17976	233	3	2024-05-23
17977	358	1	2024-04-01
17978	82	2	2024-11-22
17979	322	3	2024-09-21
17980	218	1	2024-03-29
17981	110	3	2024-12-10
17982	6	3	2024-09-26
17983	239	3	2024-03-13
17984	2	2	2024-09-07
17985	296	3	2024-09-18
17986	414	3	2024-02-21
17987	475	2	2024-03-28
17989	418	1	2024-11-03
17990	32	3	2024-03-01
17991	462	1	2024-04-23
17992	177	2	2024-10-06
17993	134	2	2024-07-06
17994	11	2	2024-02-17
17995	282	3	2024-08-25
17996	141	3	2024-05-13
17998	121	2	2024-10-17
17999	279	1	2024-12-24
18001	261	3	2024-08-07
18003	315	2	2024-04-03
18004	262	3	2024-06-11
18005	358	3	2024-05-15
18007	91	1	2024-09-27
18008	235	3	2024-09-14
18009	304	3	2024-11-08
18010	308	3	2024-03-05
18011	330	1	2024-07-26
18012	111	1	2024-11-05
18013	490	3	2024-06-16
18014	183	1	2024-09-17
18015	84	3	2024-06-03
18016	201	2	2024-07-10
18017	497	1	2024-12-15
18018	204	1	2024-08-31
18019	247	2	2024-04-26
18020	380	1	2024-05-08
18021	487	2	2024-03-29
18022	339	1	2024-03-03
18023	154	3	2024-04-29
18024	425	2	2024-02-22
18025	348	3	2024-04-27
18026	477	2	2024-05-22
18027	345	2	2024-08-22
18028	137	3	2024-10-19
18030	63	2	2024-08-29
18031	372	3	2024-04-20
18032	381	2	2024-02-09
18033	235	3	2024-05-28
18034	463	1	2024-06-02
18035	386	2	2024-04-18
18036	133	1	2024-05-30
18037	405	2	2024-10-25
18038	442	1	2024-06-23
18039	150	1	2024-07-23
18040	394	1	2024-07-05
18041	186	2	2024-11-11
18042	466	2	2024-12-02
18043	1	1	2024-06-27
18044	200	1	2024-06-06
18045	289	3	2024-04-25
18046	500	3	2024-10-01
18047	285	1	2024-02-21
18049	122	1	2024-02-03
18050	129	2	2024-06-02
18051	196	1	2024-03-31
18052	198	3	2024-06-29
18053	312	1	2024-11-24
18054	354	1	2024-10-08
18055	73	3	2024-08-14
18056	279	3	2024-12-23
18058	55	3	2024-10-13
18059	145	3	2024-10-03
18060	21	1	2024-09-23
18061	441	1	2024-12-02
18062	247	3	2024-05-30
18063	156	1	2024-04-10
18064	85	2	2024-07-26
18065	261	1	2024-06-28
18066	243	1	2024-10-20
18067	268	1	2024-06-01
18068	446	2	2024-09-26
18069	182	2	2024-03-24
18070	48	2	2024-09-11
18072	479	3	2024-06-23
18073	370	1	2024-02-10
18074	306	3	2024-09-22
18075	341	2	2024-04-29
18076	19	2	2024-12-07
18077	450	1	2024-02-01
18078	436	1	2024-05-06
18079	13	3	2024-07-24
18081	146	2	2024-09-05
18082	98	1	2024-10-24
18083	443	2	2024-07-27
18084	113	1	2024-04-18
18085	139	2	2024-09-08
18086	21	1	2024-11-20
18087	60	2	2024-03-21
18089	117	3	2024-12-12
18090	9	1	2024-11-21
18092	355	3	2024-10-14
18093	225	2	2024-06-29
18094	303	3	2024-08-16
18095	18	1	2024-08-11
18096	162	2	2024-02-22
18097	132	1	2024-10-16
18098	250	2	2024-05-21
18099	101	2	2024-06-21
18100	53	1	2024-11-14
18101	59	1	2024-10-10
18102	65	2	2024-12-31
18103	406	2	2024-07-08
18104	61	1	2024-11-20
18105	303	3	2024-07-18
18106	263	1	2024-02-22
18107	161	3	2024-12-15
18108	443	1	2024-10-18
18109	88	2	2024-07-23
18110	297	1	2024-04-24
18111	21	3	2024-05-11
18112	245	1	2024-04-02
18113	392	3	2024-12-05
18114	279	3	2024-06-21
18115	315	3	2024-06-30
18116	67	2	2024-11-12
18117	424	2	2024-12-12
18118	218	2	2024-12-16
18119	33	1	2024-06-04
18120	98	1	2024-04-25
18121	307	1	2024-09-10
18122	457	3	2024-02-22
18123	230	3	2024-12-17
18124	268	1	2024-11-19
18125	52	2	2024-07-09
18126	189	3	2024-10-21
18128	276	1	2024-04-12
18129	277	3	2024-03-20
18130	286	1	2024-08-06
18131	401	2	2024-09-09
18132	193	3	2024-06-24
18133	163	3	2024-10-19
18135	309	2	2024-03-22
18136	45	1	2024-07-13
18137	85	1	2024-10-01
18138	382	2	2024-10-13
18139	40	1	2024-12-04
18140	60	2	2024-04-24
18141	2	1	2024-05-06
18142	63	3	2024-05-09
18143	183	2	2024-10-24
18144	22	3	2024-08-14
18145	169	3	2024-09-29
18146	461	1	2024-11-15
18147	204	2	2024-02-23
18148	55	3	2024-12-01
18149	63	3	2024-07-10
18150	272	3	2024-12-18
18151	402	3	2024-10-31
18153	427	2	2024-05-26
18154	411	2	2024-07-29
18155	450	1	2024-10-01
18156	397	2	2024-05-28
18157	460	2	2024-04-16
18158	16	2	2024-08-14
18159	376	2	2024-08-27
18160	385	2	2024-09-16
18161	204	2	2024-06-04
18162	380	2	2024-04-27
18163	79	3	2024-03-28
18164	484	3	2024-04-23
18165	195	1	2024-07-15
18166	73	2	2024-07-06
18167	56	2	2024-06-01
18168	162	2	2024-03-19
18169	29	3	2024-08-24
18170	215	2	2024-05-27
18171	186	2	2024-12-03
18172	169	2	2024-07-09
18173	453	3	2024-07-16
18174	31	2	2024-11-17
18176	258	2	2024-12-10
18177	207	3	2024-03-22
18179	155	3	2024-12-16
18180	203	1	2024-04-15
18181	152	1	2024-02-01
18182	230	3	2024-05-19
18183	471	1	2024-05-30
18184	497	2	2024-02-04
18185	271	3	2024-04-09
18186	418	1	2024-03-02
18187	269	3	2024-03-20
18188	21	3	2024-04-21
18189	389	1	2024-08-06
18190	223	1	2024-12-06
18191	8	1	2024-12-04
18192	468	1	2024-05-05
18193	28	3	2024-02-14
18194	237	1	2024-05-29
18195	374	1	2024-03-14
18197	475	1	2024-11-07
18199	210	1	2024-09-14
18200	287	3	2024-07-18
18201	5	3	2024-11-07
18202	230	1	2024-09-06
18203	421	1	2024-08-16
18204	432	1	2024-07-31
18205	310	2	2024-03-30
18206	255	3	2024-04-15
18207	120	2	2024-05-18
18209	428	1	2024-07-09
18210	343	2	2024-12-09
18211	276	1	2024-07-03
18213	23	1	2024-11-10
18214	334	2	2024-03-10
18215	278	2	2024-12-29
18216	44	1	2024-09-22
18217	334	2	2024-08-29
18218	105	1	2024-10-13
18219	372	1	2024-02-19
18220	292	1	2024-03-04
18221	30	2	2024-08-04
18222	215	1	2024-11-14
18223	495	1	2024-05-01
18225	26	3	2024-04-12
18226	95	3	2024-10-12
18227	255	3	2024-09-12
18228	97	1	2024-12-07
18229	296	1	2024-07-31
18231	253	3	2024-08-09
18234	446	1	2024-12-04
18236	338	2	2024-07-28
18237	292	1	2024-03-28
18238	213	2	2024-09-16
18242	62	3	2024-09-17
18243	306	3	2024-07-29
18244	333	2	2024-10-24
18245	148	3	2024-09-29
18246	180	1	2024-08-15
18247	76	2	2024-02-02
18248	276	2	2024-03-25
18249	15	1	2024-12-18
18250	26	1	2024-02-12
18252	299	1	2024-12-04
18253	191	3	2024-10-16
18254	255	1	2024-10-02
18255	379	2	2024-09-13
18256	269	3	2024-04-04
18257	169	2	2024-11-24
18258	402	3	2024-12-31
18259	388	3	2024-12-29
18260	182	1	2024-06-06
18261	344	1	2024-12-02
18262	494	1	2024-05-15
18263	363	2	2024-11-15
18264	293	3	2024-04-30
18265	330	3	2024-11-19
18266	304	3	2024-09-25
18267	34	1	2024-12-07
18268	340	3	2024-06-30
18271	290	3	2024-04-08
18272	263	2	2024-03-06
18273	491	3	2024-06-16
18274	494	2	2024-09-09
18275	219	2	2024-03-14
18276	268	3	2024-03-26
18277	171	3	2024-07-26
18278	331	3	2024-07-25
18279	254	2	2024-07-09
18280	224	1	2024-07-24
18281	353	3	2024-08-16
18282	476	3	2024-08-24
18283	395	3	2024-03-12
18284	347	2	2024-10-17
18285	219	3	2024-09-13
18286	206	3	2024-03-20
18287	319	1	2024-02-17
18288	259	3	2024-11-27
18289	165	3	2024-12-09
18291	90	3	2024-10-02
18292	448	2	2024-02-19
18293	52	2	2024-03-20
18294	200	3	2024-10-24
18295	133	2	2024-12-08
18297	5	3	2024-11-14
18298	84	1	2024-04-21
18300	21	3	2024-05-17
18301	268	3	2024-03-11
18302	204	3	2024-02-12
18303	259	1	2024-05-02
18304	293	3	2024-09-25
18305	353	3	2024-12-31
18306	105	2	2024-12-14
18307	375	1	2024-08-18
18308	172	2	2024-11-28
18309	303	1	2024-12-14
18310	367	1	2024-02-05
18311	311	2	2024-06-05
18312	99	3	2024-09-08
18313	159	1	2024-07-15
18315	353	1	2024-11-01
18316	108	2	2024-02-06
18318	67	2	2024-12-13
18319	129	2	2024-09-11
18320	2	2	2024-11-07
18321	420	3	2024-07-24
18322	382	1	2024-11-08
18323	485	1	2024-07-04
18324	15	2	2024-10-15
18325	57	2	2024-03-21
18326	479	2	2024-10-19
18327	367	1	2024-09-26
18328	182	2	2024-08-06
18329	167	3	2024-06-03
18330	60	2	2024-03-04
18331	385	2	2024-10-08
18332	465	2	2024-02-06
18333	62	1	2024-05-15
18334	119	2	2024-10-26
18335	233	1	2024-02-23
18337	99	1	2024-05-04
18338	88	3	2024-10-10
18339	71	3	2024-02-26
18341	243	3	2024-04-07
18342	53	2	2024-09-15
18343	323	1	2024-08-10
18344	285	2	2024-02-12
18345	455	2	2024-03-06
18346	141	1	2024-10-23
18347	95	2	2024-12-30
18348	385	2	2024-04-10
18349	201	1	2024-02-25
18350	121	2	2024-12-24
18351	84	1	2024-12-25
18352	181	1	2024-03-29
18353	468	1	2024-10-22
18354	62	2	2024-11-03
18355	388	1	2024-09-06
18356	496	2	2024-08-05
18357	138	3	2024-11-27
18358	106	3	2024-10-24
18359	488	3	2024-06-25
18360	338	2	2024-11-30
18361	396	1	2024-10-20
18362	149	1	2024-08-27
18363	336	3	2024-10-01
18365	196	1	2024-09-27
18366	58	3	2024-04-01
18368	95	1	2024-07-17
18369	393	3	2024-06-25
18370	308	3	2024-09-23
18371	489	2	2024-02-22
18372	231	3	2024-10-22
18373	404	2	2024-04-21
18374	138	2	2024-04-10
18375	321	2	2024-10-25
18376	118	1	2024-09-20
18377	345	2	2024-03-15
18378	164	1	2024-10-30
18379	456	2	2024-08-31
18380	25	3	2024-03-30
18381	13	1	2024-03-12
18382	252	1	2024-05-22
18383	413	3	2024-07-06
18384	143	1	2024-09-23
18385	81	2	2024-08-13
18386	173	1	2024-06-07
18387	306	3	2024-11-26
18388	14	1	2024-04-12
18389	45	1	2024-07-05
18390	417	1	2024-12-13
18393	123	2	2024-12-30
18394	23	1	2024-08-23
18395	454	1	2024-12-30
18396	474	2	2024-09-28
18397	118	3	2024-10-17
18398	338	1	2024-08-01
18400	305	2	2024-05-27
18401	100	1	2024-04-18
18402	283	3	2024-12-01
18403	8	2	2024-05-23
18404	340	2	2024-11-04
18406	177	2	2024-04-26
18407	127	1	2024-12-21
18408	399	2	2024-02-10
18409	381	2	2024-12-09
18410	97	1	2024-11-18
18411	256	3	2024-09-19
18412	425	1	2024-12-10
18413	119	1	2024-07-17
18414	97	3	2024-10-08
18415	278	3	2024-07-24
18416	106	2	2024-02-28
18417	126	3	2024-03-06
18419	393	2	2024-06-22
18420	284	1	2024-11-08
18421	331	2	2024-04-03
18422	133	2	2024-12-29
18423	230	3	2024-08-26
18424	466	2	2024-07-19
18426	303	3	2024-11-05
18428	425	2	2024-10-20
18429	356	1	2024-08-10
18430	14	2	2024-11-15
18431	190	1	2024-04-20
18432	327	3	2024-12-16
18433	161	2	2024-02-23
18434	410	3	2024-02-09
18435	292	2	2024-10-14
18436	69	3	2024-06-21
18438	226	1	2024-06-13
18439	465	1	2024-07-01
18440	398	2	2024-05-24
18442	152	2	2024-02-16
18443	291	2	2024-08-06
18444	256	2	2024-08-14
18445	82	3	2024-09-26
18447	156	1	2024-10-26
18448	303	3	2024-06-21
18450	467	3	2024-12-04
18451	44	3	2024-04-18
18452	240	3	2024-02-15
18453	53	1	2024-05-28
18454	98	3	2024-12-27
18455	80	3	2024-11-01
18456	24	1	2024-04-12
18459	363	3	2024-12-26
18460	402	1	2024-08-24
18461	103	1	2024-12-27
18462	353	2	2024-08-18
18463	67	1	2024-04-15
18464	174	1	2024-03-01
18465	158	3	2024-02-08
18467	10	1	2024-07-19
18468	271	1	2024-09-16
18469	381	1	2024-07-16
18470	486	2	2024-12-15
18471	36	1	2024-08-10
18472	273	3	2024-08-10
18473	97	2	2024-08-22
18474	78	1	2024-03-18
18475	27	2	2024-05-07
18476	127	1	2024-07-02
18477	416	3	2024-12-27
18479	185	1	2024-04-06
18480	473	2	2024-02-23
18481	396	1	2024-12-30
18482	139	1	2024-07-27
18483	137	1	2024-02-15
18484	113	3	2024-07-13
18485	147	1	2024-08-30
18486	419	3	2024-11-17
18487	476	1	2024-07-17
18488	452	2	2024-03-03
18489	127	1	2024-12-27
18490	2	2	2024-06-02
18491	415	3	2024-11-21
18492	242	1	2024-09-01
18493	91	3	2024-03-30
18494	312	3	2024-08-18
18495	259	3	2024-02-01
18496	232	1	2024-10-09
18497	311	1	2024-03-04
18498	453	3	2024-05-09
18499	9	3	2024-05-07
18500	179	2	2024-05-10
18501	293	2	2024-03-14
18502	206	3	2024-05-21
18503	346	2	2024-10-14
18504	326	3	2024-12-25
18505	237	3	2024-10-03
18506	10	2	2024-03-24
18507	296	1	2024-10-19
18508	392	2	2024-08-01
18509	188	2	2024-07-23
18510	325	3	2024-03-20
18512	122	2	2024-07-17
18513	299	3	2024-07-22
18514	190	3	2024-09-24
18515	299	2	2024-05-13
18516	180	2	2024-06-06
18517	231	2	2024-11-01
18518	432	1	2024-09-28
18519	175	2	2024-11-21
18520	268	2	2024-10-05
18521	252	3	2024-10-09
18522	91	2	2024-12-03
18523	42	2	2024-07-15
18524	396	3	2024-04-15
18525	401	3	2024-03-04
18526	160	2	2024-02-02
18527	200	3	2024-05-05
18528	365	2	2024-07-16
18529	455	3	2024-06-11
18532	473	2	2024-02-27
18533	416	1	2024-11-11
18534	423	1	2024-04-04
18535	438	2	2024-04-21
18536	215	1	2024-11-15
18537	369	3	2024-08-28
18538	140	1	2024-12-24
18539	329	2	2024-12-13
18540	220	3	2024-10-05
18541	475	2	2024-05-18
18542	286	2	2024-05-21
18543	48	2	2024-12-24
18544	318	1	2024-05-12
18546	426	1	2024-08-06
18547	252	1	2024-11-08
18548	231	1	2024-05-27
18549	357	2	2024-07-26
18550	35	1	2024-08-24
18551	446	2	2024-10-14
18552	151	1	2024-12-04
18553	311	3	2024-05-17
18554	461	2	2024-04-24
18555	438	1	2024-02-07
18556	195	3	2024-08-13
18557	445	3	2024-11-29
18558	217	2	2024-05-27
18559	418	2	2024-06-22
18560	136	2	2024-12-30
18561	169	2	2024-12-05
18562	446	2	2024-12-06
18563	75	1	2024-12-10
18564	293	1	2024-11-15
18566	315	1	2024-12-20
18567	409	2	2024-12-26
18569	388	1	2024-11-16
18570	246	1	2024-06-13
18571	31	3	2024-09-04
18573	300	2	2024-10-15
18574	431	1	2024-06-26
18576	275	3	2024-07-08
18577	181	3	2024-10-20
18578	84	3	2024-08-17
18579	370	2	2024-04-05
18580	105	2	2024-12-16
18581	447	1	2024-05-05
18582	435	2	2024-02-14
18583	246	2	2024-09-10
18584	393	2	2024-12-18
18585	314	2	2024-09-01
18586	218	1	2024-08-09
18587	12	3	2024-10-02
18588	209	2	2024-10-26
18590	353	1	2024-04-21
18591	471	1	2024-11-19
18592	164	2	2024-08-25
18593	214	3	2024-02-01
18594	93	2	2024-08-02
18595	267	3	2024-04-07
18596	138	3	2024-08-03
18597	459	1	2024-08-04
18598	76	3	2024-11-21
18600	391	3	2024-07-23
18601	456	1	2024-11-05
18602	458	3	2024-05-09
18603	30	3	2024-09-06
18604	353	1	2024-07-23
18605	36	3	2024-08-01
18606	17	3	2024-03-06
18607	9	2	2024-12-23
18609	270	3	2024-05-21
18610	68	3	2024-03-01
18611	24	1	2024-12-10
18612	205	1	2024-09-22
18613	430	2	2024-08-26
18614	209	3	2024-04-06
18615	144	3	2024-11-22
18616	188	2	2024-03-26
18617	462	2	2024-11-27
18618	369	2	2024-10-25
18620	19	2	2024-03-26
18621	488	2	2024-10-11
18622	191	2	2024-06-25
18623	344	2	2024-07-25
18624	390	1	2024-04-11
18625	379	2	2024-11-15
18626	289	1	2024-02-09
18627	449	2	2024-11-19
18628	494	3	2024-11-29
18629	120	2	2024-10-24
18631	287	3	2024-06-09
18632	268	1	2024-06-24
18633	375	1	2024-04-12
18634	196	1	2024-04-10
18635	485	3	2024-02-28
18637	13	3	2024-11-15
18638	89	1	2024-09-12
18639	102	2	2024-03-02
18640	86	3	2024-12-26
18641	280	3	2024-07-25
18642	433	1	2024-12-19
18643	400	2	2024-06-10
18645	451	1	2024-04-27
18646	472	2	2024-07-10
18647	386	3	2024-05-25
18648	279	2	2024-09-07
18649	268	3	2024-04-12
18651	344	3	2024-02-01
18652	137	2	2024-09-21
18654	77	3	2024-11-30
18655	475	1	2024-10-12
18656	361	3	2024-11-12
18657	11	1	2024-07-24
18658	22	1	2024-08-28
18659	167	3	2024-07-13
18660	121	1	2024-05-20
18661	70	1	2024-08-22
18662	219	3	2024-04-08
18663	144	2	2024-03-14
18664	408	1	2024-05-01
18665	431	2	2024-08-29
18666	181	2	2024-07-25
18667	55	1	2024-03-02
18668	105	3	2024-11-16
18669	378	2	2024-04-16
18670	259	3	2024-12-15
18671	22	1	2024-09-25
18672	227	1	2024-09-16
18673	229	3	2024-11-10
18674	137	1	2024-07-22
18675	295	1	2024-03-26
18676	368	1	2024-10-24
18677	500	1	2024-08-02
18678	81	1	2024-12-30
18679	372	3	2024-09-05
18680	405	2	2024-05-21
18681	490	1	2024-09-02
18682	65	1	2024-05-03
18683	142	3	2024-11-24
18684	242	3	2024-07-31
18685	275	3	2024-08-13
18686	58	3	2024-08-19
18687	60	3	2024-10-10
18689	314	3	2024-11-22
18690	273	3	2024-09-16
18691	64	2	2024-07-24
18692	96	2	2024-12-27
18693	118	1	2024-09-15
18694	432	2	2024-04-07
18697	343	1	2024-11-21
18698	199	3	2024-11-06
18699	365	3	2024-12-17
18700	72	2	2024-09-07
18701	417	2	2024-10-27
18702	171	2	2024-12-04
18703	348	1	2024-08-15
18704	404	1	2024-04-28
18705	52	1	2024-08-10
18706	392	2	2024-07-31
18707	192	1	2024-05-18
18708	24	1	2024-02-28
18709	111	2	2024-03-02
18710	49	3	2024-04-03
18711	86	1	2024-09-29
18712	195	1	2024-10-19
18713	56	2	2024-12-27
18714	108	2	2024-12-22
18715	341	1	2024-10-28
18716	397	2	2024-08-21
18717	204	2	2024-11-25
18718	262	1	2024-10-10
18719	215	1	2024-12-02
18720	8	3	2024-03-05
18721	397	3	2024-03-25
18722	62	2	2024-04-23
18723	94	3	2024-11-03
18724	471	3	2024-05-07
18725	441	2	2024-12-30
18726	422	2	2024-08-09
18727	22	2	2024-07-10
18728	190	2	2024-09-25
18729	459	3	2024-09-15
18730	139	1	2024-12-14
18731	10	3	2024-11-27
18732	23	3	2024-07-28
18733	192	2	2024-07-02
18734	203	1	2024-08-21
18735	257	3	2024-10-03
18736	274	1	2024-08-19
18738	30	2	2024-08-11
18739	327	1	2024-03-23
18740	141	2	2024-12-21
18742	404	2	2024-03-24
18743	386	1	2024-05-19
18746	76	3	2024-03-09
18747	152	3	2024-11-07
18748	247	2	2024-06-04
18749	115	2	2024-10-30
18750	449	2	2024-07-26
18751	404	3	2024-12-29
18752	470	2	2024-08-06
18753	455	1	2024-02-23
18754	160	2	2024-03-15
18755	456	3	2024-12-28
18756	31	1	2024-05-27
18758	305	2	2024-06-21
18759	79	1	2024-09-10
18760	290	2	2024-05-26
18761	51	1	2024-12-22
18763	74	3	2024-08-12
18764	455	3	2024-08-04
18765	200	2	2024-10-12
18766	257	2	2024-03-16
18768	444	3	2024-05-11
18769	56	1	2024-07-31
18770	395	2	2024-04-30
18771	470	2	2024-03-05
18772	457	1	2024-10-26
18773	341	1	2024-03-10
18775	300	1	2024-05-06
18776	268	3	2024-03-06
18778	193	1	2024-09-23
18779	401	1	2024-04-12
18781	275	2	2024-11-14
18782	321	3	2024-09-14
18783	295	1	2024-06-17
18784	82	3	2024-09-05
18785	116	3	2024-06-06
18786	271	2	2024-11-12
18787	446	1	2024-10-25
18789	116	2	2024-12-13
18790	413	2	2024-04-16
18791	21	1	2024-04-14
18792	466	1	2024-09-29
18794	284	1	2024-08-21
18795	38	2	2024-09-30
18796	357	2	2024-03-15
18797	226	1	2024-06-03
18798	220	1	2024-11-14
18799	13	3	2024-03-07
18801	31	1	2024-03-12
18802	61	1	2024-08-19
18803	426	2	2024-06-17
18804	95	1	2024-08-18
18805	435	1	2024-11-19
18806	495	1	2024-03-20
18807	455	1	2024-07-23
18808	24	2	2024-03-11
18809	323	3	2024-12-27
18810	137	1	2024-02-26
18811	396	3	2024-08-08
18812	8	1	2024-12-03
18813	179	1	2024-12-15
18814	412	1	2024-06-21
18815	300	1	2024-07-03
18816	291	2	2024-12-08
18817	303	2	2024-08-25
18818	21	3	2024-05-04
18819	74	3	2024-11-28
18820	208	3	2024-07-17
18822	231	2	2024-10-09
18823	268	1	2024-11-07
18824	181	1	2024-08-30
18825	103	1	2024-11-29
18826	240	1	2024-09-22
18827	488	3	2024-09-12
18828	463	2	2024-02-08
18829	158	1	2024-07-26
18830	34	1	2024-08-05
18831	351	2	2024-09-21
18832	198	1	2024-03-31
18833	315	2	2024-02-01
18834	216	3	2024-03-19
18835	245	3	2024-10-28
18836	412	2	2024-02-21
18837	88	2	2024-04-21
18838	137	1	2024-11-20
18839	286	2	2024-04-13
18841	372	1	2024-11-25
18842	307	1	2024-07-09
18843	209	1	2024-05-02
18844	88	2	2024-12-28
18845	337	3	2024-09-13
18846	493	2	2024-02-06
18847	66	2	2024-08-30
18848	129	3	2024-10-06
18849	438	1	2024-09-03
18850	231	2	2024-09-05
18851	478	3	2024-11-21
18853	415	2	2024-11-30
18854	137	2	2024-10-02
18855	284	3	2024-07-14
18856	348	2	2024-02-25
18858	409	3	2024-12-16
18859	361	1	2024-07-04
18860	355	1	2024-02-23
18861	422	2	2024-03-26
18862	489	1	2024-04-30
18865	209	1	2024-07-22
18866	413	2	2024-07-25
18867	459	2	2024-06-24
18868	189	3	2024-09-16
18869	316	3	2024-05-20
18870	465	1	2024-10-16
18871	323	1	2024-05-07
18872	309	3	2024-09-22
18873	38	3	2024-11-05
18874	118	2	2024-03-23
18876	251	2	2024-07-24
18877	182	3	2024-05-02
18878	260	1	2024-06-16
18879	248	2	2024-05-11
18880	419	3	2024-10-01
18881	222	1	2024-03-14
18882	22	3	2024-05-03
18883	212	3	2024-07-19
18884	447	2	2024-10-07
18885	478	2	2024-03-02
18888	286	1	2024-02-16
18889	218	2	2024-07-11
18890	337	2	2024-03-29
18891	55	1	2024-11-17
18892	93	1	2024-03-25
18893	290	2	2024-11-19
18894	48	3	2024-11-03
18895	7	2	2024-12-14
18896	141	3	2024-09-21
18897	454	1	2024-05-26
18898	207	1	2024-05-02
18899	308	3	2024-03-31
18900	390	1	2024-11-16
18901	311	3	2024-12-22
18902	398	1	2024-07-06
18903	366	2	2024-08-29
18904	177	3	2024-09-27
18905	311	1	2024-05-17
18906	326	3	2024-06-10
18907	62	3	2024-04-27
18908	89	1	2024-06-28
18909	418	3	2024-04-10
18910	29	3	2024-02-07
18912	158	3	2024-07-09
18913	183	2	2024-02-07
18915	170	3	2024-06-27
18917	387	2	2024-08-13
18918	440	2	2024-11-07
18919	463	3	2024-02-08
18920	203	2	2024-07-31
18921	392	3	2024-06-22
18922	345	1	2024-03-13
18923	32	2	2024-11-10
18924	375	1	2024-08-06
18925	39	3	2024-03-15
18926	487	1	2024-03-30
18927	49	1	2024-06-26
18928	352	1	2024-12-12
18929	413	1	2024-04-05
18930	18	3	2024-07-21
18931	183	3	2024-09-21
18932	12	2	2024-05-06
18934	351	3	2024-05-03
18935	368	2	2024-05-21
18937	443	3	2024-06-07
18938	188	3	2024-11-30
18939	410	2	2024-05-18
18941	149	3	2024-06-23
18942	67	2	2024-07-04
18944	439	2	2024-11-04
18945	287	1	2024-07-17
18946	162	3	2024-07-24
18947	478	3	2024-10-24
18949	366	2	2024-09-18
18950	82	3	2024-04-14
18951	191	1	2024-02-27
18952	369	1	2024-12-06
18953	89	2	2024-12-04
18954	488	1	2024-04-16
18955	27	1	2024-12-12
18956	371	3	2024-12-02
18957	137	1	2024-06-09
18958	159	1	2024-12-21
18959	190	2	2024-06-28
18960	380	1	2024-03-29
18961	173	2	2024-11-19
18963	487	2	2024-03-06
18964	352	2	2024-08-14
18965	189	3	2024-10-20
18967	132	2	2024-11-28
18969	134	3	2024-12-06
18970	384	1	2024-07-21
18971	123	1	2024-07-29
18972	252	1	2024-09-19
18973	262	1	2024-02-27
18974	132	1	2024-11-27
18975	346	1	2024-11-15
18976	20	3	2024-12-18
18977	268	2	2024-08-08
18978	362	3	2024-04-03
18979	399	3	2024-06-05
18980	91	1	2024-03-18
18981	89	1	2024-12-02
18982	192	1	2024-02-23
18984	323	2	2024-08-31
18985	120	3	2024-06-24
18986	185	1	2024-09-29
18987	24	2	2024-07-30
18988	351	1	2024-08-04
18990	212	1	2024-05-16
18991	71	2	2024-08-27
18992	233	3	2024-03-15
18993	356	1	2024-02-28
18994	358	1	2024-11-05
18995	215	1	2024-10-23
18996	143	1	2024-03-14
18998	158	3	2024-07-30
18999	328	2	2024-06-24
19002	363	3	2024-04-23
19003	338	1	2024-12-28
19004	281	1	2024-10-05
19005	221	3	2024-06-05
19006	494	1	2024-07-07
19007	291	2	2024-10-29
19008	148	1	2024-10-31
19009	343	1	2024-06-03
19010	30	1	2024-09-20
19013	246	3	2024-12-02
19014	375	2	2024-04-09
19015	236	3	2024-12-09
19016	95	3	2024-03-21
19018	404	1	2024-04-01
19019	423	1	2024-12-29
19020	432	1	2024-07-13
19021	58	2	2024-11-18
19022	406	2	2024-11-30
19023	324	1	2024-07-14
19024	173	2	2024-10-19
19025	390	1	2024-04-01
19026	467	2	2024-07-17
19027	215	3	2024-08-14
19028	190	1	2024-03-09
19029	52	2	2024-10-17
19030	445	2	2024-09-18
19031	130	1	2024-07-20
19032	349	1	2024-11-08
19033	134	2	2024-12-04
19034	175	1	2024-06-22
19036	45	3	2024-02-22
19037	152	1	2024-12-19
19038	288	3	2024-06-15
19039	3	2	2024-12-21
19040	105	1	2024-09-10
19041	43	3	2024-02-08
19042	134	2	2024-10-30
19045	345	2	2024-09-20
19047	479	3	2024-04-25
19048	289	2	2024-02-26
19049	69	1	2024-05-08
19050	144	2	2024-11-01
19051	499	1	2024-03-08
19052	180	3	2024-08-04
19053	313	2	2024-12-03
19054	397	3	2024-12-27
19055	494	1	2024-10-18
19056	65	2	2024-02-21
19057	267	3	2024-04-18
19058	23	1	2024-02-17
19059	252	2	2024-03-23
19060	293	2	2024-02-11
19061	412	2	2024-07-18
19062	203	3	2024-02-19
19063	173	2	2024-11-13
19065	384	3	2024-08-06
19066	281	3	2024-12-28
19067	29	3	2024-10-07
19068	12	1	2024-04-27
19069	276	3	2024-12-15
19070	322	3	2024-03-18
19071	439	2	2024-07-19
19072	488	2	2024-06-11
19073	320	2	2024-08-05
19074	184	3	2024-10-26
19075	388	3	2024-02-05
19076	31	1	2024-05-02
19077	7	3	2024-06-13
19078	212	3	2024-12-03
19079	185	1	2024-02-12
19080	63	3	2024-12-19
19081	446	1	2024-11-14
19082	455	2	2024-08-08
19084	133	2	2024-12-02
19085	163	1	2024-02-11
19086	93	2	2024-11-09
19087	195	2	2024-11-19
19088	125	2	2024-08-02
19089	38	1	2024-06-26
19090	249	3	2024-11-30
19091	256	1	2024-09-15
19092	161	1	2024-07-23
19093	383	1	2024-11-18
19094	9	1	2024-03-14
19095	356	1	2024-04-02
19096	218	2	2024-07-19
19097	80	1	2024-07-06
19098	346	1	2024-09-01
19099	177	2	2024-07-30
19100	120	1	2024-12-25
19101	302	1	2024-02-13
19102	382	1	2024-11-16
19103	186	3	2024-06-26
19104	65	2	2024-11-09
19105	465	3	2024-03-15
19106	165	1	2024-03-08
19107	328	1	2024-02-13
19108	26	1	2024-07-24
19109	29	2	2024-04-10
19110	195	1	2024-10-31
19111	146	2	2024-05-05
19112	282	1	2024-05-29
19113	237	2	2024-10-12
19114	198	1	2024-07-10
19115	163	3	2024-03-20
19116	351	2	2024-03-06
19117	130	2	2024-11-15
19118	71	3	2024-05-27
19119	93	2	2024-09-02
19120	67	1	2024-12-28
19121	231	1	2024-03-16
19122	444	1	2024-04-10
19123	226	2	2024-02-01
19124	369	1	2024-11-29
19125	68	3	2024-07-06
19126	295	2	2024-07-18
19128	335	3	2024-08-24
19129	28	2	2024-05-10
19130	448	1	2024-03-05
19131	337	2	2024-06-15
19132	446	3	2024-12-13
19133	68	2	2024-04-19
19134	179	2	2024-12-12
19136	89	2	2024-08-31
19137	92	1	2024-07-14
19138	22	2	2024-07-23
19139	365	2	2024-11-12
19140	225	1	2024-05-02
19142	437	2	2024-03-03
19143	386	1	2024-10-13
19144	214	3	2024-10-31
19145	417	2	2024-08-28
19146	349	3	2024-12-06
19148	302	2	2024-02-01
19149	81	3	2024-02-03
19150	491	2	2024-09-18
19151	333	1	2024-06-18
19152	192	1	2024-03-01
19153	368	3	2024-02-20
19154	441	3	2024-08-15
19155	52	1	2024-02-25
19156	201	3	2024-11-09
19157	134	2	2024-05-26
19158	30	3	2024-10-17
19159	148	1	2024-04-04
19160	440	2	2024-10-05
19161	265	3	2024-06-03
19162	378	1	2024-02-17
19164	440	1	2024-05-04
19165	167	1	2024-08-11
19166	405	3	2024-10-01
19167	210	2	2024-07-12
19168	428	3	2024-12-09
19169	308	3	2024-06-04
19170	363	1	2024-06-13
19171	174	2	2024-04-04
19172	29	3	2024-11-06
19173	442	3	2024-05-16
19174	291	1	2024-07-07
19175	416	2	2024-04-15
19176	34	2	2024-11-09
19177	113	1	2024-05-24
19178	285	3	2024-06-23
19180	242	1	2024-12-04
19181	162	1	2024-08-28
19182	57	3	2024-08-24
19183	411	1	2024-12-21
19184	436	3	2024-07-08
19185	157	1	2024-04-29
19186	289	3	2024-08-03
19187	251	1	2024-02-09
19188	279	3	2024-05-22
19190	453	1	2024-06-13
19191	338	1	2024-08-27
19192	327	3	2024-06-12
19193	463	3	2024-06-21
19194	168	2	2024-04-19
19195	288	3	2024-06-13
19196	262	2	2024-03-03
19197	288	3	2024-10-31
19199	279	1	2024-08-28
19200	179	1	2024-08-06
19201	149	3	2024-02-03
19202	64	2	2024-09-14
19203	159	1	2024-07-17
19204	350	1	2024-11-27
19205	9	1	2024-02-09
19207	451	2	2024-09-05
19208	84	2	2024-06-08
19209	275	3	2024-11-27
19210	467	1	2024-09-25
19211	301	2	2024-07-05
19212	63	1	2024-02-15
19213	298	1	2024-08-15
19214	38	1	2024-03-15
19215	52	3	2024-06-30
19216	271	1	2024-09-19
19217	193	1	2024-07-19
19218	399	3	2024-12-22
19219	186	1	2024-11-26
19220	389	3	2024-02-22
19221	281	3	2024-10-25
19222	222	2	2024-06-11
19223	85	2	2024-07-10
19224	339	1	2024-05-07
19225	396	2	2024-11-22
19226	262	2	2024-03-23
19227	5	1	2024-05-19
19228	309	2	2024-09-26
19231	76	1	2024-07-05
19232	81	3	2024-10-07
19233	56	3	2024-04-16
19234	298	2	2024-09-09
19235	447	1	2024-11-12
19236	99	3	2024-10-15
19237	132	2	2024-07-26
19238	437	2	2024-03-19
19239	465	2	2024-12-28
19240	51	3	2024-10-10
19241	485	2	2024-07-12
19242	488	2	2024-04-15
19243	11	2	2024-12-23
19244	83	2	2024-05-20
19245	210	1	2024-02-05
19246	467	2	2024-10-09
19247	417	3	2024-05-05
19248	200	3	2024-06-18
19249	228	1	2024-04-08
19250	262	2	2024-04-18
19251	91	2	2024-11-15
19252	138	2	2024-02-04
19253	396	3	2024-12-25
19254	472	3	2024-06-08
19255	105	3	2024-07-19
19256	317	2	2024-03-16
19257	217	2	2024-02-15
19258	464	1	2024-04-18
19259	154	2	2024-09-17
19260	222	1	2024-06-25
19261	270	2	2024-04-27
19262	225	2	2024-02-11
19263	199	1	2024-08-30
19265	15	2	2024-09-18
19266	237	2	2024-08-13
19268	175	3	2024-11-22
19269	351	3	2024-05-27
19270	466	2	2024-02-23
19271	126	1	2024-02-05
19272	146	2	2024-09-26
19273	278	2	2024-10-28
19274	173	1	2024-04-08
19275	307	2	2024-04-08
19276	146	1	2024-12-23
19277	67	2	2024-04-19
19278	391	3	2024-08-31
19279	200	3	2024-04-21
19280	485	1	2024-05-16
19281	200	1	2024-04-30
19282	78	3	2024-06-21
19285	288	2	2024-12-18
19286	166	3	2024-08-03
19287	90	2	2024-04-28
19288	211	1	2024-03-08
19289	453	1	2024-11-07
19290	249	1	2024-10-11
19291	297	3	2024-07-16
19292	72	3	2024-12-17
19293	293	3	2024-04-25
19294	347	2	2024-02-10
19295	403	2	2024-04-27
19296	18	1	2024-07-17
19297	476	2	2024-11-02
19298	416	3	2024-06-04
19299	8	1	2024-08-21
19300	459	2	2024-07-26
19301	214	1	2024-11-21
19302	466	1	2024-03-04
19303	400	2	2024-12-05
19304	387	2	2024-10-28
19306	297	3	2024-10-26
19307	350	3	2024-08-20
19308	355	1	2024-05-24
19309	310	3	2024-11-27
19310	194	3	2024-02-01
19311	480	2	2024-06-18
19312	173	2	2024-10-31
19313	158	2	2024-10-15
19315	465	2	2024-06-27
19316	319	3	2024-02-22
19317	132	3	2024-09-02
19319	342	2	2024-08-31
19320	230	1	2024-04-06
19321	310	2	2024-09-03
19322	481	3	2024-06-12
19324	281	1	2024-04-17
19326	424	2	2024-07-20
19327	381	3	2024-12-31
19328	103	3	2024-07-05
19329	79	3	2024-08-03
19330	165	3	2024-10-11
19331	72	1	2024-10-03
19332	425	3	2024-02-23
19333	200	2	2024-10-15
19334	205	1	2024-09-11
19335	178	2	2024-04-09
19337	4	1	2024-10-14
19338	322	1	2024-11-11
19339	15	1	2024-03-30
19340	162	1	2024-09-11
19341	198	2	2024-03-05
19342	455	2	2024-04-22
19343	149	2	2024-12-24
19344	319	2	2024-06-05
19345	204	1	2024-05-10
19346	97	2	2024-12-22
19347	162	3	2024-06-08
19348	253	3	2024-05-06
19349	212	1	2024-09-04
19350	106	2	2024-06-17
19351	89	3	2024-05-17
19352	484	1	2024-12-03
19354	260	3	2024-07-12
19355	365	3	2024-02-14
19356	68	2	2024-07-25
19357	350	3	2024-02-12
19358	244	3	2024-05-20
19359	77	3	2024-08-13
19361	226	2	2024-06-23
19362	445	1	2024-06-08
19363	370	2	2024-10-22
19364	168	2	2024-05-01
19365	348	3	2024-08-26
19366	332	1	2024-03-06
19367	111	2	2024-11-06
19368	432	1	2024-02-11
19369	359	2	2024-10-14
19371	417	3	2024-07-05
19372	133	2	2024-03-16
19373	103	2	2024-07-14
19375	153	1	2024-10-30
19376	419	3	2024-10-26
19377	401	1	2024-02-07
19378	105	2	2024-02-19
19379	293	3	2024-09-27
19380	495	1	2024-02-24
19381	173	1	2024-09-17
19382	231	3	2024-09-01
19383	66	1	2024-11-27
19384	125	3	2024-03-08
19385	341	3	2024-10-05
19387	239	3	2024-03-07
19388	265	3	2024-05-09
19389	279	1	2024-02-07
19390	435	2	2024-07-27
19391	62	3	2024-05-18
19392	235	3	2024-04-08
19394	51	2	2024-10-16
19395	224	3	2024-02-23
19396	57	3	2024-06-19
19397	249	3	2024-02-15
19398	240	2	2024-12-15
19399	432	2	2024-06-19
19400	133	3	2024-02-02
19401	430	1	2024-09-05
19402	353	3	2024-05-16
19403	280	1	2024-05-23
19404	23	1	2024-12-20
19405	290	3	2024-03-27
19407	35	2	2024-12-25
19409	482	3	2024-09-22
19410	198	2	2024-03-30
19411	436	1	2024-12-21
19412	153	3	2024-06-20
19413	339	1	2024-09-19
19414	241	1	2024-03-21
19415	391	1	2024-10-11
19416	358	3	2024-06-13
19417	364	2	2024-02-16
19418	153	1	2024-11-07
19419	194	3	2024-03-02
19420	103	3	2024-05-28
19421	61	2	2024-11-22
19422	324	2	2024-10-05
19424	480	3	2024-12-30
19425	359	1	2024-08-21
19426	356	1	2024-02-25
19427	442	3	2024-06-09
19428	87	1	2024-10-03
19430	2	2	2024-05-17
19431	393	2	2024-11-09
19432	6	1	2024-07-07
19433	125	3	2024-10-22
19434	421	3	2024-02-16
19435	321	1	2024-06-23
19436	434	1	2024-02-29
19437	269	1	2024-11-06
19438	89	1	2024-08-17
19439	444	1	2024-10-26
19440	327	1	2024-12-16
19441	397	2	2024-09-05
19442	267	1	2024-06-14
19443	108	2	2024-06-10
19444	393	2	2024-03-30
19445	469	3	2024-05-23
19446	222	2	2024-10-16
19447	358	3	2024-03-15
19448	387	2	2024-03-03
19449	9	3	2024-07-05
19450	322	1	2024-05-07
19451	445	2	2024-09-24
19452	421	1	2024-02-10
19453	376	2	2024-02-09
19454	425	1	2024-03-12
19455	424	3	2024-10-27
19456	79	2	2024-04-11
19457	313	1	2024-08-29
19458	53	1	2024-05-17
19459	5	3	2024-07-01
19460	82	1	2024-07-01
19461	483	2	2024-03-12
19462	407	1	2024-10-09
19463	315	2	2024-09-15
19464	145	3	2024-08-21
19466	437	2	2024-06-26
19467	285	3	2024-03-27
19468	95	1	2024-05-26
19469	303	3	2024-02-05
19470	243	2	2024-10-28
19471	406	3	2024-12-05
19473	20	1	2024-02-18
19475	229	1	2024-02-14
19476	476	3	2024-04-19
19477	8	1	2024-09-27
19478	334	1	2024-10-31
19479	204	2	2024-09-14
19480	45	2	2024-07-16
19481	147	2	2024-08-16
19482	267	3	2024-09-22
19483	417	2	2024-04-02
19484	143	3	2024-05-03
19485	500	1	2024-07-05
19486	156	1	2024-11-02
19487	459	1	2024-02-16
19489	164	1	2024-12-12
19490	122	2	2024-10-04
19491	432	3	2024-08-24
19492	51	1	2024-06-07
19493	66	2	2024-06-05
19494	220	2	2024-03-26
19495	267	2	2024-09-16
19496	182	2	2024-04-21
19497	442	2	2024-07-12
19499	277	1	2024-12-12
19500	10	1	2024-03-12
19501	70	3	2024-05-21
19502	266	2	2024-05-20
19503	459	3	2024-04-25
19504	458	3	2024-02-07
19505	393	1	2024-04-19
19506	122	2	2024-10-13
19507	128	1	2024-06-06
19508	462	2	2024-11-07
19509	473	2	2024-02-09
19510	450	3	2024-06-28
19511	219	3	2024-07-10
19512	414	1	2024-09-15
19514	477	3	2024-06-28
19515	471	3	2024-05-21
19516	453	1	2024-04-17
19517	174	2	2024-11-13
19518	18	1	2024-06-22
19519	388	3	2024-12-16
19520	113	1	2024-07-14
19521	26	2	2024-12-18
19522	87	3	2024-03-28
19523	495	2	2024-12-01
19526	227	3	2024-10-27
19527	403	3	2024-08-28
19528	58	2	2024-09-07
19529	329	2	2024-04-11
19530	290	1	2024-12-07
19531	114	1	2024-10-08
19533	499	3	2024-09-28
19534	306	3	2024-09-24
19535	316	1	2024-04-16
19536	3	2	2024-04-27
19537	437	2	2024-05-20
19538	431	1	2024-11-11
19539	384	3	2024-09-28
19540	41	2	2024-07-18
19541	227	2	2024-09-03
19542	460	1	2024-02-29
19543	347	1	2024-08-31
19544	175	2	2024-11-04
19545	318	1	2024-03-17
19546	343	3	2024-12-08
19547	328	1	2024-06-10
19548	125	3	2024-09-03
19549	425	1	2024-04-19
19550	175	1	2024-12-11
19551	94	2	2024-10-18
19552	315	2	2024-05-26
19553	136	3	2024-07-09
19554	217	3	2024-08-21
19556	242	1	2024-09-02
19558	124	3	2024-08-29
19559	83	3	2024-04-18
19560	293	1	2024-03-24
19561	59	3	2024-07-23
19562	57	1	2024-09-30
19563	213	2	2024-09-22
19564	369	1	2024-06-17
19565	89	2	2024-02-07
19566	88	1	2024-02-11
19567	463	1	2024-03-14
19569	222	1	2024-11-08
19570	8	2	2024-03-09
19571	191	2	2024-09-15
19572	95	2	2024-03-03
19573	469	1	2024-02-10
19574	69	2	2024-07-06
19575	39	2	2024-12-25
19576	480	2	2024-09-23
19580	103	3	2024-08-03
19581	254	1	2024-05-01
19583	187	1	2024-10-02
19584	338	3	2024-12-02
19586	359	2	2024-06-30
19587	21	1	2024-03-27
19588	297	1	2024-10-07
19589	252	2	2024-04-15
19590	487	1	2024-02-23
19591	143	3	2024-02-03
19592	255	2	2024-07-05
19593	477	3	2024-06-24
19594	263	2	2024-10-03
19595	273	3	2024-07-05
19597	104	2	2024-03-30
19598	446	3	2024-11-04
19599	380	3	2024-04-18
19600	20	3	2024-03-07
19601	310	1	2024-12-18
19602	218	1	2024-12-31
19603	184	3	2024-02-25
19604	286	2	2024-05-28
19605	51	1	2024-09-10
19606	195	3	2024-09-07
19607	360	1	2024-06-26
19608	366	3	2024-02-02
19609	41	3	2024-10-03
19610	236	3	2024-12-29
19611	7	2	2024-12-27
19613	315	3	2024-12-05
19614	314	3	2024-08-20
19615	26	2	2024-06-06
19616	223	1	2024-11-06
19617	252	1	2024-03-28
19618	13	3	2024-08-01
19619	101	2	2024-11-03
19620	252	3	2024-10-10
19621	389	3	2024-03-07
19622	42	3	2024-06-11
19623	211	3	2024-08-30
19624	196	1	2024-11-19
19626	464	2	2024-07-26
19627	229	2	2024-02-14
19628	194	2	2024-12-11
19629	129	2	2024-10-31
19630	211	2	2024-09-19
19631	439	1	2024-03-14
19632	14	3	2024-05-13
19633	457	2	2024-03-15
19634	145	2	2024-12-20
19635	455	1	2024-03-04
19636	313	2	2024-08-20
19637	475	3	2024-03-11
19638	156	3	2024-02-22
19639	275	1	2024-03-06
19640	256	2	2024-06-23
19641	476	3	2024-03-01
19642	180	2	2024-12-13
19643	381	3	2024-10-13
19644	480	1	2024-02-08
19645	455	3	2024-12-27
19646	498	2	2024-05-05
19647	49	3	2024-05-11
19648	338	2	2024-09-10
19649	55	1	2024-07-03
19650	148	3	2024-11-01
19651	48	1	2024-02-27
19652	19	2	2024-10-01
19653	4	1	2024-03-05
19654	63	2	2024-11-15
19655	10	3	2024-02-04
19656	344	3	2024-07-18
19657	291	3	2024-12-10
19658	62	2	2024-12-03
19659	349	1	2024-11-30
19660	475	1	2024-05-24
19661	267	1	2024-06-19
19663	224	2	2024-08-10
19664	404	3	2024-10-07
19666	10	1	2024-09-20
19668	118	3	2024-07-21
19669	179	2	2024-05-22
19670	223	3	2024-10-10
19671	201	2	2024-02-01
19672	259	1	2024-12-27
19673	108	2	2024-05-03
19674	200	3	2024-08-03
19675	290	3	2024-10-21
19676	120	1	2024-02-08
19678	148	3	2024-12-21
19680	66	2	2024-07-06
19681	211	3	2024-05-10
19682	340	2	2024-03-10
19683	251	2	2024-02-26
19684	428	3	2024-09-23
19685	229	2	2024-07-13
19686	459	3	2024-03-11
19687	328	1	2024-08-04
19688	298	2	2024-12-22
19689	281	2	2024-07-11
19690	218	2	2024-11-29
19693	236	3	2024-11-07
19694	443	1	2024-07-15
19695	142	1	2024-11-03
19696	156	1	2024-10-13
19697	161	2	2024-12-06
19698	498	3	2024-07-31
19699	440	3	2024-10-13
19700	89	2	2024-02-28
19701	241	3	2024-05-11
19702	51	3	2024-02-03
19703	276	2	2024-08-02
19704	130	3	2024-10-15
19705	52	3	2024-12-26
19706	100	3	2024-10-14
19707	498	3	2024-12-15
19708	358	1	2024-10-19
19709	101	2	2024-06-05
19710	119	2	2024-02-22
19711	69	2	2024-09-13
19712	213	1	2024-09-20
19713	198	2	2024-03-10
19714	151	2	2024-12-14
19715	217	2	2024-04-16
19717	462	2	2024-12-25
19718	199	3	2024-02-01
19719	332	3	2024-03-06
19720	5	3	2024-02-29
19721	113	3	2024-09-20
19722	384	3	2024-11-26
19723	160	1	2024-11-14
19724	468	1	2024-03-29
19725	57	1	2024-04-02
19726	384	1	2024-10-22
19727	133	1	2024-03-21
19728	46	2	2024-02-23
19729	401	2	2024-02-17
19730	492	2	2024-03-16
19731	411	2	2024-07-30
19732	210	1	2024-06-03
19733	42	1	2024-08-29
19735	266	2	2024-04-01
19736	261	1	2024-02-05
19739	411	2	2024-05-02
19741	168	2	2024-07-29
19743	10	2	2024-07-18
19745	317	3	2024-12-20
19746	158	3	2024-04-23
19747	108	2	2024-10-31
19748	50	2	2024-09-14
19749	341	1	2024-02-17
19750	334	2	2024-12-14
19751	190	1	2024-08-25
19752	185	3	2024-08-01
19753	430	2	2024-02-29
19754	305	2	2024-08-21
19755	447	2	2024-07-09
19756	322	2	2024-09-12
19757	364	1	2024-06-08
19758	157	3	2024-09-13
19759	477	2	2024-06-13
19760	18	3	2024-11-17
19761	28	2	2024-05-25
19762	468	2	2024-08-15
19763	144	3	2024-09-02
19764	260	2	2024-10-23
19765	119	3	2024-05-15
19767	370	1	2024-08-14
19768	267	2	2024-05-22
19769	47	3	2024-09-05
19770	320	1	2024-04-11
19771	163	1	2024-07-11
19772	74	1	2024-03-12
19773	202	2	2024-07-08
19774	108	1	2024-05-06
19775	484	2	2024-05-10
19776	368	3	2024-10-28
19778	247	3	2024-02-02
19779	183	3	2024-09-03
19780	382	2	2024-07-18
19781	403	1	2024-04-04
19782	133	3	2024-11-21
19783	192	3	2024-06-25
19784	112	1	2024-03-12
19785	262	1	2024-10-26
19786	360	3	2024-08-02
19787	182	2	2024-11-16
19790	173	3	2024-12-27
19791	85	3	2024-12-23
19792	221	3	2024-07-22
19793	226	1	2024-11-07
19794	356	2	2024-11-20
19795	264	1	2024-05-12
19796	278	2	2024-08-15
19797	404	3	2024-10-22
19798	496	2	2024-03-31
19799	230	2	2024-08-07
19800	223	1	2024-10-08
19801	200	2	2024-03-17
19802	196	3	2024-12-15
19803	82	1	2024-02-16
19804	238	1	2024-02-10
19805	29	1	2024-11-11
19806	186	2	2024-09-01
19807	404	2	2024-05-19
19808	51	3	2024-05-04
19809	491	3	2024-07-05
19810	271	2	2024-04-02
19811	251	2	2024-05-11
19812	425	2	2024-04-14
19813	147	2	2024-05-12
19814	443	3	2024-10-28
19815	138	1	2024-09-03
19816	14	2	2024-12-10
19817	243	3	2024-07-30
19818	403	1	2024-03-22
19819	236	2	2024-03-30
19820	375	1	2024-02-10
19822	38	1	2024-06-14
19823	24	1	2024-04-22
19824	360	1	2024-05-30
19825	281	2	2024-11-10
19826	243	3	2024-12-25
19827	184	2	2024-04-04
19828	447	2	2024-06-15
19829	178	1	2024-06-11
19830	470	3	2024-02-23
19831	417	2	2024-11-04
19832	126	1	2024-08-18
19833	31	1	2024-07-09
19834	416	2	2024-03-29
19835	490	3	2024-04-09
19836	457	1	2024-04-16
19837	246	3	2024-09-07
19838	483	3	2024-02-24
19840	431	3	2024-12-22
19841	432	1	2024-12-19
19843	465	2	2024-11-06
19844	222	3	2024-04-13
19845	374	3	2024-06-13
19846	366	3	2024-08-27
19847	379	1	2024-04-17
19849	300	3	2024-02-16
19850	82	1	2024-03-22
19851	106	1	2024-10-06
19852	302	2	2024-03-03
19855	354	1	2024-07-01
19856	132	2	2024-03-24
19857	133	2	2024-04-26
19858	418	1	2024-06-03
19860	177	3	2024-04-10
19861	399	3	2024-11-10
19863	6	1	2024-06-25
19864	140	3	2024-09-16
19865	324	2	2024-05-08
19866	312	3	2024-11-01
19867	286	1	2024-12-20
19868	484	2	2024-10-26
19869	285	1	2024-09-25
19870	174	3	2024-12-18
19871	494	3	2024-08-06
19872	273	3	2024-08-31
19873	197	3	2024-11-03
19874	371	1	2024-09-29
19875	152	3	2024-06-22
19876	483	2	2024-08-23
19877	236	2	2024-09-05
19878	343	1	2024-04-08
19879	362	3	2024-03-12
19880	111	1	2024-12-18
19881	274	1	2024-05-16
19882	133	2	2024-11-09
19883	114	2	2024-07-04
19884	107	2	2024-07-01
19885	428	1	2024-03-10
19886	477	1	2024-07-25
19887	441	3	2024-09-14
19888	30	1	2024-04-15
19889	426	3	2024-03-13
19891	192	2	2024-11-15
19892	289	2	2024-03-30
19893	106	3	2024-03-01
19894	449	3	2024-03-05
19895	16	2	2024-10-30
19896	17	3	2024-10-22
19897	368	1	2024-04-03
19898	158	3	2024-07-16
19899	175	3	2024-11-02
19900	179	1	2024-12-08
19901	338	2	2024-06-03
19902	328	2	2024-08-08
19903	393	1	2024-11-24
19904	5	1	2024-02-24
19905	352	2	2024-11-12
19906	356	3	2024-08-12
19907	267	3	2024-06-27
19908	29	1	2024-08-10
19909	320	1	2024-11-20
19910	338	3	2024-02-17
19911	290	3	2024-06-05
19912	262	3	2024-05-21
19913	108	1	2024-08-16
19914	3	3	2024-06-04
19916	363	2	2024-02-29
19917	338	1	2024-05-16
19918	117	1	2024-03-27
19919	479	2	2024-02-25
19920	453	2	2024-07-14
19922	383	1	2024-07-06
19923	381	2	2024-11-13
19924	500	3	2024-09-16
19925	30	3	2024-05-01
19926	467	1	2024-03-27
19927	176	3	2024-11-24
19928	205	3	2024-10-06
19929	59	1	2024-11-05
19931	162	1	2024-05-23
19932	389	1	2024-06-10
19933	307	2	2024-11-15
19934	298	1	2024-03-06
19935	152	3	2024-07-21
19936	374	3	2024-09-07
19937	126	1	2024-08-14
19939	170	3	2024-04-25
19940	255	3	2024-05-02
19941	395	1	2024-03-26
19942	223	3	2024-10-08
19943	17	3	2024-09-14
19944	95	3	2024-11-22
19945	104	1	2024-04-26
19949	103	1	2024-11-01
19950	254	1	2024-02-20
19951	493	2	2024-11-05
19952	491	3	2024-07-02
19953	376	3	2024-11-20
19954	481	1	2024-03-08
19955	67	1	2024-08-13
19956	62	2	2024-09-06
19957	436	1	2024-08-19
19958	187	3	2024-07-24
19959	57	1	2024-07-05
19960	29	3	2024-04-17
19961	317	1	2024-06-03
19962	339	1	2024-10-10
19963	92	3	2024-04-07
19964	445	2	2024-04-25
19967	254	1	2024-12-21
19968	330	3	2024-02-25
19969	204	1	2024-02-28
19970	34	1	2024-05-10
19971	197	3	2024-11-10
19974	255	3	2024-09-03
19975	124	3	2024-07-19
19976	22	2	2024-05-12
19977	359	1	2024-05-14
19978	46	3	2024-10-11
19979	10	3	2024-09-16
19980	275	2	2024-03-23
19982	431	2	2024-09-21
19983	181	3	2024-11-17
19984	231	3	2024-11-22
19986	457	2	2024-10-17
19987	438	2	2024-09-01
19988	303	3	2024-07-05
19989	343	1	2024-10-31
19990	28	3	2024-05-26
19991	264	2	2024-06-30
19994	32	2	2024-08-20
19995	355	1	2024-02-26
19996	258	3	2024-03-01
19997	197	2	2024-02-05
19998	207	1	2024-10-07
19999	215	3	2024-03-23
20000	477	2	2024-03-04
\.


--
-- TOC entry 3236 (class 2606 OID 24794)
-- Name: department department_dept_name_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_dept_name_key UNIQUE (dept_name);


--
-- TOC entry 3238 (class 2606 OID 24792)
-- Name: department department_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_pkey PRIMARY KEY (department_id);


--
-- TOC entry 3242 (class 2606 OID 24804)
-- Name: employee_contract employee_contract_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.employee_contract
    ADD CONSTRAINT employee_contract_pkey PRIMARY KEY (contract_id);


--
-- TOC entry 3244 (class 2606 OID 24809)
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (employee_id);


--
-- TOC entry 3246 (class 2606 OID 24829)
-- Name: office office_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.office
    ADD CONSTRAINT office_pkey PRIMARY KEY (office_id);


--
-- TOC entry 3240 (class 2606 OID 24799)
-- Name: role role_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (role_id);


--
-- TOC entry 3250 (class 2606 OID 24844)
-- Name: shift_assignment shift_assignment_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.shift_assignment
    ADD CONSTRAINT shift_assignment_pkey PRIMARY KEY (assignment_id);


--
-- TOC entry 3248 (class 2606 OID 24839)
-- Name: shift shift_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.shift
    ADD CONSTRAINT shift_pkey PRIMARY KEY (shift_id);


--
-- TOC entry 3252 (class 2606 OID 24862)
-- Name: shift_assignment unique_assignment; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.shift_assignment
    ADD CONSTRAINT unique_assignment UNIQUE (employee_id, shift_id, work_date);


--
-- TOC entry 3253 (class 2606 OID 24820)
-- Name: employee employee_contract_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_contract_id_fkey FOREIGN KEY (contract_id) REFERENCES public.employee_contract(contract_id);


--
-- TOC entry 3254 (class 2606 OID 24810)
-- Name: employee employee_department_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_department_id_fkey FOREIGN KEY (department_id) REFERENCES public.department(department_id);


--
-- TOC entry 3255 (class 2606 OID 24815)
-- Name: employee employee_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.role(role_id);


--
-- TOC entry 3256 (class 2606 OID 24830)
-- Name: office office_department_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.office
    ADD CONSTRAINT office_department_id_fkey FOREIGN KEY (department_id) REFERENCES public.department(department_id);


--
-- TOC entry 3257 (class 2606 OID 24845)
-- Name: shift_assignment shift_assignment_employee_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.shift_assignment
    ADD CONSTRAINT shift_assignment_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES public.employee(employee_id);


--
-- TOC entry 3258 (class 2606 OID 24850)
-- Name: shift_assignment shift_assignment_shift_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.shift_assignment
    ADD CONSTRAINT shift_assignment_shift_id_fkey FOREIGN KEY (shift_id) REFERENCES public.shift(shift_id);


-- Completed on 2026-03-17 12:53:45 UTC

--
-- PostgreSQL database dump complete
--

\unrestrict jlZ3tQJtZGbkSjfgw3s7DmgJ6hSMbQMLwanj1HuCjCjtmvZvHVgqlzMTyIiZPBr

