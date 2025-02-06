CREATE DATABASE IF NOT EXISTS music_db;

USE music_db;

CREATE TABLE artists (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL
);

CREATE TABLE albums (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  artist_id INT,
  release_year INT,
  FOREIGN KEY (artist_id)
    REFERENCES artists(id)
    ON DELETE CASCADE
);

CREATE TABLE songs (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  track_number INT,
  artist_id INT,
  album_id INT,
  FOREIGN KEY (artist_id)
    REFERENCES artists(id)
    ON DELETE CASCADE,
  FOREIGN KEY (album_id)
    REFERENCES albums(id)
    ON DELETE CASCADE
);
