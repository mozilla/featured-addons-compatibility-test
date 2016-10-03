CREATE TABLE IF NOT EXISTS addons (
    id SERIAL PRIMARY KEY,
    url VARCHAR(256) UNIQUE
);

CREATE TABLE IF NOT EXISTS results (
    id SERIAL PRIMARY KEY,
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    addon_id INT REFERENCES addons (id) NOT NULL,
    version TEXT NOT NULL,
    compatible BOOLEAN NOT NULL,
    comment TEXT
);
