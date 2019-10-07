CREATE TABLE bandcamp (
    id SERIAL,
    artist VARCHAR(255) NOT NULL,
    album VARCHAR(255)
);

INSERT INTO bandcamp (artist, album) VALUES ('Phil Colins', 'Face Value');
INSERT INTO bandcamp (artist, album) VALUES ('Queen', 'Innuendo');
INSERT INTO bandcamp (artist, album) VALUES ('Balthazar', 'Fever');

SELECT * FROM bandcamp;
