CREATE DATABASE catalog_capstone;

CREATE TABLE genres (
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name text
);

CREATE UNIQUE INDEX genres_pkey ON genres(id int4_ops);

CREATE TABLE item (
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    genre_id integer REFERENCES genres(id),
    author_id integer,
    label_id integer,
    publish_date date,
    archived boolean
);

CREATE UNIQUE INDEX item_pkey ON item(id int4_ops);

CREATE TABLE music_albums (
    id integer REFERENCES item(id),
    name text,
    on_spotify boolean
);

--Lable Table
CREATE TABLE label(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  title VARCHAR(100),
  color VARCHAR(100)
);

-- Book Table
CREATE TABLE book(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  publish_date DATE,
  publisher VARCHAR(100),
  cover_state VARCHAR(10),
  genre_id INT,
  author_id INT,
  label_id INT,
  FOREIGN KEY (genre_id) REFERENCES genre(id) ON DELETE SET NULL ON UPDATE CASCADE,
  FOREIGN KEY (author_id) REFERENCES author(id) ON DELETE SET NULL ON UPDATE CASCADE,
  FOREIGN KEY (label_id) REFERENCES label(id) ON DELETE SET NULL ON UPDATE CASCADE
);