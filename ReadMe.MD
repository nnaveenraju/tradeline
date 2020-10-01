#To run the project locally do the following:

 - Clone the repo using command
 		git clone https://github.com/nnaveenraju/tradeline.git
 		or
 		Download the zip file from git repo.
 		
 - Make sure you have MySQL installed locally or have access to one.
 - Have an username and password to connect to the database.
 - Maintain the MySQL credentials in the "/tradeline/src/main/resources/properties/tradeline-dev.properties" file under #MySQL DB
 


# Walkthrough


## Create RAML

	- Login to Anypoint platform
	- Open the "Design Centre"
	- Create a new API Spec
	- Publish to Exchange
	- Download RAML (If anypoint studio is not connected to Anypoint account.)
			The RAML can be imported directly from Exchange or Design center if the studio is connected to the Anypoint account.

## Database:

### Create Schema:

```
CREATE SCHEMA `Tradeline` ;

```

### Crate Table:
```
CREATE TABLE `Tradeline`.`TradeLines` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `CreditorName` VARCHAR(255) NULL,
  `FirstName` VARCHAR(80) NULL,
  `LastName` VARCHAR(80) NULL,
  `MinPaymentPercentage` VARCHAR(45) NULL,
  `Balance` DECIMAL NULL DEFAULT 0.0,
  PRIMARY KEY (`Id`));

```


## Anypoint Studio.

### Import the RAML to a new Project

## Maintain MySQL database for running the app locally.

Open the /tradeline/src/main/resources/properties/tradeline-dev.properties file.
Manipuldate the properties under the comment line: #MySQL DB


## Testing via browser using API KIT Console

### Option 1:
After you have the application running, navigate to the following and you can test the application:

 - http://localhost:8083/console/
 
### Option 2:
Use postman. I have embedded the postman collection the project test folder.
 
 /tradeline/src/test/resources/Trade.postman_collection.json
 
Import this collection and you should be seeing 5 HTTP requests to test the APIs. 
 
## Deploy application to Cloudhub

```
mvn clean deploy -P cloudhub -DsecureKey=Test@123 -Dusername=nnraju1 -Dpassword=<>

```


## Secure properties:

```

java -cp secure-properties-tool.jar com.mulesoft.tools.SecurePropertiesTool \
string \
encrypt \
Blowfish \
CBC \
Tradeline123 \
"rootroot"


```