DROP TRIGGER IF EXISTS delAudit;
DELIMITER //
CREATE TRIGGER delAudit AFTER DELETE ON customer
    FOR EACH ROW
BEGIN
    DELETE FROM `audit` WHERE CUSTOMER_ID = old.CUSTOMER_ID;
END //
DELIMITER ; 