BEGIN;

SET client_encoding = 'UTF8';

CREATE TABLE beer_styles (
    id integer NOT NULL,
    style text NOT NULL,
    ibu_min integer NOT NULL,
    ibu_max integer NOT NULL,
    ebc_min integer NOT NULL,
    ebc_max integer NOT NULL,
    abv_min real NOT NULL,
    abv_max real NOT NULL
);

CREATE TABLE beers (
    id integer NOT NULL,
    name text NOT NULL,
    brewery integer NOT NULL,
    style text NOT NULL,
    abv real NOT NULL,
    ibu integer NOT NULL,
    ebc integer NOT NULL
);

CREATE TABLE breweries (
    id integer NOT NULL,
    name text NOT NULL
);

CREATE TABLE customers (
    id integer NOT NULL,
    name text NOT NULL,
    is_regular bool NOT NULL DEFAULT FALSE,
    tolerance integer NOT NULL
);

CREATE TABLE transactions (
    id integer NOT NULL,
    "date" date NOT NULL,
    beer integer NOT NULL,
    customer integer NOT NULL
    quantity integer NOT NULL
);

COPY beer_styles (id, name, ibu_min, ibu_max, ebc_min, ebc_max, abv_min, abv_max) FROM stdin;
1   "Wheat Beer"    10  35  4   10  3.5 5.5
2   "Blonde Ale"    15  30  6   12  6.0 7.5
3   "Dubbel"    15  25  20  35  6.3 7.6
4   "Tripel"    20  45  4   7   7.5 9.5
5   "Quadrupel" 20  50  10  20  7.6 10.0
6   "Pale Ale"  20  35  6   14  4.0 7.0
7   "Strong Specialty Ale"  25  50  8   14  8.0 11.0
8   "Dark Strong Ale"   25  50  20  35  7.0 11.0
9   "Other Ale" 20  40  4   7   4.0 7.0
10  "Pilsener"  25  40  4   7   5.0 6.0
11  "Light Lager"   10  20  2   4   3.0 4.0
12  "Cream Ale" 10  20  4   7   4.2 5.6
13  "Amber Lager"   15  25  10  17  4.5 5.7
14  "Dark Lager"    18  25  20  35  4.2 5.6
15  "Pale Ale"  30  50  6   14  4.5 6.2
16  "India Pale Ale"    50  70  6   14  6.3 7.5
17  "Imperial India Pale Ale"   65  100 6   14  7.5 10.0
18  "Juicy or Hazy India Pale Ale"  30  50  4   7   6.0 7.5
19  "Double Red Ale"    40  70  10  17  7.0 8.0
20  "Imperial Red Ale"  50  100 20  35  7.5 10.0
21  "Strong Pale Ale"   50  80  6   14  6.3 7.6
22  "India Black Ale"   50  100 20  35  6.3 8.0
23  "Black Ale" 50  70  25  40  6.3 8.0
24  "Brown Ale" 20  40  15  25  4.0 6.0
25  "DIPA"  60  100 6   14  7.5 10.0
26  "Russian Imperial Stout"  50  90  40  80  8.0 12.0
\.

COPY breweries (id, name) FROM stdin;
1   "Sinerychoff"
\. 


COPY beers (id, name, brewery, style, abv, ibu, ebc) FROM stdin;
1   "Karhu III" 1   "Light Lager"  4.6  16  12
\.

COPY customers (id, name, is_regular, tolerance) FROM stdin;
1   "Pera"  TRUE    24
2   "Raipe" FALSE   9
\. 

ALTER TABLE ONLY beer_styles
    ADD CONSTRAINT beer_style_id PRIMARY KEY (id);

ALTER TABLE ONLY beers
    ADD CONSTRAINT beer_id PRIMARY KEY (id);

ALTER TABLE ONLY beers
    ADD CONSTRAINT brewery FOREIGN KEY brewery REFERENCES brewery(id);

COMMIT;

ANALYZE beers_styles;
ANALYZE beers;
ANALYZE breweies;
ANALYZE customers;
ANALYZE transactions
