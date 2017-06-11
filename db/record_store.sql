-- DROP TABLE store;
DROP TABLE artist;
DROP TABLE album;

CREATE TABLE artist (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE album (
id SERIAL8 PRIMARY KEY,
title VARCHAR(255),
artist VARCHAR(255),
genre VARCHAR(255),
quantity INT
);

-- CREATE TABLE store (
--   id SERIAL8 PRIMARY KEY,
--   album_id int8 REFERENCES album(id),
--   artist_id int8 REFERENCES artist(id),
--   stock int8 REFERENCES album(quantity)
  
--  );