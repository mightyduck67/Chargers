CREATE DATABASE Payment_Solutions_Requests_db;
USE Payment_Solutions_Requests_db;

CREATE TABLE ICE_Chargers (
	ICE_ChargerSN VARCHAR(100),
	ICE_CCRSN VARCHAR(100),
	PRIMARY KEY (ICE_ChargerSN, ICE_CCRSN),
	SiteLocation VARCHAR(100),
	ProjectCoordinator VARCHAR(100),
	State VARCHAR(2),
	ZipCode INT,
	APContact VARCHAR(100),
	APEmail VARCHAR(100),
	EVModel VARCHAR(100),
	PinCode INT,
	AuthCode VARCHAR(20),
	ManageConfiguration VARCHAR(20),
	CaseMade VARCHAR(20),
	ActivationCode VARCHAR(20),
	Price DECIMAL(10,2),
	Rate VARCHAR(20),
	TaxOption VARCHAR(20),
	KeyFob VARCHAR(20),
	RateMatched VARCHAR(20),
	MapVisibility VARCHAR(20),
	RemoteStop VARCHAR(20),
	EVE VARCHAR(20),
	ProxyOn VARCHAR(20),
	SalesForce VARCHAR(20)
	);

CREATE TABLE ABB_Chargers (
	ABB_ChargerSN VARCHAR(100),
	ABB_CCRSN VARCHAR(100), 
	PRIMARY KEY (ABB_ChargerSN, ABB_CCRSN),
	SiteLocation VARCHAR(100),
	ProjectCoordinator VARCHAR(100),
	State VARCHAR(2),
	ZipCode INT,
	APContact VARCHAR(100),
	APEmail VARCHAR(100),
	EVModel VARCHAR(100),
	PinCode INT,
	AuthCode VARCHAR(20),
	ManageConfiguration VARCHAR(20),
	CaseMade VARCHAR(20),
	ActivationCode VARCHAR(20),
	Price DECIMAL(10,2),
	Rate VARCHAR(20),
	TaxOption VARCHAR(20),
	KeyFob VARCHAR(20),
	RateMatched VARCHAR(20),
	MapVisibility VARCHAR(20),
	RemoteStop VARCHAR(20),
	EVE VARCHAR(20),
	ProxyOn VARCHAR(20),
	SalesForce VARCHAR(20)
	);


CREATE TABLE ChargerSN (
	ICE_ChargerSN VARCHAR(100),
	ABB_ChargerSN VARCHAR(100),
	PRIMARY KEY (ICE_ChargerSN, ABB_ChargerSN),
	FOREIGN KEY (ICE_ChargerSN) REFERENCES ICE_Chargers(ICE_ChargerSN)
		ON DELETE CASCADE,
	FOREIGN KEY (ABB_ChargerSN) REFERENCES ABB_Chargers(ABB_ChargerSN)
		ON DELETE CASCADE
	);




	





