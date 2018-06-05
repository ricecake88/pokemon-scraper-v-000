ALTER TABLE pokemon ADD hp INTEGER DEFAULT 60;
UPDATE pokemon SET hp = 59 WHERE name="pikachu"