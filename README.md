# Crush + Lovely Sample Application

This is a wonderfully simple Rails app that does one thing well: creates users. Here's how it does its thing.

## Create a user

	POST /users.json
	
### Input

##### name

Name of the user (required).

##### email

Email address of the user (required).

##### password

Desired password for the user (required).

##### password_confirmation

Confirmed password for the user (required).

###### Example Request

	{
	    "name": "John Doe",
	    "email": "john@doe.com",
	    "password": "s3kr3t",
	    "password_confirmation": "s3kr3t"
	}

### Response

	Status: 201 Created

	{
	    "id": 1,
	    "name": "John Doe",
	    "email": "john@doe.com",
	    "authentication_token": "s3kr3t-value"
	} 

