
CREATE OR ALTER PROCEDURE getProductInCartById(@id VARCHAR(200))
AS
BEGIN
SELECT * FROM cart WHERE id=@id AND  isDeleted=0

END