DROP TABLE IF EXISTS pills_taken;
DROP TABLE IF EXISTS pills;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username VARCHAR(255),
  age INT
);

CREATE TABLE pills (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  strength VARCHAR(255),
  type VARCHAR(255)
);

CREATE TABLE pills_taken (
  id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(id) ON DELETE CASCADE,
  pill_id INT REFERENCES pills(id) ON DELETE CASCADE,
  quantity INT,
  time_taken TIMESTAMP
);
