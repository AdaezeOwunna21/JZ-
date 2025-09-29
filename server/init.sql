CREATE TABLE events (
    event_id SERIAL NOT NULL,
    name character varying(50) NOT NULL,
    location text NOT NULL,
    event_date VARCHAR(50),
    PRIMARY KEY (event_id)
);

CREATE TABLE about (
    about_id SERIAL NOT NULL,
    about text NOT NULL,
    PRIMARY KEY(about_id)
);
CREATE TABLE music(
    music_id SERIAL NOT NULL,
    title VARChar(50) NOT NULL,
    genre VARCHAR(50) NOT NULL,
    release_date DATE NOT NULL,
    PRIMARY KEY(music_id)
);
CREATE TABLE gallery (
    gallery_id SERIAL NOT NULL,
    title VARCHAR(100) NOT NULL,
    description text,
    url text NOT NULL,
    uploaded_at TIMESTAMP DEFAULT NOW()

);

-- Seed data for products table
INSERT INTO events(name, location, event_date) VALUES ('Event 1', '2845 Curly Head Dr','December 15,2025');
INSERT INTO about(about) VALUES ('Lorem ipsum dolor sit amet consectetur adipiscing elit');
INSERT INTO music(title,genre, release_date) VALUES ('HOME', 'JAZZ', '2026-01-22');
INSERT INTO gallery(title, description, url) VALUES ('Halloween Town', 'A song about halloween','https://example.com/placeholder.jpg')
