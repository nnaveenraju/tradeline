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


## Testing via browser using API KIT Console

Navigate to the following:

 - http://localhost:8083/console/
 
 
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