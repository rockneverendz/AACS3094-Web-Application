/*   ~THIS IS A SQL SCRIPT FOR DYSPEE ONLINE VIDEO STORE ~   */

/*	CREATING STAFF TABLE -- THE MOST USELESS TABLE XD	*/
CREATE TABLE STAFF (
	STAFFID VARCHAR(10) NOT NULL,
	STAFFNAME VARCHAR(30) NOT NULL,
	PASSWORD VARCHAR(30) NOT NULL,
PRIMARY KEY (STAFFID)
);


/*	CREATING CUSTOMER TABLE	*/
CREATE TABLE CUSTOMER (
	CUSTID INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
	CUSTNAME VARCHAR(255) NOT NULL,
	PHONENO VARCHAR(30) NOT NULL,
	ADDRESS VARCHAR(999),
	EMAIL VARCHAR(50) UNIQUE,
	DOB DATE, 
	PASSWORD VARCHAR(30) NOT NULL,
PRIMARY KEY (CUSTID)
);

/*	CREATING PRODUCT TABLE	*/
CREATE TABLE PRODUCT (
	PRODUCTID INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
	"NAME" VARCHAR(80) NOT NULL,
	DESCRIPTION VARCHAR(999),
	RATING INTEGER,
	DATERELEASE DATE,
	PRICE DOUBLE NOT NULL,
	POSTER VARCHAR(255),
	GENRE VARCHAR(255),
	TRAILER VARCHAR(255),
PRIMARY KEY (PRODUCTID)
);

/*	CREATING ORDER TABLE	*/
/*	NOTE THAT 'ORDER' FOR THE TABLE IN SQL TABLE SO IT CREATED AS 'CUSTORDER'  */
CREATE TABLE CUSTORDER (
	ORDERID INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
	ORDERDATE DATE,
	RECEIVERNAME VARCHAR(255),
	RECEIVERADDRESS VARCHAR(999),
	TRACKINGNO VARCHAR(10),
	STATUS VARCHAR(30),
	CUSTID INTEGER,
PRIMARY KEY (ORDERID),
FOREIGN KEY(CUSTID) REFERENCES CUSTOMER(CUSTID)
);

/*	CREATING ORDERLIST TABLE -- Associative Entity for 'PRODUCT' and 'CUSTORDER' TABLE	*/
CREATE TABLE ORDERLIST (
	PRODUCTID INTEGER NOT NULL,
	ORDERID INTEGER NOT NULL,
	QTY INTEGER,
PRIMARY KEY (PRODUCTID, ORDERID),
FOREIGN KEY(PRODUCTID) REFERENCES PRODUCT(PRODUCTID),
FOREIGN KEY(ORDERID) REFERENCES CUSTORDER(ORDERID)
);


