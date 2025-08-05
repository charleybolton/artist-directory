-- Second migration – add indexes to help with search performanc when promoters are looking up artists by location, identity, genre, etc.

-- CREATE INDEX idx_artist_location ON artists (location_id);
-- CREATE INDEX idx_artist_identity ON artists (identity_id);
-- CREATE INDEX idx_artist_genre ON artists (genre_id);

-- If I add availability search, I can also index available_from / interested_in_event_type.