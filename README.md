# AACS3094-Web-Application

## Libraries Required
- derbyclient.jar
- EclipseLink (JPA 2.1)

```
New Session
	Empty

SignUp page
	Create Customer object
	Validate
	if (Successfull)
		Bind Customer to session
	else
		return Entered Data

Every page
	if (Customer is binded into session){
		Print Username
		if (Cart has items)
			Print number on items
	}
	else
		"Log In"


Product page
	if (Customer is logged in)
		if (Cart is not created)
			create cart
		
		add item to cart
	else
		redirect to login page
```