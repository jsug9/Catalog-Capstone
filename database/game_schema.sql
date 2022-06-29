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

CREATE TABLE author (
  id int PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  first_name varchar(100),
  last_name varchar(100)
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

