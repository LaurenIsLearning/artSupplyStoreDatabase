CREATE TABLE "CUSTOMER" (
	"CUST_ID"	integer,
	"CONTACT_FNAME"	varchar(30) NOT NULL,
	"CONTACT_LNAME"	varchar(30) NOT NULL,
	"CONTACT_PHONENUM"	char(8) NOT NULL,
	"CONTACT_ADDRESS"	varchar(30),
	"CONTACT_EMAIL"	varchar(30),
	"CUST_BALANCE"	numeric NOT NULL DEFAULT 0,
	"ORG_NAME"	varchar(30),
	"ORG_PHONENUM"	char(8),
	"ORG_FAX"	char(8),
	"ORG_EMAIL"	varchar(30),
	UNIQUE("CONTACT_PHONENUM"),
	PRIMARY KEY("CUST_ID")
);

CREATE TABLE LINE (
	INV_ID INTEGER REFERENCES "ORDER"("ORDER_ID"),
	LINE_NUM INTEGER,
	PRODUCT_ID TEXT NOT NULL,
	LINE_QTY INTEGER NOT NULL,
	LINE_PRICE NUMERIC(7,3) NOT NULL,
	PRIMARY KEY (INV_ID, LINE_NUM),
	FOREIGN KEY(PRODUCT_ID) REFERENCES PRODUCT(PRODUCT_ID)
);

CREATE TABLE "ORDER" (
	"ORDER_ID"	INTEGER,
	"CUST_ID"	INTEGER NOT NULL,
	"ORDER_DATE"	char(10) NOT NULL DEFAULT CURRENT_DATE,
	"ORDER_DELIVERY_DATE"	char(10),
	"ORDER_TOTAL"	NUMERIC NOT NULL,
	FOREIGN KEY("CUST_ID") REFERENCES "CUSTOMER"("CUS_ID"),
	PRIMARY KEY("ORDER_ID")
);

CREATE TABLE "PRODUCT" (
	"PRODUCT_ID"	varchar(10),
	"PRODUCT_TYPE"	varchar(30) NOT NULL,
	"SUP_ID"	INTEGER,
	"P_PRICE"	NUMERIC(7, 3) NOT NULL,
	"PRODUCT_QTY"	INTEGER,
	FOREIGN KEY("SUP_ID") REFERENCES "SUPPLIER"("SUP_ID"),
	PRIMARY KEY("PRODUCT_ID")
);

CREATE TABLE "SUPPLIER" (
	"SUP_ID"	INTEGER,
	"SUP_NAME"	TEXT NOT NULL UNIQUE,
	"SUP_ADDRESS"	INTEGER,
	"SUP_ZIPCODE"	INTEGER,
	"SUP_PHONE"	CHAR(8) NOT NULL,
	"SUP-REGION"	INTEGER NOT NULL,
	"SUP_CON_FNAME"	CHAR(30),
	"SUP_CON_LNAME"	CHAR(30) NOT NULL DEFAULT 'N' CHECK("SUP_ORDER" IN ('Y', 'N')),
	"SUP_CON_PHONE"	CHAR(8),
	UNIQUE("SUP_PHONE"),
	PRIMARY KEY("SUP_ID")
);