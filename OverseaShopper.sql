
/* Set context to Master  */

		USE Master;
		

		GO

/* Set the Context to the xxxxxx Database so the tables will appear in the xxxx database instead of Master  */
	-- If the overseasPersonalShopper database exists, delete it.  
		IF EXISTS (SELECT * FROM Master.dbo.sysdatabases WHERE NAME = 'OverseasPersonalShopper')
		DROP DATABASE OverseasPersonalShopper;
           
	GO

	
/* Create the database  */
		CREATE DATABASE OverseasPersonalShopper;
		GO
	-- CREATE TABLES IN THE ONLINE MUSIC DATABASE           
		USE OverseasPersonalShopper;

----------------------------------------------------------------
--              Create the Vendor table                      --
----------------------------------------------------------------
-- schema: Vendor( VendorID, VendorName)
--          NOT NULL VendorName
	    CREATE TABLE tblVendor
		( 
			VendorID		INT				IDENTITY(10001,	1)	PRIMARY KEY,
			VendorName		VARCHAR(128)    NOT NULL
		);


		GO

----------------------------------------------------------------
--       Insert a data element into the Vendor able          --
---------------------------------------------------------------
		INSERT INTO tblVendor VALUES
		('Macys'	),
		('Costco'	),
		('CoachOutlets'	),
		('KieHLs'	),
		('Target'	),
		('MKOutlets'	),
		('ToryBurch'	),
		('AdidasOutlets'	),
		('SkechersOutlets'	),
		('TommyOutlets'	),
		('Asics'	),
		('BodyShop'	),
		('Swarovski'	);
	
GO

	SELECT * FROM tblVendor;
----------------------------------------------
--			Create the PRODUCTS table			--
----------------------------------------------
-- Schema: Products (PK: ProductID, ProductName, Brand, Category)
-- ProductName	NOT NULL
-- Brand		NOT NULL
-- Category		NOT NULL

	CREATE TABLE tblProducts
	(
		ProductID		INT				PRIMARY KEY,
		ProductName		VARCHAR(256)	NOT NULL,
		Category		VARCHAR(128)	NOT NULL,
		Brand			VARCHAR(128)	NOT NULL,
	);
	GO

----------------------------------------------------------------
--       Insert a data element into the Products table          --
----------------------------------------------------------------
	INSERT INTO tblProducts VALUES
	(	1000001	,  'Baby cream'	,                           'BABY FOOD'	,         'California Baby'	),
	(	1000002	,  'Best rice noodles on earth'	,           'BABY FOOD'	,         'Earths Best'	),
	(	2000001	,  'Coach Mens Brown Print Logo Wallet',    'BAGS'	,             'Coach'	),
	(	2000002	,  'Coach pure black with clip wallet',     'BAGS'	,             'Coach'	),
	(	2000003	,  'Coach wine red clutch',                 'BAGS'	,             'Coach'	),
	(	2000004	,  'Coach new design single layer wallet',  'BAGS'	,             'Coach'	),
	(	2000005	,  'Coach Black Dumpling Bag'	,           'BAGS'	,             'Coach'	),
	(	2000006	,  'Coach wine red clutch'	,               'BAGS'	,             'Coach'	),
	(	2000007	,  'Coach double-layer red-brimmed clutch', 'BAGS'	,             'Coach'	),
	(	2000008	,  'Coach light brown zipper tote bag'	,	'BAGS'	,             'Coach'	),
	(	2000011	,  'MK long wallet'	,                       'BAGS'	,             'Michael Kors'	),
	(	2000012	,  'MK wine red small handbag'	,           'BAGS'	,             'Michael Kors'	),
	(	2000013	,  'Toryburch khaki chain tote bag',        'BAGS'	,             'Tory Burch'	),
	(	3000001	,  'Adidas ladies casual shoes'	,           'CLOTHING'	,         'Adidas'	),
	(	3000002	,  'Yaseshi mens shoes'	,                   'CLOTHING'	,         'Asics'	),
	(	3000003	,  'Coach wine red star scarf'	,           'CLOTHING'	,         'Coach'	),
	(	3000004	,  'Coach Womens Short Trench Coat L',      'CLOTHING'	,         'Coach'	),
	(	3000005	,  '32heat mens thermal underwear',         'CLOTHING'	,         '32 Heat'	),
	(	3000006	,  'Mens black and white panda shoes'	,   'CLOTHING'	,         'Skechers'	),
	(	3000007	,  'Tommy round neck black sweater L'	,   'CLOTHING',           'Tommy'	),
	(	3000008	,  'Ms. Tommy V-neck sweater S'	,           'CLOTHING',           'Tommy'	),
	(	3000009	,  'Tommy short sleeve POLO'	,           'CLOTHING'	,         'Tommy'	),
	(	3000010	,  'Tommy Mens Down Jacket'	,               'CLOTHING'	,         'Tommy'	),
	(	4000001	,  'Ginger shampoo'	,                       'COSMETIC PRODUCTS'	, 'Body Shop'	),
	(	4000002	,  'Estee Lauder Gift Box Warm Color'	,   'COSMETIC PRODUCTS'	, 'Estee Lauder'	),
	(	4000003	,  'Estee Lauder Lipstick Set'	,           'COSMETIC PRODUCTS'	, 'Estee Lauder'	),
	(	4000004	,  'Estee Lauder Eye Cream Essentials',     'COSMETIC PRODUCTS'	, 'Estee Lauder'	),
	(	4000005	,  'Estee Lauder Large Powder Water',       'COSMETIC PRODUCTS'	, 'Estee Lauder'),
	(	4000006	,  'Kiehls Spot Essence'	,               'COSMETIC PRODUCTS'	, 'KieHL-s'	),
	(	4000007	,  'Kiehls Cream Essence Set'	,           'COSMETIC PRODUCTS',  'KieHL-s'	),
	(	5000001	,  'Super B'	,                           'HEALTH PRODUCTS'	, 'NatureMade'),
	(	5000002	,  'Gummy bear'	,                           'HEALTH PRODUCTS'	, 'Lil Critters'),
	(	5000003	,  'Lutein'	,                               'HEALTH PRODUCTS'	, 'Trunature'),
	(	5000004	,  'GNC deep sea fish oil'	,               'HEALTH PRODUCTS'	, 'GNC'	),
	(	5000005	,  'Melatonin'	,                           'HEALTH PRODUCTS'	, 'Natrol'	),
	(	5000006	,  'Red bottle'	,                           'HEALTH PRODUCTS'	, 'Move Free'),
	(	5000007	,  'Abcuts slimming capsule'	,           'HEALTH PRODUCTS'	, 'Abcuts'	),
	(	6000001	,  'Swarovski gradient swan'	,           'JEWELRY'	,         'Swarovski');
	 
	GO

	 SELECT * FROM tblProducts ;

