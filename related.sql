SELECT p.id, p.name, p.price, p.description,
       r.name related_name, r.price related_price
  FROM products p
  JOIN products r on r.id = p.related_id
WHERE p.id > 3 AND p.id < 8; 

--Get product details with related product name and price. Columns in result:
--id, name, price, description, related_name, related_price
