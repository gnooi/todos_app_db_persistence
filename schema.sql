CREATE TABLE Lists
(id serial PRIMARY KEY,
title text NOT NULL UNIQUE);

CREATE TABLE Todos
(id serial PRIMARY KEY,
title text NOT NULL,
completed boolean NOT NULL DEFAULT false,
list_id integer NOT NULL REFERENCES lists (id) ON DELETE CASCADE);