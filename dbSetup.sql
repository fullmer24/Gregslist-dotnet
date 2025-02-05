CREATE TABLE IF NOT EXISTS accounts(
  id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name varchar(255) COMMENT 'User Name',
  email varchar(255) COMMENT 'User Email',
  picture varchar(255) COMMENT 'User Picture'
) default charset utf8 COMMENT '';


CREATE TABLE cars(
  id INT AUTO_INCREMENT PRIMARY KEY,
  make VARCHAR(255) NOT NULL,
  model VARCHAR(255) NOT NULL,
  year INT NOT NULL,
  color VARCHAR(255) NOT NULL,
  imgUrl VARCHAR(255) NOT NULL,
  price INT NOT NULL DEFAULT 0,
  description TEXT NOT NULL
) default charset utf8;

DROP TABLE cars;

-- CREATE A CAR
INSERT INTO cars
(make, model, year, color, imgUrl, price, description)
VALUES
("Ford", "FONE FIDDY", 2022, "SILVER", "https://thiscatdoesnotexist.com", 9998, "Big Truck, Cool Beer.");

-- GET ALL CARS
SELECT * FROM cars;


CREATE TABLE houses(
  id INT AUTO_INCREMENT PRIMARY KEY,
  style VARCHAR(225) NOT NULL,
  bdrm INT NOT NULL,
  bath INT NOT NULL,
  price INT NOT NULL,
  imgUrl VARCHAR(255) NOT NULL,
  description VARCHAR(500) NOT NULL
)default charset utf8;

DROP TABLE houses;

-- NOTE create
INSERT INTO houses 
(style, bdrm, bath, price, imgUrl, description)
VALUES
("ranch", 4, 2, 5000000, "https://thiscatdoesnotexist.com", "nice ranch house on land");

-- NOTE get all
SELECT * FROM houses;