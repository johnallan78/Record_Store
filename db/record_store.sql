DROP TABLE album;
DROP TABLE artist;

CREATE TABLE artist (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE album (
id SERIAL8 PRIMARY KEY,
title VARCHAR(255),
artist int8 REFERENCES artist(id),
genre VARCHAR(255),
quantity INT,
buy decimal,
sell decimal
);
