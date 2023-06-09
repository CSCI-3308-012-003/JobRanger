DROP TABLE IF EXISTS users CASCADE;
CREATE TABLE users(
    username VARCHAR(50) PRIMARY KEY,
    password VARCHAR(100) NOT NULL
);

DROP TABLE IF EXISTS general CASCADE;
CREATE TABLE general(
    id SERIAL PRIMARY KEY,
    firstname VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    dob VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    linkedin VARCHAR(100),
    github VARCHAR(100),
    username VARCHAR(50) NOT NULL,
    FOREIGN KEY (username) REFERENCES users (username)
);

DROP TABLE IF EXISTS educations CASCADE;
CREATE TABLE educations(
    id SERIAL PRIMARY KEY,
    school VARCHAR(50) NOT NULL,
    degree VARCHAR(50) NOT NULL,
    focus VARCHAR(50),
    startdate VARCHAR(50) NOT NULL,
    enddate VARCHAR(50) NOT NULL,
    description VARCHAR(1000) NOT NULL,
    username VARCHAR(50) NOT NULL,
    FOREIGN KEY (username) REFERENCES users (username)
);

DROP TABLE IF EXISTS experiences CASCADE;
CREATE TABLE experiences(
    id SERIAL PRIMARY KEY,
    organization VARCHAR(50) NOT NULL,
    title VARCHAR(50) NOT NULL,
    startdate VARCHAR(50) NOT NULL,
    enddate VARCHAR(50) NOT NULL,
    description VARCHAR(1000) NOT NULL,
    username VARCHAR(50) NOT NULL,
    FOREIGN KEY (username) REFERENCES users (username)
);

DROP TABLE IF EXISTS skills CASCADE;
CREATE TABLE skills(
    id SERIAL PRIMARY KEY,
    skill VARCHAR(100) NOT NULL,
    username VARCHAR(50) NOT NULL,
    FOREIGN KEY (username) REFERENCES users (username)
);

DROP TABLE IF EXISTS languages CASCADE;
CREATE TABLE languages(
    id SERIAL PRIMARY KEY,
    language VARCHAR(50) NOT NULL,
    proficiency VARCHAR(50) NOT NULL,
    username VARCHAR(50) NOT NULL,
    FOREIGN KEY (username) REFERENCES users (username)
);

DROP TABLE IF EXISTS locations CASCADE;
CREATE TABLE locations(
    id SERIAL PRIMARY KEY,
    country VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    username VARCHAR(50) NOT NULL,
    FOREIGN KEY (username) REFERENCES users (username)
);
