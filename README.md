# AACS3094-Web-Application

## Libraries Required
- derbyclient.jar
- EclipseLink (JPA 2.1)

## Database creation
**Create** a database named `DySpeedb`  
Right click the database and select **Execute Command**  
**Open** the file `\projectSturcture\Dyspeedb.sql`  
Copy and paste all the statements into command window  
**Open** the file `\projectSturcture\InsertDyspee.sql`  
Copy and append the statements into command window  
Click **run SQL statement**  
Datebase should be created.

## Used for resetting
If user want CustID or ProductID to count from 0. 
```
ALTER TABLE CUSTOMER ALTER COLUMN CUSTID RESTARD WITH 1;
ALTER TABLE PRODUCT ALTER COLUMN PRODUCTID RESTART WITH 1;
```

## Entity Generation & Modification
Persistance unit name is ``AACS3094-Web-ApplicationPU``
Persistance library is ``EclipseLink (JPA 2.1)``
Entities are located in ``package.entity``
Collection type is ``java.util.list``

CustOrder.java should have this query inside.  
Just in case if we **deleted** the entity and `Create Entity from Database` thus the query may be lost.
```
@NamedQuery(name = "Custorder.findByCustid", query = "SELECT c FROM Custorder c WHERE c.custid.custid = :custid")
```


## Pseudocode
```
New Session
	Empty

SignUp page
	Create Customer object
	<User input>
	Validate
	if (Successfull)
		Bind Customer to session
	else
		return Entered Data	

Every page (Header)
	if (Customer is binded into session){
		Print Username
		if (Cart has items)
			Print number on items
	}
	else
		"Log In"

Add to cart page
	if (Customer is logged in){
		if (Cart is not created)
			create cart
		
		add item to cart
	}
	else
		redirect to login page

Product page
	NoR = number of records on Product table
	Number of Page = NoR / 12 (Ceiling)

	

```