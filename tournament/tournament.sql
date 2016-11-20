-- Clear database initially.
DROP DATABASE IF EXISTS tournament;
-- Create the tournament database.
CREATE DATABASE tournament;
-- Change to the tournament database.
\c tournament;
-- Table definitions for the tournament project.
-- Players table that stores a players unique id and name.
CREATE TABLE players(
		id serial PRIMARY KEY,
		name text
);
-- Matches table that stores a unique id, winner id, and loser id.
CREATE TABLE matches(
	match_id serial PRIMARY KEY,
	winner_id integer REFERENCES players(id) NOT NULL,
	loser_id integer REFERENCES players(id) NOT NULL
);
-- A view to hold player standing information.
CREATE VIEW standings AS SELECT players.id, players.name, (SELECT count(matches.winner_id) FROM matches WHERE players.id = matches.winner_id) AS total_wins, (SELECT count(matches.match_id) FROM matches WHERE players.id = matches.winner_id or players.id = matches.loser_id) AS total_matches FROM players ORDER BY total_wins DESC, total_matches DESC;


