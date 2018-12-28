/*   ~THIS IS A SQL SCRIPT FOR DYSPEE VIDEO STORE ~   */

/*	CREATING STAFF TABLE -- THE MOST USELESS TABLE XD	*/
CREATE TABLE STAFF (
	STAFFNAME VARCHAR(30) NOT NULL,
	PASSWORD VARCHAR(30) NOT NULL
);


/*	CREATING CUSTOMER TABLE	*/
CREATE TABLE CUSTOMER (
	CUSTID INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 0, INCREMENT BY 1),
	CUSTNAME VARCHAR(255) NOT NULL,
	PHONENO VARCHAR(30),
	ADDRESS VARCHAR(999),
	EMAIL VARCHAR(50) UNIQUE,
	DOB DATE, 
	PASSWORD VARCHAR(30) NOT NULL,
PRIMARY KEY (CUSTID)
);

/*	CREATING PRODUCT TABLE	*/
CREATE TABLE PRODUCT (
	PRODUCTID INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 0, INCREMENT BY 1),
	"NAME" VARCHAR(80) NOT NULL,
	DESCRIPTION VARCHAR(999),
	RATING INTEGER,
	DATERELEASE DATE,
	PRICE DOUBLE NOT NULL,
	POSTER VARCHAR(255),
PRIMARY KEY (PRODUCTID)
);

/*	CREATING ORDER TABLE	*/
/*	NOTE THAT 'ORDER' FOR THE TABLE IN SQL TABLE SO IT CREATED AS 'CUSTORDER'  */
CREATE TABLE CUSTORDER (
	ORDERID INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 0, INCREMENT BY 1),
	ORDERDATE DATE,
	TRACKINGNUM VARCHAR(30),
	STATUS VARCHAR(30),
	CUSTID INTEGER,
PRIMARY KEY (ORDERID),
foreign key(CUSTID) references CUSTOMER(CUSTID)
);

/*	CREATING ORDERLIST TABLE -- Associative Entity for 'PRODUCT' and 'CUSTORDER' TABLE	*/
CREATE TABLE ORDERLIST (
	PRODUCTID INTEGER NOT NULL,
	ORDERID INTEGER NOT NULL,
	QTY INTEGER,
PRIMARY KEY (PRODUCTID, ORDERID),
foreign key(PRODUCTID) references PRODUCT(PRODUCTID),
foreign key(ORDERID) references CUSTORDER(ORDERID)
);
