CREATE OR ALTER PROCEDURE add_to_cart
  @cart_id VARCHAR(100),
  @product_id VARCHAR(100),
  @quantity INT,
  @price DECIMAL(18, 2)
AS
BEGIN
  -- Check if the product is already in the cart
  IF EXISTS (
    SELECT 1
    FROM CART
    WHERE product_id = @product_id
  )
  BEGIN
    -- Product is already in the cart
    SELECT 'Product is already in the cart' AS response
  END
  ELSE
  BEGIN
    -- Insert a new product into the cart
    INSERT INTO CART (cart_id,product_id, quantity, price)
    VALUES (@cart_id,@product_id, @quantity, @price)
    
    -- Product added to the cart
    SELECT 'Product added to the cart' AS response
  END
END;

