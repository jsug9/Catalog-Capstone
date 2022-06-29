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
