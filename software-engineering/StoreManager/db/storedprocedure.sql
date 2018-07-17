DELIMITER $$

# Auth user
# Return the id if exists
DROP PROCEDURE IF EXISTS AUTH;
CREATE PROCEDURE AUTH(IN _user varchar(100), IN _password varchar(255)) BEGIN
    SELECT USER.idUser FROM USER
    WHERE (USER.name = _user) AND 
    (USER.pwd = AES_ENCRYPT(_password, '726F328BB97BFF5529B9771ABC5FECDD'));
END$$

DELIMITER ;
