
psql -U $POSTGRESQL_USER $POSTGRESQL_DATABASE <<'EOF'

CREATE TABLE CUSTOMER
(
   ID bigint,
   SSN char(25),
   NAME varchar(64),
   CONSTRAINT CUSTOMER_PK PRIMARY KEY(ID)
);

CREATE TABLE ADDRESS
(
   ID bigint,
   STREET char(25),
   ZIP char(10),
   CUSTOMER_ID bigint,
   CONSTRAINT ADDRESS_PK PRIMARY KEY(ID),
   CONSTRAINT CUSTOMER_FK FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER (ID)
);

INSERT INTO CUSTOMER (ID,SSN,NAME) VALUES (10, 'CST01002','Joseph Smith');
INSERT INTO CUSTOMER (ID,SSN,NAME) VALUES (11, 'CST01003','Nicholas Ferguson');
INSERT INTO CUSTOMER (ID,SSN,NAME) VALUES (12, 'CST01004','Jane Aire');

INSERT INTO ADDRESS (ID, STREET, ZIP, CUSTOMER_ID) VALUES (10, 'Main St', '12345', 10);

CREATE TABLE IF NOT EXISTS contact (first_name VARCHAR, last_name VARCHAR, company VARCHAR, lead_source VARCHAR, create_date DATE);
INSERT INTO contact VALUES ('Joe','Jackson','Red Hat','db',current_timestamp);
CREATE TABLE IF NOT EXISTS todo (id SERIAL PRIMARY KEY, task VARCHAR, completed INTEGER);
CREATE TABLE IF NOT EXISTS winelist (id SERIAL PRIMARY KEY, wine VARCHAR, price INTEGER, year INTEGER, gws INTEGER, ci VARCHAR, nbj INTEGER, productcode VARCHAR, pricebookentryid VARCHAR);
INSERT INTO winelist (id, wine, price,year, gws, ci, nbj) VALUES (42,'Abreu Vineyard, Las Posadas, Howell Mountain',275,2013,9802,'B',3) ON CONFLICT (id) DO NOTHING;
INSERT INTO winelist (id, wine, price,year, gws, ci, nbj) VALUES (91,'Araujo Estate, Eisele Vineyard Cabernet Sauvignon, Napa Valley',499,2015,9728,'C+',3) ON CONFLICT (id) DO NOTHING;
INSERT INTO winelist (id, wine, price,year, gws, ci, nbj) VALUES (99,'Aubert Wines, Ritchie Vineyard Chardonnay, White, Sonoma Coast',225,2015,9717,'A+',3) ON CONFLICT (id) DO NOTHING;
INSERT INTO winelist (id, wine, price,year, gws, ci, nbj) VALUES (88,'Bond Estates, Pluribus Red, Napa Valley', 410,2015,9729,'A+',3) ON CONFLICT (id) DO NOTHING;
INSERT INTO winelist (id, wine, price,year, gws, ci, nbj) VALUES (33,'Cayuse Vineyards, Bionic Frog Syrah, Walla Walla Valley',280,2010,9817,'A+',3) ON CONFLICT (id) DO NOTHING;
INSERT INTO winelist (id, wine, price,year, gws, ci, nbj) VALUES (69,'Chappellet, Pritchard Hill Cabernet Sauvignon, Napa Valley',239,2014,9748,'A+',3) ON CONFLICT (id) DO NOTHING;
INSERT INTO winelist (id, wine, price,year, gws, ci, nbj) VALUES (20,'Colgin Cellars, Tychson Hill Vineyard Cabernet Sauvignon, Napa Valley',355,2002,9848,'A+',4) ON CONFLICT (id) DO NOTHING;
INSERT INTO winelist (id, wine, price,year, gws, ci, nbj) VALUES (72,'Dalla Valle Vineyards, Maya, Napa Valley',489,2013,974,'A',4) ON CONFLICT (id) DO NOTHING;
INSERT INTO winelist (id, wine, price,year, gws, ci, nbj) VALUES (5, 'Dana Estates, Lotus Vineyard Cabernet Sauvignon, Napa Valley',299,2010,9887,'A',3) ON CONFLICT (id) DO NOTHING;
INSERT INTO winelist (id, wine, price,year, gws, ci, nbj) VALUES (17,'Dominus Estate, Christian Moueix, Napa Valley',108,2013,9854,'A',6) ON CONFLICT (id) DO NOTHING;
INSERT INTO winelist (id, wine, price,year, gws, ci, nbj) VALUES (11,'Dunn Vineyards, Trailer Vineyard Cabernet Sauvignon, Howell Mountain',375,2013,986,'A',3) ON CONFLICT (id) DO NOTHING;
INSERT INTO winelist (id, wine, price,year, gws, ci, nbj) VALUES (35,'Futo Estate, 5500 Sld - Cabernet Sauvignon, Stags Leap District',325,2015,9813,'A+',3) ON CONFLICT (id) DO NOTHING;
INSERT INTO winelist (id, wine, price,year, gws, ci, nbj) VALUES ( 9,'Harlan Estate, Napa Valley',365,2001,9873,'A+',6) ON CONFLICT (id) DO NOTHING;
INSERT INTO winelist (id, wine, price,year, gws, ci, nbj) VALUES (48,'Joseph Phelps Vineyards, Insignia, Napa Valley',264,1991,9794,'A',3) ON CONFLICT (id) DO NOTHING;
INSERT INTO winelist (id, wine, price,year, gws, ci, nbj) VALUES (27,'Kapcsandy Family Winery, State Lane Vineyard Grand-Vin Cabernet Sauvignon, Napa Valley',129,2015,9841,'A+',3) ON CONFLICT (id) DO NOTHING;
INSERT INTO winelist (id, wine, price,year, gws, ci, nbj) VALUES (10,'Kongsgaard, The Judge Chardonnay, White, Napa Valley',246,2005,9865,'A',3) ON CONFLICT (id) DO NOTHING;
INSERT INTO winelist (id, wine, price,year, gws, ci, nbj) VALUES (65,'Larkmead Vineyards, The Lark Cabernet Sauvignon, Napa Valley',118,2013,9755,'A',3) ON CONFLICT (id) DO NOTHING;
INSERT INTO winelist (id, wine, price,year, gws, ci, nbj) VALUES (59,'Lokoya Winery, Mount Veeder Cabernet Sauvignon, Napa Valley',313,2015,977,'A',3) ON CONFLICT (id) DO NOTHING;
INSERT INTO winelist (id, wine, price,year, gws, ci, nbj) VALUES (77,'Paul Hobbs, Beckstoffer To Kalon Vineyard Cabernet Sauvignon, Oakville',359,2013,9738,'A',4) ON CONFLICT (id) DO NOTHING;
INSERT INTO winelist (id, wine, price,year, gws, ci, nbj) VALUES (86,'Peter Michael Winery, Point Rouge Chardonnay, White, Sonoma County',185,2008,9732,'A',3) ON CONFLICT (id) DO NOTHING;
INSERT INTO winelist (id, wine, price,year, gws, ci, nbj) VALUES (73,'Promontory, Napa Valley',595,2013,974,'A',3) ON CONFLICT (id) DO NOTHING;
INSERT INTO winelist (id, wine, price,year, gws, ci, nbj) VALUES (81,'Quilceda Creek, Cabernet Sauvignon, Columbia Valley',169,2009,9736,'A+',5) ON CONFLICT (id) DO NOTHING;
INSERT INTO winelist (id, wine, price,year, gws, ci, nbj) VALUES (36,'Ridge Vineyards, Monte Bello, Santa Cruz Mountains',150,2015,9809,'A',3) ON CONFLICT (id) DO NOTHING;
INSERT INTO winelist (id, wine, price,year, gws, ci, nbj) VALUES (46,'Scarecrow, Cabernet Sauvignon, Rutherford',440,2014,9796,'A+',4) ON CONFLICT (id) DO NOTHING;
INSERT INTO winelist (id, wine, price,year, gws, ci, nbj) VALUES (47,'Schrader Cellars, Beckstoffer Las Piedras Vineyard Colesworthy Cabernet Sauvignon, Napa Valley', 69,2013,9794,'A',4) ON CONFLICT (id) DO NOTHING;
INSERT INTO winelist (id, wine, price,year, gws, ci, nbj) VALUES (04,'Screaming Eagle, Cabernet Sauvignon, Napa Valley', 2660,2010,9905,'A',6) ON CONFLICT (id) DO NOTHING;
INSERT INTO winelist (id, wine, price,year, gws, ci, nbj) VALUES (71,'Sloan, Proprietary Red, Rutherford',230,2013,9741,'A+',3) ON CONFLICT (id) DO NOTHING;
INSERT INTO winelist (id, wine, price,year, gws, ci, nbj) VALUES (93,'Spottswoode, Family Estate Grown Cabernet Sauvignon, St Helena',149,2013,9726,'A',9) ON CONFLICT (id) DO NOTHING;
INSERT INTO winelist (id, wine, price,year, gws, ci, nbj) VALUES (66,'Verite, Le Desir, Sonoma County',269,2007,9753,'A',3) ON CONFLICT (id) DO NOTHING;
INSERT INTO winelist (id, wine, price,year, gws, ci, nbj) VALUES (100,'Continuum, Proprietary Red, Oakville',185,2007,9716,'A+',3) ON CONFLICT (id) DO NOTHING;
CREATE OR REPLACE FUNCTION add_lead( first_and_last_name varchar, company varchar, phone varchar, email varchar, lead_source varchar, lead_status varchar, rating varchar)
RETURNS void
LANGUAGE 'plpgsql'
AS $BODY$
DECLARE
task varchar;
BEGIN
task := concat(lead_status || ' ', 'Lead: Please contact ', first_and_last_name, ' from ' || company, ' via phone: ' || phone, ' via email: ' || email, '. ', 'Lead is from ' || lead_source, '. Rating: ' || rating, '.');
insert into todo(task,completed) VALUES (task,0);
END;
$BODY$;

CREATE OR REPLACE FUNCTION create_lead(
OUT first_name text,
OUT last_name text,
OUT company text,
OUT lead_source text)
    RETURNS SETOF record
    AS
    $$
      SELECT first_name, last_name, company, lead_source
      FROM contact;
    $$
     LANGUAGE 'sql' VOLATILE;


CREATE TABLE pet (id SERIAL PRIMARY KEY, name varchar(50), status varchar(10));

EOF
