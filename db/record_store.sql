CREATE TABLE store (
  id SERIAL8 PRIMARY KEY,
  FUNDS INT,
  stock INT
  

)

CREATE TABLE artist (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
)

CREATE TABLE album (
id SERIAL8 PRIMARY KEY,
name VARCHAR(255),
artist VARCHAR(255),
genre VARCHAR(255),
quantity INT,


)