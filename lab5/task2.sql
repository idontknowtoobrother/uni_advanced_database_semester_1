CREATE OR REPLACE VIEW getCustomer_info02 AS
SELECT CUSTOMER_ID, NAME, EMAIL, BUDGET, USED, country.COUNTRY_NAME FROM customer INNER JOIN country ON customer.COUNTRY_CODE = country.COUNTRY_CODE 
WHERE customer.COUNTRY_CODE = "TH" ORDER BY customer.CUSTOMER_ID;

SELECT * FROM `getCustomer_info02`;