----------------------------------------------
--		   Create the PEOPLE table	    --
----------------------------------------------
--Schema: PEOPLE(PK:PEOPLEID, WECHATID, LASTNAME, FIRSTNAME, PHONE_NUMBER, ADDRESS_PROVID, ADDRESS_CITY, ADDRESS_DETAILED)
-- WeChatID		UNIQUE NOT NULL
-- LastName		NOT NULL
-- FirstName	NOT NULL


CREATE TABLE tblPeople --Create the People Table
(	PeopleID			INT					PRIMARY KEY			,
	WeChatID			VARCHAR(128)		NOT NULL			, 
	LastName			VARCHAR(128)		NOT NULL			,
	FirstName			VARCHAR(128)		NOT NULL			,
	Phone_Number		INT										,
	Address_ProvID		VARCHAR(128)							,
	Address_City		VARCHAR(128)							,
	Address_Detailed	VARCHAR(128)							
);

GO

/*------------------------------------------------------------*/
/*         Insert data into the PEOPLE table            */
/* -----------------------------------------------------------*/

INSERT INTO tblPeople VALUES

(	910001	,'	Yang100000	','	Yang	','	Xiaoxiao',	1385697162	,'	Anhui	','	Hefei	','	Fairview Avenue	'),
(	910002	,'	Yu100001	','	Yu		','	Shirong	',	1385650296	,'	Anhui	','	Maanshan	','	Administrative Service Center	'),
(	910003	,'	Chang100002	','	Chang	','	Mingfang',	1360567369	,'	Anhui	','	Fuyang	','	Taihe Middle School	'),
(	910004	,'	Zhang100003	','	Zhang	','	Ying	',	1810562175	,'	Anhui	','	Tongling	','	Guantang Community	'),
(	910005	,'	Qu100004	','	Qu		','	Bo		',	1351551942	,'	Anhui	','	Hefei	','	Prosperous Avenue	'),
(	210001	,'	Chen100005	','	Chen	','	Liang	',	1372103086	,'	Anhui	','	Hefei	','	Easttotheroad	'),
(	210002	,'	Wang100006	','	Wang	','	Yuanchun',	1395511769	,'	Anhui	','	Hefei	','	Xiuning Road	'),
(	210003	,'	Yuan100007	','	Yuan	','	Ling	',	1396667721	,'	Anhui	','	Hefei	','	West Anhui Road	'),
(	210004	,'	Zhang100008	','	Zhang	','	Jinjin	',	1865557010	,'	Anhui	','	Maanshan	','	Huanfeng Town	'),
(	210005	,'	Du100010	','	Du		','	Xiaoyan	',	1396543168	,'	Anhui	','	Maanshan	','	Population Building	'),
(	210006	,'	Wang100011	','	Wang	','	Beibei	',	1386580352	,'	Anhui	','	Hefei	','	Changqing Street	'),
(	210007	,'	Xu100012	','	Xu		','	Huan	',	1871509424	,'	Anhui	','	Hefei	','	Rong Chenglu	'),
(	210008	,'	Li100013	','	Li		','	Jinsi	',	1370451478	,'	Guangdong	','	Huizhou	','	Daya Bay	'),
(	210009	,'	Wang100014	','	Wang	','	Qing	',	1396632579	,'	Anhui	','	Hefei	','	Winbond Fanhua	'),
(	210010	,'	Xu100015	','	Xu		','	Jingjing',	1895651945	,'	Anhui	','	Hefei	','	Yungu Road	'),
(	210011	,'	Zheng100016	','	Zheng	','	Lamei	',	1521243659	,'	Anhui	','	Hefei	','	Mingcheng Qingyuan	'),
(	210012	,'	Shi100017	','	Shi		','	Lei		',	1391159566	,'	Beijing	','	Beijing	','	Xunzifang Road	'),
(	110001	,'	Zhang100018	','	Zhang	','	Wenqing	',	1505693356	,'	Anhui	','	Hefei	','	Feidong New Town	'),
(	110002	,'	Liu100019	','	Liu		','	Liu		',	1385652780	,'	Anhui	','	Maanshan	','	Huanfeng North Road	'),
(	110003	,'	Zhou100020	','	Zhou	','	Shun	',	1537532031	,'	Anhui	','	Hefei	','	Anhui Medical University	'),
(	110004	,'	Sun100021	','	Sun		','	Yaqi	',	1520191729	,'	Guangdong	','	Guangzhou	','	Tonghe Litingju	'),
(	110005	,'	Zhang100023	','	Zhang	','	Xiang	',	1525297629	,'	Jiangsu	','	Suzhou	','	Shimao Butterfly Lake	'),
(	110006	,'	Zhang100024	','	Zhang	','	Chao	',	1585511271	,'	Anhui	','	Hefei','	Xiyou Road	'),
(	110007	,'	Lee100025	','	Lee		','	Yaping	',	1342633485	,'	Beijing	','	Beijing	','	Balizhuang	'),
(	110008	,'	Yang100026	','	Yang	','	Xiaoyan	',	1338569231	,'	Anhui	','	Hefei	','	Qingyuan Road	'),
(	110009	,'	Jiang100027	','	Jiang	','	Man		',	1871508363	,'	Anhui	','	Hefei	','	Shangcheng International	'),
(	110010	,'	Miu100028	','	Miu		','	Li		',	1525551062	,'	Anhui	','	Hefei	','	Huafu Junyuan	'),
(	110011	,'	Hu100029	','	Hu		','	Xiang	',	1520985662	,'	Anhui	','	Hefei	','	Mengcheng North Road	'),
(	110012	,'	Xie100030	','	Xie		','	Qiushuang',	1585058627	,'	Jiangsu	','	Nanjing	','	Zhongshan East Road	'),
(	110013	,'	Zheng100031	','	Zheng	','	Liyuan	',	1885550566	,'	Anhui	','	Maanshan	','	Wangfu Longting	'),
(	110014	,'	Qian100032	','	Qian	','	Juan	',	1786838969	,'	Shanxi	','	Xian	','	Dongda Town	'),
(	110015	,'	Chen100005	','	Chen	','	Liang	',	1372103086	,'	Anhui	','	Hefei	','	Easttothe Road	'),
(	110016	,'	Wang100006	','	Wang	','	Yuanchun',	1395511769	,'	Anhui	','	Hefei	','	Xiuning Road	'),
(	110017	,'	Yuan100007	','	Yuan	','	Ling	',	1396667721	,'	Anhui	','	Hefei	','	WestAnhui Road	'),
(	110018	,'	Zhang100008	','	Zhang	','	Jinjin	',	1865557010	,'	Anhui	','	Maanshan	','	Huanfeng Town	'),
(	110019	,'	Du100010	','	Du		','	Xiaoyan	',	1396543168	,'	Anhui	','	Maanshan	','	Population Building	'),
(	110020	,'	Wang100011	','	Wang	','	Beibei	',	1386580352	,'	Anhui	','	Hefei	','	Changqing Street	'),
(	110021	,'	Xu100012	','	Xu		','	Huan	',	1871509424	,'	Anhui	','	Hefei	','	Rong Chenglu	');

