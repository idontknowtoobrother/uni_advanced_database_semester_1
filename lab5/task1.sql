CREATE OR REPLACE VIEW getCustomer_info01 AS 
SELECT * FROM `customer` WHERE `COUNTRY_CODE` = "US" AND `BUDGET` <= 3000000 ORDER BY `CUSTOMER_ID` DESC;

SELECT * FROM `getCustomer_info01`;