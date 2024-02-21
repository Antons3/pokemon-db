--
-- Docs
-- https://www.w3schools.com/sql/default.asp
-- https://sqlzoo.net/wiki/SQL_Tutorial
-- Playground:
-- https://sqlfiddle.com/sqlite/online-compiler
-- https://sqlite.org/fiddle/
--

-- Izveidot tabulu

CREATE TABLE Pokemons (
    num INTEGER,
    nam VARCHAR(50),
    type_1 VARCHAR,
    type_2 VARCHAR,
    total INTEGER,
    hp INTEGER,
    attack INTEGER,
    defense INTEGER
);

-- Izveidot 10 pokemonu ierakstus
--  {
--    "number": 1,
--    "name": "Bulbasaur",
--    "type_1": "Grass",
--    "type_2": "Poison",
--    "total": 318,
--    "hp": 45,
--    "attack": 49,
--    "defense": 49
--  },

INSERT INTO Pokemons (num, nam, type_1, type_2, total, hp, attack, defense) VALUES (1, 'Bulbasaur', 'Grass', 'Poison', 318, 45, 49, 49);
INSERT INTO Pokemons (num, nam, type_1, type_2, total, hp, attack, defense) VALUES (2, 'Ivysaur', 'Grass', 'Poison', 405, 60, 62, 63);
INSERT INTO Pokemons (num, nam, type_1, type_2, total, hp, attack, defense) VALUES (3, 'Venusaur', 'Grass', 'Poison', 525, 80, 82, 83);
INSERT INTO Pokemons (num, nam, type_1, type_2, total, hp, attack, defense) VALUES (4, 'Charmander', 'Fire', '', 309, 39, 52, 43);
INSERT INTO Pokemons (num, nam, type_1, type_2, total, hp, attack, defense) VALUES (5, 'Charmeleon', 'fire', '', 405, 58, 64, 58);
INSERT INTO Pokemons (num, nam, type_1, type_2, total, hp, attack, defense) VALUES (6, 'Charizard', 'Fire', 'Flying', 534, 78, 84, 78);
INSERT INTO Pokemons (num, nam, type_1, type_2, total, hp, attack, defense) VALUES (7, 'Squirtle', 'Water', '', 314, 44, 48, 65);
INSERT INTO Pokemons (num, nam, type_1, type_2, total, hp, attack, defense) VALUES (8, 'Wartortle', 'Water', '', 405, 59, 63, 80);
INSERT INTO Pokemons (num, nam, type_1, type_2, total, hp, attack, defense) VALUES (9, 'Blastoise', 'Water', '', 530, 79, 83, 100);
INSERT INTO Pokemons (num, nam, type_1, type_2, total, hp, attack, defense) VALUES (10, 'Caterpie', 'Bug', '', 195, 45, 30, 35);

-- Atlasīt visus pokemonus un visas kolonnas

SELECT * FROM Pokemons;

-- Atlasīt visu pokemonu nosaukums un tos kuriem ir "Fire" tips

SELECT * FROM Pokemons;
SELECT * FROM Pokemons
WHERE type_1='Fire' OR type_2='Fire';

-- Atlasīt pokemonus ar kopējām statistikām (total) virs 500

SELECT * FROM Pokemons
WHERE total > 500;

-- Atlasīt pokemonus ar "Flying" tipu un statistikam virs 500

SELECT * FROM Pokemons
WHERE total > 500 AND (type_1='Flying' OR type_2='Flying');

-- Atlasīt unikālās vērtības no type_1 stabiņa (DISTINCT)

SELECT DISTINCT type_1 FROM Pokemons;

-- Sakārtot pokemonus pēc augstāka HP

SELECT * FROM Pokemons
ORDER BY hp;

-- Izdzēst tos, kam attack mazāks par 50

DELETE FROM Pokemons WHERE attack<50;