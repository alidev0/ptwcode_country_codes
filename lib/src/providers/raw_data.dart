const rawData = '''
Afghanistan	93	AF / AFG	29,121,286	647,500	20.65 Billion
Albania	355	AL / ALB	2,986,952	28,748	12.8 Billion
Algeria	213	DZ / DZA	34,586,184	2,381,740	215.7 Billion
American Samoa	1-684	AS / ASM	57,881	199	462.2 Million
Andorra	376	AD / AND	84,000	468	4.8 Billion
Angola	244	AO / AGO	13,068,161	1,246,700	124 Billion
Anguilla	1-264	AI / AIA	13,254	102	175.4 Million
Antarctica	672	AQ / ATA	0	14,000,000	
Antigua and Barbuda	1-268	AG / ATG	86,754	443	1.22 Billion
Argentina	54	AR / ARG	41,343,201	2,766,890	484.6 Billion
Armenia	374	AM / ARM	2,968,000	29,800	10.44 Billion
Aruba	297	AW / ABW	71,566	193	2.516 Billion
Australia	61	AU / AUS	21,515,754	7,686,850	1.488 Trillion
Austria	43	AT / AUT	8,205,000	83,858	417.9 Billion
Azerbaijan	994	AZ / AZE	8,303,512	86,600	76.01 Billion
Bahamas	1-242	BS / BHS	301,790	13,940	8.373 Billion
Bahrain	973	BH / BHR	738,004	665	28.36 Billion
Bangladesh	880	BD / BGD	156,118,464	144,000	140.2 Billion
Barbados	1-246	BB / BRB	285,653	431	4.262 Billion
Belarus	375	BY / BLR	9,685,000	207,600	69.24 Billion
Belgium	32	BE / BEL	10,403,000	30,510	507.4 Billion
Belize	501	BZ / BLZ	314,522	22,966	1.637 Billion
Benin	229	BJ / BEN	9,056,010	112,620	8.359 Billion
Bermuda	1-441	BM / BMU	65,365	53	5.6 Billion
Bhutan	975	BT / BTN	699,847	47,000	2.133 Billion
Bolivia	591	BO / BOL	9,947,418	1,098,580	30.79 Billion
Bosnia and Herzegovina	387	BA / BIH	4,590,000	51,129	18.87 Billion
Botswana	267	BW / BWA	2,029,307	600,370	15.53 Billion
Brazil	55	BR / BRA	201,103,330	8,511,965	2.19 Trillion
British Indian Ocean Territory	246	IO / IOT	4,000	60	
British Virgin Islands	1-284	VG / VGB	21,730	153	1.095 Billion
Brunei	673	BN / BRN	395,027	5,770	16.56 Billion
Bulgaria	359	BG / BGR	7,148,785	110,910	53.7 Billion
Burkina Faso	226	BF / BFA	16,241,811	274,200	12.13 Billion
Burundi	257	BI / BDI	9,863,117	27,830	2.676 Billion
Cambodia	855	KH / KHM	14,453,680	181,040	15.64 Billion
Cameroon	237	CM / CMR	19,294,149	475,440	27.88 Billion
Canada	1	CA / CAN	33,679,000	9,984,670	1.825 Trillion
Cape Verde	238	CV / CPV	508,659	4,033	1.955 Billion
Cayman Islands	1-345	KY / CYM	44,270	262	2.25 Billion
Central African Republic	236	CF / CAF	4,844,927	622,984	2.05 Billion
Chad	235	TD / TCD	10,543,464	1,284,000	13.59 Billion
Chile	56	CL / CHL	16,746,491	756,950	281.7 Billion
China	86	CN / CHN	1,330,044,000	9,596,960	9.33 Trillion
Christmas Island	61	CX / CXR	1,500	135	
Cocos Islands	61	CC / CCK	628	14	
Colombia	57	CO / COL	47,790,000	1,138,910	369.2 Billion
Comoros	269	KM / COM	773,407	2,170	658 Million
Cook Islands	682	CK / COK	21,388	240	183.2 Million
Costa Rica	506	CR / CRI	4,516,220	51,100	48.51 Billion
Croatia	385	HR / HRV	4,491,000	56,542	59.14 Billion
Cuba	53	CU / CUB	11,423,000	110,860	72.3 Billion
Curacao	599	CW / CUW	141,766	444	5.6 Billion
Cyprus	357	CY / CYP	1,102,677	9,250	21.78 Billion
Czech Republic	420	CZ / CZE	10,476,000	78,866	194.8 Billion
Democratic Republic of the Congo	243	CD / COD	70,916,439	2,345,410	18.56 Billion
Denmark	45	DK / DNK	5,484,000	43,094	324.3 Billion
Djibouti	253	DJ / DJI	740,528	23,000	1.459 Billion
Dominica	1-767	DM / DMA	72,813	754	495 Million
Dominican Republic	1-809, 1-829, 1-849	DO / DOM	9,823,821	48,730	59.27 Billion
East Timor	670	TL / TLS	1,154,625	15,007	6.129 Billion
Ecuador	593	EC / ECU	14,790,608	283,560	91.41 Billion
Egypt	20	EG / EGY	80,471,869	1,001,450	262 Billion
El Salvador	503	SV / SLV	6,052,064	21,040	24.67 Billion
Equatorial Guinea	240	GQ / GNQ	1,014,999	28,051	17.08 Billion
Eritrea	291	ER / ERI	5,792,984	121,320	3.438 Billion
Estonia	372	EE / EST	1,291,170	45,226	24.28 Billion
Ethiopia	251	ET / ETH	88,013,491	1,127,127	47.34 Billion
Falkland Islands	500	FK / FLK	2,638	12,173	164.5 Million
Faroe Islands	298	FO / FRO	48,228	1,399	2.32 Billion
Fiji	679	FJ / FJI	875,983	18,270	4.218 Billion
Finland	358	FI / FIN	5,244,000	337,030	259.6 Billion
France	33	FR / FRA	64,768,389	547,030	2.739 Trillion
French Polynesia	689	PF / PYF	270,485	4,167	5.65 Billion
Gabon	241	GA / GAB	1,545,255	267,667	19.97 Billion
Gambia	220	GM / GMB	1,593,256	11,300	896 Million
Georgia	995	GE / GEO	4,630,000	69,700	15.95 Billion
Germany	49	DE / DEU	81,802,257	357,021	3.593 Trillion
Ghana	233	GH / GHA	24,339,838	239,460	45.55 Billion
Gibraltar	350	GI / GIB	27,884	7	1.106 Billion
Greece	30	GR / GRC	11,000,000	131,940	243.3 Billion
Greenland	299	GL / GRL	56,375	2,166,086	2.16 Billion
Grenada	1-473	GD / GRD	107,818	344	811 Million
Guam	1-671	GU / GUM	159,358	549	4.6 Billion
Guatemala	502	GT / GTM	13,550,440	108,890	53.9 Billion
Guernsey	44-1481	GG / GGY	65,228	78	2.742 Billion
Guinea	224	GN / GIN	10,324,025	245,857	6.544 Billion
Guinea-Bissau	245	GW / GNB	1,565,126	36,120	880 Million
Guyana	592	GY / GUY	748,486	214,970	3.02 Billion
Haiti	509	HT / HTI	9,648,924	27,750	8.287 Billion
Honduras	504	HN / HND	7,989,415	112,090	18.88 Billion
Hong Kong	852	HK / HKG	6,898,686	1,092	272.1 Billion
Hungary	36	HU / HUN	9,982,000	93,030	130.6 Billion
Iceland	354	IS / ISL	308,910	103,000	14.59 Billion
India	91	IN / IND	1,173,108,018	3,287,590	1.67 Trillion
Indonesia	62	ID / IDN	242,968,342	1,919,440	867.5 Billion
Iran	98	IR / IRN	76,923,300	1,648,000	411.9 Billion
Iraq	964	IQ / IRQ	29,671,605	437,072	221.8 Billion
Ireland	353	IE / IRL	4,622,917	70,280	220.9 Billion
Isle of Man	44-1624	IM / IMN	75,049	572	4.076 Billion
Israel	972	IL / ISR	7,353,985	20,770	272.7 Billion
Italy	39	IT / ITA	60,340,328	301,230	2.068 Trillion
Ivory Coast	225	CI / CIV	21,058,798	322,460	28.28 Billion
Jamaica	1-876	JM / JAM	2,847,232	10,991	14.39 Billion
Japan	81	JP / JPN	127,288,000	377,835	5.007 Trillion
Jersey	44-1534	JE / JEY	90,812	116	5.1 Billion
Jordan	962	JO / JOR	6,407,085	92,300	34.08 Billion
Kazakhstan	7	KZ / KAZ	15,340,000	2,717,300	224.9 Billion
Kenya	254	KE / KEN	40,046,566	582,650	45.31 Billion
Kiribati	686	KI / KIR	92,533	811	173 Million
Kosovo	383	XK / XKX	1,800,000	10,887	7.15 Billion
Kuwait	965	KW / KWT	2,789,132	17,820	179.5 Billion
Kyrgyzstan	996	KG / KGZ	5,508,626	198,500	7.234 Billion
Laos	856	LA / LAO	6,368,162	236,800	10.1 Billion
Latvia	371	LV / LVA	2,217,969	64,589	30.38 Billion
Lebanon	961	LB / LBN	4,125,247	10,400	43.49 Billion
Lesotho	266	LS / LSO	1,919,552	30,355	2.457 Billion
Liberia	231	LR / LBR	3,685,076	111,370	1.977 Billion
Libya	218	LY / LBY	6,461,454	1,759,540	70.92 Billion
Liechtenstein	423	LI / LIE	35,000	160	5.113 Billion
Lithuania	370	LT / LTU	2,944,459	65,200	46.71 Billion
Luxembourg	352	LU / LUX	497,538	2,586	60.54 Billion
Macau	853	MO / MAC	449,198	254	51.68 Billion
North Macedonia	389	MK / MKD	2,062,294	25,333	10.65 Billion
Madagascar	261	MG / MDG	21,281,844	587,040	10.53 Billion
Malawi	265	MW / MWI	15,447,500	118,480	3.683 Billion
Malaysia	60	MY / MYS	28,274,729	329,750	312.4 Billion
Maldives	960	MV / MDV	395,650	300	2.27 Billion
Mali	223	ML / MLI	13,796,354	1,240,000	11.37 Billion
Malta	356	MT / MLT	403,000	316	9.541 Billion
Marshall Islands	692	MH / MHL	65,859	181	193 Million
Mauritania	222	MR / MRT	3,205,060	1,030,700	4.183 Billion
Mauritius	230	MU / MUS	1,294,104	2,040	11.9 Billion
Mayotte	262	YT / MYT	159,042	374	
Mexico	52	MX / MEX	112,468,855	1,972,550	1.327 Trillion
Micronesia	691	FM / FSM	107,708	702	339 Million
Moldova	373	MD / MDA	4,324,000	33,843	7.932 Billion
Monaco	377	MC / MCO	32,965	2	5.748 Billion
Mongolia	976	MN / MNG	3,086,918	1,565,000	11.14 Billion
Montenegro	382	ME / MNE	666,730	14,026	4.518 Billion
Montserrat	1-664	MS / MSR	9,341	102	
Morocco	212	MA / MAR	31,627,428	446,550	104.8 Billion
Mozambique	258	MZ / MOZ	22,061,451	801,590	14.67 Billion
Myanmar	95	MM / MMR	53,414,374	678,500	59.43 Billion
Namibia	264	NA / NAM	2,128,471	825,418	12.3 Billion
Nauru	674	NR / NRU	10,065	21	
Nepal	977	NP / NPL	28,951,852	140,800	19.34 Billion
Netherlands	31	NL / NLD	16,645,000	41,526	722.3 Billion
Netherlands Antilles	599	AN / ANT	136,197	960	
New Caledonia	687	NC / NCL	216,494	19,060	9.28 Billion
New Zealand	64	NZ / NZL	4,252,277	268,680	181.1 Billion
Nicaragua	505	NI / NIC	5,995,928	129,494	11.26 Billion
Niger	227	NE / NER	15,878,271	1,267,000	7.304 Billion
Nigeria	234	NG / NGA	154,000,000	923,768	502 Billion
Niue	683	NU / NIU	2,166	260	10.01 Million
North Korea	850	KP / PRK	22,912,177	120,540	28 Billion
Northern Mariana Islands	1-670	MP / MNP	53,883	477	733 Million
Norway	47	NO / NOR	5,009,150	324,220	515.8 Billion
Oman	968	OM / OMN	2,967,717	212,460	81.95 Billion
Pakistan	92	PK / PAK	184,404,791	803,940	236.5 Billion
Palau	680	PW / PLW	19,907	458	221 Million
Palestine	970	PS / PSE	3,800,000	5,970	6.641 Billion
Panama	507	PA / PAN	3,410,676	78,200	40.62 Billion
Papua New Guinea	675	PG / PNG	6,064,515	462,840	16.1 Billion
Paraguay	595	PY / PRY	6,375,830	406,750	30.56 Billion
Peru	51	PE / PER	29,907,003	1,285,220	210.3 Billion
Philippines	63	PH / PHL	99,900,177	300,000	272.2 Billion
Pitcairn	64	PN / PCN	46	47	
Poland	48	PL / POL	38,500,000	312,685	513.9 Billion
Portugal	351	PT / PRT	10,676,000	92,391	219.3 Billion
Puerto Rico	1-787, 1-939	PR / PRI	3,916,632	9,104	93.52 Billion
Qatar	974	QA / QAT	840,926	11,437	213.1 Billion
Republic of the Congo	242	CG / COG	3,039,126	342,000	14.25 Billion
Reunion	262	RE / REU	776,948	2,517	
Romania	40	RO / ROU	21,959,278	237,500	188.9 Billion
Russia	7	RU / RUS	140,702,000	17,100,000	2.113 Trillion
Rwanda	250	RW / RWA	11,055,976	26,338	7.7 Billion
Saint Barthelemy	590	BL / BLM	8,450	21	
Saint Helena	290	SH / SHN	7,460	410	
Saint Kitts and Nevis	1-869	KN / KNA	51,134	261	767 Million
Saint Lucia	1-758	LC / LCA	160,922	616	1.377 Billion
Saint Martin	590	MF / MAF	35,925	53	561.5 Million
Saint Pierre and Miquelon	508	PM / SPM	7,012	242	215.3 Million
Saint Vincent and the Grenadines	1-784	VC / VCT	104,217	389	742 Million
Samoa	685	WS / WSM	192,001	2,944	705 Million
San Marino	378	SM / SMR	31,477	61	1.866 Billion
Sao Tome and Principe	239	ST / STP	175,808	1,001	311 Million
Saudi Arabia	966	SA / SAU	25,731,776	1,960,582	718.5 Billion
Senegal	221	SN / SEN	12,323,252	196,190	15.36 Billion
Serbia	381	RS / SRB	7,344,847	88,361	43.68 Billion
Seychelles	248	SC / SYC	88,340	455	1.271 Billion
Sierra Leone	232	SL / SLE	5,245,695	71,740	4.607 Billion
Singapore	65	SG / SGP	4,701,069	693	295.7 Billion
Sint Maarten	1-721	SX / SXM	37,429	34	794.7 Million
Slovakia	421	SK / SVK	5,455,000	48,845	96.96 Billion
Slovenia	386	SI / SVN	2,007,000	20,273	46.82 Billion
Solomon Islands	677	SB / SLB	559,198	28,450	1.099 Billion
Somalia	252	SO / SOM	10,112,453	637,657	2.372 Billion
South Africa	27	ZA / ZAF	49,000,000	1,219,912	353.9 Billion
South Korea	82	KR / KOR	48,422,644	98,480	1.198 Trillion
South Sudan	211	SS / SSD	8,260,490	644,329	11.77 Billion
Spain	34	ES / ESP	46,505,963	504,782	1.356 Trillion
Sri Lanka	94	LK / LKA	21,513,990	65,610	65.12 Billion
Sudan	249	SD / SDN	35,000,000	1,861,484	52.5 Billion
Suriname	597	SR / SUR	492,829	163,270	5.009 Billion
Svalbard and Jan Mayen	47	SJ / SJM	2,550	62,049	
Swaziland	268	SZ / SWZ	1,354,051	17,363	3.807 Billion
Sweden	46	SE / SWE	9,555,893	449,964	552 Billion
Switzerland	41	CH / CHE	7,581,000	41,290	646.2 Billion
Syria	963	SY / SYR	22,198,110	185,180	64.7 Billion
Taiwan	886	TW / TWN	22,894,384	35,980	484.7 Billion
Tajikistan	992	TJ / TJK	7,487,489	143,100	8.513 Billion
Tanzania	255	TZ / TZA	41,892,895	945,087	31.94 Billion
Thailand	66	TH / THA	67,089,500	514,000	400.9 Billion
Togo	228	TG / TGO	6,587,239	56,785	4.299 Billion
Tokelau	690	TK / TKL	1,466	10	
Tonga	676	TO / TON	122,580	748	477 Million
Trinidad and Tobago	1-868	TT / TTO	1,228,691	5,128	27.13 Billion
Tunisia	216	TN / TUN	10,589,025	163,610	48.38 Billion
Turkey	90	TR / TUR	77,804,122	780,580	821.8 Billion
Turkmenistan	993	TM / TKM	4,940,916	488,100	40.56 Billion
Turks and Caicos Islands	1-649	TC / TCA	20,556	430	
Tuvalu	688	TV / TUV	10,472	26	38 Million
U.S. Virgin Islands	1-340	VI / VIR	108,708	352	
Uganda	256	UG / UGA	33,398,682	236,040	22.6 Billion
Ukraine	380	UA / UKR	45,415,596	603,700	175.5 Billion
United Arab Emirates	971	AE / ARE	4,975,593	82,880	390 Billion
United Kingdom	44	GB / GBR	62,348,447	244,820	2.49 Trillion
United States	1	US / USA	310,232,863	9,629,091	16.72 Trillion
Uruguay	598	UY / URY	3,477,000	176,220	57.11 Billion
Uzbekistan	998	UZ / UZB	27,865,738	447,400	55.18 Billion
Vanuatu	678	VU / VUT	221,552	12,200	828 Million
Vatican	379	VA / VAT	921	0	
Venezuela	58	VE / VEN	27,223,228	912,050	367.5 Billion
Vietnam	84	VN / VNM	89,571,130	329,560	170 Billion
Wallis and Futuna	681	WF / WLF	16,025	274	
Western Sahara	212	EH / ESH	273,008	266,000	
Yemen	967	YE / YEM	23,495,361	527,970	43.89 Billion
Zambia	260	ZM / ZMB	13,460,305	752,614	22.24 Billion
Zimbabwe	263	ZW / ZWE	11,651,858	390,580	10.48 Billion
''';
