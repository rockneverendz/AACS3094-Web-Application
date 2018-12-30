# AACS3094-Web-Application

## Libraries Required
- derbyclient.jar
- EclipseLink (JPA 2.1)

## Used for resetting
```
ALTER TABLE CUSTOMER ALTER COLUMN CUSTID RESTARD WITH 0;
ALTER TABLE PRODUCT ALTER COLUMN PRODUCTID RESTART WITH 0;
```

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