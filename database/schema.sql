CREATE DATABASE catalog_capstone;

-- Genres Table
CREATE TABLE genres (
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name text
);

CREATE UNIQUE INDEX item_pkey ON item(id int4_ops);

-- Label Table
CREATE TABLE label(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  title VARCHAR(100),
  color VARCHAR(100)
);

CREATE UNIQUE INDEX genres_pkey ON genres(id int4_ops);

-- Author
CREATE TABLE author (
  id int PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  first_name varchar(100),
  last_name varchar(100)
);

CREATE UNIQUE INDEX author_pkey ON author(id int4_ops);

CREATE TABLE item (
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    genre_id integer REFERENCES genres(id),
    label_id integer REFERENCES label(id),
    author_id integer REFERENCES author(id),
    publish_date date,
    archived boolean
);

CREATE TABLE music_albums (
    id integer REFERENCES item(id),
    name text,
    on_spotify boolean
);

-- Book Table
CREATE TABLE book(
  id integer REFERENCES item(id),
  publish_date DATE,
  publisher VARCHAR(100),
  cover_state VARCHAR(10),
  label_id INT,
  FOREIGN KEY (label_id) REFERENCES label(id) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE game (
  id int PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  multiplayer boolean,
  last_played_at date,
  publish_date date,
  author_id int,
  gamename text
  FOREIGN KEY (author_id) REFERENCES author(id) ON DELETE SET NULL ON UPDATE CASCADE,
);

