CREATE TABLE countries (
    country_id SERIAL PRIMARY KEY,
    geo_code VARCHAR(10) UNIQUE NOT NULL
);

CREATE TABLE substance_categories (
    category_id SERIAL PRIMARY KEY,
    subst_cat VARCHAR(20) UNIQUE NOT NULL
);

CREATE TABLE measurement_units (
    unit_id SERIAL PRIMARY KEY,
    unit_code VARCHAR(20) UNIQUE NOT NULL
);

CREATE TABLE observations (
    observation_id SERIAL PRIMARY KEY,
    dataflow VARCHAR(100),
    last_update TIMESTAMP,
    frequency VARCHAR(10),
    country_id INTEGER REFERENCES countries(country_id),
    category_id INTEGER REFERENCES substance_categories(category_id),
    unit_id INTEGER REFERENCES measurement_units(unit_id),
    time_period INTEGER NOT NULL,
    obs_value NUMERIC,
    obs_flag VARCHAR(20),
    conf_status VARCHAR(20)
);
