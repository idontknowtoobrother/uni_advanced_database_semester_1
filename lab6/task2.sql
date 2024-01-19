DROP PROCEDURE IF EXISTS updateCustomerUsedFromAudit;
DELIMITER //
CREATE PROCEDURE updateCustomerUsedFromAudit(IN toUpdateCustomerId varchar(4))
BEGIN
    DECLARE dUsed DECIMAL(18, 2) DEFAULT 0;
    SELECT COALESCE(SUM(USED), 0) INTO dUsed FROM `audit` WHERE CUSTOMER_ID = toUpdateCustomerId;
    UPDATE customer SET USED = dUsed WHERE CUSTOMER_ID = toUpdateCustomerId;
END //
DELIMITER ;



DROP TRIGGER IF EXISTS sumUsed;
DELIMITER //
CREATE TRIGGER sumUsed AFTER INSERT ON `audit`
    FOR EACH ROW
BEGIN
    CALL updateCustomerUsedFromAudit(new.CUSTOMER_ID);
END //
DELIMITER ;



INSERT INTO `audit` (AUDIT_ID, USTOMER_ID, LOG_DATE, USED) VALUES (19, 'C002', '2015-10-10', 200000);