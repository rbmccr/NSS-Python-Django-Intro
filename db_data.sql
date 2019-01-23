DELETE FROM history_artist;
DELETE FROM history_song;

INSERT INTO history_artist VALUES (null, 'The Beatles', '2019-01-21 22:00:00');
INSERT INTO history_artist VALUES (null, 'Muse', '2019-01-21 22:00:00');
INSERT INTO history_artist VALUES (null, 'Rise Against', '2019-01-21 22:00:00');
INSERT INTO history_artist VALUES (null, 'The Lonely Island', '2019-01-21 22:00:00');
INSERT INTO history_artist VALUES (null, 'Meteor', '2019-01-21 22:00:00');

INSERT INTO history_song
  select null, "Yellow Submarine", "2019-01-21 22:00:00", history_artist.id
  FROM history_artist
  WHERE history_artist.artist_name = "The Beatles";

INSERT INTO history_song
  select null, "Nowhere Man", "2019-01-21 22:00:00", history_artist.id
  FROM history_artist
  WHERE history_artist.artist_name = "The Beatles";

INSERT INTO history_song
  select null, "Savior", "2019-01-21 22:00:00", history_artist.id
  FROM history_artist
  WHERE history_artist.artist_name = "Rise Against";

INSERT INTO history_song
  select null, "Satellite", "2019-01-21 22:00:00", history_artist.id
  FROM history_artist
  WHERE history_artist.artist_name = "Rise Against";

INSERT INTO history_song
  select null, "Absolution", "2019-01-21 22:00:00", history_artist.id
  FROM history_artist
  WHERE history_artist.artist_name = "Muse";

INSERT INTO history_song
  select null, "Supermassive Black Hole", "2019-01-21 22:00:00", history_artist.id
  FROM history_artist
  WHERE history_artist.artist_name = "Muse";

INSERT INTO history_song
  select null, "Stockholm Syndrome", "2019-01-21 22:00:00", history_artist.id
  FROM history_artist
  WHERE history_artist.artist_name = "Muse";

INSERT INTO history_song
  select null, "Uprising", "2019-01-21 22:00:00", history_artist.id
  FROM history_artist
  WHERE history_artist.artist_name = "Muse";

INSERT INTO history_song
  select null, "Starlight", "2019-01-21 22:00:00", history_artist.id
  FROM history_artist
  WHERE history_artist.artist_name = "Muse";

INSERT INTO history_song
  select null, "Madness", "2019-01-21 22:00:00", history_artist.id
  FROM history_artist
  WHERE history_artist.artist_name = "Muse";

INSERT INTO history_song
  select null, "Undisclosed Desires", "2019-01-21 22:00:00", history_artist.id
  FROM history_artist
  WHERE history_artist.artist_name = "Muse";
INSERT INTO history_song

  select null, "New Born", "2019-01-21 22:00:00", history_artist.id
  FROM history_artist
  WHERE history_artist.artist_name = "Muse";

INSERT INTO history_song
  select null, "Time is Running Out", "2019-01-21 22:00:00", history_artist.id
  FROM history_artist
  WHERE history_artist.artist_name = "Muse";

INSERT INTO history_song
  select null, "Pressure", "2019-01-21 22:00:00", history_artist.id
  FROM history_artist
  WHERE history_artist.artist_name = "Muse";

INSERT INTO history_song
  select null, "It Rains Fire", "2019-01-21 22:00:00", history_artist.id
  FROM history_artist
  WHERE history_artist.artist_name = "Meteor";

INSERT INTO history_song
  select null, "White Crows", "2019-01-21 22:00:00", history_artist.id
  FROM history_artist
  WHERE history_artist.artist_name = "Meteor";

INSERT INTO history_song
  select null, "I'm on a Boat", "2019-01-21 22:00:00", history_artist.id
  FROM history_artist
  WHERE history_artist.artist_name = "The Lonely Island";