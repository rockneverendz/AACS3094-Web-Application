# AACS3094-Web-Application

```
create table "NBUSER".CUSTOMER
(
	CUST_ID INTEGER default AUTOINCREMENT: start 1 increment 1 not null primary key,
	CUST_NAME VARCHAR(100),
	CUST_EMAIL VARCHAR(100),
	CUST_DOB DATE,
	CUST_PASSWORD VARCHAR(20)
)
```