GO

SELECT * FROM tblPeople;

--Create CUSTOMER Table
--Schema: Customer	(FK:CustomerID) 
--FK CustomerID REFERENCES tblPeople	


CREATE TABLE tblConsumers 
(	
	ConsumerID		INT			PRIMARY KEY
	CONSTRAINT		fk_ConsumerID		FOREIGN KEY(ConsumerID)	REFERENCES	tblPeople(PeopleID)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);
GO

INSERT INTO tblConsumers VALUES

(	110001),
(	110002),
(	110003),
(	110004),
(	110005),
(	110006),
(	110007),
(	110008),
(	110009),
(	110010),
(	110011),
(	110012),
(	110013),
(	110014),
(	110015),
(	110016),
(	110017),
(	110018),
(	110019),
(	110020),
(	110021);

SELECT * FROM tblConsumers;

--Create ClientsTable
--Schema: Client	(FK:ClientID) 
--FK ClientID REFERENCES tblPeople

CREATE TABLE tblClients
(	
	ClientID		INT			PRIMARY KEY
	CONSTRAINT		fk_ClientID	FOREIGN KEY(ClientID)	REFERENCES	tblPeople(PeopleID)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

GO

INSERT INTO tblClients VALUES

(	210001),
(	210002),
(	210003),
(	210004),
(	210005),
(	210006),
(	210007),
(	210008),
(	210009),
(	210010),
(	210011),
(	210012);

GO

SELECT* FROM tblClients;
------------------------------------------------
--  Create Employee Table
--  Schema: Employee	(FK:EmployeeID) 
--   FK EmployeeID REFERENCES tblPeople 
-------------------------------------------------

CREATE TABLE tblEmployees 
(	
	EmployeeID		INT				PRIMARY KEY
	CONSTRAINT		fk_EmployeeID	FOREIGN KEY(EmployeeID)	REFERENCES	tblPeople(PeopleID)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

GO

INSERT INTO tblEmployees VALUES

(	910001),
(	910002),
(	910003),
(	910004),
(	910005);

GO

SELECT * FROM tblEmployees;
----------------------------------------------
--			Create the ITEMS table			--
----------------------------------------------
-- Schema: Items (PK: SKU, ProductID)
-- FK		ProductID		REFERENCES		tblProducts
-------------------------------------------------------
	CREATE TABLE tblItems
	(
		SKU				INT				PRIMARY KEY,
		ProductID		INT				NOT NULL
		
		CONSTRAINT		fk_ProductID	FOREIGN KEY(ProductID)	REFERENCES	tblProducts(ProductID)
		ON DELETE CASCADE
		ON UPDATE CASCADE

	);
	GO



/*------------------------------------------------------------*/
/*         Insert data into the ITEMS table            */
/* -----------------------------------------------------------*/

	INSERT INTO tblItems VALUES
	(	100000001	,	4000002	),
	(	100000002	,	4000003	),
	(	100000003	,	4000007	),
	(	100000004	,	5000001	),
	(	100000005	,	5000002	),
	(	100000006	,	2000001	),
	(	100000007	,	3000005	),
	(	100000008	,	4000004	),
	(	100000009	,	4000006	),
	(	100000010	,	5000003	),
	(	100000011	,	5000004	),
	(	100000012	,	5000005	),
	(	100000013	,	5000006	),
	(	100000014	,	5000006	),
	(	100000015	,	5000007	),
	(	100000016	,	1000001	),
	(	100000017	,	2000002	),
	(	100000018	,	2000003	),
	(	100000019	,	2000004	),
	(	100000020	,	2000005	),
	(	100000021	,	2000003	),
	(	100000022	,	2000007	),
	(	100000023	,	2000003	),
	(	100000024	,	2000012	),
	(	100000025	,	2000013	),
	(	100000026	,	3000001	),
	(	100000027	,	3000004	),
	(	100000028	,	3000006	),
	(	100000029	,	3000007	),
	(	100000030	,	3000008	),
	(	100000031	,	3000009	),
	(	100000032	,	4000005	),
	(	100000033	,	5000007	),
	(	100000034	,	1000002	),
	(	100000035	,	2000008	),
	(	100000036	,	2000007	),
	(	100000037	,	2000011	),
	(	100000038	,	3000002	),
	(	100000039	,	3000003	),
	(	100000040	,	3000010	),
	(	100000041	,	4000001	),
	(	100000042	,	6000001	);



SELECT * FROM tblItems;


----------------------------------------------------------------
--              Create the Orders table                      --
----------------------------------------------------------------
-- schema: Orders( OrderID, SKU, VendorID, OrdeDate, OrderPrice, PaymentMethod, OrderMehod)
--                  Foreign key SKU reference tblItems   
--                  Foreign key VendorID reference VendID
--                  NOT NULL OrderPrice
--                  NOT NULL ProductID,VendorID
	CREATE TABLE tblOrders
	( 
		OrderID			INT				PRIMARY KEY								,
		SKU				INT				NOT NULL      REFERENCES     tblItems(SKU)	,  
		VendorID		INT             NOT NULL      REFERENCES     tblVendor(VendorID)	,
		OrderDate		DATE													,
		OrderPrice		INT             NOT NULL								,
		PaymentMethod	VARCHAR(128)											,
		OrderMethod		VARCHAR(128)											
	);

	GO


----------------------------------------------------------------
--       Insert a data element into the Orders table          --
----------------------------------------------------------------
	INSERT INTO tblOrders VALUES
	(	100001	,	100000001	,	10001	,'	2018-11-06	',	74	,'	MacysAmericanExpress'	,'	ONLINE'	),
	(	100002	,	100000002	,	10001	,'	2018-11-12	',	33	,'	MacysAmericanExpress'	,'	INSTORE'	),
	(	100003	,	100000003	,	10001	,'	2018-11-12	',	95	,'	MacysAmericanExpress'	,'	ONLINE'	),
	(	100004	,	100000004	,	10002	,'	2018-11-07	',	13	,'	CitiBankVisa'	,'	INSTORE'	),
	(	100005	,	100000005	,	10002	,'	2018-11-09	',	12	,'	CitiBankVisa'	,'	INSTORE'	),
	(	100006	,	100000006	,	10003	,'	2018-11-15	',	23	,'	CoachOutlets'	,'	INSTORE'	),
	(	100007	,	100000007	,	10002	,'	2018-11-17	',	7.5	,'	CitiBankVisa'	,'	INSTORE'	),
	(	100008	,	100000008	,	10001	,'	2018-11-16	',	106	,'	MacysAmericanExpress'	,'	ONLINE'	),
	(	100009	,	100000009	,	10004	,'	2018-11-11	',	68	,'	ChaseBankVisa'	,'	ONLINE'	),
	(	100010	,	100000010	,	10002	,'	2018-11-18	',	15	,'	CitiBankVisa'	,'	INSTORE'	),
	(	100011	,	100000011	,	10002	,'	2018-11-11	',	16	,'	CitiBankVisa'	,'	INSTORE'	),
	(	100012	,	100000012	,	10002	,'	2018-11-16	',	8.5	,'	CitiBankVisa'	,'	INSTORE'	),
	(	100013	,	100000013	,	10002	,'	2018-11-11	',	21.6	,'	CitiBankVisa'	,'	INSTORE'	),
	(	100014	,	100000013	,	10002	,'	2018-11-17	',	21.6	,'	CitiBankVisa'	,'	INSTORE'	),
	(	100015	,	100000015	,	10002	,'	2018-11-15	',	21	,'	CitiBankVisa'	,'	INSTORE'	),
	(	100016	,	100000016	,	10005	,'	2018-11-21	',	11	,'	Discover'	,'	INSTORE'	),
	(	100017	,	100000017	,	10003	,'	2018-11-22	',	42.5	,'	ChaseBankVisa'	,'	ONLINE'	),
	(	100018	,	100000018	,	10003	,'	2018-11-21	',	21	,'	ChaseBankVisa'	,'	ONLINE'	),
	(	100019	,	100000019	,	10003	,'	2018-11-24	',	57	,'	ChaseBankVisa'	,'	ONLINE'	),
	(	100020	,	100000020	,	10003	,'	2018-11-21	',	80	,'	ChaseBankVisa'	,'	ONLINE'	),
	(	100021	,	100000018	,	10003	,'	2018-11-23	',	21	,'	ChaseBankVisa'	,'	ONLINE'	),
	(	100022	,	100000022	,	10003	,'	2018-11-22	',	31	,'	ChaseBankVisa'	,'	ONLINE'	),
	(	100023	,	100000018	,	10003	,'	2018-11-24	',	21	,'	ChaseBankVisa'	,'	ONLINE'	),
	(	100024	,	100000024	,	10006	,'	2018-11-23	',	21	,'	ChaseBankVisa'	,'	ONLINE'	),
	(	100025	,	100000025	,	10007	,'	2018-11-23	',	247	,'	ChaseBankVisa'	,'	ONLINE'	),
	(	100026	,	100000026	,	10008	,'	2018-11-21	',	32	,'	MacysAmericanExpress'	,'	ONLINE'	),
	(	100027	,	100000027	,	10003	,'	2018-11-23	',	145.5	,'	ChaseBankVisa'	,'	INSTORE'	),
	(	100028	,	100000028	,	10009	,'	2018-11-24	',	48	,'	MacysAmericanExpress'	,'	INSTORE'	),
	(	100029	,	100000029	,	10010	,'	2018-11-21	',	26	,'	MacysAmericanExpress'	,'	INSTORE'	),
	(	100030	,	100000030	,	10010	,'	2018-11-24	',	28	,'	MacysAmericanExpress'	,'	INSTORE'	),
	(	100031	,	100000031	,	10010	,'	2018-11-22	',	16	,'	MacysAmericanExpress'	,'	INSTORE'	),
	(	100032	,	100000032	,	10001	,'	2018-11-24	',	29	,'	MacysAmericanExpress'	,'	INSTORE'	),
	(	100033	,	100000033	,	10002	,'	2018-11-24	',	42	,'	CitiBankVisa'	,'	INSTORE'	),
	(	100034	,	100000034	,	10005	,'	2018-11-29	',	8	,'	Discover'	,'	ONLINE'	),
	(	100035	,	100000035	,	10003	,'	2018-11-28	',	77	,'	ChaseBankVisa'	,'	ONLINE'	),
	(	100036	,	100000036	,	10003	,'	2018-11-30	',	90.5	,'	ChaseBankVisa'	,'	ONLINE'	),
	(	100037	,	100000037	,	10006	,'	2018-11-25	',	41	,'	ChaseBankVisa'	,'	ONLINE'	),
	(	100038	,	100000038	,	10011	,'	2018-11-23	',	43	,'	MacysAmericanExpress'	,'	ONLINE'	),
	(	100039	,	100000039	,	10003	,'	2018-11-25	',	63	,'	CoachOutlets'	,'	ONLINE'	),
	(	100040	,	100000040	,	10010	,'	2018-11-22	',	119	,'	MacysAmericanExpress'	,'	ONLINE'	),
	(	100041	,	100000041	,	10012	,'	2018-11-26	',	8	,'	ChaseBankVisa'	,'	INSTORE'	),
	(	100042	,	100000042	,	10013	,'	2018-11-25	',	80	,'	ChaseBankVisa'	,'	INSTORE'	);


	SELECT * FROM tblOrders;
----------------------------------------------
--		   Create the SALES table	    --
----------------------------------------------
-- Schema:	Sales (PK: SaleID, SaleDate, ClientID, EmployeeID,SKU, SalePrice)
-- SaleDate		NOT NULL
-- FK			ClientID		REFERENCES		tblClient
-- FK			SKU				REFERENCES		tblItems
---FK           EmployeeID      REFERENCES      tblEmployees
-- SalePrice	NOT NULL

	CREATE TABLE tblSales
	(
		SaleID			INT				PRIMARY KEY,
		SaleDate		DATE			NOT NULL,
		ClientID		INT				FOREIGN KEY REFERENCES tblClients,
		EmployeeID		INT				FOREIGN KEY REFERENCES tblEmployees,
		SKU				INT				NOT NULL,
		SalePrice		INT				NOT NULL,
	CONSTRAINT		fk_SKU			FOREIGN KEY(SKU)		REFERENCES	tblItems(SKU)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	);

	GO


----------------------------------------------------------------
--       Insert a data element into the Sales table          --
----------------------------------------------------------------
	INSERT INTO tblSales VALUES

	(	20000001	,'	2018-11-06	',	210001	,	910001	,	100000001	,	128.6	),
	(	20000002	,'	2018-11-12	',	210002	,	910002	,	100000002	,	46.4	),
	(	20000003	,'	2018-11-12	',	210003	,	910003	,	100000003	,	112.9	),
	(	20000004	,'	2018-11-07	',	210004	,	910004	,	100000004	,	35.7	),
	(	20000005	,'	2018-11-09	',	210005	,	910005	,	100000005	,	28.6	),
	(	20000006	,'	2018-11-15	',	210006	,	910001	,	100000006	,	40.7	),
	(	20000007	,'	2018-11-17	',	210007	,	910002	,	100000007	,	21.4	),
	(	20000008	,'	2018-11-16	',	210008	,	910003	,	100000008	,	127.1	),
	(	20000009	,'	2018-11-11	',	210009	,	910004	,	100000009	,	82.1	),
	(	20000010	,'	2018-11-18	',	210010	,	910005	,	100000010	,	37.9	),
	(	20000011	,'	2018-11-11	',	210011	,	910001	,	100000011	,	41.1	),
	(	20000012	,'	2018-11-16	',	210012	,	910002	,	100000012	,	22.3	),
	(	20000013	,'	2018-11-11	',	210001	,	910003	,	100000013	,	37.1	),
	(	20000014	,'	2018-11-17	',	210002	,	910004	,	100000014	,	35.7	),
	(	20000015	,'	2018-11-15	',	210003	,	910005	,	100000015	,	45	),
	(	20000016	,'	2018-11-21	',	210004	,	910001	,	100000016	,	15.7	),
	(	20000017	,'	2018-11-22	',	210005	,	910002	,	100000017	,	66.4	),
	(	20000018	,'	2018-11-21	',	210006	,	910003	,	100000018	,	44.3	),
	(	20000019	,'	2018-11-24	',	210007	,	910004	,	100000019	,	68.6	),
	(	20000020	,'	2018-11-21	',	210008	,	910005	,	100000020	,	141.4	),
	(	20000021	,'	2018-11-23	',	210009	,	910001	,	100000021	,	42.9	),
	(	20000022	,'	2018-11-22	',	210010	,	910002	,	100000022	,	44.3	),
	(	20000023	,'	2018-11-24	',	210011	,	910003	,	100000023	,	49.3	),
	(	20000024	,'	2018-11-23	',	210012	,	910004	,	100000024	,	54.3	),
	(	20000025	,'	2018-11-23	',	210001	,	910005	,	100000025	,	342.9	),
	(	20000026	,'	2018-11-21	',	210002	,	910001	,	100000026	,	54.3	),
	(	20000027	,'	2018-11-23	',	210003	,	910002	,	100000027	,	198.6	),
	(	20000028	,'	2018-11-24	',	210004	,	910003	,	100000028	,	85.6	),
	(	20000029	,'	2018-11-21	',	210005	,	910004	,	100000029	,	45.4	),
	(	20000030	,'	2018-11-24	',	210006	,	910005	,	100000030	,	42.7	),
	(	20000031	,'	2018-11-22	',	210007	,	910001	,	100000031	,	35.7	),
	(	20000032	,'	2018-11-24	',	210008	,	910002	,	100000032	,	54.3	),
	(	20000033	,'	2018-11-24	',	210009	,	910003	,	100000033	,	92.9	),
	(	20000034	,'	2018-11-29	',	210010	,	910004	,	100000034	,	29.6	),
	(	20000035	,'	2018-11-28	',	210011	,	910005	,	100000035	,	120.7	),
	(	20000036	,'	2018-11-30	',	210012	,	910001	,	100000036	,	128.4	),
	(	20000037	,'	2018-11-25	',	210001	,	910002	,	100000037	,	85.6	),
	(	20000038	,'	2018-11-23	',	210002	,	910003	,	100000038	,	67	),
	(	20000039	,'	2018-11-25	',	210003	,	910004	,	100000039	,	88.6	),
	(	20000040	,'	2018-11-22	',	210004	,	910005	,	100000040	,	185.6	),
	(	20000041	,'	2018-11-26	',	210005	,	910001	,	100000041	,	26.4	),
	(	20000042	,'	2018-11-25	',	210006	,	910002	,	100000042	,	100	);

	Go

	SELECT* FROM tblSales;
----------------------------------------------
--		   Create the SHIPPINGS table	    --
----------------------------------------------
-- Schema:	Shippings (PK: ShipID, ShipDate, ShippingCompany, SKU, FreightCost, ConsumerID, ReceivingDate)
-- FK		SKU			REFERENCES	Items
-- FK		ConsumerID	REFERENCES	Consumer
--         ShipDate         NOT NULL
--         ShippingCompany  NOT NULL
--          FreightCost     NOT NULL

	CREATE TABLE tblShippings
	(
		ShipID				INT				PRIMARY KEY,
		ShipDate			DATE			NOT NULL,
		ShippingCompany		VARCHAR(128)	NOT NULL,
		SKU					INT				FOREIGN KEY REFERENCES tblItems,
		FreightCost			INT				NOT NULL,
		ConsumerID			INT				FOREIGN KEY REFERENCES tblConsumers,
		ReceivingDate		DATE
	);

GO
----------------------------------------------------------------
--       Insert a data element into the Shippings table          --
----------------------------------------------------------------
	INSERT INTO tblShippings VALUES
	(	30000001	,'	11/12/2018	','	yunhai express	',	100000001	,	22.0	,	110001	,'	11/28/2018	'),
	(	30000002	,'	11/12/2018	','	yunhai express	',	100000002	,	5.5	,	110002	,'	11/28/2018	'),
	(	30000003	,'	11/12/2018	','	yunhai express	',	100000003	,	6.0	,	110003	,'	11/26/2018	'),
	(	30000004	,'	11/12/2018	','	yunhai express	',	100000004	,	3.6	,	110004	,'	11/22/2018	'),
	(	30000005	,'	11/12/2018	','	yunhai express	',	100000005	,	7.6	,	110005	,'	11/27/2018	'),
	(	30000006	,'	11/18/2018	','	laoban express	',	100000006	,	2.4	,	110006	,'	12/8/2018	'),
	(	30000007	,'	11/18/2018	','	laoban express	',	100000007	,	2.6	,	110007	,'	12/9/2018	'),
	(	30000008	,'	11/18/2018	','	yunhai express	',	100000008	,	6.0	,	110008	,'	11/29/2018	'),
	(	30000009	,'	11/18/2018	','	laoban express	',	100000009	,	4.0	,	110009	,'	12/9/2018	'),
	(	30000010	,'	11/18/2018	','	yunhai express	',	100000010	,	1.7	,	110010	,'	12/3/2018	'),
	(	30000011	,'	11/18/2018	','	yunhai express	',	100000011	,	4.0	,	110011	,'	12/4/2018	'),
	(	30000012	,'	11/18/2018	','	laoban express	',	100000012	,	3.0	,	110012	,'	12/11/2018	'),
	(	30000013	,'	11/18/2018	','	yunhai express	',	100000013	,	3.3	,	110013	,'	12/12/2018	'),
	(	30000014	,'	11/18/2018	','	laoban express	',	100000014	,	5.0	,	110014	,'	12/5/2018	'),
	(	30000015	,'	11/18/2018	','	laoban express	',	100000015	,	7.0	,	110015	,'	11/28/2018	'),
	(	30000016	,'	11/24/2018	','	yunhai express	',	100000016	,	3.0	,	110016	,'	12/9/2018	'),
	(	30000017	,'	11/24/2018	','	laoban express	',	100000017	,	3.0	,	110017	,'	12/11/2018	'),
	(	30000018	,'	11/24/2018	','	laoban express	',	100000018	,	3.0	,	110018	,'	12/18/2018	'),
	(	30000019	,'	11/24/2018	','	laoban express	',	100000019	,	4.0	,	110019	,'	12/12/2018	'),
	(	30000020	,'	11/24/2018	','	laoban express	',	100000020	,	10.0	,	110020	,'	12/7/2018	'),
	(	30000021	,'	11/24/2018	','	laoban express	',	100000021	,	3.0	,	110021	,'	12/12/2018	'),
	(	30000022	,'	11/24/2018	','	laoban express	',	100000022	,	2.0	,	110001	,'	12/17/2018	'),
	(	30000023	,'	11/24/2018	','	yunhai express	',	100000023	,	5.0	,	110002	,'	12/17/2018	'),
	(	30000024	,'	11/24/2018	','	laoban express	',	100000024	,	2.0	,	110003	,'	12/15/2018	'),
	(	30000025	,'	11/24/2018	','	laoban express	',	100000025	,	10.0	,	110004	,'	12/14/2018	'),
	(	30000026	,'	11/24/2018	','	yunhai express	',	100000026	,	7.2	,	110005	,'	12/15/2018	'),
	(	30000027	,'	11/24/2018	','	laoban express	',	100000027	,	12.0	,	110006	,'	12/9/2018	'),
	(	30000028	,'	11/24/2018	','	laoban express	',	100000028	,	8.0	,	110007	,'	12/15/2018	'),
	(	30000029	,'	11/24/2018	','	laoban express	',	100000029	,	2.0	,	110008	,'	12/6/2018	'),
	(	30000030	,'	11/24/2018	','	yunhai express	',	100000030	,	3.0	,	110009	,'	12/18/2018	'),
	(	30000031	,'	11/24/2018	','	yunhai express	',	100000031	,	3.8	,	110010	,'	12/12/2018	'),
	(	30000032	,'	11/24/2018	','	laoban express	',	100000032	,	6.0	,	110011	,'	12/9/2018	'),
	(	30000033	,'	11/24/2018	','	laoban express	',	100000033	,	10.0	,	110012	,'	12/7/2018	'),
	(	30000034	,'	12/2/2018	','	laoban express	',	100000034	,	7.0	,	110013	,'	12/13/2018	'),
	(	30000035	,'	12/2/2018	','	laoban express	',	100000035	,	10.0	,	110014	,'	12/18/2018	'),
	(	30000036	,'	12/2/2018	','	laoban express	',	100000036	,	10.0	,	110015	,'	12/22/2018	'),
	(	30000037	,'	12/2/2018	','	laoban express	',	100000037	,	3.0	,	110016	,'	12/25/2018	'),
	(	30000038	,'	12/2/2018	','	laoban express	',	100000038	,	7.0	,	110017	,'	12/25/2018	'),
	(	30000039	,'	12/2/2018	','	laoban express	',	100000039	,	2.0	,	110018	,'	12/19/2018	'),
	(	30000040	,'	12/2/2018	','	laoban express	',	100000040	,	8.0	,	110019	,'	12/24/2018	'),
	(	30000041	,'	12/2/2018	','	laoban express	',	100000041	,	4.6	,	110020	,'	12/26/2018	'),
	(	30000042	,'	12/2/2018	','	laoban express	',	100000042	,	4.0	,	110021	,'	12/21/2018	');


	GO

	 SELECT * FROM tblShippings;
	 

	 -------------------------------------------------------------------------------------------------------------
	 --                                      Create Indexes 
	 -------------------------------------------------------------------------------------------------------------

	
	CREATE INDEX ndx_tblPeople_Name            ON tblPeople (FirstName, LastName); 
	CREATE INDEX ndx_tblProducts_Category      ON tblProducts (Category); 
    CREATE INDEX ndx_tblItems_ProductID        ON tblItems (ProductID );



	GO
-------------------------------------------------------------------------------------------------------------------
--                                           Business Query
-------------------------------------------------------------------------------------------------------------------


----  1. Business query: highest products sold

	SELECT COUNT(tblSales.SKU) AS '# OF SOLD', tblProducts.ProductID
	FROM tblSales
	JOIN tblItems		ON tblSales.SKU = tblItems.SKU
	JOIN tblProducts	ON tblProducts.ProductID = tblItems.ProductID
	GROUP BY tblProducts.ProductID
	ORDER BY '# OF SOLD' DESC
	;

	GO
	

----  2. Most Locations Sold to
	SELECT TBLPEOPLE.Address_City, COUNT(tblShippings.SKU) AS '# OF SHIPPINGS'
	FROM tblConsumers
	JOIN tblPeople		ON  tblPeople.PeopleID = tblConsumers.ConsumerID
	JOIN tblShippings	ON	tblShippings.ConsumerID = tblConsumers.ConsumerID
	GROUP BY tblPeople.Address_City
	ORDER BY '# OF SHIPPINGS' DESC;
		
	GO

----  3. Average Duration Time

SELECT DATEDIFF(DAY, tblShippings.ShipDate, tblShippings.ReceivingDate) AS Duration, 
		(SELECT AVG(Duration_Time)
		FROM (SELECT sku, DATEDIFF(DAY, ShipDate, ReceivingDate) AS Duration_Time
			FROM tblShippings) sp) Average
FROM	tblShippings
;
     GO

----  4. Most sold Brand

	SELECT COUNT(tblSales.SKU) AS '# OF SOLD', tblProducts.Brand
	FROM tblProducts
	JOIN tblItems		ON tblProducts.ProductID = tblItems.ProductID
	JOIN tblSales		ON tblSales.SKU = tblItems.SKU
	GROUP BY tblProducts.Brand
	ORDER BY '# OF SOLD' DESC
	;

	GO

----  5. Most sold Category

	SELECT COUNT(tblSales.SKU) AS '# OF SOLD', tblProducts.Category
	FROM tblProducts
	JOIN tblItems		ON tblProducts.ProductID = tblItems.ProductID
	JOIN tblSales		ON tblSales.SKU = tblItems.SKU
	GROUP BY tblProducts.Category
	ORDER BY '# OF SOLD' DESC
	;

	GO
	
----  6. Largest Sales of Employees

	SELECT MAX(tblSales.SalePrice) AS 'Largest Sale Amount', tblEmployees.EmployeeID
	FROM tblEmployees
	JOIN tblSales		ON tblEmployees.EmployeeID = tblSales.EmployeeID
	GROUP BY tblEmployees.EmployeeID
	ORDER BY 'Largest Sale Amount' DESC
	;

	GO
	

---- 7.  How many items and total order cost did each vendor provide ?
    
    SELECT COUNT(tblOrders.SKU) 'Total Items Ordered', SUM(tblOrders.OrderPrice) 'Total Order Price', tblVendor.VendorName
	FROM tblOrders
	JOIN tblVendor		ON tblVendor.VendorID = tblOrders.VendorID
	join tblItems		ON tblItems.SKU = tblOrders.SKU
	GROUP BY tblVendor.VendorName
	ORDER BY 'Total Order Price' DESC;

	GO
---- 8. What's the total freight cost by shipping company?
 
    SELECT shippingcompany, SUM(freightcost) 'Total Freight Cost'
    FROM	tblShippings
    GROUP BY ShippingCompany
;

     GO
---- 9. What's the most common payment method?

    SELECT tblOrders.PaymentMethod, COUNT(tblOrders.SKU)
    FROM	tblOrders
    JOIN	tblItems	ON tblItems.SKU = tblOrders.SKU
    JOIN	tblProducts		ON tblProducts.ProductID = tblItems.ProductID
    GROUP BY tblOrders.PaymentMethod;

	 GO
---- 10. What categories have high average product profit than the overall product profit.

	SELECT  tp.Category,
		   (SELECT AVG(SalePrice - OrderPrice - FreightCost) 
		    FROM    tblOrders     
	        JOIN    tblItems         ON   tblOrders.SKU       = tblItems.SKU
		    JOIN    tblProducts      ON   tblProducts.ProductID = tblItems.ProductID 
	        JOIN    tblSales         ON   tblOrders.SKU       = tblSales.SKU
	        JOIN    tblShippings     ON   tblOrders.SKU       = tblShippings.SKU) AverageProfit,
			 (SELECT AVG(SalePrice - OrderPrice - FreightCost) 
		    FROM    tblOrders     
	        JOIN    tblItems         ON   tblOrders.SKU       = tblItems.SKU
		    JOIN    tblProducts   p  ON   p.ProductID         = tblItems.ProductID 
	        JOIN    tblSales         ON   tblSales.SKU        = tblItems.SKU
	        JOIN    tblShippings     ON   tblShippings.SKU    = tblItems.SKU
			WHERE   tp.Category = p.Category) CategrorygAvg
	FROM   tblOrders     
	JOIN   tblItems         ON   tblOrders.SKU       = tblItems.SKU
	JOIN   tblProducts  tp  ON   tp.ProductID = tblItems.ProductID 
	JOIN   tblSales         ON   tblOrders.SKU       = tblSales.SKU
	JOIN   tblShippings     ON   tblOrders.SKU       = tblShippings.SKU
	WHERE  (SELECT AVG(SalePrice - OrderPrice - FreightCost) 
		    FROM    tblOrders     
	        JOIN    tblItems         ON   tblOrders.SKU       = tblItems.SKU
		    JOIN    tblProducts      ON   tblProducts.ProductID = tblItems.ProductID 
	        JOIN    tblSales         ON   tblOrders.SKU       = tblSales.SKU
	        JOIN    tblShippings     ON   tblOrders.SKU       = tblShippings.SKU)  < 
			 (SELECT AVG(SalePrice - OrderPrice - FreightCost) 
		    FROM    tblOrders     
	        JOIN    tblItems         ON   tblOrders.SKU       = tblItems.SKU
		    JOIN    tblProducts   p  ON   p.ProductID         = tblItems.ProductID 
	        JOIN    tblSales         ON   tblSales.SKU        = tblItems.SKU
	        JOIN    tblShippings     ON   tblShippings.SKU    = tblItems.SKU
			WHERE   tp.Category = p.Category)
	GROUP BY Category
	ORDER BY Category DESC;

