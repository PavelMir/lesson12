CREATE TABLE `products` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `category_id` INT(11) NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `price` DECIMAL(12,2) NOT NULL,
    `description` TEXT,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;

INSERT INTO products (category_id, name, price, description) VALUES
(1, 'iPhone 7', 500, 'Amazing phone'),
(1, 'iPhone 8', 600, 'Amazing phone'),
(2, 'Dell monitor', 300, 'Awesome monitor'),
(3, 'Seagate 1Tb', 300, 'Seagate 1Tb HDD drive'),
(4, 'Microsoft keyboard', 50, 'Microsoft keyboard'),
(1, 'iPhone 6s', 200, 'Old but not bad device'),
(1, 'Google Nexus 4', 400, 'Best choice for google lovers'),
(2, 'Dell SE2416H', 299, '24" Dell SE2416H Silver-Black (210-AFZC)'),
(2, 'Dell P2419H', 150, '23.8" Dell P2419H Black (210-APWU) - Сinema screen'),
(2, 'Philips 223V5LSB2', 199, '21.5" Philips 223V5LSB2/10/62'),
(2, 'LG 22MP48A-P', 99, 'Display 21.5" LG 22MP48A-P'),
(4, 'Seagate Exos 7E8', 289, 'Seagate Exos 7E8 512E 8TB 7200rpm 256MB ST8000NM0055 3.5" SATA III');

ALTER TABLE products ADD COLUMN related_id int(11);
UPDATE products SET related_id = ABS(id - 2);

SELECT p.id, p.name, p.price, p.description,
       r.name related_name, r.price related_price
  FROM products p
  JOIN products r on r.id = p.related_id; 

--Get product details with related product name and price. Columns in result:
--id, name, price, description, related_name, related_price
