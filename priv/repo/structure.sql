CREATE SEQUENCE tracks_id_seq;

CREATE TABLE tracks (
    id bigint NOT NULL DEFAULT nextval('tracks_id_seq'),
    title   VARCHAR,
    playlist_id bigint,
    inserted_at timestamp without time zone
);

ALTER SEQUENCE tracks_id_seq OWNED BY tracks.id;


CREATE SEQUENCE playlists_id_seq;

CREATE TABLE playlists (
    id bigint NOT NULL DEFAULT nextval('playlists_id_seq'),
    name VARCHAR,
    link VARCHAR,
    inserted_at timestamp without time zone
);

ALTER SEQUENCE playlists_id_seq OWNED BY playlists.id;


ALTER TABLE ONLY tracks
    ADD CONSTRAINT tracks PRIMARY KEY (id);

ALTER TABLE ONLY playlists
    ADD CONSTRAINT playlists PRIMARY KEY (id);

ALTER TABLE tracks
  ADD CONSTRAINT playlist_id_fk FOREIGN KEY (id)
      REFERENCES playlists (id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE;



